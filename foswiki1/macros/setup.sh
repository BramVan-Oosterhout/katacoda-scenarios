#!/bin/bash
until [[ -e answer.pl && -e macros.dck ]] 
do
   sleep 1
done
docker build -t foswiki -f macros.dck .
docker run -d --rm --name foswiki -p 80:80 foswiki
touch foswiki-running