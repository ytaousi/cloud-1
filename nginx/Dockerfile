FROM alpine:latest

RUN apk update && apk upgrade && apk add nginx curl vim
COPY ./configs/default.conf /etc/nginx/site-enabled

CMD ["/bin/sh"]