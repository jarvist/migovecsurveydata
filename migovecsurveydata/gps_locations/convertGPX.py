#!/usr/bin/env python3
import pyproj
import xml.etree.ElementTree as ET
import re

if __name__ == '__main__':
	import argparse
	parser = argparse.ArgumentParser()
	parser.add_argument('gpxFile')
	parser.add_argument('output')

	args = parser.parse_args()

	# Output CS Proj.4 string. This one is for D96TM...
	outCSString = "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs"

	# Following ripped off here:
	# http://auxmem.com/2014/07/07/suppressing-the-default-namespace-in-elementtree/
	# Read the contents of the XML file into xmlstring
	with open(args.gpxFile) as f:
		xmlstring = f.read()
	
	# Remove the default namespace definition (xmlns="http://some/namespace")
	xmlstring = re.sub('\\sxmlns="[^"]+"', '', xmlstring, count=1)
	
	# Parse the XML string
	root = ET.fromstring(xmlstring)
	
	# Now strip out data
	waypoints = [ child for child in root if 'wpt' in child.tag ]
	latlongs = [ wpt.attrib for wpt in waypoints ]
	elevs    = [ wpt.find('ele').text for wpt in waypoints ]
	names    = [ wpt.find('name').text for wpt in waypoints ]

	# Parse data
	latlongs = [ (float(l['lat']),float(l['lon'])) for l in latlongs ]
	elevs = [ float(e) if e != '-0.114380' else 0.0 for e in elevs ]
	names    = [ n.replace(' ','_') for n in names ]

	# Zip up the latlongs with the elevations
	coords = list(zip(*(list(zip(*latlongs)) + [elevs])))

	# Define coordinate systems
	WGS84 = pyproj.Proj("+proj=longlat +datum=WGS84 +no_defs")
	outCS = pyproj.Proj(outCSString)

	# Transform the f***er
	newCoords = [ pyproj.transform(WGS84,outCS,c[1],c[0],c[2]) for c in coords ]

	with open(args.output,'w') as f:
		f.write('; This file was automatically generated. Please remove entrance labels that\n')
		f.write('; shouldn\'t be there and tidy it up. Documentation would be nice...\n\n')
		
		f.write('; The coordinate system\'s PROJ.4 string is:\n; {:}\n\n'.format(outCSString))
		f.write('; Numbers have been printed to two decimal places. This is unlikely to reflect\n')
		f.write('; actual precision!\n\n')

		f.write('*begin GPS\n\n')
		
		for n,c in zip(names,newCoords):
			f.write('*fix {name:10} {:.2f} {:.2f} {:.2f}\n'.format(name=n,*c))
			f.write('*entrance {name}\n\n'.format(name=n))

		f.write('*end GPS\n')
