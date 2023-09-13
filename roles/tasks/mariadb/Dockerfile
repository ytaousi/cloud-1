FROM debian:buster

EXPOSE 3306

RUN apt update && apt upgrade -y && apt install -y vim curl wget dos2unix mariadb-server openrc 
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel


COPY ./configs/initscript.sh /initscript.sh
COPY ./configs/create_users.sql /create_users.sql
COPY ./configs/mysql_secure_installation.sql /mysql_secure_installation.sql
COPY ./configs/config_wp.sql /config_wp.sql
COPY ./configs/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN dos2unix /initscript.sh

ENTRYPOINT [ "/bin/bash", "./initscript.sh" ]