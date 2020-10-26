 In this Scenario we will create a docker image for use in other scenarios. The Scenario will show you the steps, but it is not a Docker tutorial. You can find these at: [Katacoda](<https://www.katacoda.com/courses/docker>). The Docker site has plenty of [documentation](<https://docs.docker.com/>).

 After you have built the image you can start an instance in a container. The running container will accept requests through [https://[%nop%[HOST\_SUBDOMAIN]]-80-[%nop%[KATACODA\_HOST]].environments.katacoda.com/foswiki](https://[%nop%[HOST_SUBDOMAIN]]-80-[%nop%[KATACODA_HOST]].environments.katacoda.com/foswiki).

 We start the image from the [official image on Docker hub]([https://docs.docker.com/docker-hub/official\_images/](https://docs.docker.com/docker-hub/official_images/)):
```

FROM httpd:2.4-alpine

```

 Then we install `perl`, `bash` and the `cpan` Foswiki pre-requisites for the image using the Alpinr packaging:
```

RUN apk update &amp;&amp; \
    apk upgrade &amp;&amp; \
    apk add perl bash \
            perl-cgi perl-cgi-session \
            perl-crypt-passwdmd5 perl-error \
            perl-file-copy-recursive perl-json \
            perl-html-tree perl-uri perl-algorithm-diff  &amp;&amp; \
    rm -rf /var/cache/apk/* &amp;&amp; \
    mkdir /var/www &amp;&amp; \
    mkdir /var/log/httpd

```

 We also created two directories to match the Foswiki default configuration.

### Answer	

