#!/bin/bash
until [ -e KcBvO.crt && -e KcBvO.key && -e Foswikicgi.dck && -e foswiki.cgi.conf ] 
do
   echo -n "+"
   sleep 3
done
docker build -t foswiki -f Foswikicgi.dck .
docker run -d --rm --name foswiki -p 443:443 foswiki
