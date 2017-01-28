FROM hypriot/rpi-alpine:3.4

RUN apk add --no-cache lighttpd lighttpd-mod_webdav lighttpd-mod_auth

VOLUME [ "/config", "/webdav" ]

ADD files/* /etc/lighttpd/
ADD ./entrypoint.sh /entrypoint.sh

EXPOSE 80

RUN chmod u+x  /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
