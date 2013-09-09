pandoc -S --toc --chapters -o HollowMountainII-2007to2012_content.tex */*.md

xelatex HollowMountainII-2007to2012.tex
#pandoc -S --toc --chapters --latex-engine=xelatex -o HollowMountainII-2007to2012.pdf */*.md
