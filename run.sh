#!/usr/bin/env sh


echo "Starting Nginx"
#
/usr/sbin/nginx -c /etc/nginx/nginx.conf -g "daemon off;"
#
echo "Failed starting Nginx!"