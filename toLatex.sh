#!/bin/bash

srcFileFull=$1
srcFile=${srcFileFull%.*}
texFileFull=$srcFile'.tex'

source ./pandocParams.sh

pandoc $srcFileFull -o $texFileFull $pandocParams

