#!/bin/bash
if [[ $(docker inspect foswiki 2>/dev/nul) == '[]' ]]; then
docker run -d --name foswiki -p 80:80 timlegge/docker-foswiki
fi
until [ "`/usr/bin/docker inspect -f {{.State.Running}} foswiki`"=="true" ]; do sleep 1; done
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Password}='password'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Sessions}{UseIPMatching}='0'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {PermittedRedirectHostUrls}='http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Plugins}{CaptchaPlugin}{Enabled}='0'"
touch Foswiki_config_complete