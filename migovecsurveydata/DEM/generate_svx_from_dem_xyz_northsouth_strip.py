#Jarv didn't so much write this in May 2009
# as regurgitate from the twisted bowels of forgotton BASIC programming

from math import *

#KUKTRG - from Slo Govt
#5404539,7         5124804,8

origx=404600  #set to M2 location
origy=123906

maxdist=200

dem=open("migovec_ascii_xyz.dat",'r')

dofinterest=[]

for point in dem:
    x=eval(point.split()[0])
    y=eval(point.split()[1])
    z=eval(point.split()[2])  #Python gods will kill me for this, I'm missing something fairly fundamental...
    if (x==origx):
#        print "fix %d%d %g %g %g" % (x,y,x,y,z)
        dofinterest.append([x,y,z])

#generates the SVX output - stations are named XY (ints)
for x,y,z in dofinterest:
    print "*fix %d%d %g %g %g" % (x,y,x,y,z)

print "\n*data nosurvey from to\n"

for x,y,z in dofinterest:
            print "%d%d %d%d" % (x,y,x,y-25)
#this generates the conenctions 'from to' for the stations specified above
