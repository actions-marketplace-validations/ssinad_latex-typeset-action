#!/bin/sh

HOME=/root
texliveonfly -c latexmk --terminal_only -a " -cd -lualatex -interaction=nonstopmode -usepretex='\providecommand{\finalOption}{final}'" "$1"
