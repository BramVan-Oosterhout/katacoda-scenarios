Verify the installation.

## Task

You can check that the apache server is operational by retrieving the default apache page from _localhost_:

`curl localhost`{{execute}}

## Task

You can find the IP address of your server using:

`curl http://whatismyip.akamai.com`{{execute}}

## Task

The IP address is not accessible from the outside. If you try

http://<IP address of your server>

you get a message: _No domain provided_

This url may do it for you: https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

The url uses: HOST_SUBDOMAIN = [[HOST_SUBDOMAIN]]

and KATACODA_HOST = [[KATACODA_HOST]]






