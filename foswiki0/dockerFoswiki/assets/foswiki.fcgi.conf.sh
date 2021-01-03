#!/bin/bash

# Conventional init scripts (Should also work with systemd)

cp /var/www/foswiki/tools/foswiki.init-script /etc/init.d/foswiki
# make the file executable using
chmod +x /etc/init.d/foswiki
# and ensure that it is assigned to user/group root

cp /var/www/foswiki/tools/foswiki.defaults /etc/default/foswiki
# and make appropriate adjustments:
# Make sure the process uses the same socket as configured in nginx (see above, defaults to 127.0.0.1:9000)
# verify that the FOSWIKI_ROOT setting points to your foswiki installation. 

#start foswiki
/etc/init.d/foswiki start