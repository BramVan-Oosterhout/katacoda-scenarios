The ssl configuration is defined is several files: `find /etc/apache2 -name "*ssl*conf"`{{execute}}

First we need to enable ssl.mod, so the server knows to listen to port 443.

We can do this by creating a symlink `ln -s /etc/apache2/mods-avalable/ssl.conf /etc/apache2/mods-enabled/ssl.conf`
But apache2 provides a command for enabling modules that also takes care of dependencies between modules.
Use `a2enmod ssl`{{execute}}. The output reminds you to restart the server to include the change `service apache2 restart`{{execute}}

When you try to access the default page with ssl `curl https://host01`{{execute}} you can see a response
but it is not successful. To use ssl, your apache server requires a security certificate. The certicate is stored in /etc/apache2/ssl.

Create the directory: `mkdir /etc/apache2/ssl`{{execute}}

Generate the certificates and place them in the directory:
`openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -out /etc/apache2/ssl/server.crt -keyout /etc/apache2/ssl/server.key`{{execute}}
You need to provide the following information. I show my entries in braces.

    Country Name (2 letter code) [AU]:{AU}
    State or Province Name (full name) [Some-state]:{Australian Capital Territory}
    Locality Name (eg, city) []:{Canberra}
    Organization Name (eg, company) [Internet Widgets Pty Ltd]:{Bram van Oosterhout}
    Organizational Unit Name(eg, section) []:{}
    Common Name (eg, server FQDN or YOUR name) []:{host01}
    Email Address []:{webmaster@domain.org}

Update the apache2 configuration file with the new certificate details:
`perl -npe 's!^([ \t]*SSLCertificateFile)[^\n]*$!$1 /etc/apache2/ssl/server.crt!' /etc/apache2/sites-enabled/default-ssl.conf`{{execute}}
`perl -npe 's!^([ \t]*SSLCertificateKeyFile)[^\n]*$!$1 /etc/apache2/ssl/server.key!' /etc/apache2/sites-enabled/default-ssl.conf`{{execute}}{

Configure the certificate and reload the server with:
`a2ensite default-ssl;service apache2 reload`{{execute}}  

You can now retrieve the page with: `curl https://host01`{{execute}} but not with `curl https://localhost`{{execute}},
because the certificate is generated for =host01=.

---

This step is modeled on the instructions by [Charles Hallard](https://hallard.me/enable-ssl-for-apache-server-in-5-minutes/)





