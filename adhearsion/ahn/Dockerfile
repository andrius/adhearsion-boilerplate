# vim:set ft=dockerfile:
FROM andrius/alpine-ruby:tiny

ENV WORKDIR /app
WORKDIR     ${WORKDIR}

COPY . .
RUN ./build

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["ahn", "start", "."]
