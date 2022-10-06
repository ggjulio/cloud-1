#!/bin/sh

set -eu

APP_PATH='/var/www/app/'
CONFIG_FILENAME="${APP_PATH}config.inc.php"

if [ "$(ls -A $APP_PATH)" ]; then
	echo "phpmyadmin already downloaded"
else
	echo "Persistent volume empty, downloading phpmyadmin..."
	wget -q -O - https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.gz \
		| tar -xz -C $APP_PATH --strip-components=1
	cp -v /tmp/config.inc.php $APP_PATH \
		&& rm /tmp/config.inc.php
	random_blowfish_secret="$(openssl rand -hex 16)"
	sed -i "/'blowfish_secret'/c\\\$cfg['blowfish_secret'] = '$random_blowfish_secret';" $CONFIG_FILENAME
	echo "Done."
fi

exec "$@"
