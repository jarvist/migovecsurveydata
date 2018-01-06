import sys
import os
import xml.etree.ElementTree as ET
import argparse
from subprocess import call

parser = argparse.ArgumentParser(description='Convert ee survey svg into pdfs and pngs.')
parser.add_argument('svg_file', type=str, help='the svg input file')
parser.add_argument('--year', help='expo year')

args = parser.parse_args()
SVG_FILE = args.svg_file
SLO_SVG_FILE=SVG_FILE.replace('.svg', '_SLO.svg')

YEAR = args.year

if YEAR is None:
    print("Provide year argument for proper naming")
    YEAR = ""
else:
    YEAR = YEAR + "-"

print("Making English surveys")
call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-e="+YEAR+"SistemMigovec-ExtendedElevation-ENG.png"])
call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-A="+YEAR+"SistemMigovec-ExtendedElevation-ENG.pdf"])

SVG_NS="http://www.w3.org/2000/svg"
e = ET.parse(SVG_FILE).getroot()
eng = e.find('.//{%s}g[@id="ENG"]' % SVG_NS)
if eng is not None:
    eng.set('style', 'display:none')
else: 
        print("Cannot make Slovenian version. Ensure the labels and text are in seperate layers and have the ids 'ENG' and 'SLO'. You will need to use the XML editor to set the id.")
        sys.exit(1)
slo = e.find('.//{%s}g[@id="SLO"]' % SVG_NS)
if slo is not None:
    slo.set('style', 'display:inline')
    tree = ET.ElementTree(e)
    tree.write(SLO_SVG_FILE)
    print("Making Slovenian surveys")
    call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-e="+YEAR+"SistemMigovec-ExtendedElevation-SLO.png"])
    call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-A="+YEAR+"SistemMigovec-ExtendedElevation-SLO.pdf"])
    os.remove(SLO_SVG_FILE)
else:
    print("Cannot make Slovenian version. Ensure the labels and text are in seperate layers and have the ids 'ENG' and 'SLO'. You will need to use the XML editor to set the id.")
    sys.exit(1)
