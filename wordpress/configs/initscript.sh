#!/bin/bash
FILE=/var/www/html/wordpress/wp-config.php
if [ ! -f "$FILE" ]; then
    wget https://wordpress.org/latest.zip
    unzip latest.zip -d /var/www/html/
    mv /wp-config.php /var/www/html/wordpress/wp-config.php
    rm -f /var/www/html/wordpress/wp-config-sample.php
fi

#rc-service php7.3-fpm start
php-fpm7.3 -F -R