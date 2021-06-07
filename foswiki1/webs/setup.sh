#!/bin/bash
until [[ -e KcBvO.crt \
      && -e KcBvO.key \
      && -e Foswikicgi.dck 
      && -e foswiki.cgi.conf ]] 
do
   sleep 3
done
docker pull bramvanoosterhout/foswiki1
docker run -d --rm --name foswiki -p 80:80 bramvanoosterhout/foswiki1
# > > >docker cp answer foswiki:/tmp/.
# > > >docker exec -it foswiki /bin/bash -c "apk add tar"
#docker build -t foswiki -f Foswikicgi.dck .
#docker run -d --rm --name foswiki -p 80:80 foswiki
touch foswiki-running
