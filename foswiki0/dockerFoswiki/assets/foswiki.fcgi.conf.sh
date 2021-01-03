#!/bin/bash

echo "...starting apache+foswiki"
cd /var/www/foswiki/bin

./foswiki.fcgi -l 127.0.0.1:9000 -n 5 -d --pidfile /tmp/foswiki.pid

nginx -g "daemon off;"