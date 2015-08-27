--
-- The XML is just the contents of the file with ' changed to '' (i.e. escaped from the pardser)
--

/*


INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('.gpx', 1 /- GPS only  or 2 - + GLONASS -/, 
	REPLACE('
'::Text, E'\r', '' -* Remove CR *-)::XML);

 */
 
--INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
--VALUES ('.gpx', 1 /* GPS only  or 2 - + GLONASS */, 
--	REPLACE('
--'::Text, E'\r', '' /* Remove CR */)::XML);

INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('old ICCC gps.gpx', 1 /* GPS only */,
	REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<gpx
  version="1.0"
  creator="GPSBabel - http://www.gpsbabel.org"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://www.topografix.com/GPX/1/0"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
<time>2004-06-24T16:19:00.887Z</time>
<wpt lat="46.25152049" lon="13.76235277">
<ele>1874.202</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>002</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>002</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25164605" lon="13.76222863">
<ele>1823.012</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>003</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>003</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25172375" lon="13.76467598">
<ele>1832.865</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>004</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>004</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25151705" lon="13.76235830">
<ele>1866.992</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>005</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>005</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25151538" lon="13.76235821">
<ele>1866.511</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>006</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>006</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03307406" lon="172.87686240">
<ele>773.741</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>007</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>007</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03307280" lon="172.87685242">
<ele>774.462</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>008</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>008</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03307456" lon="172.87684982">
<ele>774.702</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>009</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>009</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03280869" lon="172.87835857">
<ele>767.973</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>010</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>010</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94280121" lon="172.89165428">
<ele>736.010</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>011</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>011</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.93858025" lon="172.90871246">
<ele>758.600</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>012</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>012</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95613297" lon="172.88171787">
<ele>757.879</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>013</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>013</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95803658" lon="172.88126759">
<ele>764.128</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>014</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>014</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25061147" lon="13.76560159">
<ele>1803.545</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>A1M</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>A1M</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25320274" lon="13.75932103">
<ele>1851.130</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B10</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B10</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25459816" lon="13.75849215">
<ele>1864.829</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B11</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B11</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25535588" lon="13.75944944">
<ele>1873.961</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B12</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B12</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25464803" lon="13.75904049">
<ele>1864.108</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B18</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B18</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25468709" lon="13.75844554">
<ele>1863.387</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B19</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B19</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25254367" lon="13.76421279">
<ele>1865.069</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B20</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B20</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25242783" lon="13.76465846">
<ele>1841.998</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B88</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B88</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25172149" lon="13.76468671">
<ele>1833.106</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B89</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B89</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25362368" lon="13.75967550">
<ele>1863.387</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B91</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B91</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25055104" lon="13.76067471">
<ele>1842.719</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B92</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B92</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25359409" lon="13.75939831">
<ele>1859.782</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B93</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B93</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25453957" lon="13.75835267">
<ele>1860.503</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B94</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B94</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25441116" lon="13.75923679">
<ele>1877.086</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B95</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B95</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25454971" lon="13.75795998">
<ele>1856.658</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B96</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B96</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25448173" lon="13.75817824">
<ele>1860.503</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B97</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B97</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25373817" lon="13.75863489">
<ele>1853.534</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B98</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B98</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25361504" lon="13.75794657">
<ele>1848.727</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>B99</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B99</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25153323" lon="13.76260582">
<ele>1869.395</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>BIVVY</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>BIVVY</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94723767" lon="172.89914191">
<ele>771.097</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>BL-HEL</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>BL-HEL</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96659358" lon="172.89128623">
<ele>760.042</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>BOLDER</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>BOLDER</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94782650" lon="172.89951583">
<ele>775.664</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>BT</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>BT</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94290473" lon="172.89178269">
<ele>738.413</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>CPHH</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>CPHH</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96574081" lon="172.89218871">
<ele>740.335</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>DAMP</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>DAMP</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96498484" lon="172.89233774">
<ele>742.258</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>DEAD</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>DEAD</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96144324" lon="172.89371086">
<ele>817.000</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>DRAUGH</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>DRAUGH</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96110570" lon="172.89143786">
<ele>736.971</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>DRIP</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>DRIP</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96277353" lon="172.89286244">
<ele>756.678</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>FENCE</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>FENCE</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25359937" lon="13.76479148">
<ele>1798.979</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>GW</name>
<sym>Danger Area</sym>
<type>Cemetary</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>GW</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96513144" lon="172.89578345">
<ele>780.951</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>HD</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>HD</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96475870" lon="172.89506588">
<ele>773.981</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>HD2</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>HD2</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03291606" lon="172.87767594">
<ele>773.020</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>HOLE1</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>HOLE1</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03307976" lon="172.87687623">
<ele>773.020</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>HUT</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>HUT</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25445516" lon="13.75816332">
<ele>1860.022</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>JB</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>JB</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25514457" lon="13.76090161">
<ele>1885.978</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>JLH</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>JLH</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95270368" lon="172.87927597">
<ele>835.025</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>KHP</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>KHP</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25063000" lon="13.76565792">
<ele>1804.507</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>KLF</name>
<sym>Bank</sym>
<type>Bank</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>KLF</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03307465" lon="172.87685075">
<ele>774.462</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>L09</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>L09</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.24952350" lon="13.76644976">
<ele>1780.474</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>L1JURD</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>L1JURD</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03280869" lon="172.87835857">
<ele>767.973</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>LAIR</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>LAIR</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-41.03282713" lon="172.87855311">
<ele>761.725</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>LAIRY</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>LAIRY</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94585197" lon="172.90123404">
<ele>806.906</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>LOG</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>LOG</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96529028" lon="172.88992719">
<ele>758.120</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>LOOK</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>LOOK</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94781602" lon="172.88874944">
<ele>777.346</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>LR</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>LR</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25320450" lon="13.76370016">
<ele>1845.843</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>M18</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>M18</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94654323" lon="172.90029317">
<ele>750.189</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>MARBLE</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>MARBLE</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94859654" lon="172.89831160">
<ele>772.059</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>MHBFB</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>MHBFB</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96524460" lon="172.89517367">
<ele>769.415</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>MUDBAG</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>MUDBAG</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95525764" lon="172.87896005">
<ele>778.547</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>N0GO</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>N0GO</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25326099" lon="13.75856331">
<ele>1841.517</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>N1</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>N1</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95809584" lon="172.94070450">
<ele>760.763</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>OJ</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>OJ</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25253537" lon="13.77087490">
<ele>1627.385</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>P01</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>P01</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25053067" lon="13.77094120">
<ele>1569.707</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>P02</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>P02</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25036588" lon="13.77139500">
<ele>1568.986</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>P03</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>P03</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94551226" lon="172.89677093">
<ele>771.818</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>PISS</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>PISS</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94595189" lon="172.89753536">
<ele>790.324</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>PIT</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>PIT</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95560197" lon="172.87940035">
<ele>791.766</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>PROTO</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>PROTO</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96440113" lon="172.89116662">
<ele>755.957</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>RUST</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>RUST</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96022878" lon="172.89249993">
<ele>773.501</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>SHEEP</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>SHEEP</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.95801261" lon="172.88118067">
<ele>765.810</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>STAGE</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>STAGE</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94507782" lon="172.89726085">
<ele>768.454</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>STRAWS</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>STRAWS</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25120307" lon="13.76097780">
<ele>1850.650</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>SUN</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>SUN</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.96611355" lon="172.89124809">
<ele>758.841</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>THORN</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>THORN</label_text>
</label>
</extensions>
</wpt>
<wpt lat="-40.94729400" lon="172.89741021">
<ele>785.036</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>TWIG</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>TWIG</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25379333" lon="13.76521560">
<ele>1771.582</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>VIL</name>
<sym>Danger Area</sym>
<type>Cemetary</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>VIL</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25419532" lon="13.76680775">
<ele>1815.322</ele>
<time>2015-06-24T16:19:01.147Z</time>
<name>WHALE</name>
<sym>Waypoint</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>WHALE</label_text>
</label>
</extensions>
</wpt>
</gpx>
'::Text, E'\r', '')::XML);
 
INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('Peter H old gps.gpx', 1 /* GPS only */,
	REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<gpx
  version="1.0"
  creator="GPSBabel - http://www.gpsbabel.org"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://www.topografix.com/GPX/1/0"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
<time>2004-06-20T10:24:30.526Z</time>
<wpt lat="50.90463354" lon="-0.40527164">
<ele>56.363</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name> WASH</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text> WASH</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.07682275" lon="5.55906736">
<ele>993.641</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>001</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>001</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.07681948" lon="5.55907407">
<ele>997.967</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>002</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>002</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02983782" lon="5.57016182">
<ele>1726.641</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>003</name>
<sym>Residence</sym>
<type>Residence</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>003</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02744495" lon="5.57257413">
<ele>1754.278</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>004</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>004</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02663426" lon="5.57374793">
<ele>1733.129</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>005</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>005</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02367502" lon="5.57473289">
<ele>1738.417</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>006</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>006</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02292837" lon="5.57566445">
<ele>1762.449</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>007</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>007</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02209445" lon="5.57643944">
<ele>1776.869</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>008</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>008</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01955440" lon="5.57630693">
<ele>1810.755</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>009</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>009</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01967686" lon="5.57637650">
<ele>1859.302</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>010</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>010</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01812922" lon="5.57655905">
<ele>1842.479</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>011</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>011</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01857221" lon="5.57644741">
<ele>1848.487</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>012</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>012</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01841655" lon="5.57713791">
<ele>1842.959</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>013</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>013</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01827213" lon="5.57736330">
<ele>1846.083</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>014</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>014</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.02195967" lon="5.57677321">
<ele>1813.159</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>015</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>015</label_text>
</label>
</extensions>
</wpt>
<wpt lat="50.93247780" lon="-0.28533147">
<ele>17.910</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>016</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>016</label_text>
</label>
</extensions>
</wpt>
<wpt lat="51.05017674" lon="-0.13577024">
<ele>71.984</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>017</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>017</label_text>
</label>
</extensions>
</wpt>
<wpt lat="50.97304194" lon="0.73061421">
<ele>32.089</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>018</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>018</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.11948207" lon="-2.42901041">
<ele>207.529</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>019</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>019</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.15695513" lon="-2.34141483">
<ele>375.758</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>020</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>020</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.27039589" lon="-2.43458957">
<ele>160.425</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>021</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>021</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.27039589" lon="-2.43458957">
<ele>160.425</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>022</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>022</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.38965901" lon="5.81720098">
<ele>1564.660</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>023</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>023</label_text>
</label>
</extensions>
</wpt>
<wpt lat="50.16617362" lon="-5.47742277">
<ele>94.334</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>024</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>024</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25976015" lon="13.76620978">
<ele>1921.306</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>025</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>025</label_text>
</label>
</extensions>
</wpt>
<wpt lat="51.23219043" lon="-0.39516357">
<ele>175.085</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>999999</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>999999</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.20508581" lon="5.59282271">
<ele>1621.137</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B01</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B01</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.20725706" lon="5.59584581">
<ele>1588.693</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B02</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B02</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.20928045" lon="5.59792453">
<ele>1567.063</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B03</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B03</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21027756" lon="5.60148734">
<ele>1552.162</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B04</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B04</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21416660" lon="5.60448722">
<ele>1526.928</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B05</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B05</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21560912" lon="5.60437918">
<ele>1503.376</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B06</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B06</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21720353" lon="5.60509767">
<ele>1494.724</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B07</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B07</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21740570" lon="5.60418421">
<ele>1455.551</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B08</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B08</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25171923" lon="13.76470221">
<ele>1838.153</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B89</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B89</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25169567" lon="13.76458520">
<ele>1838.874</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>B90</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>B90</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.21930085" lon="5.60467145">
<ele>1465.645</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>BERGER</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>BERGER</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.32495290" lon="5.79690093">
<ele>892.703</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>CAMPSI</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>CAMPSI</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25386985" lon="13.76429653">
<ele>1811.717</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>GW2</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>GW2</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25407278" lon="13.76340327">
<ele>1824.454</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>GW3</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>GW3</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25980198" lon="13.76624272">
<ele>1920.345</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>K2</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>K2</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25880395" lon="13.76843291">
<ele>1907.607</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>K22</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>K22</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25756778" lon="13.76327964">
<ele>1866.992</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>K6</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>K6</label_text>
</label>
</extensions>
</wpt>
<wpt lat="46.25152309" lon="13.76260221">
<ele>1868.434</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>MIGBIV</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>MIGBIV</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.19814224" lon="5.59117030">
<ele>1632.913</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>MOLIER</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>MOLIER</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.11961912" lon="-2.42913270">
<ele>144.323</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>NPC</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>NPC</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.31243410" lon="5.85354315">
<ele>1947.021</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>P40</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>P40</label_text>
</label>
</extensions>
</wpt>
<wpt lat="54.18317180" lon="-2.47810707">
<ele>386.092</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>ROBCRU</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>ROBCRU</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.38965901" lon="5.81720098">
<ele>1564.660</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>SCV35</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>SCV35</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.01749329" lon="5.57641874">
<ele>1852.092</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>SILENC</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>SILENC</label_text>
</label>
</extensions>
</wpt>
<wpt lat="45.31701926" lon="5.85166292">
<ele>1687.708</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>TDEGLA</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>TDEGLA</label_text>
</label>
</extensions>
</wpt>
<wpt lat="50.16625325" lon="-5.47746384">
<ele>97.218</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>TREG</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>TREG</label_text>
</label>
</extensions>
</wpt>
<wpt lat="50.99239139" lon="-4.48354488">
<ele>125.096</ele>
<time>2015-06-20T10:24:30.804Z</time>
<name>VALE</name>
<sym>Flag</sym>
<type>Waypoint</type>
<extensions>
<label xmlns="http://www.topografix.com/GPX/gpx_overlay/0/3">
<label_text>VALE</label_text>
</label>
</extensions>
</wpt>
</gpx>'::Text, E'\r', '')::XML);

INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('ICCC_2009_post_mig_club_GPS.gpx', 1 /* GPS only */, 
	REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<gpx
  version="1.0"
  creator="GPSBabel - http://www.gpsbabel.org"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://www.topografix.com/GPX/1/0"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
<time>2009-11-25T00:59:54Z</time>
<bounds minlat="46.235518930" minlon="13.755366951" maxlat="46.266458966" maxlon="13.792323936"/>
<wpt lat="46.251125950" lon="13.766198969">
  <ele>1774.465576</ele>
  <name>001</name>
  <cmt>001</cmt>
  <desc>001</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251100972" lon="13.766184971">
  <ele>1775.427002</ele>
  <name>002</name>
  <cmt>002</cmt>
  <desc>002</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266457960" lon="13.756312933">
  <ele>1782.396729</ele>
  <name>004</name>
  <cmt>004</cmt>
  <desc>004</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266450919" lon="13.756316956">
  <ele>1782.636963</ele>
  <name>005</name>
  <cmt>005</cmt>
  <desc>005</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>608</name>
  <cmt>608</cmt>
  <desc>608</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.260493398" lon="13.762388891">
  <ele>1861.464355</ele>
  <name>609</name>
  <cmt>609</cmt>
  <desc>609</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251714528" lon="13.764665248">
  <ele>1834.547607</ele>
  <name>610</name>
  <cmt>610</cmt>
  <desc>610</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252490189" lon="13.763151225">
  <ele>1859.061035</ele>
  <name>A1</name>
  <cmt>A1</cmt>
  <desc>A1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252555819" lon="13.763333196">
  <ele>1854.254639</ele>
  <name>A2</name>
  <cmt>A2</cmt>
  <desc>A2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252480214" lon="13.762884010">
  <ele>1858.340088</ele>
  <name>A3</name>
  <cmt>A3</cmt>
  <desc>A3</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252836948" lon="13.763162792">
  <ele>1855.215820</ele>
  <name>A4</name>
  <cmt>A4</cmt>
  <desc>A4</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251065265" lon="13.766686376">
  <ele>1725.919678</ele>
  <name>AJ01</name>
  <cmt>AJ01</cmt>
  <desc>AJ01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251370870" lon="13.761730241">
  <ele>1871.558105</ele>
  <name>ANDY</name>
  <cmt>ANDY</cmt>
  <desc>ANDY</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.252553305" lon="13.764146660">
  <ele>1856.177246</ele>
  <name>B20</name>
  <cmt>B20</cmt>
  <desc>B20</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252375944" lon="13.758146977">
  <ele>-0.114380</ele>
  <name>B9</name>
  <cmt>B9</cmt>
  <desc>B9</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252515921" lon="13.758154940">
  <ele>1841.036377</ele>
  <name>B9 CRN</name>
  <cmt>B9 CRN</cmt>
  <desc>B9 CRN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251375983" lon="13.759256992">
  <ele>-0.114380</ele>
  <name>BCAIRN</name>
  <cmt>BCAIRN</cmt>
  <desc>BCAIRN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>BIVVI</name>
  <cmt>BIVVI</cmt>
  <desc>BIVVI</desc>
  <sym>Medical Facility</sym>
</wpt>
<wpt lat="46.241785996" lon="13.769829925">
  <ele>1439.929443</ele>
  <name>BLOHOL</name>
  <cmt>BLOHOL</cmt>
  <desc>BLOHOL</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251787283" lon="13.761318941">
  <ele>1866.991943</ele>
  <name>BONE</name>
  <cmt>BONE</cmt>
  <desc>BONE</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.254224991" lon="13.758766986">
  <ele>-0.114380</ele>
  <name>BONECA</name>
  <cmt>BONECA</cmt>
  <desc>BONECA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250145938" lon="13.759666951">
  <ele>-0.114380</ele>
  <name>BWAY</name>
  <cmt>BWAY</cmt>
  <desc>BWAY</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247359710" lon="13.767002542">
  <ele>1746.106934</ele>
  <name>CHRIST</name>
  <cmt>CHRIST</cmt>
  <desc>CHRIST</desc>
  <sym>Park</sym>
</wpt>
<wpt lat="46.252509886" lon="13.770259917">
  <ele>1857.138428</ele>
  <name>E01</name>
  <cmt>E01</cmt>
  <desc>E01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251164926" lon="13.762261989">
  <ele>1855.936768</ele>
  <name>E04</name>
  <cmt>E04</cmt>
  <desc>E04</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252149967" lon="13.765619947">
  <ele>1805.227539</ele>
  <name>E1</name>
  <cmt>E1</cmt>
  <desc>E1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252465965" lon="13.765174951">
  <ele>1818.686035</ele>
  <name>E2</name>
  <cmt>E2</cmt>
  <desc>E2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253128974" lon="13.766282955">
  <ele>1771.101074</ele>
  <name>E5</name>
  <cmt>E5</cmt>
  <desc>E5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251879986" lon="13.766762987">
  <ele>1740.819824</ele>
  <name>E6</name>
  <cmt>E6</cmt>
  <desc>E6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250598980" lon="13.767323988">
  <ele>1731.927734</ele>
  <name>E7</name>
  <cmt>E7</cmt>
  <desc>E7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251020674" lon="13.764799777">
  <ele>1862.906250</ele>
  <name>GDUIEW</name>
  <cmt>GDUIEW</cmt>
  <desc>GDUIEW</desc>
  <sym>Scenic Area</sym>
</wpt>
<wpt lat="46.253635995" lon="13.764985939">
  <ele>-0.114380</ele>
  <name>GW1</name>
  <cmt>GW1</cmt>
  <desc>GW1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251855930" lon="13.759966940">
  <ele>-0.114380</ele>
  <name>HARE</name>
  <cmt>HARE</cmt>
  <desc>HARE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250795955" lon="13.758151922">
  <ele>1839.113770</ele>
  <name>HAWK</name>
  <cmt>HAWK</cmt>
  <desc>HAWK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251185210" lon="13.761745915">
  <ele>1871.798340</ele>
  <name>JANET</name>
  <cmt>JANET</cmt>
  <desc>JANET</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.253113132" lon="13.761011912">
  <ele>1850.649658</ele>
  <name>JCC</name>
  <cmt>JCC</cmt>
  <desc>JCC</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252955971" lon="13.757686978">
  <ele>-0.114380</ele>
  <name>JJ1</name>
  <cmt>JJ1</cmt>
  <desc>JJ1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254394976" lon="13.758346969">
  <ele>-0.114380</ele>
  <name>JJ2</name>
  <cmt>JJ2</cmt>
  <desc>JJ2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250985973" lon="13.758316962">
  <ele>-0.114380</ele>
  <name>JJ3BAD</name>
  <cmt>JJ3BAD</cmt>
  <desc>JJ3BAD</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251395931" lon="13.758706972">
  <ele>-0.114380</ele>
  <name>JJ3STA</name>
  <cmt>JJ3STA</cmt>
  <desc>JJ3STA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259484971" lon="13.756726999">
  <ele>-0.114380</ele>
  <name>JJ4</name>
  <cmt>JJ4</cmt>
  <desc>JJ4</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259324960" lon="13.755636932">
  <ele>-0.114380</ele>
  <name>JJ5</name>
  <cmt>JJ5</cmt>
  <desc>JJ5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260044966" lon="13.755366951">
  <ele>-0.114380</ele>
  <name>JJ6</name>
  <cmt>JJ6</cmt>
  <desc>JJ6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259044921" lon="13.767684996">
  <ele>-0.114380</ele>
  <name>K10</name>
  <cmt>K10</cmt>
  <desc>K10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258364981" lon="13.768744972">
  <ele>-0.114380</ele>
  <name>K11</name>
  <cmt>K11</cmt>
  <desc>K11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258084942" lon="13.770544985">
  <ele>-0.114380</ele>
  <name>K12</name>
  <cmt>K12</cmt>
  <desc>K12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258084942" lon="13.770814966">
  <ele>-0.114380</ele>
  <name>K13</name>
  <cmt>K13</cmt>
  <desc>K13</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257594936" lon="13.768944964">
  <ele>-0.114380</ele>
  <name>K14</name>
  <cmt>K14</cmt>
  <desc>K14</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.256605955" lon="13.770544985">
  <ele>-0.114380</ele>
  <name>K15I</name>
  <cmt>K15I</cmt>
  <desc>K15I</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257285979" lon="13.774323966">
  <ele>-0.114380</ele>
  <name>K16</name>
  <cmt>K16</cmt>
  <desc>K16</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.261574998" lon="13.767864956">
  <ele>-0.114380</ele>
  <name>K17</name>
  <cmt>K17</cmt>
  <desc>K17</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.261634929" lon="13.767714920">
  <ele>-0.114380</ele>
  <name>K18</name>
  <cmt>K18</cmt>
  <desc>K18</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257595941" lon="13.771314947">
  <ele>-0.114380</ele>
  <name>K19</name>
  <cmt>K19</cmt>
  <desc>K19</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259894930" lon="13.766124956">
  <ele>-0.114380</ele>
  <name>K2</name>
  <cmt>K2</cmt>
  <desc>K2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.256855987" lon="13.771424918">
  <ele>-0.114380</ele>
  <name>K20</name>
  <cmt>K20</cmt>
  <desc>K20</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257594936" lon="13.763285922">
  <ele>-0.114380</ele>
  <name>K6</name>
  <cmt>K6</cmt>
  <desc>K6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259044921" lon="13.768394943">
  <ele>-0.114380</ele>
  <name>K7</name>
  <cmt>K7</cmt>
  <desc>K7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258844929" lon="13.768264940">
  <ele>-0.114380</ele>
  <name>K8</name>
  <cmt>K8</cmt>
  <desc>K8</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257944964" lon="13.768854942">
  <ele>-0.114380</ele>
  <name>K9</name>
  <cmt>K9</cmt>
  <desc>K9</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257924009" lon="13.770480277">
  <ele>1847.525391</ele>
  <name>K99</name>
  <cmt>K99</cmt>
  <desc>K99</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.242596945" lon="13.755877996">
  <ele>-0.114380</ele>
  <name>KAL</name>
  <cmt>KAL</cmt>
  <desc>KAL</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260714931" lon="13.756955992">
  <ele>-0.114380</ele>
  <name>KUK</name>
  <cmt>KUK</cmt>
  <desc>KUK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260667155" lon="13.756897235">
  <ele>2089.535400</ele>
  <name>KUKTRG</name>
  <cmt>KUKTRG</cmt>
  <desc>KUKTRG</desc>
  <sym>Golf Course</sym>
</wpt>
<wpt lat="46.251963302" lon="13.763704766">
  <ele>1858.580566</ele>
  <name>M1</name>
  <cmt>M1</cmt>
  <desc>M1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.251615956" lon="13.762645964">
  <ele>-0.114380</ele>
  <name>M10</name>
  <cmt>M10</cmt>
  <desc>M10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251528952" lon="13.762658285">
  <ele>1862.425781</ele>
  <name>M101</name>
  <cmt>M101</cmt>
  <desc>M101</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252449956" lon="13.768759891">
  <ele>1854.494873</ele>
  <name>M11GK</name>
  <cmt>M11GK</cmt>
  <desc>M11GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249899846" lon="13.766089920">
  <ele>1853.533691</ele>
  <name>M12GK</name>
  <cmt>M12GK</cmt>
  <desc>M12GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254559848" lon="13.764429968">
  <ele>1855.936768</ele>
  <name>M13GK</name>
  <cmt>M13GK</cmt>
  <desc>M13GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253019841" lon="13.762309849">
  <ele>1853.052979</ele>
  <name>M14GK</name>
  <cmt>M14GK</cmt>
  <desc>M14GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253298121" lon="13.761565369">
  <ele>1859.781982</ele>
  <name>M15</name>
  <cmt>M15</cmt>
  <desc>M15</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252909955" lon="13.761349954">
  <ele>1867.232178</ele>
  <name>M15GK</name>
  <cmt>M15GK</cmt>
  <desc>M15GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252033040" lon="13.763970220">
  <ele>1855.215820</ele>
  <name>M16</name>
  <cmt>M16</cmt>
  <desc>M16</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253486210" lon="13.760341695">
  <ele>1854.975586</ele>
  <name>M17</name>
  <cmt>M17</cmt>
  <desc>M17</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253222264" lon="13.763729241">
  <ele>1850.169189</ele>
  <name>M18</name>
  <cmt>M18</cmt>
  <desc>M18</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253199885" lon="13.762309849">
  <ele>1853.052979</ele>
  <name>M18GK</name>
  <cmt>M18GK</cmt>
  <desc>M18GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253200304" lon="13.760603881">
  <ele>1849.447998</ele>
  <name>M19</name>
  <cmt>M19</cmt>
  <desc>M19</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252809959" lon="13.760319902">
  <ele>1852.332031</ele>
  <name>M19GK</name>
  <cmt>M19GK</cmt>
  <desc>M19GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253122184" lon="13.763804846">
  <ele>1855.936768</ele>
  <name>M2</name>
  <cmt>M2</cmt>
  <desc>M2</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.256909883" lon="13.777819891">
  <ele>1856.417480</ele>
  <name>M20GK</name>
  <cmt>M20GK</cmt>
  <desc>M20GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252869973" lon="13.757979926">
  <ele>1856.657959</ele>
  <name>M21GK</name>
  <cmt>M21GK</cmt>
  <desc>M21GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257199896" lon="13.758789953">
  <ele>1855.456299</ele>
  <name>M22GK</name>
  <cmt>M22GK</cmt>
  <desc>M22GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246139891" lon="13.759169905">
  <ele>1854.254639</ele>
  <name>M23GK</name>
  <cmt>M23GK</cmt>
  <desc>M23GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246806923" lon="13.766615465">
  <ele>1717.748535</ele>
  <name>M24</name>
  <cmt>M24</cmt>
  <desc>M24</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.246659989" lon="13.766419915">
  <ele>1854.735352</ele>
  <name>M24GK</name>
  <cmt>M24GK</cmt>
  <desc>M24GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252758829" lon="13.762947964">
  <ele>1860.503174</ele>
  <name>M4</name>
  <cmt>M4</cmt>
  <desc>M4</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252379967" lon="13.762789965">
  <ele>1855.215820</ele>
  <name>M4GK</name>
  <cmt>M4GK</cmt>
  <desc>M4GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767309990">
  <ele>1868.674072</ele>
  <name>M7CGK</name>
  <cmt>M7CGK</cmt>
  <desc>M7CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247409834" lon="13.767519873">
  <ele>1859.061035</ele>
  <name>M8CGK</name>
  <cmt>M8CGK</cmt>
  <desc>M8CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767619953">
  <ele>1835.268555</ele>
  <name>M9CGK</name>
  <cmt>M9CGK</cmt>
  <desc>M9CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246146597" lon="13.762530964">
  <ele>1879.489014</ele>
  <name>MIGCAN</name>
  <cmt>MIGCAN</cmt>
  <desc>MIGCAN</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.246158332" lon="13.762549236">
  <ele>1880.931152</ele>
  <name>MIGROX</name>
  <cmt>MIGROX</cmt>
  <desc>MIGROX</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251135925" lon="13.762115976">
  <ele>-0.114380</ele>
  <name>MIGTEN</name>
  <cmt>MIGTEN</cmt>
  <desc>MIGTEN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255204920" lon="13.760875957">
  <ele>-0.114380</ele>
  <name>MLC</name>
  <cmt>MLC</cmt>
  <desc>MLC</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255186899" lon="13.760889033">
  <ele>1883.574707</ele>
  <name>MLC1</name>
  <cmt>MLC1</cmt>
  <desc>MLC1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252470994" lon="13.757088929">
  <ele>1743.223145</ele>
  <name>MONATI</name>
  <cmt>MONATI</cmt>
  <desc>MONATI</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251025954" lon="13.760456946">
  <ele>-0.114380</ele>
  <name>MOTH</name>
  <cmt>MOTH</cmt>
  <desc>MOTH</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253675977" lon="13.760675965">
  <ele>-0.114380</ele>
  <name>MOUSE</name>
  <cmt>MOUSE</cmt>
  <desc>MOUSE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.248765942" lon="13.759696959">
  <ele>-0.114380</ele>
  <name>MWAY</name>
  <cmt>MWAY</cmt>
  <desc>MWAY</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.265744995" lon="13.757475000">
  <ele>1792.009766</ele>
  <name>N01</name>
  <cmt>N01</cmt>
  <desc>N01</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266458966" lon="13.756310921">
  <ele>1782.636963</ele>
  <name>N02</name>
  <cmt>N02</cmt>
  <desc>N02</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266333992" lon="13.756585931">
  <ele>1789.366211</ele>
  <name>N03</name>
  <cmt>N03</cmt>
  <desc>N03</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.265253983" lon="13.756665979">
  <ele>1790.808105</ele>
  <name>N04</name>
  <cmt>N04</cmt>
  <desc>N04</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.264979979" lon="13.758744942">
  <ele>1847.044922</ele>
  <name>N05</name>
  <cmt>N05</cmt>
  <desc>N05</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253295941" lon="13.758696998">
  <ele>-0.114380</ele>
  <name>N1</name>
  <cmt>N1</cmt>
  <desc>N1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251722742" lon="13.764643623">
  <ele>1832.625000</ele>
  <name>OBVCAV</name>
  <cmt>OBVCAV</cmt>
  <desc>OBVCAV</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252000853" lon="13.764458383">
  <ele>1851.130371</ele>
  <name>OLDBIV</name>
  <cmt>OLDBIV</cmt>
  <desc>OLDBIV</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.260904949" lon="13.763554981">
  <ele>-0.114380</ele>
  <name>PEAK2</name>
  <cmt>PEAK2</cmt>
  <desc>PEAK2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.248178706" lon="13.763577109">
  <ele>1769.659180</ele>
  <name>PF10</name>
  <cmt>PF10</cmt>
  <desc>PF10</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.241773926" lon="13.767995965">
  <ele>1455.070068</ele>
  <name>RAFORK</name>
  <cmt>RAFORK</cmt>
  <desc>RAFORK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254864698" lon="13.760848213">
  <ele>1895.831299</ele>
  <name>RAIN G</name>
  <cmt>RAIN G</cmt>
  <desc>RAIN G</desc>
  <sym>Gas Station</sym>
</wpt>
<wpt lat="46.235868959" lon="13.792323936">
  <ele>-0.114380</ele>
  <name>RAZORP</name>
  <cmt>RAZORP</cmt>
  <desc>RAZORP</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.235518930" lon="13.787783962">
  <ele>-0.114380</ele>
  <name>RCAVE</name>
  <cmt>RCAVE</cmt>
  <desc>RCAVE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251667924" lon="13.765221974">
  <ele>1812.918213</ele>
  <name>S-A</name>
  <cmt>S-A</cmt>
  <desc>S-A</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251343964" lon="13.767261961">
  <ele>1726.880859</ele>
  <name>S1</name>
  <cmt>S1</cmt>
  <desc>S1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251118993" lon="13.766284967">
  <ele>1775.907715</ele>
  <name>S10+11</name>
  <cmt>S10+11</cmt>
  <desc>S10+11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251431974" lon="13.765832931">
  <ele>1780.474121</ele>
  <name>S12</name>
  <cmt>S12</cmt>
  <desc>S12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251465920" lon="13.767294986">
  <ele>1720.632324</ele>
  <name>S2</name>
  <cmt>S2</cmt>
  <desc>S2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251196945" lon="13.767325999">
  <ele>1719.911377</ele>
  <name>S3</name>
  <cmt>S3</cmt>
  <desc>S3</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251049927" lon="13.767518951">
  <ele>1714.383789</ele>
  <name>S4</name>
  <cmt>S4</cmt>
  <desc>S4</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250762930" lon="13.767496990">
  <ele>1717.748535</ele>
  <name>S5</name>
  <cmt>S5</cmt>
  <desc>S5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250599986" lon="13.767076973">
  <ele>1744.665039</ele>
  <name>S7</name>
  <cmt>S7</cmt>
  <desc>S7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249930942" lon="13.766916962">
  <ele>1754.759033</ele>
  <name>S8</name>
  <cmt>S8</cmt>
  <desc>S8</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247945772" lon="13.764556032">
  <ele>1761.007324</ele>
  <name>SAMO1</name>
  <cmt>SAMO1</cmt>
  <desc>SAMO1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.247047735" lon="13.764696429">
  <ele>1757.162109</ele>
  <name>SAMO2</name>
  <cmt>SAMO2</cmt>
  <desc>SAMO2</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.251229718" lon="13.762146570">
  <ele>1866.270996</ele>
  <name>TETLEY</name>
  <cmt>TETLEY</cmt>
  <desc>TETLEY</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.251635989" lon="13.757756967">
  <ele>-0.114380</ele>
  <name>UBEND</name>
  <cmt>UBEND</cmt>
  <desc>UBEND</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252185926" lon="13.758406984">
  <ele>-0.114380</ele>
  <name>USTART</name>
  <cmt>USTART</cmt>
  <desc>USTART</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249415958" lon="13.759586988">
  <ele>-0.114380</ele>
  <name>V1</name>
  <cmt>V1</cmt>
  <desc>V1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255314974" lon="13.758546961">
  <ele>-0.114380</ele>
  <name>V10</name>
  <cmt>V10</cmt>
  <desc>V10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257324954" lon="13.758265916">
  <ele>-0.114380</ele>
  <name>V11</name>
  <cmt>V11</cmt>
  <desc>V11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258514933" lon="13.756376971">
  <ele>-0.114380</ele>
  <name>V12</name>
  <cmt>V12</cmt>
  <desc>V12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250395970" lon="13.759256992">
  <ele>-0.114380</ele>
  <name>V3</name>
  <cmt>V3</cmt>
  <desc>V3</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252555987" lon="13.758366918">
  <ele>-0.114380</ele>
  <name>V7</name>
  <cmt>V7</cmt>
  <desc>V7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253833557" lon="13.765090127">
  <ele>1793.211426</ele>
  <name>VILA1</name>
  <cmt>VILA1</cmt>
  <desc>VILA1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.253747307" lon="13.765288526">
  <ele>1782.877197</ele>
  <name>VILA2</name>
  <cmt>VILA2</cmt>
  <desc>VILA2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.241578963" lon="13.763521956">
  <ele>1481.025635</ele>
  <name>VODA</name>
  <cmt>VODA</cmt>
  <desc>VODA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255235178" lon="13.765296154">
  <ele>1798.979248</ele>
  <name>WB1</name>
  <cmt>WB1</cmt>
  <desc>WB1</desc>
  <sym>Flag</sym>
</wpt>
</gpx>'::Text, E'\r', '' /* Remove CR */)::XML);

INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('ICCC_eTrex_H_waypoints_area_n_recee_2009-12.gpx', 2 /* GPS + GLONASS */,
	REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<gpx
  version="1.0"
  creator="GPSBabel - http://www.gpsbabel.org"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://www.topografix.com/GPX/1/0"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
<time>2010-01-04T23:37:42Z</time>
<bounds minlat="46.235518847" minlon="13.753788304" maxlat="46.284590615" maxlon="13.792323936"/>
<wpt lat="46.251125867" lon="13.766198969">
  <ele>1774.465576</ele>
  <name>001</name>
  <cmt>001</cmt>
  <desc>001</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251100888" lon="13.766184971">
  <ele>1775.427002</ele>
  <name>002</name>
  <cmt>002</cmt>
  <desc>002</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266457876" lon="13.756312933">
  <ele>1782.396729</ele>
  <name>004</name>
  <cmt>004</cmt>
  <desc>004</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266450835" lon="13.756316872">
  <ele>1782.636963</ele>
  <name>005</name>
  <cmt>005</cmt>
  <desc>005</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>608</name>
  <cmt>608</cmt>
  <desc>608</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.260493398" lon="13.762388891">
  <ele>1861.464355</ele>
  <name>609</name>
  <cmt>609</cmt>
  <desc>609</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251714528" lon="13.764665248">
  <ele>1834.547607</ele>
  <name>610</name>
  <cmt>610</cmt>
  <desc>610</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252490189" lon="13.763151225">
  <ele>1859.061035</ele>
  <name>A1</name>
  <cmt>A1</cmt>
  <desc>A1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252555735" lon="13.763333196">
  <ele>1854.254639</ele>
  <name>A2</name>
  <cmt>A2</cmt>
  <desc>A2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252480131" lon="13.762884010">
  <ele>1858.340088</ele>
  <name>A3</name>
  <cmt>A3</cmt>
  <desc>A3</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252836864" lon="13.763162792">
  <ele>1855.215820</ele>
  <name>A4</name>
  <cmt>A4</cmt>
  <desc>A4</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251065182" lon="13.766686292">
  <ele>1725.919678</ele>
  <name>AJ01</name>
  <cmt>AJ01</cmt>
  <desc>AJ01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251370870" lon="13.761730241">
  <ele>1871.558105</ele>
  <name>ANDY</name>
  <cmt>ANDY</cmt>
  <desc>ANDY</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.252553305" lon="13.764146660">
  <ele>1856.177246</ele>
  <name>B20</name>
  <cmt>B20</cmt>
  <desc>B20</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252375944" lon="13.758146893">
  <ele>-0.114380</ele>
  <name>B9</name>
  <cmt>B9</cmt>
  <desc>B9</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252515838" lon="13.758154940">
  <ele>1841.036377</ele>
  <name>B9 CRN</name>
  <cmt>B9 CRN</cmt>
  <desc>B9 CRN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251375983" lon="13.759256909">
  <ele>-0.114380</ele>
  <name>BCAIRN</name>
  <cmt>BCAIRN</cmt>
  <desc>BCAIRN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>BIVVI</name>
  <cmt>BIVVI</cmt>
  <desc>BIVVI</desc>
  <sym>Medical Facility</sym>
</wpt>
<wpt lat="46.241785996" lon="13.769829841">
  <ele>1439.929443</ele>
  <name>BLOHOL</name>
  <cmt>BLOHOL</cmt>
  <desc>BLOHOL</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251787283" lon="13.761318941">
  <ele>1866.991943</ele>
  <name>BONE</name>
  <cmt>BONE</cmt>
  <desc>BONE</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.254224908" lon="13.758766903">
  <ele>-0.114380</ele>
  <name>BONECA</name>
  <cmt>BONECA</cmt>
  <desc>BONECA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250145854" lon="13.759666868">
  <ele>-0.114380</ele>
  <name>BWAY</name>
  <cmt>BWAY</cmt>
  <desc>BWAY</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247359710" lon="13.767002542">
  <ele>1746.106934</ele>
  <name>CHRIST</name>
  <cmt>CHRIST</cmt>
  <desc>CHRIST</desc>
  <sym>Park</sym>
</wpt>
<wpt lat="46.284590615" lon="13.773205150">
  <ele>1543.991455</ele>
  <name>DKOMNA</name>
  <cmt>DKOMNA</cmt>
  <desc>DKOMNA</desc>
  <sym>Residence</sym>
</wpt>
<wpt lat="46.252509803" lon="13.770259917">
  <ele>1857.138428</ele>
  <name>E01</name>
  <cmt>E01</cmt>
  <desc>E01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251164842" lon="13.762261989">
  <ele>1855.936768</ele>
  <name>E04</name>
  <cmt>E04</cmt>
  <desc>E04</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252149884" lon="13.765619947">
  <ele>1805.227539</ele>
  <name>E1</name>
  <cmt>E1</cmt>
  <desc>E1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252465881" lon="13.765174868">
  <ele>1818.686035</ele>
  <name>E2</name>
  <cmt>E2</cmt>
  <desc>E2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253128974" lon="13.766282871">
  <ele>1771.101074</ele>
  <name>E5</name>
  <cmt>E5</cmt>
  <desc>E5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251879903" lon="13.766762987">
  <ele>1740.819824</ele>
  <name>E6</name>
  <cmt>E6</cmt>
  <desc>E6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250598896" lon="13.767323988">
  <ele>1731.927734</ele>
  <name>E7</name>
  <cmt>E7</cmt>
  <desc>E7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.274329992" lon="13.755389918">
  <ele>1570.427490</ele>
  <name>FOOT</name>
  <cmt>FOOT</cmt>
  <desc>FOOT</desc>
  <sym>Trail Head</sym>
</wpt>
<wpt lat="46.251020674" lon="13.764799694">
  <ele>1862.906250</ele>
  <name>GDUIEW</name>
  <cmt>GDUIEW</cmt>
  <desc>GDUIEW</desc>
  <sym>Scenic Area</sym>
</wpt>
<wpt lat="46.276229918" lon="13.763099927">
  <ele>1570.427490</ele>
  <name>GOVNJA</name>
  <cmt>GOVNJA</cmt>
  <desc>GOVNJA</desc>
  <sym>Residence</sym>
</wpt>
<wpt lat="46.253635911" lon="13.764985856">
  <ele>-0.114380</ele>
  <name>GW1</name>
  <cmt>GW1</cmt>
  <desc>GW1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251855846" lon="13.759966940">
  <ele>-0.114380</ele>
  <name>HARE</name>
  <cmt>HARE</cmt>
  <desc>HARE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250795955" lon="13.758151839">
  <ele>1839.113770</ele>
  <name>HAWK</name>
  <cmt>HAWK</cmt>
  <desc>HAWK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251185127" lon="13.761745915">
  <ele>1871.798340</ele>
  <name>JANET</name>
  <cmt>JANET</cmt>
  <desc>JANET</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.253113132" lon="13.761011912">
  <ele>1850.649658</ele>
  <name>JCC</name>
  <cmt>JCC</cmt>
  <desc>JCC</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252955887" lon="13.757686894">
  <ele>-0.114380</ele>
  <name>JJ1</name>
  <cmt>JJ1</cmt>
  <desc>JJ1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254394893" lon="13.758346885">
  <ele>-0.114380</ele>
  <name>JJ2</name>
  <cmt>JJ2</cmt>
  <desc>JJ2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250985973" lon="13.758316878">
  <ele>-0.114380</ele>
  <name>JJ3BAD</name>
  <cmt>JJ3BAD</cmt>
  <desc>JJ3BAD</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251395848" lon="13.758706888">
  <ele>-0.114380</ele>
  <name>JJ3STA</name>
  <cmt>JJ3STA</cmt>
  <desc>JJ3STA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259484971" lon="13.756726999">
  <ele>-0.114380</ele>
  <name>JJ4</name>
  <cmt>JJ4</cmt>
  <desc>JJ4</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259324877" lon="13.755636849">
  <ele>-0.114380</ele>
  <name>JJ5</name>
  <cmt>JJ5</cmt>
  <desc>JJ5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260044966" lon="13.755366867">
  <ele>-0.114380</ele>
  <name>JJ6</name>
  <cmt>JJ6</cmt>
  <desc>JJ6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259044837" lon="13.767684912">
  <ele>-0.114380</ele>
  <name>K10</name>
  <cmt>K10</cmt>
  <desc>K10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258364897" lon="13.768744972">
  <ele>-0.114380</ele>
  <name>K11</name>
  <cmt>K11</cmt>
  <desc>K11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258084942" lon="13.770544901">
  <ele>-0.114380</ele>
  <name>K12</name>
  <cmt>K12</cmt>
  <desc>K12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258084942" lon="13.770814883">
  <ele>-0.114380</ele>
  <name>K13</name>
  <cmt>K13</cmt>
  <desc>K13</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257594936" lon="13.768944964">
  <ele>-0.114380</ele>
  <name>K14</name>
  <cmt>K14</cmt>
  <desc>K14</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.256605955" lon="13.770544901">
  <ele>-0.114380</ele>
  <name>K15I</name>
  <cmt>K15I</cmt>
  <desc>K15I</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257285979" lon="13.774323883">
  <ele>-0.114380</ele>
  <name>K16</name>
  <cmt>K16</cmt>
  <desc>K16</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.261574915" lon="13.767864956">
  <ele>-0.114380</ele>
  <name>K17</name>
  <cmt>K17</cmt>
  <desc>K17</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.261634845" lon="13.767714920">
  <ele>-0.114380</ele>
  <name>K18</name>
  <cmt>K18</cmt>
  <desc>K18</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257595858" lon="13.771314947">
  <ele>-0.114380</ele>
  <name>K19</name>
  <cmt>K19</cmt>
  <desc>K19</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259894930" lon="13.766124872">
  <ele>-0.114380</ele>
  <name>K2</name>
  <cmt>K2</cmt>
  <desc>K2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.256855903" lon="13.771424918">
  <ele>-0.114380</ele>
  <name>K20</name>
  <cmt>K20</cmt>
  <desc>K20</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257594936" lon="13.763285922">
  <ele>-0.114380</ele>
  <name>K6</name>
  <cmt>K6</cmt>
  <desc>K6</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.259044837" lon="13.768394860">
  <ele>-0.114380</ele>
  <name>K7</name>
  <cmt>K7</cmt>
  <desc>K7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258844929" lon="13.768264856">
  <ele>-0.114380</ele>
  <name>K8</name>
  <cmt>K8</cmt>
  <desc>K8</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257944964" lon="13.768854858">
  <ele>-0.114380</ele>
  <name>K9</name>
  <cmt>K9</cmt>
  <desc>K9</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257923925" lon="13.770480193">
  <ele>1847.525391</ele>
  <name>K99</name>
  <cmt>K99</cmt>
  <desc>K99</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.242596945" lon="13.755877996">
  <ele>-0.114380</ele>
  <name>KAL</name>
  <cmt>KAL</cmt>
  <desc>KAL</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260714848" lon="13.756955909">
  <ele>-0.114380</ele>
  <name>KUK</name>
  <cmt>KUK</cmt>
  <desc>KUK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260667155" lon="13.756897151">
  <ele>2089.535400</ele>
  <name>KUKTRG</name>
  <cmt>KUKTRG</cmt>
  <desc>KUKTRG</desc>
  <sym>Golf Course</sym>
</wpt>
<wpt lat="46.276699640" lon="13.759823190">
  <ele>1447.860352</ele>
  <name>LAKE</name>
  <cmt>LAKE</cmt>
  <desc>LAKE</desc>
  <sym>Golf Course</sym>
</wpt>
<wpt lat="46.251963219" lon="13.763704766">
  <ele>1858.580566</ele>
  <name>M1</name>
  <cmt>M1</cmt>
  <desc>M1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.251615873" lon="13.762645964">
  <ele>-0.114380</ele>
  <name>M10</name>
  <cmt>M10</cmt>
  <desc>M10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251528868" lon="13.762658285">
  <ele>1862.425781</ele>
  <name>M101</name>
  <cmt>M101</cmt>
  <desc>M101</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252449956" lon="13.768759808">
  <ele>1854.494873</ele>
  <name>M11GK</name>
  <cmt>M11GK</cmt>
  <desc>M11GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249899846" lon="13.766089920">
  <ele>1853.533691</ele>
  <name>M12GK</name>
  <cmt>M12GK</cmt>
  <desc>M12GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254559765" lon="13.764429968">
  <ele>1855.936768</ele>
  <name>M13GK</name>
  <cmt>M13GK</cmt>
  <desc>M13GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253019758" lon="13.762309765">
  <ele>1853.052979</ele>
  <name>M14GK</name>
  <cmt>M14GK</cmt>
  <desc>M14GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253298121" lon="13.761565369">
  <ele>1859.781982</ele>
  <name>M15</name>
  <cmt>M15</cmt>
  <desc>M15</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252909955" lon="13.761349954">
  <ele>1867.232178</ele>
  <name>M15GK</name>
  <cmt>M15GK</cmt>
  <desc>M15GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252033040" lon="13.763970137">
  <ele>1855.215820</ele>
  <name>M16</name>
  <cmt>M16</cmt>
  <desc>M16</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253486127" lon="13.760341695">
  <ele>1854.975586</ele>
  <name>M17</name>
  <cmt>M17</cmt>
  <desc>M17</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253222181" lon="13.763729241">
  <ele>1850.169189</ele>
  <name>M18</name>
  <cmt>M18</cmt>
  <desc>M18</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253199885" lon="13.762309765">
  <ele>1853.052979</ele>
  <name>M18GK</name>
  <cmt>M18GK</cmt>
  <desc>M18GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253200304" lon="13.760603881">
  <ele>1849.447998</ele>
  <name>M19</name>
  <cmt>M19</cmt>
  <desc>M19</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252809959" lon="13.760319902">
  <ele>1852.332031</ele>
  <name>M19GK</name>
  <cmt>M19GK</cmt>
  <desc>M19GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253122101" lon="13.763804846">
  <ele>1855.936768</ele>
  <name>M2</name>
  <cmt>M2</cmt>
  <desc>M2</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.256909883" lon="13.777819891">
  <ele>1856.417480</ele>
  <name>M20GK</name>
  <cmt>M20GK</cmt>
  <desc>M20GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252869973" lon="13.757979926">
  <ele>1856.657959</ele>
  <name>M21GK</name>
  <cmt>M21GK</cmt>
  <desc>M21GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257199813" lon="13.758789953">
  <ele>1855.456299</ele>
  <name>M22GK</name>
  <cmt>M22GK</cmt>
  <desc>M22GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246139808" lon="13.759169905">
  <ele>1854.254639</ele>
  <name>M23GK</name>
  <cmt>M23GK</cmt>
  <desc>M23GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246806839" lon="13.766615381">
  <ele>1717.748535</ele>
  <name>M24</name>
  <cmt>M24</cmt>
  <desc>M24</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.246659989" lon="13.766419832">
  <ele>1854.735352</ele>
  <name>M24GK</name>
  <cmt>M24GK</cmt>
  <desc>M24GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252758829" lon="13.762947964">
  <ele>1860.503174</ele>
  <name>M4</name>
  <cmt>M4</cmt>
  <desc>M4</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252379967" lon="13.762789965">
  <ele>1855.215820</ele>
  <name>M4GK</name>
  <cmt>M4GK</cmt>
  <desc>M4GK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767309990">
  <ele>1868.674072</ele>
  <name>M7CGK</name>
  <cmt>M7CGK</cmt>
  <desc>M7CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247409834" lon="13.767519873">
  <ele>1859.061035</ele>
  <name>M8CGK</name>
  <cmt>M8CGK</cmt>
  <desc>M8CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767619953">
  <ele>1835.268555</ele>
  <name>M9CGK</name>
  <cmt>M9CGK</cmt>
  <desc>M9CGK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246146597" lon="13.762530964">
  <ele>1879.489014</ele>
  <name>MIGCAN</name>
  <cmt>MIGCAN</cmt>
  <desc>MIGCAN</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.246158332" lon="13.762549153">
  <ele>1880.931152</ele>
  <name>MIGROX</name>
  <cmt>MIGROX</cmt>
  <desc>MIGROX</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251135925" lon="13.762115976">
  <ele>-0.114380</ele>
  <name>MIGTEN</name>
  <cmt>MIGTEN</cmt>
  <desc>MIGTEN</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255204920" lon="13.760875873">
  <ele>-0.114380</ele>
  <name>MLC</name>
  <cmt>MLC</cmt>
  <desc>MLC</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255186899" lon="13.760889033">
  <ele>1883.574707</ele>
  <name>MLC1</name>
  <cmt>MLC1</cmt>
  <desc>MLC1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252470911" lon="13.757088846">
  <ele>1743.223145</ele>
  <name>MONATI</name>
  <cmt>MONATI</cmt>
  <desc>MONATI</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251025870" lon="13.760456946">
  <ele>-0.114380</ele>
  <name>MOTH</name>
  <cmt>MOTH</cmt>
  <desc>MOTH</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253675977" lon="13.760675965">
  <ele>-0.114380</ele>
  <name>MOUSE</name>
  <cmt>MOUSE</cmt>
  <desc>MOUSE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.248765942" lon="13.759696959">
  <ele>-0.114380</ele>
  <name>MWAY</name>
  <cmt>MWAY</cmt>
  <desc>MWAY</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.265744912" lon="13.757475000">
  <ele>1792.009766</ele>
  <name>N01</name>
  <cmt>N01</cmt>
  <desc>N01</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266458966" lon="13.756310837">
  <ele>1782.636963</ele>
  <name>N02</name>
  <cmt>N02</cmt>
  <desc>N02</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266333992" lon="13.756585848">
  <ele>1789.366211</ele>
  <name>N03</name>
  <cmt>N03</cmt>
  <desc>N03</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.265253900" lon="13.756665979">
  <ele>1790.808105</ele>
  <name>N04</name>
  <cmt>N04</cmt>
  <desc>N04</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.264979895" lon="13.758744858">
  <ele>1847.044922</ele>
  <name>N05</name>
  <cmt>N05</cmt>
  <desc>N05</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.272914959" lon="13.755777832">
  <ele>1640.603027</ele>
  <name>N06</name>
  <cmt>N06</cmt>
  <desc>N06</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.269322727" lon="13.758773189">
  <ele>1749.471680</ele>
  <name>N07</name>
  <cmt>N07</cmt>
  <desc>N07</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.268532900" lon="13.758329032">
  <ele>1749.952393</ele>
  <name>N08</name>
  <cmt>N08</cmt>
  <desc>N08</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.268011210" lon="13.757593855">
  <ele>1767.015625</ele>
  <name>N09</name>
  <cmt>N09</cmt>
  <desc>N09</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.253295857" lon="13.758696998">
  <ele>-0.114380</ele>
  <name>N1</name>
  <cmt>N1</cmt>
  <desc>N1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.266653007" lon="13.756588027">
  <ele>1782.877197</ele>
  <name>N10</name>
  <cmt>N10</cmt>
  <desc>N10</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251722742" lon="13.764643623">
  <ele>1832.625000</ele>
  <name>OBVCAV</name>
  <cmt>OBVCAV</cmt>
  <desc>OBVCAV</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252000770" lon="13.764458383">
  <ele>1851.130371</ele>
  <name>OLDBIV</name>
  <cmt>OLDBIV</cmt>
  <desc>OLDBIV</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.269566556" lon="13.760004239">
  <ele>1791.529053</ele>
  <name>P01</name>
  <cmt>P01</cmt>
  <desc>P01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.260904865" lon="13.763554981">
  <ele>-0.114380</ele>
  <name>PEAK2</name>
  <cmt>PEAK2</cmt>
  <desc>PEAK2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.248178706" lon="13.763577025">
  <ele>1769.659180</ele>
  <name>PF10</name>
  <cmt>PF10</cmt>
  <desc>PF10</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.269975174" lon="13.758187545">
  <ele>1702.848145</ele>
  <name>PWAY</name>
  <cmt>PWAY</cmt>
  <desc>PWAY</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.241773926" lon="13.767995965">
  <ele>1455.070068</ele>
  <name>RAFORK</name>
  <cmt>RAFORK</cmt>
  <desc>RAFORK</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254864614" lon="13.760848213">
  <ele>1895.831299</ele>
  <name>RAIN G</name>
  <cmt>RAIN G</cmt>
  <desc>RAIN G</desc>
  <sym>Gas Station</sym>
</wpt>
<wpt lat="46.235868959" lon="13.792323936">
  <ele>-0.114380</ele>
  <name>RAZORP</name>
  <cmt>RAZORP</cmt>
  <desc>RAZORP</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.235518847" lon="13.787783962">
  <ele>-0.114380</ele>
  <name>RCAVE</name>
  <cmt>RCAVE</cmt>
  <desc>RCAVE</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251667840" lon="13.765221974">
  <ele>1812.918213</ele>
  <name>S-A</name>
  <cmt>S-A</cmt>
  <desc>S-A</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251343964" lon="13.767261878">
  <ele>1726.880859</ele>
  <name>S1</name>
  <cmt>S1</cmt>
  <desc>S1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251118910" lon="13.766284967">
  <ele>1775.907715</ele>
  <name>S10+11</name>
  <cmt>S10+11</cmt>
  <desc>S10+11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251431974" lon="13.765832931">
  <ele>1780.474121</ele>
  <name>S12</name>
  <cmt>S12</cmt>
  <desc>S12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251465837" lon="13.767294902">
  <ele>1720.632324</ele>
  <name>S2</name>
  <cmt>S2</cmt>
  <desc>S2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251196861" lon="13.767325915">
  <ele>1719.911377</ele>
  <name>S3</name>
  <cmt>S3</cmt>
  <desc>S3</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251049927" lon="13.767518951">
  <ele>1714.383789</ele>
  <name>S4</name>
  <cmt>S4</cmt>
  <desc>S4</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250762846" lon="13.767496906">
  <ele>1717.748535</ele>
  <name>S5</name>
  <cmt>S5</cmt>
  <desc>S5</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250599986" lon="13.767076973">
  <ele>1744.665039</ele>
  <name>S7</name>
  <cmt>S7</cmt>
  <desc>S7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249930859" lon="13.766916879">
  <ele>1754.759033</ele>
  <name>S8</name>
  <cmt>S8</cmt>
  <desc>S8</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247945689" lon="13.764556032">
  <ele>1761.007324</ele>
  <name>SAMO1</name>
  <cmt>SAMO1</cmt>
  <desc>SAMO1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.247047652" lon="13.764696429">
  <ele>1757.162109</ele>
  <name>SAMO2</name>
  <cmt>SAMO2</cmt>
  <desc>SAMO2</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.281942017" lon="13.773853071">
  <ele>1459.876465</ele>
  <name>T01</name>
  <cmt>T01</cmt>
  <desc>T01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.280344008" lon="13.769335980">
  <ele>1538.704346</ele>
  <name>T02</name>
  <cmt>T02</cmt>
  <desc>T02</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.279362487" lon="13.766832808">
  <ele>1513.950439</ele>
  <name>T03</name>
  <cmt>T03</cmt>
  <desc>T03</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.277272543" lon="13.764600288">
  <ele>1485.832031</ele>
  <name>T04</name>
  <cmt>T04</cmt>
  <desc>T04</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.277027540" lon="13.756510746">
  <ele>1439.208496</ele>
  <name>T05</name>
  <cmt>T05</cmt>
  <desc>T05</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.276270067" lon="13.753788304">
  <ele>1530.533203</ele>
  <name>T06</name>
  <cmt>T06</cmt>
  <desc>T06</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.273503285" lon="13.755761236">
  <ele>1636.277344</ele>
  <name>T07</name>
  <cmt>T07</cmt>
  <desc>T07</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251229635" lon="13.762146570">
  <ele>1866.270996</ele>
  <name>TETLEY</name>
  <cmt>TETLEY</cmt>
  <desc>TETLEY</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.251635905" lon="13.757756883">
  <ele>-0.114380</ele>
  <name>UBEND</name>
  <cmt>UBEND</cmt>
  <desc>UBEND</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252185926" lon="13.758406984">
  <ele>-0.114380</ele>
  <name>USTART</name>
  <cmt>USTART</cmt>
  <desc>USTART</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.249415874" lon="13.759586904">
  <ele>-0.114380</ele>
  <name>V1</name>
  <cmt>V1</cmt>
  <desc>V1</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255314890" lon="13.758546878">
  <ele>-0.114380</ele>
  <name>V10</name>
  <cmt>V10</cmt>
  <desc>V10</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257324871" lon="13.758265832">
  <ele>-0.114380</ele>
  <name>V11</name>
  <cmt>V11</cmt>
  <desc>V11</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.258514849" lon="13.756376971">
  <ele>-0.114380</ele>
  <name>V12</name>
  <cmt>V12</cmt>
  <desc>V12</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.250395887" lon="13.759256909">
  <ele>-0.114380</ele>
  <name>V3</name>
  <cmt>V3</cmt>
  <desc>V3</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252555987" lon="13.758366834">
  <ele>-0.114380</ele>
  <name>V7</name>
  <cmt>V7</cmt>
  <desc>V7</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253833557" lon="13.765090127">
  <ele>1793.211426</ele>
  <name>VILA1</name>
  <cmt>VILA1</cmt>
  <desc>VILA1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.253747307" lon="13.765288442">
  <ele>1782.877197</ele>
  <name>VILA2</name>
  <cmt>VILA2</cmt>
  <desc>VILA2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.241578963" lon="13.763521872">
  <ele>1481.025635</ele>
  <name>VODA</name>
  <cmt>VODA</cmt>
  <desc>VODA</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.255235095" lon="13.765296154">
  <ele>1798.979248</ele>
  <name>WB1</name>
  <cmt>WB1</cmt>
  <desc>WB1</desc>
  <sym>Flag</sym>
</wpt>
</gpx>'::Text, E'\r', '' /* Remove CR */)::XML);

INSERT INTO gpx_import_data (file_name, gps_quality, xml_data)
VALUES ('ICCC_JSPDT_Mig_GPS_points_2005-2008.gpx', 1 /* GPS only */,
	REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<gpx
  version="1.0"
  creator="GPSBabel - http://www.gpsbabel.org"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://www.topografix.com/GPX/1/0"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
<time>2009-07-08T20:30:31Z</time>
<bounds minlat="46.235519000" minlon="13.755358000" maxlat="46.266459000" maxlon="13.792324000"/>
<wpt lat="46.251616000" lon="13.762646000">
  <ele>0.000000</ele>
  <name>M10</name>
  <cmt>M10</cmt>
  <desc>M10</desc>
</wpt>
<wpt lat="46.251165000" lon="13.762262000">
  <ele>1855.936768</ele>
  <name>E04</name>
  <cmt>E04</cmt>
  <desc>E04</desc>
</wpt>
<wpt lat="46.251136000" lon="13.762116000">
  <ele>0.000000</ele>
  <name>MIGTEN</name>
  <cmt>MIGTEN</cmt>
  <desc>MIGTEN</desc>
</wpt>
<wpt lat="46.251026000" lon="13.760457000">
  <ele>0.000000</ele>
  <name>MOTH</name>
  <cmt>MOTH</cmt>
  <desc>MOTH</desc>
</wpt>
<wpt lat="46.251668000" lon="13.765222000">
  <ele>1812.918213</ele>
  <name>S-A</name>
  <cmt>S-A</cmt>
  <desc>S-A</desc>
</wpt>
<wpt lat="46.251856000" lon="13.759967000">
  <ele>0.000000</ele>
  <name>HARE</name>
  <cmt>HARE</cmt>
  <desc>HARE</desc>
</wpt>
<wpt lat="46.252466000" lon="13.765175000">
  <ele>1818.686035</ele>
  <name>E2</name>
  <cmt>E2</cmt>
  <desc>E2</desc>
</wpt>
<wpt lat="46.252150000" lon="13.765620000">
  <ele>1805.227539</ele>
  <name>E1</name>
  <cmt>E1</cmt>
  <desc>E1</desc>
</wpt>
<wpt lat="46.251432000" lon="13.765833000">
  <ele>1780.474121</ele>
  <name>S12</name>
  <cmt>S12</cmt>
  <desc>S12</desc>
</wpt>
<wpt lat="46.251376000" lon="13.759257000">
  <ele>0.000000</ele>
  <name>BCAIRN</name>
  <cmt>BCAIRN</cmt>
  <desc>BCAIRN</desc>
</wpt>
<wpt lat="46.251101000" lon="13.766185000">
  <ele>1775.427002</ele>
  <name>002</name>
  <cmt>002</cmt>
  <desc>002</desc>
</wpt>
<wpt lat="46.251126000" lon="13.766199000">
  <ele>1774.465576</ele>
  <name>001</name>
  <cmt>001</cmt>
  <desc>001</desc>
</wpt>
<wpt lat="46.250146000" lon="13.759667000">
  <ele>0.000000</ele>
  <name>BWAY</name>
  <cmt>BWAY</cmt>
  <desc>BWAY</desc>
</wpt>
<wpt lat="46.251119000" lon="13.766285000">
  <ele>1775.907715</ele>
  <name>S10+S11</name>
  <cmt>S10+S11</cmt>
  <desc>S10+S11</desc>
</wpt>
<wpt lat="46.253676000" lon="13.760676000">
  <ele>0.000000</ele>
  <name>MOUSE</name>
  <cmt>MOUSE</cmt>
  <desc>MOUSE</desc>
</wpt>
<wpt lat="46.250396000" lon="13.759257000">
  <ele>0.000000</ele>
  <name>V3</name>
  <cmt>V3</cmt>
  <desc>V3</desc>
</wpt>
<wpt lat="46.253636000" lon="13.764986000">
  <ele>0.000000</ele>
  <name>GW1</name>
  <cmt>GW1</cmt>
  <desc>GW1</desc>
</wpt>
<wpt lat="46.251396000" lon="13.758707000">
  <ele>0.000000</ele>
  <name>JJ3STA</name>
  <cmt>JJ3STA</cmt>
  <desc>JJ3STA</desc>
</wpt>
<wpt lat="46.251880000" lon="13.766763000">
  <ele>1740.819824</ele>
  <name>E6</name>
  <cmt>E6</cmt>
  <desc>E6</desc>
</wpt>
<wpt lat="46.253129000" lon="13.766283000">
  <ele>1771.101074</ele>
  <name>E5</name>
  <cmt>E5</cmt>
  <desc>E5</desc>
</wpt>
<wpt lat="46.249416000" lon="13.759587000">
  <ele>0.000000</ele>
  <name>V1</name>
  <cmt>V1</cmt>
  <desc>V1</desc>
</wpt>
<wpt lat="46.252186000" lon="13.758407000">
  <ele>0.000000</ele>
  <name>USTART</name>
  <cmt>USTART</cmt>
  <desc>USTART</desc>
</wpt>
<wpt lat="46.250986000" lon="13.758317000">
  <ele>0.000000</ele>
  <name>JJ3BAD</name>
  <cmt>JJ3BAD</cmt>
  <desc>JJ3BAD</desc>
</wpt>
<wpt lat="46.252556000" lon="13.758367000">
  <ele>0.000000</ele>
  <name>V7</name>
  <cmt>V7</cmt>
  <desc>V7</desc>
</wpt>
<wpt lat="46.251344000" lon="13.767262000">
  <ele>1726.880859</ele>
  <name>s1</name>
  <cmt>s1</cmt>
  <desc>s1</desc>
</wpt>
<wpt lat="46.250600000" lon="13.767077000">
  <ele>1744.665039</ele>
  <name>S7</name>
  <cmt>S7</cmt>
  <desc>S7</desc>
</wpt>
<wpt lat="46.250796000" lon="13.758152000">
  <ele>1839.113769</ele>
  <name>Hawk</name>
  <cmt>Hawk</cmt>
  <desc>Hawk</desc>
</wpt>
<wpt lat="46.251466000" lon="13.767295000">
  <ele>1720.632324</ele>
  <name>S2</name>
  <cmt>S2</cmt>
  <desc>S2</desc>
</wpt>
<wpt lat="46.252376000" lon="13.758147000">
  <ele>0.000000</ele>
  <name>B9</name>
  <cmt>B9</cmt>
  <desc>B9</desc>
</wpt>
<wpt lat="46.251197000" lon="13.767326000">
  <ele>1719.911377</ele>
  <name>S3</name>
  <cmt>S3</cmt>
  <desc>S3</desc>
</wpt>
<wpt lat="46.253296000" lon="13.758697000">
  <ele>0.000000</ele>
  <name>N1</name>
  <cmt>N1</cmt>
  <desc>N1</desc>
</wpt>
<wpt lat="46.252516000" lon="13.758155000">
  <ele>1841.036377</ele>
  <name>B9 CAIRN</name>
  <cmt>B9 CAIRN</cmt>
  <desc>B9 CAIRN</desc>
</wpt>
<wpt lat="46.249931000" lon="13.766917000">
  <ele>1754.759033</ele>
  <name>S8</name>
  <cmt>S8</cmt>
  <desc>S8</desc>
</wpt>
<wpt lat="46.250599000" lon="13.767324000">
  <ele>1731.927734</ele>
  <name>E7</name>
  <cmt>E7</cmt>
  <desc>E7</desc>
</wpt>
<wpt lat="46.251636000" lon="13.757757000">
  <ele>0.000000</ele>
  <name>UBEND</name>
  <cmt>UBEND</cmt>
  <desc>UBEND</desc>
</wpt>
<wpt lat="46.251050000" lon="13.767519000">
  <ele>1714.383789</ele>
  <name>S4</name>
  <cmt>S4</cmt>
  <desc>S4</desc>
</wpt>
<wpt lat="46.250763000" lon="13.767497000">
  <ele>1717.748535</ele>
  <name>S5</name>
  <cmt>S5</cmt>
  <desc>S5</desc>
</wpt>
<wpt lat="46.248766000" lon="13.759697000">
  <ele>0.000000</ele>
  <name>MWAY</name>
  <cmt>MWAY</cmt>
  <desc>MWAY</desc>
</wpt>
<wpt lat="46.252956000" lon="13.757687000">
  <ele>0.000000</ele>
  <name>JJ1</name>
  <cmt>JJ1</cmt>
  <desc>JJ1</desc>
</wpt>
<wpt lat="46.254225000" lon="13.758767000">
  <ele>0.000000</ele>
  <name>BONECA</name>
  <cmt>BONECA</cmt>
  <desc>BONECA</desc>
</wpt>
<wpt lat="46.255205000" lon="13.760876000">
  <ele>0.000000</ele>
  <name>MLC</name>
  <cmt>MLC</cmt>
  <desc>MLC</desc>
</wpt>
<wpt lat="46.252471000" lon="13.757089000">
  <ele>1743.223144</ele>
  <name>MONATI</name>
  <cmt>003</cmt>
  <desc>003 - believe this is Monatip by location, Jarv 2009-07-08</desc>
</wpt>
<wpt lat="46.254395000" lon="13.758347000">
  <ele>0.000000</ele>
  <name>JJ2</name>
  <cmt>JJ2</cmt>
  <desc>JJ2</desc>
</wpt>
<wpt lat="46.255315000" lon="13.758547000">
  <ele>0.000000</ele>
  <name>V10</name>
  <cmt>V10</cmt>
  <desc>V10</desc>
</wpt>
<wpt lat="46.257595000" lon="13.763286000">
  <ele>0.000000</ele>
  <name>K6</name>
  <cmt>K6</cmt>
  <desc>K6</desc>
</wpt>
<wpt lat="46.257325000" lon="13.758266000">
  <ele>0.000000</ele>
  <name>V11</name>
  <cmt>V11</cmt>
  <desc>V11</desc>
</wpt>
<wpt lat="46.256606000" lon="13.770545000">
  <ele>0.000000</ele>
  <name>K15i</name>
  <cmt>K15i</cmt>
  <desc>K15i</desc>
</wpt>
<wpt lat="46.257595000" lon="13.768945000">
  <ele>0.000000</ele>
  <name>K14</name>
  <cmt>K14</cmt>
  <desc>K14</desc>
</wpt>
<wpt lat="46.257945000" lon="13.768855000">
  <ele>0.000000</ele>
  <name>K9</name>
  <cmt>K9</cmt>
  <desc>K9</desc>
</wpt>
<wpt lat="46.258365000" lon="13.768745000">
  <ele>0.000000</ele>
  <name>K11</name>
  <cmt>K11</cmt>
  <desc>K11</desc>
</wpt>
<wpt lat="46.256856000" lon="13.771425000">
  <ele>0.000000</ele>
  <name>K20</name>
  <cmt>K20</cmt>
  <desc>K20</desc>
</wpt>
<wpt lat="46.258515000" lon="13.756377000">
  <ele>0.000000</ele>
  <name>V12</name>
  <cmt>V12</cmt>
  <desc>V12</desc>
</wpt>
<wpt lat="46.258845000" lon="13.768265000">
  <ele>0.000000</ele>
  <name>K8</name>
  <cmt>K8</cmt>
  <desc>K8</desc>
</wpt>
<wpt lat="46.259045000" lon="13.767685000">
  <ele>0.000000</ele>
  <name>K10</name>
  <cmt>K10</cmt>
  <desc>K10</desc>
</wpt>
<wpt lat="46.259045000" lon="13.768395000">
  <ele>0.000000</ele>
  <name>K7</name>
  <cmt>K7</cmt>
  <desc>K7</desc>
</wpt>
<wpt lat="46.257596000" lon="13.771315000">
  <ele>0.000000</ele>
  <name>K19</name>
  <cmt>K19</cmt>
  <desc>K19</desc>
</wpt>
<wpt lat="46.258085000" lon="13.770545000">
  <ele>0.000000</ele>
  <name>K12</name>
  <cmt>K12</cmt>
  <desc>K12</desc>
</wpt>
<wpt lat="46.258085000" lon="13.770815000">
  <ele>0.000000</ele>
  <name>K13</name>
  <cmt>K13</cmt>
  <desc>K13</desc>
</wpt>
<wpt lat="46.259895000" lon="13.766125000">
  <ele>0.000000</ele>
  <name>K2</name>
  <cmt>K2</cmt>
  <desc>K2</desc>
</wpt>
<wpt lat="46.259485000" lon="13.756727000">
  <ele>0.000000</ele>
  <name>JJ4</name>
  <cmt>JJ4</cmt>
  <desc>JJ4</desc>
</wpt>
<wpt lat="46.259325000" lon="13.755637000">
  <ele>0.000000</ele>
  <name>JJ5</name>
  <cmt>JJ5</cmt>
  <desc>JJ5</desc>
</wpt>
<wpt lat="46.260905000" lon="13.763555000">
  <ele>0.000000</ele>
  <name>PEAK2</name>
  <cmt>PEAK2</cmt>
  <desc>PEAK2</desc>
</wpt>
<wpt lat="46.260045000" lon="13.755367000">
  <ele>0.000000</ele>
  <name>JJ6</name>
  <cmt>JJ6</cmt>
  <desc>JJ6</desc>
</wpt>
<wpt lat="46.257286000" lon="13.774324000">
  <ele>0.000000</ele>
  <name>K16</name>
  <cmt>K16</cmt>
  <desc>K16</desc>
</wpt>
<wpt lat="46.241579000" lon="13.763522000">
  <ele>1481.025635</ele>
  <name>Voda</name>
  <cmt>003Voda</cmt>
  <desc>Voda - spring on path below Mig from Kal</desc>
</wpt>
<wpt lat="46.260715000" lon="13.756956000">
  <ele>0.000000</ele>
  <name>KUK</name>
  <cmt>KUK</cmt>
  <desc>KUK</desc>
</wpt>
<wpt lat="46.242597000" lon="13.755878000">
  <ele>0.000000</ele>
  <name>KAL</name>
  <cmt>KAL</cmt>
  <desc>KAL</desc>
</wpt>
<wpt lat="46.241774000" lon="13.767996000">
  <ele>1455.070068</ele>
  <name>RaFork</name>
  <cmt>002Odcep/klanc</cmt>
  <desc>002Odcep/klanc</desc>
</wpt>
<wpt lat="46.261575000" lon="13.767865000">
  <ele>0.000000</ele>
  <name>K17</name>
  <cmt>K17</cmt>
  <desc>K17</desc>
</wpt>
<wpt lat="46.261635000" lon="13.767715000">
  <ele>0.000000</ele>
  <name>K18</name>
  <cmt>K18</cmt>
  <desc>K18</desc>
</wpt>
<wpt lat="46.241786000" lon="13.769830000">
  <ele>1439.929443</ele>
  <name>BloHol</name>
  <cmt>Dihalnik Kal</cmt>
  <desc>Dihalnik Kal</desc>
</wpt>
<wpt lat="46.264980000" lon="13.758745000">
  <ele>1847.044922</ele>
  <name>N05</name>
  <cmt>N05</cmt>
  <desc>N05</desc>
</wpt>
<wpt lat="46.265254000" lon="13.756666000">
  <ele>1790.808106</ele>
  <name>N04</name>
  <cmt>N04</cmt>
  <desc>N04</desc>
</wpt>
<wpt lat="46.265745000" lon="13.757475000">
  <ele>1792.009766</ele>
  <name>N01</name>
  <cmt>N01</cmt>
  <desc>N01</desc>
</wpt>
<wpt lat="46.266334000" lon="13.756586000">
  <ele>1789.366211</ele>
  <name>N03</name>
  <cmt>N03</cmt>
  <desc>N03</desc>
</wpt>
<wpt lat="46.266451000" lon="13.756317000">
  <ele>1782.636963</ele>
  <name>005</name>
  <cmt>005</cmt>
  <desc>005</desc>
</wpt>
<wpt lat="46.266458000" lon="13.756313000">
  <ele>1782.396729</ele>
  <name>004</name>
  <cmt>004</cmt>
  <desc>004</desc>
</wpt>
<wpt lat="46.266459000" lon="13.756311000">
  <ele>1782.636963</ele>
  <name>N02</name>
  <cmt>N02</cmt>
  <desc>N02</desc>
</wpt>
<wpt lat="46.235519000" lon="13.787784000">
  <ele>0.000000</ele>
  <name>RCAVE</name>
  <cmt>RCAVE</cmt>
  <desc>RCAVE</desc>
</wpt>
<wpt lat="46.235869000" lon="13.792324000">
  <ele>0.000000</ele>
  <name>RAZORP</name>
  <cmt>RAZORP</cmt>
  <desc>RAZORP</desc>
</wpt>
<wpt lat="46.251529036" lon="13.762658285">
  <ele>1862.425781</ele>
  <name>M10</name>
  <cmt>M10</cmt>
  <desc>M10</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>608</name>
  <cmt>608</cmt>
  <desc>608</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251508836" lon="13.762387466">
  <ele>1861.464355</ele>
  <name>BIVVI</name>
  <cmt>BIVVI</cmt>
  <desc>BIVVI</desc>
  <sym>Medical Facility</sym>
</wpt>
<wpt lat="46.251229802" lon="13.762146570">
  <ele>1866.270996</ele>
  <name>TETLEY</name>
  <cmt>TETLEY</cmt>
  <desc>TETLEY''s Tent</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.251370953" lon="13.761730324">
  <ele>1871.558105</ele>
  <name>ANDY</name>
  <cmt>ANDY</cmt>
  <desc>ANDY''s Tent</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.251185294" lon="13.761745915">
  <ele>1871.798340</ele>
  <name>JANET</name>
  <cmt>JANET</cmt>
  <desc>JANET''s Bivi</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.251963386" lon="13.763704849">
  <ele>1858.580566</ele>
  <name>M1</name>
  <cmt>M1</cmt>
  <desc>M1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252379967" lon="13.762789965">
  <ele>1855.215820</ele>
  <name>M4_GK</name>
  <cmt>M4C</cmt>
  <desc>M4C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251787366" lon="13.761319024">
  <ele>1866.991943</ele>
  <name>BONE</name>
  <cmt>BONE</cmt>
  <desc>BONE</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252480298" lon="13.762884093">
  <ele>1858.340088</ele>
  <name>A3</name>
  <cmt>A3</cmt>
  <desc>A3</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252490189" lon="13.763151225">
  <ele>1859.061035</ele>
  <name>A1</name>
  <cmt>A1</cmt>
  <desc>A1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252033040" lon="13.763970304">
  <ele>1855.215820</ele>
  <name>M16</name>
  <cmt>M16</cmt>
  <desc>M16</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252555903" lon="13.763333196">
  <ele>1854.254639</ele>
  <name>A2</name>
  <cmt>A2</cmt>
  <desc>A2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252758829" lon="13.762947964">
  <ele>1860.503174</ele>
  <name>M4</name>
  <cmt>M4</cmt>
  <desc>M4</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252000937" lon="13.764458466">
  <ele>1851.130371</ele>
  <name>OLDBIV</name>
  <cmt>OLDBIV</cmt>
  <desc>OLDBIV</desc>
  <sym>Campground</sym>
</wpt>
<wpt lat="46.252837032" lon="13.763162792">
  <ele>1855.215820</ele>
  <name>A4</name>
  <cmt>A4</cmt>
  <desc>A4</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.251722742" lon="13.764643706">
  <ele>1832.625000</ele>
  <name>OBVCAV</name>
  <cmt>OBVCAV</cmt>
  <desc>OBVCAV - obvious cave near the old bivi, assume someone has looked at it?</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251714528" lon="13.764665248">
  <ele>1834.547607</ele>
  <name>610</name>
  <cmt>610</cmt>
  <desc>610</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.252553305" lon="13.764146660">
  <ele>1856.177246</ele>
  <name>B20</name>
  <cmt>B20</cmt>
  <desc>B20 - found in the middle of dwarf pine near M2</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253019925" lon="13.762309933">
  <ele>1853.052979</ele>
  <name>M14_GK</name>
  <cmt>M14C</cmt>
  <desc>M14C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.251020757" lon="13.764799861">
  <ele>1862.906250</ele>
  <name>GDUIEW</name>
  <cmt>GDUIEW</cmt>
  <desc>GDUIEW - Good view of Mig and the Eastern plateau</desc>
  <sym>Scenic Area</sym>
</wpt>
<wpt lat="46.252909955" lon="13.761349954">
  <ele>1867.232178</ele>
  <name>M15_GK</name>
  <cmt>M15C</cmt>
  <desc>M15C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253199968" lon="13.762309933">
  <ele>1853.052979</ele>
  <name>M18_GK</name>
  <cmt>M18C</cmt>
  <desc>M18C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253122268" lon="13.763804846">
  <ele>1855.936768</ele>
  <name>M2</name>
  <cmt>M2</cmt>
  <desc>M2</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253222348" lon="13.763729241">
  <ele>1850.169189</ele>
  <name>M18</name>
  <cmt>M18</cmt>
  <desc>M18</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253298121" lon="13.761565452">
  <ele>1859.781982</ele>
  <name>M15</name>
  <cmt>M15</cmt>
  <desc>M15</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253113132" lon="13.761011995">
  <ele>1850.649658</ele>
  <name>JCC</name>
  <cmt>JCC</cmt>
  <desc>JCC</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252809959" lon="13.760319985">
  <ele>1852.332031</ele>
  <name>M19_GK</name>
  <cmt>M19C</cmt>
  <desc>M19C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.253200304" lon="13.760603881">
  <ele>1849.447998</ele>
  <name>M19</name>
  <cmt>M19</cmt>
  <desc>M19</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253486294" lon="13.760341695">
  <ele>1854.975586</ele>
  <name>M17</name>
  <cmt>M17</cmt>
  <desc>M17</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.253833557" lon="13.765090127">
  <ele>1793.211426</ele>
  <name>VILA1</name>
  <cmt>VILA1</cmt>
  <desc>VILA1</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.253747307" lon="13.765288610">
  <ele>1782.877197</ele>
  <name>VILA2</name>
  <cmt>VILA2</cmt>
  <desc>VILA2</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.249899929" lon="13.766089920">
  <ele>1853.533691</ele>
  <name>M12_GK</name>
  <cmt>M12C</cmt>
  <desc>M12C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254559932" lon="13.764429968">
  <ele>1855.936768</ele>
  <name>M13_GK</name>
  <cmt>M13C</cmt>
  <desc>M13C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.248178706" lon="13.763577193">
  <ele>1769.659180</ele>
  <name>PF10</name>
  <cmt>PF10</cmt>
  <desc>PF10</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252869973" lon="13.757979926">
  <ele>1856.657959</ele>
  <name>M21_GK</name>
  <cmt>M21C</cmt>
  <desc>M21C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.254864782" lon="13.760848213">
  <ele>1895.831299</ele>
  <name>RAIN G</name>
  <cmt>RAIN G</cmt>
  <desc>RAIN G</desc>
  <sym>Gas Station</sym>
</wpt>
<wpt lat="46.247945856" lon="13.764556115">
  <ele>1761.007324</ele>
  <name>SAMO1</name>
  <cmt>SAMO1</cmt>
  <desc>SAMO1</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.255186982" lon="13.760889033">
  <ele>1883.574707</ele>
  <name>MLC</name>
  <cmt>MLC</cmt>
  <desc>MLC</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.252449956" lon="13.768759975">
  <ele>1854.494873</ele>
  <name>M11_GK</name>
  <cmt>M11C</cmt>
  <desc>M11C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247047819" lon="13.764696429">
  <ele>1757.162109</ele>
  <name>SAMO_2</name>
  <cmt>SAMO_2</cmt>
  <desc>SAMO_2 - dig down on the plateau to the East of Mig</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.247359710" lon="13.767002542">
  <ele>1746.106934</ele>
  <name>CHRIST</name>
  <cmt>CHRIST</cmt>
  <desc>CHRIST</desc>
  <sym>Park</sym>
</wpt>
<wpt lat="46.247409917" lon="13.767519956">
  <ele>1859.061035</ele>
  <name>M8C_GK</name>
  <cmt>M8C</cmt>
  <desc>M8C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.252509970" lon="13.770259917">
  <ele>1857.138428</ele>
  <name>E01</name>
  <cmt>E01</cmt>
  <desc>E01</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.246158332" lon="13.762549320">
  <ele>1880.931152</ele>
  <name>MIGROX</name>
  <cmt>MIGROX</cmt>
  <desc>MIGROX</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.246146597" lon="13.762530964">
  <ele>1879.489014</ele>
  <name>MIGCAN</name>
  <cmt>MIGCAN</cmt>
  <desc>MIGCAN</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.246807007" lon="13.766615549">
  <ele>1717.748535</ele>
  <name>M24</name>
  <cmt>M24</cmt>
  <desc>M24</desc>
  <sym>Skull and Crossbones</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767309990">
  <ele>1868.674072</ele>
  <name>M7C_GK</name>
  <cmt>M7C</cmt>
  <desc>M7C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246659989" lon="13.766419999">
  <ele>1854.735352</ele>
  <name>M24_GK</name>
  <cmt>M24C</cmt>
  <desc>M24C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.247059973" lon="13.767619953">
  <ele>1835.268555</ele>
  <name>M9C_GK</name>
  <cmt>M9C</cmt>
  <desc>M9C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.246139975" lon="13.759169988">
  <ele>1854.254639</ele>
  <name>M23_GK</name>
  <cmt>M23C</cmt>
  <desc>M23 - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.257199980" lon="13.758789953">
  <ele>1855.456299</ele>
  <name>M22_GK</name>
  <cmt>M22C</cmt>
  <desc>M22C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
<wpt lat="46.260493398" lon="13.762388974">
  <ele>1861.464355</ele>
  <name>609</name>
  <cmt>609</cmt>
  <desc>609</desc>
  <sym>Flag</sym>
</wpt>
<wpt lat="46.260667238" lon="13.756897319">
  <ele>2089.535400</ele>
  <name>KUKTRG</name>
  <cmt>KUKTRG</cmt>
  <desc>KUKTRG - got a good lock on a day off in 2008 with GPS directly on trig concrete column. No WAAS.</desc>
  <sym>Golf Course</sym>
</wpt>
<wpt lat="46.256909966" lon="13.777819974">
  <ele>1856.417480</ele>
  <name>M20_GK</name>
  <cmt>M20C</cmt>
  <desc>M20C - converted from 1994 Gausskruger coordinates</desc>
  <sym>Waypoint</sym>
</wpt>
</gpx>'::Text, E'\r', '' /* Remove CR */)::XML);

-- 
-- Eof