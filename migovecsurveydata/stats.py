from survex import Survex3D

survey = Survex3D('sysmig_vrtnarija.3d')
bcl = 'garden.garden-ent.bclent2.0'
xray = 'garden.camp_x-ray'
redcow = 'garden.garden-low.mad_cow.14'
ent = survey[bcl]
entL = [ent.x, ent.y, ent.z]
xrayStation = survey[xray]

def dist_from_gw_ent(station):
  otherL = [station.x, station.y, station.z]
  return [ (e - o) / 100 for (e, o) in zip(entL, otherL) ]


def print_stats(stationName):
  print stationName
  station = survey[stationName]
  print "dist from gw ent: " + str(dist_from_gw_ent(station))
  print "from surface: " + str(survey.shortestpath(bcl, stationName)[0] / 100)
  print "from xray: " + str(survey.shortestpath(xray, stationName)[0] / 100)
  print "from red cow: " + str(survey.shortestpath(redcow, stationName)[0] / 100)
  print
  


print_stats('garden.garden-low.watershipdown.sump')
print_stats('garden.garden-low.colarado.1')
print_stats('garden.garden-low.brezno_slapov.1')
print_stats('garden.garden-low.invictus.1')
print_stats('garden.garden-low.yorkshire.1')
print_stats('garden.garden-low.euphrates.1')
print_stats('garden.garden-low.balamory.1')
print_stats('garden.garden-low.mad_cow.14')
print_stats('garden.garden-low.gold.1')
print_stats('garden.garden-low.stuckinparadise2.1')
print_stats('garden.garden-low.hotpants.1')
print_stats('garden.garden-low.hoover.1')
