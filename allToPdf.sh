#!/bin/bash

source ./allToLatex.sh

pdflatex -interaction nonstopmode lectures.tex -o lectures.pdf 1>/dev/null

rm -f lectures.tex

