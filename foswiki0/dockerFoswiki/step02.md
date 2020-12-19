 The installation of Foswiki retrieves the tar ball from the [foswiki.org](../../..) and unpacks it (line 19 - 25):

 After installation the tar ball is removed (line 25).

 Then we use `tools/configure` to configure Foswiki from the command line (line 29 - 33):
```

WORKDIR /var/www/foswiki

#configure Foswiki
RUN tools/configure -save -noprompt &amp;&amp; \
    tools/configure -save -set {DefaultUrlHost}='http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com' \
                          -set {Password}='password' \
                          -set {Sessions}{UseIPMatching}='0' &amp;&amp; \
    touch data/.htpasswd &amp;&amp; \
    chown -R daemon:daemon *

```

