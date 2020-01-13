In the previous step you initialised a site with a2ensite.

The Apache2 server supports multiple configurations across multiple domains.
Each configuration can be for a particular domain or IP address and multiple domains can share an IP address.
Such a configuration is refferred to as a site or Virtual Host.

The server configured so far supports two Virtual hosts: `ls /etc/apache2/sites-enabled`{{execute}}
*   000-default.conf is the host for all access on port 80 `cat /etc/apache2/sites-enabled/000-default.conf`{{execute}}
*   defaul-ssl.conf is the host for all access on port 443 `cat /etc/apache2/sites-enabled/default-ssl.conf`{{execute}}

The VirtualHost directive accepts requests matching the &ltdomain>:&ltport> regular expression.
"*:80" matches any domain or IP address and port 80 (a standard HTTP request). "_default_" is an apache default equivalent to "*".
So "_default_:443" matches any domain or IP address and port 443 (a standard https request)

Virtual host support a great deal of flexibility in the configuration, but are out of the scope of this scenario.

The apache2 documentation presents an in depth explanation of this feature.





