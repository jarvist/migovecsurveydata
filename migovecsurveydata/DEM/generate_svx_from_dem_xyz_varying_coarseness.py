#Jarv didn't so much write this in May 2009
# as regurgitate from the twisted bowels of forgotton BASIC programming

from math import *

deltax=25
deltay=200

#M2: 
origx=404987 
origy=123906 

#origx=404700  #send over edge of Mig
#origy=124575

maxdist=1100 #max dist from above origin to plot (circular, in XY plane)

dem=open("migovec_ascii_xyz.dat",'r')

dofinterest=[]

for point in dem:
    x=eval(point.split()[0])
    y=eval(point.split()[1])
    z=eval(point.split()[2])  #Python gods will kill me for this, I'm missing something fairly fundamental...
    dist2=(x-origx)**2 + (y-origy)**2    #pythag
    if (dist2<maxdist**2):
#        print "fix %d%d %g %g %g" % (x,y,x,y,z)
        dofinterest.append([x,y,z])

#generates the SVX output - stations are named XY (ints)
for x,y,z in dofinterest:
    if (x%deltax==0 and y%deltay==0):
        print "*fix %d%d %g %g %g" % (x,y,x,y,z)

print "\n*data nosurvey from to\n"

for x,y,z in dofinterest:
    if (x%deltax==0 and y%deltay==0):
        for dx,dy in ([deltax,0],[0,deltay]): #work across from top-left
            if (dy==0 and (x+dx-origx)**2 + (y+dy-origy)**2<maxdist**2):
                print "%d%d %d%d" % (x,y,x+dx,y+dy)
#this generates the conenctions 'from to' for the stations specified above
