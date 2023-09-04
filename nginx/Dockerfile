FROM debian:buster

EXPOSE 443

RUN apt update && apt upgrade -y && apt install vim nginx curl openssl 
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/certificate.crt \
       -keyout /etc/nginx/ssl/certificate.key \
       -subj "/C=MA/ST=Bg/L=Bg/O=1337 School/OU=yt/CN=yt/"

COPY ./configs/default.conf /etc/nginx/conf.d/default.conf
COPY ./configs/initscript.sh /initscript.sh
#COPY ./configs/ssl /etc/nginx


ENTRYPOINT ["/bin/sh" , "/initscript.sh"]
