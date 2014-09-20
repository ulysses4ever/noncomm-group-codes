#!/bin/bash

texFileName=lectures.tex

source ./pandocParams.sh

pandoc lecture-*.md -o $texFileName $pandocParams
