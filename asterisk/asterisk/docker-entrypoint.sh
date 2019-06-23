#!/bin/sh

ASTERISK_DOMAIN_NAME=${ASTERISK_ASTERISK_DOMAIN_NAME:-your.domain.name}

ASTERISK_LINUX_USER=${ASTERISK_LINUX_USER:-asterisk}

if [ "$1" = "" ]; then
  COMMAND="/usr/sbin/asterisk -T -W -U ${ASTERISK_LINUX_USER} -p -vvvdddf"
else
  COMMAND="$@"
fi

if [ "${ASTERISK_LINUX_UID}" != "" ] && [ "${ASTERISK_LINUX_GID}" != "" ]; then
  # recreate user and group for asterisk
  # if they've sent as env variables (i.e. to macth with host user to fix permissions for mounted folders

  deluser asterisk && \
  adduser --gecos "" --no-create-home --uid ${ASTERISK_LINUX_UID} --disabled-password ${ASTERISK_LINUX_USER} || exit

  chown -R ${ASTERISK_LINUX_UID}:${ASTERISK_LINUX_UID} /etc/asterisk \
                                                       /var/*/asterisk \
                                                       /usr/*/asterisk
fi

/update-configs.sh

exec ${COMMAND}
