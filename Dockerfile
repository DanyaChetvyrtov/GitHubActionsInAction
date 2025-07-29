FROM alpine:latest

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh && \
    [ -f /usr/local/bin/entrypoint.sh ] || (echo "Error: entrypoint.sh missing" && exit 1)

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]