# Cleaning Migovec GPS data

Summary of data by GPS. I also added in data from the Slovene Cave database (www.geopedia.si) for 
Migovec (mainly area K).

|                    file_name                    | waypoints | in_slovenia |
|-------------------------------------------------+----------:+------------:|
| ICCC_2009_post_mig_club_GPS.gpx                 |       138 |         138 |
| ICCC_eTrex_H_waypoints_area_n_recee_2009-12.gpx |       156 |         156 |
| ICCC_JSPDT_Mig_GPS_points_2005-2008.gpx         |       135 |         135 |
| old ICCC gps.gpx                                |        79 |          37 |
| Peter H old gps.gpx                             |        54 |           9 |
| www.geopedia.si                                 |        11 |          11 |

Total cleaned waypoints: 222. Some of these are not caves (e.g. Tetley's tent, various bivvies 
etc).
 
There was an old GPS in stores with a serial connector on it; also my old GPS had some data on it. 

I picked the newest data in preference and adjusted the timestamps accordingly (like the etrek is assumed to be the most accurate). 
The quality indicator is (in ascending accuracy):

- 0: www.geopedia.si (mainly pre GPS);
- 1: GPS;
- 2: GPS+GLONAS;
- 3: GPS+WAAS. 

I have extracted height data from earlier records if it was missing and removed the obvious 
duplicates. The spreadsheet contains Slovenian national grid co-ordinates (Spatial Reference 
System Identifier 3794) as well.  I did it all in PostGres/PostGIS SQL.

For the KMZ I cheated and created via: http://www.gpsvisualizer.com/. I will generate proper 
KML at some point.

I can probably calculate the size of the cocked hats (the area of uncertainty where >1 
duplicate of the same point) - also at some later point.

Peter Hambly, 5th July 2015.

