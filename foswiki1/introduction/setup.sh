#!/bin/bash
docker pull bramvanoosterhout/foswiki1
docker run -d --rm --name foswiki -p 80:80 bramvanoosterhout/foswiki1
touch foswiki-running
