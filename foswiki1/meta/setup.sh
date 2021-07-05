#!/bin/bash
until [[ -e answer.pl && -e meta.dck ]] 
do
   sleep 1
done
docker build -t foswiki -f meta.dck .
docker run -d --rm --name foswiki -p 80:80 foswiki
touch foswiki-running