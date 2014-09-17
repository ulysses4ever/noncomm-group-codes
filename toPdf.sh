#!/bin/bash

srcFileFull=$1

srcFile=${srcFileFull%.*}
pdfFileFull=$srcFile'.pdf'
texFileFull=$srcFile'.tex'

./toLatex.sh $srcFileFull
pdflatex -interaction nonstopmode $texFileFull -o $pdfFileFull 1>/dev/null
rm -f $texFileFull

