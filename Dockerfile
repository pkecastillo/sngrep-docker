FROM alpine:edge

LABEL autor="Ricardo Castillo <pkecastillo@gmail.com>"

RUN apk --update add sngrep ngrep \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]