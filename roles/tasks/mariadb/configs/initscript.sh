#!/bin/bash
# mysql_install_db
# rc-service mysql start
# mysql < mysql_secure_installation.sql 
# mysql < create_users.sql -u root -p$DB_ROOT_PASS
# mysql < config_wp.sql -u root -p$DB_ROOT_PASS
# rc-service mysql restart

sleep 3000
# mysqld --bind-address=0.0.0.0