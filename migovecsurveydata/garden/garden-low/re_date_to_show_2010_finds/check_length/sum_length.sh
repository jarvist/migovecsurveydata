for i in ` cat new_2010.dat `
do
 cavern "${i}" | grep "Total length" | awk '{printf "%s + ",$7}'
done

