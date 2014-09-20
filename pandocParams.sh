#!/bin/bash

pandocParams="--template ./template.latex \
        -V lang=russian -V numbersections=true -V classoption=twocolumn \
        -f markdown-auto_identifiers \
        -H head.inp"
