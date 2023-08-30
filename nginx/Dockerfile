FROM alpine:latest

EXPOSE 80

RUN apk update && apk upgrade && apk add nginx curl vim openrc

RUN mkdir -p  /run/openrc/ && touch /run/openrc/softlevel

COPY ./configs/default.conf /etc/nginx/http.d/default.conf
COPY ./configs/initscript.sh .

CMD [ "sh", "./initscript.sh" ]