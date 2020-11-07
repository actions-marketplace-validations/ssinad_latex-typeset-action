#!/bin/sh

alias python="/usr/bin/python3"
texliveonfly -cd -pdf -silent -usepretex='\providecommand{\finalOption}{final}' $1.tex