import sys
import os
import xml.etree.ElementTree as ET
import argparse
from subprocess import call
import re

parser = argparse.ArgumentParser(description='Convert plan survey svg into svg for web.')
parser.add_argument('svg_file', type=str, help='the svg input file')

args = parser.parse_args()
SVG_FILE = args.svg_file
OUT_FILE = SVG_FILE.replace('.svg', '_OPTIM.svg')

SVG_NS={"svg": "http://www.w3.org/2000/svg", 'inkscape':"http://www.inkscape.org/namespaces/inkscape"}
e = ET.parse(SVG_FILE).getroot()
ET.register_namespace('','http://www.w3.org/2000/svg')
eng = e.find('.//svg:g[@id="ENG"]', namespaces=SVG_NS)
if eng is not None:
	eng.set('display', 'inline')
	eng.set('style', 'display:inline')
slo = e.find('.//svg:g[@id="SLO"]', namespaces=SVG_NS)
if slo is not None:
	slo.set('display', 'inline')
	slo.set('style', 'display:inline')

tree = ET.ElementTree(e)
tree.write('temp.svg', encoding='utf-8')

# call(["svgo", "--disable=cleanupIDs", "temp.svg"])

e = ET.parse('temp.svg').getroot()
ET.register_namespace('','http://www.w3.org/2000/svg')
os.remove('temp.svg')

slo = e.find('.//svg:g[@id="SLO"]', namespaces=SVG_NS)
if slo is not None:
	slo.set('display', 'inline')
	slo.set('style', 'display:none')

labels = e.findall('.//*[@inkscape:label]', namespaces=SVG_NS)
for label in labels:
	text = label.attrib["{http://www.inkscape.org/namespaces/inkscape}label"]
	if re.match(r"\d\d\d\d$", text):
		print(text)
		label.set('class', 'year-' + text)
tree = ET.ElementTree(e)
tree.write(OUT_FILE,xml_declaration=True,encoding='utf-8',method="xml")
