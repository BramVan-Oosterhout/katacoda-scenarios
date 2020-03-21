#!/bin/bash
{
echo -n "Install/configure environment "
while [ ! -e Foswiki_config_complete ]
do
echo -n "+"
sleep 2
done
} 2>/dev/null
echo ""
export DEFAULT_URL_HOST=http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Password}='password'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Sessions}{UseIPMatching}='0'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {PermittedRedirectHostUrls}='$DEFAULT_URL_HOST'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Plugins}{CaptchaPlugin}{Enabled}='0'"
echo " done."
echo "DEFAULT_URL_HOST = $DEFAULT_URL_HOST"