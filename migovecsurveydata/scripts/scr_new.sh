for i in `find . -name \*svx`
do
	ls -l $i | grep 2008 | awk '{print $NF}'
done
