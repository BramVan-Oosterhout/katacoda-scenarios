#!/bin/bash
docker build -t foswiki -f Foswikicgi.dck .
docker run -d --rm --name foswiki -p 443:443 foswiki
