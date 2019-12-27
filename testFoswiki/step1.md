## Check the environment.

What is the host name? `hostname`{{execute}}

Is the apache server running? `ps -C apache2`{{execute}}

Does it serve the default page? `curls http://host01`{{execute}}

## Download the software and install.

Download the current release from github.

`curl -L -o /tmp/foswiki.tgz https://github.com/foswiki/distro/releases/download/FoswikiRelease02x01x06/Foswiki-2.1.6.tgz`{{execute}}

Install foswiki in /var/www

tar -C /var/www/foswiki -xf /tmp/foswiki.tgz
