FROM debian:buster

EXPOSE 443 80

RUN apt update && apt upgrade -y && apt install -y vim nginx curl openssl openrc dos2unix
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel
RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 \
    -subj  "/C=MA/ST=BG/O=1337/CN=example.com" \
     -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
     -out /etc/ssl/certs/nginx-selfsigned.crt;

COPY ./configs/default.conf /etc/nginx/conf.d/default.conf
COPY ./configs/initscript.sh .

RUN dos2unix /initscript.sh

ENTRYPOINT ["/bin/bash" , "./initscript.sh"]
