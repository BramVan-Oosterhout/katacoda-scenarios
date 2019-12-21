This step is modeled on the instructions by [Charles Hallard](https://hallard.me/enable-ssl-for-apache-server-in-5-minutes/)

To use ssl, your apache server requires a security certificate. The certicate is stored in /etc/apache2/ssl.

Create the directory: `mkdir /etc/apache2/ssl`{{execute}}

Generate the certificates and place them in the directory:
`openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -out /etc/apache2/ssl/server.crt -keyout /etc/apache2/ssl/server.key`{{execute}}

The ssl configuration is defined is several files: `find /etc/apache2 -name "*ssl*conf"`{{execute}}

First we need to enable ssl.mod, so the server knows to listen to port 443.

We can do this by creating a symlink `ln -s 

file is avalable in the /etc/apache2/mods-available directory.
`



