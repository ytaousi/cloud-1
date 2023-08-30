FROM alpine:latest

EXPOSE 5000

RUN apk update && apk upgrade && apk add vim curl openrc php-fpm phpmyadmin

RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel

COPY ./configs/initscript.sh /initscript.sh

CMD [ "sh", "./initscript.sh" ]