Install the docker-foswiki image

`docker run -d --name foswiki -p 80:80 timlegge/docker-foswiki`{{execute}}

You need to configure the password for the admin user. We'll do that from the command line using the shell as described in the documentation

`docker exec -it foswiki /bin/bash`{{execute}}
`cd /var/www/foswiki/`{{execute}}
`tools/configure -save -set {Password}='password'`{{execute}}

In the Katacoda environment we also tell Foswiki NOT to use session IP matching.

`tools/configure -save -set {Sessions}{UseIPMatching}='0'`{{execute}}

And we need to allow redirection to the katacoda url. Note that port 80 is explicit.

`tools/configure -save -set {PermittedRedirectHostUrls}='http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/'`{{execute}}

Error: User registration has issues...
Captcha plugin to be disabled

`tools/configure -save -set {Plugins}{CaptchaPlugin}{Enabled}='0'`{{execute}}



