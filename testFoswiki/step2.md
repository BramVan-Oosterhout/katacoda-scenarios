## Provide access to Foswiki for www-data (Apache).

Create a non version specific access point: `ln -s /var/www/foswiki /var/www/Foswiki-2.1.6`{{execute}}

And change the file owner and group `chmod -R www-data:www-data /var/www/foswiki`{{execute}}

## Configure the Apache server.
