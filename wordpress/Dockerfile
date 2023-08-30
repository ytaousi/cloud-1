FROM alpine:3.12

EXPOSE 9000

RUN apk update && apk upgrade && apk add vim curl openrc wget php7-fpm

#setup openrc
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel

COPY ./configs/wp-config.php /wp-config.php
COPY ./configs/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./configs/initscript.sh /initscript.sh

ENTRYPOINT [ "sh", "./initscript.sh" ]