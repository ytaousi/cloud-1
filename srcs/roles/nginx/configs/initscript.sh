#!/bin/bash
# FILE=/var/www/html/wordpress/wp-config.php
cp /etc/ssl/private/nginx-selfsigned.key /etc/nginx/ssl;
cp /etc/ssl/certs/nginx-selfsigned.crt /etc/nginx/ssl;
mkdir -p /run/nginx;
rc-status;
rc-service nginx start;
rc-status;
nginx -s stop;

# if [ -f "$FILE" ]; then
#     sed -i "s|define( 'DB_NAME', '' )|define( 'DB_NAME', '$_DB_NAME' )|g" /var/www/html/wordpress/wp-config.php
#     sed -i "s|define( 'DB_USER', '' )|define( 'DB_USER', '$_DB_USER' )|g" /var/www/html/wordpress/wp-config.php
#     sed -i "s|define( 'DB_PASSWORD', '' )|define( 'DB_USER', '$_DB_PASS' )|g" /var/www/html/wordpress/wp-config.php
# fi

nginx -g 'daemon off;'