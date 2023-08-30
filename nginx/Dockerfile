FROM alpine:3.12

EXPOSE 80 443

RUN apk add curl openrc nginx vim 

#setup openrc
RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel


COPY ./configs/default.conf /etc/nginx/conf.d/default.conf
COPY ./configs/initscript.sh /initscript.sh
COPY ./configs/ssl /etc/nginx


ENTRYPOINT ["/bin/sh" , "/initscript.sh"]
