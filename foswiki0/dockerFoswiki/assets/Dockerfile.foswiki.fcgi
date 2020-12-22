FROM kcbase

RUN apk add apache-mod-fcgid perl-fcgi

WORKDIR /usr/local/apache2/conf

COPY foswiki.fcgi.conf extra/.
RUN sed -i '/# Supplemental configuration/a Include conf/extra/foswiki.fcgi.conf' /usr/local/apache2/conf/httpd.conf

RUN cd /var/www/foswiki &&\
    tools/extension_installer FastCGIEngineContrib -r -enable install
 
 
 
#start the foswiki deamon  (nginx only)
