#!/bin/bash
until [[ -e KcBvO.crt \
      && -e KcBvO.key \
      && -e Foswikicgi.dck 
      && -e foswiki.cgi.conf ]] 
do
   sleep 3
done
docker build -t foswiki -f Foswikicgi.dck .
docker run -d --rm --name foswiki -p 443:443 foswiki
touch foswiki-running
