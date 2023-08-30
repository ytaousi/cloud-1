#!/bin/bash


rc-status
rc-service nginx start
rc-status


nginx -s stop
nginx -g 'daemon off;' 

