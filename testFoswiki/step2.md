## Provide access to Foswiki for www-data (Apache).

Create a non version specific access point: `ln -s /var/www/Foswiki-2.1.6 /var/www/foswiki`{{execute}}

And change the file owner and group `chown -R www-data:www-data /var/www/foswiki`{{execute}}

## Configure the Apache server.

Generate the Apache configuration for Foswiki using the
(Foswiki configuration generator)[https://foswiki.org/Support.ApacheConfigGenerator] on foswiki.org.
generate the configuration for Foswiki 2.x and Apache 2.4. For this installation you can use all the default settings.

The configuration generator the contents of the generated foswiki.conf file.
You can copy the text and save it in the /etc/apache2/conf-available/foswiki.conf file:
`cat > /etc/apache2/conf-available/foswiki.conf`{{execute}}
