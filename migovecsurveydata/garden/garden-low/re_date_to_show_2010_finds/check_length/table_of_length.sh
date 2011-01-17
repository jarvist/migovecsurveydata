for i in ` cat new_2010.dat `
do
 echo -n "${i} & "
 cavern "${i}" | grep "Total length" | awk '{print $7}'
done

