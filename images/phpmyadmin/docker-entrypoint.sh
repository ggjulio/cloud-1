#!/bin/sh

set -e

if [ "$(ls -A /var/www/app)" ]; then
	echo "phpmyadmin already downloaded"
else
	echo "Persistent volume empty, downloading phpmyadmin..."
	wget -O /var/www/app/adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php
	# wget -q -O - https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.gz \
	# 	| tar -xz -C /var/www/app --strip-components=1
	echo "Done."
fi

exec "$@"
