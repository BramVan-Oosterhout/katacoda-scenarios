Download the package and install

## Task

Check the environment works and determine your IP address.

The following **curl command** will show the IP address of the environment.

`curl http://whatismyip.akamai.com`{{execute}}

## Task

Update the apt cache  and install the appropriate apache package

`apt-get update`{{execute}}

`apt-get install apache2`{{execute}}

The installation calculates how much disk space will be required and ask you wether you want to proceed. Hit _return_ to continue.

The apache server is now installed and running. Verify this with:

`ps ax | grep apache`{{execute}}
