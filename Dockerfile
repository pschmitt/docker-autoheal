FROM alpine:3.11

RUN apk add --no-cache curl jq

COPY docker-entrypoint /
ENTRYPOINT ["/docker-entrypoint"]

HEALTHCHECK --interval=5s CMD pgrep -f autoheal || exit 1

CMD ["autoheal"]
