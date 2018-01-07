from pymol_survex.py import *

load_3d("sysmig_vrtnarija.3d")
set stick_radius,1.9

set_view (1,0,0,0,0,-1,0,1,0,0,0,-4000,405000,123897,1455,-5364,13345,-20)

set antialias,2
set ray_trace_fog,0
set ray_shadows,0

set bg_rgb, (1,1,1)

extract Vrtnarija, (segi gard)
extract DEM, (segi DEM)
extract SysMig, (segi syst)
extract surf, (segi surf)

disable sysmig_vrtnarija

color radium, (segi syst)
color red, (segi gard)
color white, (segi surf)
color blue, (segi DEM)

set stick_transparency, 0.5, surf
set stick_transparency, 0.5, DEM


hide all
show sticks
