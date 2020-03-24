#!/bin/bash
{
echo -n "Install/configure environment "
while [ ! -e Foswiki_config_complete ]
do
echo -n "+"
sleep 2
done
} 2>/dev/null
echo " >>"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "touch data/.htpasswd"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Password}='password'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {Sessions}{UseIPMatching}='0'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash -c "tools/configure -save -set {PermittedRedirectHostUrls}='$1'"
docker exec -it -w /var/www/foswiki foswiki /bin/bash
echo " done."