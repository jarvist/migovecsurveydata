echo "600DPI PDF renders..."
inkscape -z -b=#fff -d=600 -C EE_2017.svg   -A=2017-SistemMigovec-ExtendedElevation-ENG.pdf
inkscape -z -b=#fff -d=600 -C PLAN_2017.svg -A=2017-SistemMigovec-Plan-ENG.pdf

echo "300DPI PNG renders..."
inkscape -z -b=#fff -d=300 -C EE_2017.svg   -e=2017-SistemMigovec-ExtendedElevation-ENG.png
inkscape -z -b=#fff -d=300 -C PLAN_2017.svg -e=2017-SistemMigovec-Plan-ENG.png

