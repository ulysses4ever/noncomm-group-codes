#!/bin/bash

srcFileFull=$1
srcFile=${srcFileFull%.*}
texFileFull=$srcFile'.tex'

pandoc $srcFileFull -o $texFileFull --template ./template.latex \
        -V lang=russian -V numbersections=true -V classoption=twocolumn \
        -f markdown-auto_identifiers \
        -H head.inp

