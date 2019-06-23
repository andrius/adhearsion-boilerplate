#!/bin/sh

# Adhearsion generic
export AHN_PLATFORM_LOGGING_LEVEL=info
# export AHN_PLATFORM_LOGGING_OUTPUTTERS=

# Adhearsion 2.6.x
export AHN_I18N_AUDIO_PATH=/ahn/audio
export AHN_I18N_LOCALE_PATH=/ahn/config/locales
export AHN_PUNCHBLOCK_PLATFORM=asterisk
export AHN_PUNCHBLOCK_ROOT_DOMAIN=${AHN_ASTERISK_HOST}
export AHN_PUNCHBLOCK_HOST=${AHN_ASTERISK_HOST}
export AHN_PUNCHBLOCK_PORT=${ASTERISK_MANAGER_PORT:-5038}
export AHN_PUNCHBLOCK_USERNAME=${ASTERISK_MANAGER_USERNAME}
export AHN_PUNCHBLOCK_PASSWORD=${ASTERISK_MANAGER_PASSWORD}

#  Adhearsion  3.0.0+
export AHN_CORE_HTTP_ENABLE=true
export AHN_CORE_TYPE=asterisk
export AHN_CORE_ROOT_DOMAIN=${AHN_ASTERISK_HOST}
export AHN_CORE_HOST=${AHN_ASTERISK_HOST}
export AHN_CORE_PORT=${ASTERISK_MANAGER_PORT:-5038}
export AHN_CORE_USERNAME=${ASTERISK_MANAGER_USERNAME}
export AHN_CORE_PASSWORD=${ASTERISK_MANAGER_PASSWORD}

exec "$@"