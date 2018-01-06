import sys
import os
import xml.etree.ElementTree as ET
import argparse
from subprocess import call

parser = argparse.ArgumentParser(description='Convert survey svg into pdfs and pngs.')
parser.add_argument('files',type=str, help='the svg input file', nargs=2)


args = parser.parse_args()
SVG_FILE = args.files[0]
OUTPUT_FILE = args.files[1]

filename, ext = os.path.splitext(OUTPUT_FILE)

if ext == ".png":
	call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-e="+OUTPUT_FILE])
elif ext == ".pdf":
	call(["inkscape", "-z", "-b=#FFFFFF", "-d=300", SVG_FILE, "-A="+OUTPUT_FILE])
else:
	print("Output file must be png or pdf")