FROM pandoc/alpine-latex:2.11.0.4

RUN RUN apk add --no-cache python3 py3-pip

RUN tlmgr install latexmk texliveonfly

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]