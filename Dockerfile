FROM ssinad/latex-image:ubuntu-2.11.1.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]