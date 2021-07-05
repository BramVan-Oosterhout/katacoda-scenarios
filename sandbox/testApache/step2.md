

## Is the apache2 process running?

You can check that the apache2 server is running by typing:

`ps -f -C apache2`{{execute}}

Notice that the apache processes are running as user www-data. You web pages must be readable by this user
or a user in the associated group:

`groups www-data`{{execute}}

Writing to a web page should be restricted to users in the associated group.

You can check that the apache server is operational by retrieving the default apache page from _localhost_:

`curl localhost`{{execute}}

To the ouside world the server name is host01: `hostname`{{execute}}. 

`curl host01`{{execute}} also retrieves the default page.

## Can I get the default page from my browser?

You can find the IP address of your server using:

`curl http://whatismyip.akamai.com`{{execute}}

The IP address is not accessible from the outsideworld. If you try

http://&lt;IP address of your server>

from your browser, you get a message: _No domain provided_

Katacoda's HOST_SUBDOMAIN and KATACODA_HOST variables provide a properly contructed URL: https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

Reference: https://www.katacoda.com/docs/scenarios/displaying-ports






