# Lots of files from a MAC; where the rediculous file system has capitals IN the file, but then doesn't care when you open
# Therefore - change files to fully lower case
# May also fix some unicode

for f
do
    n=` echo "${f}" | tr '[:upper:]' '[:lower:]' `

    echo "mv ${f}-->${n}"
    mv "${f}" "${n}"
done

