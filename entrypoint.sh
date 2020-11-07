#!/bin/sh

/usr/local/texlive/texmf-dist/scripts/texliveonfly.py -cd -pdf -silent -usepretex='\providecommand{\finalOption}{final}' $1.tex