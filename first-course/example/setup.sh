#!/bin/bash
until [[ -e first-course.dck ]]
do
   sleep 1
done
docker build -t foswiki -f first-course.dck .
docker run -d --rm --name foswiki -p 80:80 foswiki
touch foswiki-running
