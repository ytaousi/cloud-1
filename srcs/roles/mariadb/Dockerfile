FROM alpine:3.12

EXPOSE 3306

RUN apk add mysql openrc mysql-client vim dos2unix

COPY ./configs/setup.sh /setup.sh
RUN chmod 777 /setup.sh

RUN mkdir -p  /run/openrc/

COPY ./configs/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY ./configs/create_pma_tables.sql /create_pma_tables.sql

RUN dos2unix /setup.sh
ENTRYPOINT ["/bin/sh","/setup.sh"]