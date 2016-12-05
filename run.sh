#!/bin/sh
set -e
sed -i -e "s/\$REDOC_OPTIONS/$REDOC_OPTIONS/g" /usr/share/nginx/html/index.html
exec nginx -g "daemon off;"
