The apache2 configuration file

All configuration is accessed through /etc/apache2/apache2.conf.
There is extensive documentation in the file. For an overview of the content, show it without comments or blank lines:

`grep -v '#' /etc/apache2/apache2.conf | grep -v '^$' | less`{{execute}}

There are few environment variables used that are defined at startup through /etc/apache2/envvars.
The documentation is in the file.  Here is a list of the exported environment variables:

`grep export /etc/apache2/envvars | grep -v '#'{{execute}}

Further configuration is included in apache2.conf through `Include` and `IncludeOptional` directives. For instance,
the line `Include ports.conf` includes the file /etc/apache2/ports.conf:

`less /etc/apache2/ports.conf`{{execute}}





## Task








