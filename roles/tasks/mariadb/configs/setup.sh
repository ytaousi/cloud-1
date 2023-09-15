touch /run/openrc/softlevel
chmod -R 777 /var/lib/mysql
export mysqldata=/var/lib/mysql/mysql

/etc/init.d/mariadb setup 

rc-update add mariadb

rc-status
rc-service mariadb restart
rc-status

mysql < create_users.sql -u root -p$DB_ROOT_PASS

mysql < create_pma_tables.sql -u root -p$DB_ROOT_PASS

rc-service mariadb stop
mariadbd --user=root 
