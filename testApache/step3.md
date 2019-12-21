The apache2 configuration file

[DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-configure-the-apache-web-server-on-an-ubuntu-or-debian-vps)
presents a nice explanetion of the apache2 configuration.

All configuration is accessed on start-up through /etc/apache2/apache2.conf.
There is extensive documentation in the file. For an overview of the content, show it without comments or blank lines:

`grep -v '#' /etc/apache2/apache2.conf | grep -v '^$' | less`{{execute}}

There are few environment variables used that are defined at startup through /etc/apache2/envvars.
The documentation is in the file.  Here is a list of the exported environment variables:

`grep export /etc/apache2/envvars | grep -v '#'`{{execute}}

Further configuration is included in apache2.conf through `Include` and `IncludeOptional` directives. For instance,
the line `Include ports.conf` includes the file /etc/apache2/ports.conf:

`less /etc/apache2/ports.conf`{{execute}}

The `Listen` directive makes shure apache2 listens on port 80 for requests.

The directives within an `IfModule test` directive is conditional on the test being satisfied.
Apache2 can be extended with many modules that are defined in /etc/apache2/mods-available.
Activated modules are linked in /etc/apache2/mods-enabled.

`ls -o -g /etc/apache2/mods-enabled`{{execute}}`

As you can see, there is no obvious ssl_module activated. So by default apache2 will not accept requests on port 443.
This is demonstrated using `curl https://localhost`{{execute}}

The next step will activate ssl.








