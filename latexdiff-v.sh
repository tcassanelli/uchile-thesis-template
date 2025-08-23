#!/usr/bin/env bash
# simple script to create a latexdiff file given a specific github commit
# run this script from the main directory ../main

COMMIT1=$1

mkdir -p versions-diff
cd main

MAIN="main"
FILE=$MAIN-diff$COMMIT1

latexdiff-vc --git --graphics-markup=0 --flatten -r $COMMIT1 $MAIN.tex

makeglossaries $FILE
pdflatex -interaction=nonstopmode $FILE.tex
bibtex $FILE.tex
pdflatex -interaction=nonstopmode $FILE.tex
pdflatex -interaction=nonstopmode $FILE.tex

mv $FILE.pdf ../versions-diff
rm -rf $FILE.tex 
rm -rf $FILE.[!pdf]*
