--
-- Add in caves from Slovenian cave registry: 
-- http://www.geopedia.si/lite.jsp?params=T118_x408210_y126301_s14#T118_F11063:4466_x405306_y123047_s15_b4 
--
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI4469' 								/* Catalog number */, 
		'www.geopedia.si', 1, 
        ST_SetSrid(ST_MakePoint(404940, 124910, 1850), 3794), 
		1850, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'M-5'									/* Comment */,
		'29m long, 22m deep'					/* Description */,
		TO_DATE('27-AUG-1976', 'DD-MON-YYYY')	/* Catalog date */);
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI8281' 								/* Catalog number */, 
		'www.geopedia.si', 2, 
        ST_SetSrid(ST_MakePoint(403200, 123720, 785), 3794), 
		785, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Jama v Prod'							/* Comment */,
		'9m long, 1m deep'						/* Description */,
		TO_DATE('01-JAN-1997', 'DD-MON-YYYY')	/* Catalog date */);		
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI8278' 								/* Catalog number */, 
		'www.geopedia.si', 3, 
        ST_SetSrid(ST_MakePoint(402380, 124810, 705), 3794), 
		705, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Boka na Prodih'						/* Comment */,
		'6m long, 2m deep'						/* Description */,
		TO_DATE('01-JAN-1997', 'DD-MON-YYYY')	/* Catalog date */);
 
/*
Kat. št.8278
ImeBoka na Prodih
Kota vhoda 705
Dolžina16
Globina2
Datum ekskurzije01. 01. 1997
OrganizacijaJS PD Tolmin
Koordinate vhoda 402380 124810

Cat. No. 8281
Name Jama v Prodi
Kota input 785
Length 9
Depth 1
Date of excursion 01. 01. 1997
Organization JS PD Tolmin
Coordinates entrance 403200 123720

Kat. št.10914
ImeVinetov hladilnik
Kota vhoda1818
Dolžina18
Globina14
Datum ekskurzije30. 06. 2012
OrganizacijaDZRJ Ljubljana

Kat. št.4469
ImeMigovec 5
SinonimiM-5 (Tolminski Migovec)
Kota vhoda1850
Dolžina29
Globina22
Datum ekskurzije26. 08. 1976
OrganizacijaInštitut za raziskovanje krasa ZRC SAZU
Koordinate vhoda404940 124910
 */
 
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI4467' 								/* Catalog number */, 
		'www.geopedia.si', 4, 
        ST_SetSrid(ST_MakePoint(404990, 124850, 2020), 3794), 
		2020, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Brezno na Malem vrhu'					/* Comment */,
		'20m long, 20m deep'					/* Description */,
		TO_DATE('25-AUG-1976', 'DD-MON-YYYY')	/* Catalog date */); 
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI4470' 								/* Catalog number */, 
		'www.geopedia.si', 5, 
        ST_SetSrid(ST_MakePoint(405490, 124510, 1820), 3794), 
		1820, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Snezna jama pod Podrto goro'			/* Comment */,
		'30m long, 13m deep'					/* Description */,
		TO_DATE('25-AUG-1976', 'DD-MON-YYYY')	/* Catalog date */); 
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI5091' 								/* Catalog number */, 
		'www.geopedia.si', 6, 
        ST_SetSrid(ST_MakePoint(406030, 124550, 1830), 3794), 
		1830, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Snezna jama za Skrbino'				/* Comment */,
		'96m long, 54m deep'					/* Description */,
		TO_DATE('21-OCT-1979', 'DD-MON-YYYY')	/* Catalog date */); 
		
 /*
Kat. št.4467
ImeBrezno na Malem vrhu
Kota vhoda2020
Dolžina20
Globina20
Datum ekskurzije25. 08. 1976
OrganizacijaInštitut za raziskovanje krasa ZRC SAZU
Koordinate vhoda 404990 124850

Kat. št.4470
ImeSnežna jama pod Podrto goro
Kota vhoda 1820
Dolžina30
Globina13
Datum ekskurzije26. 08. 1976
OrganizacijaInštitut za raziskovanje krasa ZRC SAZU
Koordinate vhoda 405490 124510

Kat. št.5091
ImeSnežna jama za Škrbino
Kota vhoda 1830
Dolžina96
Globina54
Datum ekskurzije21. 10. 1979
OrganizacijaJS PD Tolmin
Koordinate vhoda 406030 124550
 */

INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI2025' 								/* Catalog number */, 
		'www.geopedia.si', 7, 
        ST_SetSrid(ST_MakePoint(406210, 124290, 1960), 3794), 
		1960, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Jama pod grebenom Skrbine'				/* Comment */,
		'20m long, 4m deep'						/* Description */,
		TO_DATE('01-JAN-1959', 'DD-MON-YYYY')	/* Catalog date */); 
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI5093' 								/* Catalog number */, 
		'www.geopedia.si', 8, 
        ST_SetSrid(ST_MakePoint(406350, 123600, 1720), 3794), 
		1720, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Brezno pod Skrbino'					/* Comment */,
		'62m long, 36m deep'					/* Description */,
		TO_DATE('23-JUL-1978', 'DD-MON-YYYY')	/* Catalog date */);  	
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI5092' 								/* Catalog number */, 
		'www.geopedia.si', 9, 
        ST_SetSrid(ST_MakePoint(406900, 123100, 1660), 3794), 
		1660, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Rusnati vrh'							/* Comment */,
		'14m long, 14m deep'					/* Description */,
		TO_DATE('23-JUL-1978', 'DD-MON-YYYY')	/* Catalog date */);
		
 /*
Kat. št.2025
ImeJama pod grebenom Škrbine
Kota vhoda 1960
Dolžina (LENGTH) 20
Globina (depth) 4
Datum ekskurzije (found) 01. 01. 1959
OrganizacijaJK Železnicar
Koordinate vhoda 406210 124290

Kat. št.5093
ImeBrezno pod Škrbino
Kota vhoda 1720
Dolžina62
Globina36
Datum ekskurzije23. 07. 1978
OrganizacijaJS PD Tolmin
Koordinate vhoda 406350 123600

Kat. št.5092
ImeRušnati vrh
Kota vhoda 1660
Dolžina14
Globina14
Datum ekskurzije23. 07. 1978
OrganizacijaJS PD Tolmin
Koordinate vhoda 406900 123100
 */
 
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI4466' 								/* Catalog number */, 
		'www.geopedia.si', 10, 
        ST_SetSrid(ST_MakePoint(407160, 122700, 1480), 3794), 
		1480, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Brezno pri Polju'						/* Comment */,
		'5m long, 5m deep'						/* Description */,
		TO_DATE('25-AUG-1976', 'DD-MON-YYYY')	/* Catalog date */);
INSERT INTO gpx_coordinates(name, file_name, rec_num, xyz_3794, elevation, symbol, gps_quality, comment, description, gpx_time)
VALUES ('SI4452' 								/* Catalog number */, 
		'www.geopedia.si', 11, 
        ST_SetSrid(ST_MakePoint(406900, 122000, 1230), 3794), 
		1230, 									/* Altitude */
		'Waypoint', 
		0 										/* Predates GPS! */,
		'Resevnica/Jama v zlebu'						/* Comment */,
		'520m long, 56m deep'						/* Description */,
		TO_DATE('24-AUG-1976', 'DD-MON-YYYY')	/* Catalog date */);
		
 /*
Kat. št.4466
ImeBrezno pri Polju
Kota vhoda 1480
Dolžina5
Globina5
Datum ekskurzije25. 08. 1976
OrganizacijaInštitut za raziskovanje krasa ZRC SAZU
Koordinate vhoda 407160 122700 

Kat. št.4452
ImeResevnica
SinonimiJama v žlebu
Kota vhoda 1230
Dolžina520
Globina56
Datum ekskurzije24. 08. 1976
OrganizacijaInštitut za raziskovanje krasa ZRC SAZU
Koordinate vhoda 406900 122000

*/ 

		
UPDATE gpx_coordinates
   SET xyz_4326 =  ST_Transform(xyz_3794, 4326)
 WHERE file_name = 'www.geopedia.si';
UPDATE gpx_coordinates
   SET longitude =  ST_X(xyz_4326)
 WHERE file_name = 'www.geopedia.si';
UPDATE gpx_coordinates
   SET latitude =  ST_Y(xyz_4326)
 WHERE file_name = 'www.geopedia.si';	
--
-- Eof