#!/bin/bash
docker pull bramvanoosterhout/foswiki1
docker run -d --rm --name foswiki -p 80:80 bramvanoosterhout/foswiki1
until [[ -e answer.pl ]] 
do
   sleep 3
done
until [ "`/usr/bin/docker inspect -f {{.State.Running}} foswiki`"=="true" ]; do sleep 1; done
docker cp answer.pl foswiki:/tmp/answer
docker exec -it -w /var/www/foswiki foswiki /bin/bash
touch foswiki-running
