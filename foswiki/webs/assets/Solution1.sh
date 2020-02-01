#!/bin/sh
curl -LJo Solution1.tgz https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki/webs/assets/Solution1.tgz
cd /var/www/foswiki/data/Sandbox 
tar -xvzf /root/Solution1.tgz
chmod www-data:www-data Solution1