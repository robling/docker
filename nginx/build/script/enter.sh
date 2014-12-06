#!/bin/bash
#make sure all folders needed under '/data' reachable
mkdir -p /data/log/ && \
mkdir -p /data/www/ && \
mkdir -p /data/config/nginx/conf.d && \
mkdir -p /data/config/nginx/certs && \
mkdir -p /data/config/nginx/vhost.d

if [ -f "/data/config/nginx/conf.d/*" ]; then
echo "ok"
else echo "no"
fi
#run supervisor in foreground
supervisord -n
