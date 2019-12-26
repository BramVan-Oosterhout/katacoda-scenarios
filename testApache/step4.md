This step is modeled on the instructions by [Charles Hallard](https://hallard.me/enable-ssl-for-apache-server-in-5-minutes/)

The ssl configuration is defined is several files: `find /etc/apache2 -name "*ssl*conf"`{{execute}}

First we need to enable ssl.mod, so the server knows to listen to port 443.

We can do this by creating a symlink `ln -s /etc/apache2/mods-avalable/ssl.conf /etc/apache2/mods-enabled/ssl.conf`
But apache2 provides a command for enabling modules that also takes care of dependencies between modules.
Use `a2enmod ssl`{{execute}}. The output reminds you to restart the server to include the change `service apache2 reload`{{execute}}

When you try to access the default page with ssl `curl https://host01`{{execute}} you can see a response
but it is not successful. To use ssl, your apache server requires a security certificate. The certicate is stored in /etc/apache2/ssl.

Create the directory: `mkdir /etc/apache2/ssl`{{execute}}

Generate the certificates and place them in the directory:
`openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -out /etc/apache2/ssl/server.crt -keyout /etc/apache2/ssl/server.key`{{execute}}

Configure the certificate with: `a2ensite default-ssl`{{execute}} and reload the server `service apache2 reload`{{execute}}

You can now retrieve the page with: `curl https://host01`{{execute}}




