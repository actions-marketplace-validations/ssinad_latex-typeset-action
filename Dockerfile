FROM ssinad/latex-ubuntu-image:2.11.1.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]