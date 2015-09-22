 
for file
do
    cat "${file}" | sed "s/\. /\.\ \n/g"  > tmp.md #some 'G' command I could use here? bah. ~JMF
    mv tmp.md "${file}"
done
