#!/bin/bash
{
echo -n "Install/configure environment "
until [ -e foswiki-running ]
do
echo -n "+"
sleep 3
done
echo " done."
} 2>/dev/null
docker exec -it foswiki /bin/bash -c '/tmp/answer exercises && chmod +x /tmp/tracetmpl.pl'
docker exec -it -w /var/www/foswiki foswiki /bin/bash
