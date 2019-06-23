# vim:set ft=dockerfile:
FROM andrius/alpine-asterisk:13-current

COPY configs/ /etc/asterisk/

COPY update-configs.sh /
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
