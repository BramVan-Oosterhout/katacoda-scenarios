#!/bin/sh
curl -LJO https://github.com/BramVan-Oosterhout/katacoda-scenarios/foswiki/introduction/assets/Solution1.tar
cd /var/www/foswiki/data/Sandbox 
tar -xvf /root/Solution1.tar
chmod www-data:www-data Solution1