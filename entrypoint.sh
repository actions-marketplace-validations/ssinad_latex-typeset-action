#!/bin/sh

# alias python="/usr/bin/python3"
ln -s /usr/bin/python3 /usr/bin/python
texliveonfly -cd -pdf -silent -usepretex='\providecommand{\finalOption}{final}' $1.tex