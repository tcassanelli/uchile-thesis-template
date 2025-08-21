#!/usr/bin/env bash
# simple script to create a latexdiff file given a specific github commit
# run this script from the main directory

COMMIT1=$1
COMMIT2=$2

cd main
mkdir -p versions-diff

MAIN="main"

if [ -z "$COMMIT2" ]; the
    latexdiff-vc --git --graphics-markup=0 --flatten  --run-bibtex --type=BOLD -r $COMMIT1 $MAIN.tex
    FILE=$MAIN-diff-$COMMIT1
else
    latexdiff-vc --git --graphics-markup=0 --flatten  --run-bibtex --type=BOLD -r $COMMIT1 -r $COMMIT2 $MAIN.tex
    FILE=$MAIN-diff-$COMMIT1-$COMMIT2
fi

makeglossaries $FILE
pdflatex -interaction=nonstopmode $FILE.tex
bibtex $FILE.tex
pdflatex -interaction=nonstopmode $FILE.tex
pdflatex -interaction=nonstopmode $FILE.tex

mv $FILE.pdf ../versions-diff
rm -rf $FILE.tex 
rm -rf $FILE.[!pdf]*
