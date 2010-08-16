gpsbabel -i gpx -f ICCC_eTrex_H_waypoints_area_n_recee_2009-12.gpx -o TEXT,nosep,degformat=ddd -F wpts.txt
cat wpts.txt | awk '{print $2,$3,$1,$7}' | sed -e s/^N// -e s/\ E/\ / > points_for_cart_converter.txt

#check for errors, mangle through cart converter with 7pt fit...


cat from_cart_coverter.txt| awk '{print "\\*fix ",$3,$1,$2,$4,"\n","*entrance ",$3}' | sed s/alt:// > gps.svx

