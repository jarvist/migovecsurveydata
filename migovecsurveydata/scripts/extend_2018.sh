echo "Reading the specfile and extending survey"
extend --specfile=EXTEND/sysmig_vrtnarija_prima_extend_spec_2018.dat system_migovec.3d system_migovec_extend.3d

echo "Now opening extended file in Aven"
aven system_migovec_extend.3d