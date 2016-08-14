# Needs to run in migovecsurveydata/garden/garden-low/
# Sprinkles temporary files everywhere (.3d and .err)
#
# But it gets the job done :^)
# JMF - 2014-01-05; though I'm sure we've done this in many previous years...

# this lists all the files 'included' in a survex file
cat s_garden-low.svx | grep include | awk '{print $2}' > tmp.list

#Now edit the list to only have data from this year / of interest

vim tmp.list

#Now process!

while read p; do
    echo -n "${p}  "
    cavern "${p}" | grep "Total length" | awk '{print $7}'
done < tmp.list

# And for a bit of self-referential amazement... calculate total length discoverd!
# . calculate_polygon_length_for_kataster.sh | sed s/m$// | awk 'BEGIN{tot=0.0}{tot=tot+$2}END{print tot}'

