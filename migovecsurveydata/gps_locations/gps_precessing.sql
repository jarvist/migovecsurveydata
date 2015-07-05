--
-- Author:
--
-- Peter Hambly, ICCC
--
\set ECHO all
\set ON_ERROR_STOP ON
\timing

/*
Pre-install notes: requires Postgres with Postgis (9.3+)
Windows version are available from: http://www.enterprisedb.com/products-services-training/pgdownload#windows 

You will need to add the Postgres bin directory to your path: C:\Program Files\PostgreSQL\9.3\bin 

Create a new database as Postgres: psql -U postgres -d postgres

It is in: C:\Program Files\PostgreSQL\9.3\data if you are nosey.

CREATE DATABASE caving
  WITH OWNER = peter
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United Kingdom.1252'
       LC_CTYPE = 'English_United Kingdom.1252'
       CONNECTION LIMIT = -1;
  
As Postgres in new database: psql -U postgres -d caving

CREATE SCHEMA pch
  AUTHORIZATION pch;
  
GRANT CONNECT, TEMPORARY ON DATABASE postgres TO public;
GRANT ALL ON DATABASE postgres TO postgres;
GRANT CONNECT ON DATABASE postgres TO pch;
GRANT USAGE ON SCHEMA public TO public;
 
CREATE EXTENSION postgis;
  
ALTER DATABASE caving SET search_path TO pch,public;
  
*/
--
-- To build database:
--
-- psql -U pch -d caving -w -e -f gps_precessing.sql
--
-- Start a Transaction -it either all succeeds or fails!
--
BEGIN;

DROP TABLE IF EXISTS gpx_import_data;
DROP TABLE IF EXISTS gpx_coordinates;
DROP TABLE IF EXISTS cleaned_gpx_coordinates;
DROP TABLE IF EXISTS cleaned_gpx_coordinates_not_in_slovenia;

--
-- Create table for GPX data
--
CREATE TABLE gpx_import_data (
file_name 	VARCHAR	NOT NULL,
xml_data 	XML		NOT NULL,
gps_quality INTEGER NOT NULL /* 1 GPS only [2.5-4.7m] or 2 GPS+GLONASS [2.37-4.65m] or 3 GPS+WAAS [0.9-1.3m] */,
gpx_time	DATE);

--
--Import GPS data
--
\i gpx_import_data.sql

--
--
--
CREATE OR REPLACE FUNCTION dump_table(table_name VARCHAR, dump_type VARCHAR DEFAULT 'gpx')
RETURNS XML
SECURITY INVOKER
AS $func$
DECLARE
	c1 			REFCURSOR;
	c1_rec 		RECORD;
	sql_stmt 	VARCHAR;
	xml_fragment VARCHAR;
--
	i			INTEGER:=0;
--
	error_message VARCHAR;
	v_sqlstate 	VARCHAR;
	v_context	VARCHAR;	
	v_detail 	VARCHAR;
BEGIN
--
-- Check table exists
--

--
-- Check dump_type format
--

--
--
--
	xml_fragment:='<?xml version="1.0" encoding="UTF-8"?>'||
'<gpx'||
' version="1.0"'||
' creator="Peter Hambly - compatible with GPSBabel - http://www.gpsbabel.org"'||
' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'||
' xmlns="http://www.topografix.com/GPX/1/0"'||
' xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">'||
'<time>'||TO_CHAR(current_date, 'YYYY-MM-DD')||'T'||SUBSTRING(current_time(0)::Text FROM 1 FOR 8)||'</time>'; 

--
-- Create SQL statement 
-- 
-- a) bounds
--
	sql_Stmt:='SELECT ST_YMin(ST_Extent(xyz_4326)) AS minlat,'||E'\n'||
			  '  ST_XMin(ST_Extent(xyz_4326)) AS minlon,'||E'\n'||
			  '  ST_YMax(ST_Extent(xyz_4326)) AS maxlat,'||E'\n'||
			  '  ST_XMax(ST_Extent(xyz_4326)) AS maxlon'||E'\n'||
			  '  FROM '||quote_ident(table_name);
	RAISE INFO 'SQL> %;', sql_stmt;	
	BEGIN
		OPEN c1 FOR EXECUTE sql_stmt;
		FETCH c1 INTO c1_rec;
	EXCEPTION
			WHEN others THEN
				GET STACKED DIAGNOSTICS v_detail = PG_EXCEPTION_DETAIL;
				GET STACKED DIAGNOSTICS v_sqlstate = RETURNED_SQLSTATE;
				GET STACKED DIAGNOSTICS v_context = PG_EXCEPTION_CONTEXT;
				error_message:='dump_table() exception handler caught: '||E'\n'||SQLERRM::VARCHAR||' in SQL'||E'\n'||
					'Detail: '||v_detail::VARCHAR||E'\n'||
					'Context: '||v_context::VARCHAR||E'\n'||
					'SQLSTATE: '||v_sqlstate::VARCHAR;
				RAISE EXCEPTION '71170: %', error_message USING DETAIL=v_detail;
	END;	
	xml_fragment:=xml_fragment||'<bounds minlat="'||c1_rec.minlat||
			'" minlon="'||c1_rec.minlon||
			'" maxlat="'||c1_rec.maxlat||
			'" maxlon="'||c1_rec.maxlon||'"/>';
	CLOSE c1;	
--
-- b) Waypoint data
--
	sql_stmt:='SELECT name, latitude, longitude, elevation, comment, description, symbol'||E'\n'||
			  '  FROM '||quote_ident(table_name)||E'\n'||
			  ' ORDER BY name';
	RAISE INFO 'SQL> %;', sql_stmt;
	BEGIN
		OPEN c1 FOR EXECUTE sql_stmt;
		LOOP
			FETCH c1 INTO c1_rec;
			IF NOT FOUND THEN EXIT; END IF;
--
-- Dump waypoint
--
			i:=i+1;
			xml_fragment:=xml_fragment||'<wpt lat="'||c1_rec.latitude||'" lon="'||c1_rec.longitude||'">'||
				  '  <ele>'||COALESCE(c1_rec.elevation, '0')||'</ele>'||
				  '  <name>'||c1_rec.name||'</name>'||
				  '  <cmt>'||COALESCE(c1_rec.comment, c1_rec.name)||'</cmt>'||
				  '  <desc>'||COALESCE(c1_rec.description, c1_rec.name)||'</desc>'||
				  '  <sym>'||COALESCE(c1_rec.symbol, 'Waypoint')||'</sym>'||
				  '</wpt>';
		END LOOP;
	EXCEPTION
			WHEN others THEN
				GET STACKED DIAGNOSTICS v_detail = PG_EXCEPTION_DETAIL;
				GET STACKED DIAGNOSTICS v_sqlstate = RETURNED_SQLSTATE;
				GET STACKED DIAGNOSTICS v_context = PG_EXCEPTION_CONTEXT;
				error_message:='dump_table() exception handler caught: '||E'\n'||SQLERRM::VARCHAR||' in SQL'||E'\n'||
					'Detail: '||v_detail::VARCHAR||E'\n'||
					'Context: '||v_context::VARCHAR||E'\n'||
					'SQLSTATE: '||v_sqlstate::VARCHAR;
				RAISE EXCEPTION '71171: %', error_message USING DETAIL=v_detail;
	END;	
	CLOSE c1;	

--
-- Complete XML
--
	xml_fragment:=xml_fragment||'</gpx>';	
	RAISE INFO 'Processed % rows from table %, % bytes of XML produced.', i, table_name, LENGTH(xml_fragment);
--
-- Return value - CAST to XML to verify
--
	BEGIN
		RETURN xml_fragment::XML;
		RAISE DEBUG 'XML> %;', xml_fragment;			
	EXCEPTION
			WHEN others THEN
				GET STACKED DIAGNOSTICS v_detail = PG_EXCEPTION_DETAIL;
				GET STACKED DIAGNOSTICS v_sqlstate = RETURNED_SQLSTATE;
				GET STACKED DIAGNOSTICS v_context = PG_EXCEPTION_CONTEXT;
				error_message:='dump_table() exception handler caught: '||E'\n'||SQLERRM::VARCHAR||' in XML'||E'\n'||
					'Detail: '||v_detail::VARCHAR||E'\n'||
					'Context: '||v_context::VARCHAR||E'\n'||
					'SQLSTATE: '||v_sqlstate::VARCHAR;
				
				RAISE WARNING 'XML> %;', xml_fragment;	
				RAISE EXCEPTION '71172: %', error_message USING DETAIL=v_detail;
	END;
END;
$func$ LANGUAGE plpgsql;

--
-- Thanks to Scott R Bailey
-- https://scottrbailey.wordpress.com/2009/06/19/xml-parsing-postgres/
--
CREATE OR REPLACE FUNCTION extract_value(
   VARCHAR,
   XML
) RETURNS TEXT AS
$$
   SELECT CASE WHEN $1 ~ '@[[:alnum:]_]+$'
   THEN (xpath($1, $2))[1]
   WHEN $1 ~* '/text()$'
   THEN (xpath($1, $2))[1]
   WHEN $1 LIKE '%/'
   THEN (xpath($1 || 'text()', $2))[1]
   ELSE (xpath($1 || '/text()', $2))[1]
   END::text;
$$ LANGUAGE 'sql' IMMUTABLE;

CREATE OR REPLACE FUNCTION node_exists(
 VARCHAR,
 XML
) RETURNS BOOLEAN AS
$$
 SELECT CASE WHEN array_upper(xpath($1, $2), 1) > 0 
 THEN true ELSE false END; 
$$ LANGUAGE 'sql' IMMUTABLE;

--
-- Extract file timestamp from XML, convert to date
--
UPDATE gpx_import_data a
   SET gpx_time = (
		SELECT TO_DATE(extract_value(
					'/time', 
						unnest(
							xpath('gpx_ns:time', 
								b.xml_data, 
								array[array['gpx_ns', 'http://www.topografix.com/GPX/1/0']])
							)
						), 
					'YYYY-MM-DD"T"HH24:MI:SS') /* 2009-11-25T00:59:54Z - timezone is ignored */ AS gpx_time
		  FROM gpx_import_data b
		 WHERE a.file_name = b.file_name
		);

--
-- Times have been adjusted so that the highest quality is the latest file
-- The latest record within the latest file is the chosen duplicate_order
--
SELECT file_name, gpx_time, gps_quality
  FROM gpx_import_data
 ORDER BY gps_quality, gpx_time;
		
--
-- Create table of co-ordinates from raw XML data
--
CREATE TABLE gpx_coordinates
AS
WITH a AS (
	SELECT file_name, gpx_time, gps_quality,
		   unnest(
				xpath('/gpx_ns:gpx/gpx_ns:wpt', 
					xml_data, 
					array[array['gpx_ns', 'http://www.topografix.com/GPX/1/0']] /* GPX namespace */)
				) AS node
	  FROM gpx_import_data
)
SELECT file_name, 
       gpx_time,
	   gps_quality,
	   ROW_NUMBER() OVER(PARTITION BY file_name) AS rec_num,
       UPPER(extract_value('/wpt/name', node)) AS name,
       extract_value('/wpt/@lat', node)::numeric AS latitude,
       extract_value('/wpt/@lon', node)::numeric AS longitude,	   
       CASE 
			WHEN ROUND(extract_value('/wpt/ele', node)::numeric, 1) = 0 THEN NULL 
			WHEN ROUND(extract_value('/wpt/ele', node)::numeric, 1) <1 THEN NULL 
			ELSE ROUND(extract_value('/wpt/ele', node)::numeric, 1) END AS elevation,
       extract_value('/wpt/cmt', node)  AS comment,
       extract_value('/wpt/desc', node)  AS description,
       COALESCE(extract_value('/wpt/sym', node), 'Waypoint')  AS symbol
  FROM a;
  
--
-- Add primary key index
--
ALTER TABLE gpx_coordinates ADD CONSTRAINT gpx_coordinate_pk PRIMARY KEY(file_name, rec_num);

--
-- Add columns
--
SELECT AddGeometryColumn('gpx_coordinates', 'xyz_4326', 4326 /* WGS 84 (GPS geometry) */,'POINT', 3 /* 3D */);
SELECT AddGeometryColumn('gpx_coordinates', 'xyz_3794', 3794 /* Slovene National grid */,'POINT', 3 /* 3D */);
ALTER TABLE gpx_coordinates ADD COLUMN num_duplicates INTEGER;
ALTER TABLE gpx_coordinates ADD COLUMN duplicate_order INTEGER;
ALTER TABLE gpx_coordinates ADD COLUMN max_elevation NUMERIC;
ALTER TABLE gpx_coordinates ADD COLUMN in_slovenia INTEGER;
			   
--
-- Do PostGIS magic
--
UPDATE gpx_coordinates
   SET xyz_4326 = ST_SetSrid(ST_MakePoint(longitude, latitude, elevation), 4326) 
		/* Covert text points to WGS 84 geometry */
 WHERE elevation IS NOT NULL;
UPDATE gpx_coordinates
   SET xyz_4326 = ST_SetSrid(ST_MakePoint(longitude, latitude, 0), 4326) 
		/* Convert text points to WGS 84 geometry */
 WHERE elevation IS NULL;
 
--
-- Add in caves from Slovenian cave registry: 
-- http://www.geopedia.si/lite.jsp?params=T118_x408210_y126301_s14#T118_F11063:4466_x405306_y123047_s15_b4 
--  
\i slov_cave_reg_import.sql  
 
 --
 -- Work out if in Slovenia, if is, calculate Slovene national grid co-ordinates
 --
UPDATE gpx_coordinates
   SET in_slovenia = 1
   WHERE ST_Intersects(xyz_4326, 
				ST_MakeEnvelope(13.3700, 45.4400, 16.6800, 46.9100, 4326) 
					/* Slovene national grid bound re-projected to WGS 84 */);
UPDATE gpx_coordinates
   SET in_slovenia = 0
 WHERE in_slovenia IS NULL;

UPDATE gpx_coordinates
   SET xyz_3794 = ST_Transform(xyz_4326, 3794) 
		/* Transform to Slovene national grid (3794) geometry */
 WHERE in_slovenia = 1
   AND xyz_3794 IS NULL;
  
--
-- Add de-duplication flags
--
WITH a AS (
	SELECT file_name, rec_num, name,
	       SUM(1) OVER dup_window AS num_duplicates,
	       MAX(elevation) OVER dup_window AS max_elevation,		   
	       ROW_NUMBER() OVER dup_window AS duplicate_order
	  FROM gpx_coordinates
	 WINDOW dup_window AS (
		PARTITION BY name ORDER BY gpx_time, rec_num /* Use latest record first */
			ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING /* Use the whole partition */)
)
UPDATE gpx_coordinates b
   SET num_duplicates = (
			SELECT num_duplicates
  			  FROM a
		     WHERE a.file_name = b.file_name
			   AND a.rec_num   = b.rec_num),
	   duplicate_order = (
			SELECT duplicate_order
  			  FROM a
		     WHERE a.file_name = b.file_name
			   AND a.rec_num   = b.rec_num),
	   max_elevation = (
			SELECT max_elevation
  			  FROM a
		     WHERE a.file_name = b.file_name
			   AND a.rec_num   = b.rec_num);
			   
SELECT file_name, name, rec_num, latitude, longitude, elevation, symbol, 
       ROUND(ST_X(xyz_3794)) AS x_3794, 
	   ROUND(ST_Y(xyz_3794)) AS y_3794, 
	   ROUND(ST_Z(xyz_3794)::Numeric, 1) AS z_3794
  FROM gpx_coordinates LIMIT 20;

--  
-- Enhance description with Slovene national grid
--
UPDATE gpx_coordinates
   SET description = description||': SLO('||ROUND(ST_X(xyz_3794)::Numeric, 1)||','||ROUND(ST_X(xyz_3794)::Numeric, 1)||')';

WITH a AS (  
	SELECT name, COUNT(name) AS total_name, COUNT(DISTINCT(file_name)) AS total_files
	  FROM gpx_coordinates
	 GROUP BY name
	 HAVING COUNT(name) > 1
)
SELECT b.file_name, b.name, b.rec_num, b.latitude, b.longitude, b.elevation, a.total_name, a.total_name
  FROM a, gpx_coordinates b 
 WHERE a.name = b.name  
 ORDER BY 2, 1
 LIMIT 20;

SELECT file_name, name, duplicate_order, num_duplicates, gpx_time, rec_num, latitude, longitude, elevation
  FROM gpx_coordinates b 
 WHERE num_duplicates > 1
 ORDER BY 2, 3
 LIMIT 20;

SELECT file_name, name, duplicate_order, num_duplicates, gpx_time, rec_num, latitude, longitude, elevation
  FROM gpx_coordinates b 
 WHERE num_duplicates = 1
 ORDER BY 2, 3
 LIMIT 10;
 
SELECT file_name, gpx_time, in_slovenia, COUNT(name) AS total_coords, 
       MIN(ST_X(xyz_3794)) AS xmin_3794, MAX(ST_X(xyz_3794)) AS xmax_3794, 
	   MIN(ST_Y(xyz_3794)) AS ymin_3794, MAX(ST_Y(xyz_3794)) AS ymax_3794, 
	   MIN(ST_Z(xyz_3794)) AS zmin_3794, MAX(ST_Z(xyz_3794)) AS zmax_3794
  FROM gpx_coordinates
 WHERE in_slovenia = 1
 GROUP BY file_name, gpx_time, in_slovenia
 ORDER BY 1;

--
-- Create cleaned table
--
CREATE TABLE cleaned_gpx_coordinates
AS
SELECT a.file_name,
       a.gpx_time,
       a.rec_num,
       a.name,
       a.latitude,
       a.longitude,
       CASE 
			WHEN a.elevation IS NULL THEN a.max_elevation
			ELSE a.elevation END elevation,
       CASE 
			WHEN a.elevation IS NULL AND a.max_elevation IS NOT NULL THEN 1
			WHEN a.elevation IS NULL AND a.max_elevation IS NULL THEN 0			
			ELSE 0 END used_max_elevation,
       a.comment,
       a.description,
       a.symbol,
	   a.gps_quality,
	   xyz_4326,
       ROUND(ST_X(xyz_3794)) AS x_3794, 
	   ROUND(ST_Y(xyz_3794)) AS y_3794 /*, 
	   ROUND(ST_Z(xyz_3794)::Numeric, 1) AS z_3794,
       ST_X(xyz_4326) AS x_gps, 
	   ST_Y(xyz_4326) AS y_gps, 
	   ROUND(ST_Z(xyz_4326)::Numeric, 1) AS z_gps */
  FROM gpx_coordinates a
 WHERE duplicate_order = num_duplicates
   AND in_slovenia = 1
 ORDER BY name;
CREATE TABLE cleaned_gpx_coordinates_not_in_slovenia
AS
SELECT a.file_name,
       a.gpx_time,
       a.rec_num,
       a.name,
       a.latitude,
       a.longitude,
       CASE 
			WHEN a.elevation IS NULL THEN a.max_elevation
			ELSE a.elevation END elevation,
       CASE 
			WHEN a.elevation IS NULL AND a.max_elevation IS NOT NULL THEN 1
			WHEN a.elevation IS NULL AND a.max_elevation IS NULL THEN 0			
			ELSE 0 END used_max_elevation,
       a.comment,
       a.description,
       a.symbol,
	   a.gps_quality,
	   xyz_4326
  FROM gpx_coordinates a
 WHERE duplicate_order = num_duplicates
   AND in_slovenia = 0
 ORDER BY name;
 
--
-- Add primary key index
--
ALTER TABLE cleaned_gpx_coordinates ADD CONSTRAINT cleaned_gpx_coordinates_pk PRIMARY KEY(name);
ALTER TABLE cleaned_gpx_coordinates_not_in_slovenia ADD CONSTRAINT cleaned_gpx_coordinates_not_in_slovenia_pk PRIMARY KEY(name);
 
SELECT name, description, comment, latitude, longitude, in_slovenia
  FROM gpx_coordinates
 WHERE file_name = 'www.geopedia.si';   
SELECT name, description, comment, latitude, longitude
  FROM cleaned_gpx_coordinates
 WHERE file_name = 'www.geopedia.si';
 
\dS+ cleaned_gpx_coordinates
 
 --
 -- Dump results
 --
\copy (SELECT file_name, gpx_time, rec_num, name, latitude, longitude, elevation, used_max_elevation, comment, description, symbol, gps_quality, x_3794, y_3794 FROM cleaned_gpx_coordinates) TO cleaned_gpx_coordinates.csv WITH CSV HEADER
\copy (SELECT file_name, gpx_time, rec_num, name, latitude, longitude, elevation, used_max_elevation, comment, description, symbol, gps_quality FROM cleaned_gpx_coordinates_not_in_slovenia) TO cleaned_gpx_coordinates_not_in_slovenia.csv WITH CSV HEADER
\copy (SELECT dump_table('cleaned_gpx_coordinates')) TO cleaned_gpx_coordinates.gpx

END;

--
-- Eof