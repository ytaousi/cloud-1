#!/bin/bash
mysql_install_db

echo "CREATE DATABASE IF NOT EXISTS wordpress; FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE DATABASE IF NOT EXISTS phpmyadmin; FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED by '$DB_PASS'; FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$PMA_USER'@'%' IDENTIFIED by '$PMA_PASS'; FLUSH PRIVILEGES;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON phpmyadmin.* TO '$PMA_USER'@'%' IDENTIFIED BY '$PMA_PASS'; FLUSH PRIVILEGES;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'; FLUSH PRIVILEGES;" | mysql -u root

# mysql < /usr/local/bin/config_wp.sql  
# mysqld --bind-address=0.0.0.0
mysqld_safe
