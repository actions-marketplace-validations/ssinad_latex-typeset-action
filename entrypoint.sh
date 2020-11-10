#!/bin/sh

# alias python="/usr/bin/python3"
ln -s /usr/bin/python3 /usr/bin/python
texliveonfly -c latexmk --terminal_only -a "-cd -pdf -usepretex='\providecommand{\finalOption}{final}'" $1