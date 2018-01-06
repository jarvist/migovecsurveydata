import sys
import os
import xml.etree.ElementTree as ET
import argparse
from subprocess import call

parser = argparse.ArgumentParser(description='Convert ee survey svg into two a4 pngs with some overlap for easy printing.')
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

SVG_NS="http://www.w3.org/2000/svg"
e = ET.parse(SVG_FILE).getroot()
height = str(int(float(e.get('height'))))
width = str(int(float(e.get('width'))))

rightcutoff = e.find('.//*[@id="rightcutoff"]')
leftcutoff = e.find('.//*[@id="leftcutoff"]')

if leftcutoff is not None and rightcutoff is not None:
    left = leftcutoff.get('position').split(',')[0]
    right = rightcutoff.get('position').split(',')[0]
else:
    print("Cannot find guidelines. Please make sure they have the ids 'leftcutoff' and 'rightcutoff")
    sys.exit(1)


call(["inkscape", "-z", "-b=#FFFFFF", "-a=0:0:"+right+":"+height, "-d=300", SVG_FILE, "-e="+YEAR+"SistemMigovec-ExtendedElevation-left.png"])
call(["inkscape", "-z", "-b=#FFFFFF", "-a="+left+":0:"+width+":"+height, "-d=300", SVG_FILE, "-e="+YEAR+"SistemMigovec-ExtendedElevation-right.png"])
