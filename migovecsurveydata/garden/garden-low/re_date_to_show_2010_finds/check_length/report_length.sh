for i in ` cat new_2010.dat `
do
 length=` cavern "${i}" | grep "Total length" | awk '{printf "%s + ",$7}' `
 echo "${i}" "${length}"
done

