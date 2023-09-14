FROM debian:buster

EXPOSE 3306

RUN apt update && apt upgrade -y && apt install -y vim curl wget dos2unix mariadb-server openrc mariadb-client

RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel

RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld

COPY ./configs/initscript.sh /usr/local/bin/initscript.sh
COPY ./configs/create_users.sql /usr/local/bin/create_users.sql
COPY ./configs/mysql_secure_installation.sql /usr/local/bin/mysqlSecureInstallation.sql
COPY ./configs/config_wp.sql /usr/local/bin/config_wp.sql
COPY ./configs/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /usr/local/bin/initscript.sh && chmod +x /usr/local/bin/create_users.sql && chmod +x /usr/local/bin/mysqlSecureInstallation.sql && chmod +x /usr/local/bin/config_wp.sql
RUN dos2unix /usr/local/bin/initscript.sh

ENTRYPOINT [ "/bin/bash", "/usr/local/bin/initscript.sh" ]