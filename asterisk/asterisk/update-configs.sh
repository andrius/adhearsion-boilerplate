#!/bin/sh

for FILENAME in `find /etc/asterisk -type f -iname '*.conf'`
do
  sed -i "s/__ASTERISK_ASTERISK_DOMAIN_NAME__/${ASTERISK_ASTERISK_DOMAIN_NAME}/g" ${FILENAME}
  sed -i "s/__ASTERISK_SIP_PORT__/${ASTERISK_SIP_PORT:-5060}/g" ${FILENAME}
  sed -i "s/__ASTERISK_SIP_PASSWORD__/${ASTERISK_SIP_PASSWORD:-$(openssl rand -base64 32 | sed 's/\/\|&\|#\|;\|+\|=//g')}/g" ${FILENAME}
  sed -i "s/__ASTERISK_MANAGER_USERNAME__/${ASTERISK_MANAGER_USERNAME:-$(openssl rand -base64 32 | sed 's/\/\|&\|#\|;\|+\|=//g')}/g" ${FILENAME}
  sed -i "s/__ASTERISK_MANAGER_PASSWORD__/${ASTERISK_MANAGER_PASSWORD:-$(openssl rand -base64 32 | sed 's/\/\|&\|#\|;\|+\|=//g')}/g" ${FILENAME}
done
