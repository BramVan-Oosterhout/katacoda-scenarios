#!/bin/bash
until [[ -e answer.pl && -e webs,dck ]] 
do
   sleep 1
done
docker build -t foswiki -f webs.dck .
docker run -d --rm --name foswiki -p 80:80 bramvanoosterhout/foswiki1
touch foswiki-running