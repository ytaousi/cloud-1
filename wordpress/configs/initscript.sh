#!/bin/bash
FILE=/usr/share/wordpress/wp-config-sample.php
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    wget https://wordpress.org/latest.zip
    unzip latest.zip -d /usr/share
    mv /wp-config.php /usr/share/wordpress/wp-config.php
    rm -f /usr/share/wordpress/wp-config-sample.php
fi

sleep 300

#rc-service php7.3-fpm start
#php-fpm7.3 -F -R