#!/bin/bash
if [[ $(docker inspect foswiki 2>/dev/nul) == '[]' ]]; then
docker run -d --name foswiki -p 80:80 timlegge/docker-foswiki
fi
docker exec -it foswiki /bin/bash
cd /var/www/foswiki/
tools/configure -save -set {Password}='password'
tools/configure -save -set {Sessions}{UseIPMatching}='0'
tools/configure -save -set {PermittedRedirectHostUrls}='http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/'
tools/configure -save -set {Plugins}{CaptchaPlugin}{Enabled}='0'
touch Foswiki_config_complete