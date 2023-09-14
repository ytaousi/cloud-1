#!/bin/bash
mysql_install_db
rc-service mysql start
mysql < /usr/local/bin/mysqlsecureinstallation.sql
mysql < /usr/local/bin/create_users.sql
mysql < /usr/local/bin/config_wp.sql  
rc-service mysql restart

# mysqld --bind-address=0.0.0.0
