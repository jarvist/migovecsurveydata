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

CREATE SCHEMA peter
  AUTHORIZATION peter;
  
GRANT CONNECT, TEMPORARY ON DATABASE postgres TO public;
GRANT ALL ON DATABASE postgres TO postgres;
GRANT CONNECT ON DATABASE postgres TO peter;
GRANT USAGE ON SCHEMA public TO public;  

As Postgres in new database: psql -U postgres -d caving
  
CREATE EXTENSION postgis;
  
ALTER DATABASE caving SET search_path TO peter,public;
  
*/
--
-- To build database:
--
-- psql -U peter -d caving -w -e -f gps_precessing.sql
--
-- Start a Transaction -it either all succeeds or fails!
--
BEGIN;

DROP TABLE IF EXISTS gpx_import_data;
DROP TABLE IF EXISTS gpx_coordinates;

CREATE TABLE gpx_import_data (
file_name 	VARCHAR	NOT NULL,
xml_data 	XML		NOT NULL,
gpx_time	DATE);

--
--Import GPS data
--
\i gpx_import_data.sql

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
-- Extract file timestamp, convert to date
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
					'YYYY-MM-DD"T"HH24:MI:SS') /* 2009-11-25T00:59:54Z */ AS gpx_time
		  FROM gpx_import_data b
		 WHERE a.file_name = b.file_name
		);
		
--
-- Create table of co-ordinates
--
CREATE TABLE gpx_coordinates
AS
WITH a AS (
	SELECT file_name, gpx_time, 
		   unnest(xpath('/gpx_ns:gpx/gpx_ns:wpt', xml_data, array[array['gpx_ns', 'http://www.topografix.com/GPX/1/0']])) AS node
	  FROM gpx_import_data
)
SELECT file_name, 
       gpx_time,
	   ROW_NUMBER() OVER() AS rec_num,
       extract_value('/wpt/name', node) AS name,
       extract_value('/wpt/@lat', node)::numeric AS latitude,
       extract_value('/wpt/@lon', node)::numeric AS longitude,	   
       NULLIF(ROUND(extract_value('/wpt/ele', node)::numeric, 1), 0) AS elevation,
       extract_value('/wpt/cmt', node)  AS comment,
       extract_value('/wpt/desc', node)  AS description,
       COALESCE(extract_value('/wpt/sym', node), 'Waypoint')  AS symbol
  FROM a;
SELECT AddGeometryColumn('gpx_coordinates', 'xyz_4326', 4326 /* WGS 84 (GPS geometry) */,'POINT', 3 /* 3D */);
SELECT AddGeometryColumn('gpx_coordinates', 'xyz_3794', 3794 /* Slovene National grid */,'POINT', 3 /* 3D */);

UPDATE gpx_coordinates
   SET xyz_4326 = ST_SetSrid(ST_MakePoint(longitude, latitude, elevation), 4326);
UPDATE gpx_coordinates
   SET xyz_3794 = ST_transform(xyz_4326, 3794);
   
SELECT file_name, name, rec_num, latitude, longitude, elevation, symbol, ST_X(xyz_3794) AS x_3794, ST_Y(xyz_3794) AS y_3794, ST_Z(xyz_3794) AS z_3794
  FROM gpx_coordinates LIMIT 30;
  
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
 LIMIT 30;

SELECT file_name, gpx_time, COUNT(name) AS total_coords, 
       MIN(ST_X(xyz_3794)) AS xmin_3794, MAX(ST_X(xyz_3794)) AS xmax_3794, 
	   MIN(ST_Y(xyz_3794)) AS ymin_3794, MAX(ST_Y(xyz_3794)) AS ymax_3794, 
	   MIN(ST_Z(xyz_3794)) AS zmin_3794, MAX(ST_Z(xyz_3794)) AS zmax_3794
  FROM gpx_coordinates
 GROUP BY file_name, gpx_time
 ORDER BY 1;
 
  
END;

--
-- Eof