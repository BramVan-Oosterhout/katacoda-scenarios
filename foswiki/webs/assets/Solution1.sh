#!/bin/sh
curl -LJO https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki/webs/assets/Solution1.tar
cd /var/www/foswiki/data/Sandbox 
tar -xvf /root/Solution1.tar
chmod www-data:www-data Solution1