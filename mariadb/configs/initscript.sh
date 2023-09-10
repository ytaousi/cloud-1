#!/bin/bash
rc-service mysql restart
mysql < mysql_secure_installation.sql -u root -proot
mysql < create_users.sql -u root -prootpassword
rc-service mysql restart