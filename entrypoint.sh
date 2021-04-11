#!/bin/sh

# alias python="/usr/bin/python3"
# ln -s /usr/bin/python3.8 /usr/bin/python
texliveonfly -c latexmk --terminal_only -a " -cd -lualatex -interaction=nonstopmode -usepretex='\providecommand{\finalOption}{final}'" "$1"
