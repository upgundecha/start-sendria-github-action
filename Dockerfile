FROM docker:stable

COPY start-sendria.sh /start-sendria.sh
RUN chmod +x /start-sendria.sh

ENTRYPOINT ["/start-sendria.sh"]