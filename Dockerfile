FROM alpine:edge

LABEL autor="Underport <pkecastillo@gmail.com>"

ENV IP_SERVER_HOMER=$IP_SERVER_HOMER \
      PORT_SERVER_HOMER=$PORT_SERVER_HOMER

RUN apk --update add sngrep ngrep tzdata \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8

ENV TZ Europe/Madrid

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]