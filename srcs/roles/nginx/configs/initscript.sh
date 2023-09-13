#!/bin/bash
cp /etc/ssl/private/nginx-selfsigned.key /etc/nginx/ssl;
cp /etc/ssl/certs/nginx-selfsigned.crt /etc/nginx/ssl;
mkdir -p /run/nginx;
rc-status;
rc-service nginx start;
rc-status;
nginx -s stop;
nginx -g 'daemon off;' 