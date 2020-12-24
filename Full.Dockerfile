FROM python:3.9.0-slim-buster

ENV PATH=$PATH:/usr/local/texlive/bin/x86_64-linux

COPY texlive.profile .

RUN     apt-get update && apt-get install -y wget tar perl-tk \
    &&  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    &&  tar --strip-components=1 -xzvf install-tl-unx.tar.gz \
    &&  ./install-tl --profile=texlive.profile \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]