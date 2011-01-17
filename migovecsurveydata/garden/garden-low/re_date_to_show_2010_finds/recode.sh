for i in *.svx
do
 cat "${i}" | grep -v date > "evil/${i}"
done
