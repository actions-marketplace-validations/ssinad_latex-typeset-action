FROM registry.gitlab.com/ssinad/docker-images/latex-image:ubuntu

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]