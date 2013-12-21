# HollowMountainII-2007to2012

This is a slowly aggregating collection of our stories brought over from Google
docs, intended to be published as Volume II of the Hollow Mountain.

## Editing / Contributing

As we are in version control with git, don't worry about breaking things by
editing text! We (the editorial team) can always undo. 

Get an account on github, and get editing those markdown files... Commit
regularly + provide an informative commit statement, such as:-
'Proof reading / correcting 2011'

But do be careful on the command line with git, particularly if it's not
wanting to merge. You can delete history.

## Technical Details

The individual chapter files are stored in subdirectories (2011,2012 etc.)
along with the media (i.e. pictures) used within those chapters. The file
format is Markdown. This is compiled to Latex with Pandoc, and is then rendered
with Xelatex.

'compile_pandoc.sh' first produces the TeX file with all the content
('HollowMountainII-2007to2012_content.tex') which is then combined with the
style/header file ('HollowMountainII-2007to2012.tex') to produce a PDF.
Currently we are rendering with the 'tufte-book' class to get a fairly
pleasantly readable single-column A4 format.

