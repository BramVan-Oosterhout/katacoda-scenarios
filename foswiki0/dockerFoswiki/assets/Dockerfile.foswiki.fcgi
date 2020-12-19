RUN apk add apache-mod-fcgid perl-fcgi
RUN cd /var/www/foswiki &&\
    tools/extension_installer FastCGIEngineContrib -r -enable install