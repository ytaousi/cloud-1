#!/bin/bash
rc-service mysql restart
mysql < mysql_secure_installation.sql -u root -proot
mysql < create_users.sql -u root -p$DB_ROOT_PASS
mysql < config_wp.sql -u root -p$DB_ROOT_PASS
rc-service mysql restart