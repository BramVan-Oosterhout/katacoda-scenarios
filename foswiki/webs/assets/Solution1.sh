#!/bin/sh
curl -LJo Solution1.tgz https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki/webs/assets/Solution1.tgz?raw=true
cd /var/www/foswiki/data/Sandbox 
tar -xzf /root/Solution1.tgz
chown www-data:www-data Solution1