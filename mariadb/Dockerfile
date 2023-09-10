FROM debian:buster

EXPOSE 3306

RUN apt update && apt upgrade -y && apt install -y vim curl wget dos2unix mariadb-server openrc 
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel


COPY ./configs/initscript.sh /initscript.sh
COPY ./configs/create_users.sql /create_users.sql
COPY ./configs/mysql_secure_installation.sql /mysql_secure_installation.sql
RUN dos2unix /initscript.sh

ENTRYPOINT [ "/bin/bash", "./initscript.sh" ]