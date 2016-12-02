#!/bin/sh
set -e
sed -i -e "s/\$REDOC_OPTIONS/$REDOC_OPTIONS/g" /usr/share/nginx/html/index.html
echo "Docs are running at http://localhost"
exec nginx -g "daemon off;"
