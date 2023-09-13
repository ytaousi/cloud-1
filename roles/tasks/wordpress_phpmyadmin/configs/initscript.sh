#!/bin/bash
FILE=/var/www/html/wordpress/wp-config.php
FILE2=/var/www/html/phpmyadmin/config.inc.php
if [ ! -f "$FILE" ]; then
    wget https://wordpress.org/latest.zip
    unzip latest.zip -d /var/www/html/
    mv /wp-config.php /var/www/html/wordpress/wp-config.php
    rm -f /var/www/html/wordpress/wp-config-sample.php
fi
if [ ! -f "$FILE2" ]; then
    wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.gz
    tar -xvf phpMyAdmin-5.2.1-all-languages.tar.gz
    mv phpMyAdmin-5.2.1-all-languages/* /var/www/html/phpmyadmin/
    mv /config.inc.php /var/www/html/phpmyadmin/config.inc.php
    rm -f /var/www/html/phpmyadmin/config.sample.inc.php
fi

#rc-service php7.3-fpm start
php-fpm7.3 -F -R