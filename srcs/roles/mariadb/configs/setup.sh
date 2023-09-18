touch /run/openrc/softlevel
chmod -R 777 /var/lib/mysql
export mysqldata=/var/lib/mysql/mysql

/etc/init.d/mariadb setup 

rc-update add mariadb

rc-status
rc-service mariadb restart
rc-status

# mysql < create_users.sql -u root -p$_DB_ROOT_PASS

echo "CREATE DATABASE phpmyadmin; CREATE DATABASE wordpress; CREATE USER '$_PMA_USER' IDENTIFIED by '$_PMA_PASS'; CREATE USER '$_DB_USER' IDENTIFIED by '$_DB_PASS'; GRANT ALL PRIVILEGES ON phpmyadmin.* TO '$_PMA_USER'@'%' IDENTIFIED BY '$_PMA_PASS'; GRANT ALL PRIVILEGES ON wordpress.* TO '$_DB_USER'@'%' IDENTIFIED BY '$_DB_PASS'; FLUSH PRIVILEGES;" | mysql -u root -p$_DB_ROOT_PASS

mysql < create_pma_tables.sql -u root -p$_DB_ROOT_PASS

rc-service mariadb stop
mariadbd --user=root 
