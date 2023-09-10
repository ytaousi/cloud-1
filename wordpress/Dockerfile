FROM debian:buster

EXPOSE 9000

RUN apt update && apt upgrade -y && apt install -y vim dos2unix curl wget unzip php-zip php-xml php-fpm php openrc php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql 

RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel

RUN mkdir /var/run/php
COPY ./configs/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./configs/wp-config.php .

COPY ./configs/initscript.sh /initscript.sh
COPY ./configs/wp-config.php .

RUN dos2unix /initscript.sh

ENTRYPOINT [ "/bin/bash", "./initscript.sh" ]