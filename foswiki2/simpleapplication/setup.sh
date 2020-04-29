#!/bin/bash
if [[ $(docker inspect foswiki 2>/dev/nul) == '[]' ]]; then
docker run -d --name foswiki -p 80:80 timlegge/docker-foswiki
fi
until [ "`/usr/bin/docker inspect -f {{.State.Running}} foswiki`"=="true" ]; do sleep 1; done
sleep 2
touch Foswiki_config_complete