 When you inspect the network traffic that follows the browser request, you will notice that there is one `html` object returned, followed by multiple stylesheets (`css`), javascripts (`js`) and images. Although the css and js files are small, they take more time to fully transmit than the `html` file. Compressing these text files can reduce the transmission time and improve the performance of the web site.

 Foswiki is shipped with pre-compressed files out of the box. Since not all browsers treat these files reliably, the facility is not switched on by default. It can be easily configured in the Foswiki configuration file. A modified configuration file is provided in `foswiki.cgi-gz.conf`{{open}}.

 The changes can be seen with: `diff foswiki.cgi.conf foswiki.cgi-gz.conf`{{execute}}. Changes are in the `pub` directory::

* Access to `.css` is redirected to `.css.gz`
* Access to `.js` is redirected to `.js.gz`
* Symbolic links can be followed (required for redirect)

 Make these configuration changes by:

* building the new docker container from `Dockerfile.foswiki.cgi-gz`{{open}}: `docker build -t foswiki.cgi-gz -f Dockerfile.foswiki.cgi-gz .`{{execute}}
* stopping the running foswiki image: `docker stop foswiki`{{execute}}
* starting a new image: `docker run -d --rm --name foswiki -p 443:443 foswiki-`{{execute}}

 The new configuration provides the following performance results **TBD**.

||Avg|Min|Max|
|-|
|1st|3.9|1.8|6.5|
|2nd|1.8|1.2|2.1|
