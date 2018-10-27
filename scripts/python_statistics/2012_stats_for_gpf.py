from new_survex import Survex3D

mig=Survex3D('mig.3d')

print "len(mig) - stations", len(mig)
print "len(list(mig.iterlegs())) - legs", len(list(mig.iterlegs()))

print
print "M2 <-> Vrtnarija connection"
length, path = mig.shortestpath('garden.kangaroo.primula.ridge','system.m2.napsihiran_rov.1')
print "Loop Length (m):", length / 100.0
#1586.41895454
print "Shots in Path: ", len(path)
#309

print "Camp X-Ray to Surface Depth of X-Ray"
length, path = mig.shortestpath('garden.camp_x-ray','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0

print "Camp Deepcore to Surface"
length, path = mig.shortestpath('garden.garden-low.gold.1','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0

print "Brezno to Surface"
length,path = mig.shortestpath('garden.camp_x-ray','garden.garden-low.balamory.1')
print "Loop Length (m):", length / 100.0
print path

print
print "The end (Colarado Sump) of Vrtnarija <> Vrtnarija Entrance"
length, path = mig.shortestpath('garden.garden-low.colarado.1','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)
#print path

print
print "Winter journey .1 <> Vrtnarija Entrance"
length, path = mig.shortestpath('garden.garden-low.winterjourney.1','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)

print
print "CAMP X-Ray <> Vrtnarija Entrance"
length, path = mig.shortestpath('garden.camp_x-ray','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)

print
print "CAMP X-Ray <> CAMP Deep Core (Red Cow)"
length, path = mig.shortestpath('garden.garden-low.gold.1','garden.camp_x-ray')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)

print
print "CAMP The Fridge <> Vrtnarija Entrance"
length, path = mig.shortestpath('garden.the_fridge','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)

print
print "The end (Colarado Sump) of Vrtnarija <> The Fridge"
length, path = mig.shortestpath('garden.garden-low.colarado.1','garden.the_fridge')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)
#

print
print "Paradox Sump <> M16 Entrance"
length, path = mig.shortestpath('system.pdox.sump2.9','system.m16ent.entrance.1')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)

print
print "Waterloo .13 [CONNECTION] <> M16 Entrance"
length, path = mig.shortestpath('system.hotelt.waterloo.13','system.m16ent.entrance.1')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)
#print "PATH: ",path

print
print "dreams for the soul . 1 [CONNECTION] <> Vrtnarija Entrance"
length, path = mig.shortestpath('garden.garden-low.dreamsforthesoul.1','garden.garden-ent.bclent2.0')
print "Loop Length (m):", length / 100.0
print "Shots in Path: ", len(path)
#print "PATH: ",path

