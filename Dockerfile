FROM pandoc/ubuntu-latex:2.11.1.1

RUN apt-get install software-properties-common && \ 
    add-apt-repository ppa:deadsnakes/ppa && \ 
    apt-get update && \ 
    apt-get install python3.9

RUN tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]