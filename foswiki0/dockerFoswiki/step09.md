The standard Apache Foswiki CGI configuration will start the `perl` interpreter for each page request received.This introduces some overhead. The overhead can be avoided by running a daemon that provides Foswiki services using the `FastCGI` protocol.

Instead of creating a new process for each request, `FastCGI` uses persistent processes to handle a series of requests. See: [FastCGI (Wikipedia)](https://en.wikipedia.org/wiki/FastCGI).

Apache `mod_fcgid` provides this service It starts `foswiki.fcgi` as a daemon when the first request is received. Subsequent requests are handled by the already running daemon.

The installation is done in `Dockerfile.foswiki.fcgi`{{open}}

### Foswiki `FastCGIEngineContrib`	{#Foswiki_61FastCGIEngineContrib_61}

Foswiki supports `FastCGI` through the [`FastCGIEngineContrib`](https://foswiki.org/Extensions/FastCGIEngineContrib). `FastCGIEngineContrib` is installed with the Foswiki core installation. The executable `foswiki.fcgi` is located in the `bin` directory: `docker exec -it foswiki /bin/bash -c 'ls /var/www/foswiki/bin'`{{execute}}

### libfcgi-perl and apache mod\_fcgid	{#libfcgi_45perl_and_apache_mod_fcgid}

These modules are installed in `line 3 - 5` in `Dockerfile.foswiki.fcgi`{{open}} `mod_fcgid` is dependent on `perl-fcgi`

### Apache - Foswiki configuration	{#Apache_45_Foswiki_configuration}

The configuration file is generated with the Foswiki Apache config generator at <https://foswiki.org/Support/ApacheConfigGenerator>. Allow Symbolic Links and select the `FastCGI` runtime engine. Accept the defaults for he remaining options.

The generated file is supplied as foswiki.fcgi.conf. You can compare this configuration with the standard foswiki.conf with: `diff foswiki.cgi.conf foswiki.fcgi.conf`{{execute}}
* The Alias declarations change the foswiki executable to the `foswiki.fcgi` executable.
* If `mod_fcgid` is enabled, there are some control parameters set. They make sure that the continuous running process plays nicely in the environment.
* The Files declaration defines the `foswiki.fcgi` script as an fcgi daemon.

Make the fcgi configuration available in `line 7 - 11`.

Build the image with: `docker build -t foswiki-fcgi -f Dockerfile.foswiki.fcgi . `{{execute}}

Stop the running `foswiki` container: `docker stop foswiki`{{execute}}

And start the container: `docker run -d --rm --name foswiki -p 443:443 foswiki-fcgi`{{execute}}

The performance results for the `fcgi` configuration are in seconds. Baseline figures are in brackets. The performance scripts are repeated in the Solutions. And this time there is a significant difference with the `CGI` configuration.

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> First </th>
<th class="foswikiTableCol1"> Second </th>
<th class="foswikiTableCol2"> Third </th>
<th class="foswikiTableCol3"> CGI </th>
<th class="foswikiTableCol4 foswikiLastCol"> Url </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> 0.54 </td>
<td class="foswikiTableCol1"> 0.15 </td>
<td class="foswikiTableCol2"> 0.15 </td>
<td class="foswikiTableCol3"> 0.59 </td>
<td class="foswikiTableCol4 foswikiLastCol">`localhost`</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> 2.05 </td>
<td class="foswikiTableCol1"> 1.91 </td>
<td class="foswikiTableCol2"> 1.95 </td>
<td class="foswikiTableCol3"> 2.27 </td>
<td class="foswikiTableCol4 foswikiLastCol">`katacoda host`</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> 0.68 </td>
<td class="foswikiTableCol1 foswikiLast"> 0.58 </td>
<td class="foswikiTableCol2 foswikiLast"> 0.75 </td>
<td class="foswikiTableCol3 foswikiLast"> 1.07 </td>
<td class="foswikiTableCol4 foswikiLastCol foswikiLast">[Pingdom](https://tools.pingdom.com)</td>
</tr>
</table>

