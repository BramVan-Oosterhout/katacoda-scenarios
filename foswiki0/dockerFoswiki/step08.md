 When you inspect the Pingdom performance report for the `Main.WebHome` page, you will see that the the object size has a some bearing on the time to deliver the object to your browser. Apache can help by compressing the output file before transmission, thereby trading transmission time for processing time.

 Open `Dockerfile.foswiki.deflate`{{open}}. The module to use is `mod_deflate`. It is activated in `line 7`.

 The Foswiki configuration needs to be changed to instruct apache to take advantage of the compression. Open `foswiki.cgi-deflate.conf`{{open}}. The changes are at `line 176 - 192`. They can also be shown with: `diff foswiki.cgi-deflate.conf foswiki.cgi.conf`\{\{exec\}\}

 REMOVE THE LOGLEVEL.

 Build the image with: `docker build -t foswiki-deflate -f Dockerfile.foswiki.deflate . `{{execute}}

 And start the container: `docker run -d --rm --name foswiki -p 443:443 foswiki-deflate`{{execute}}

 To demonstrate the effect you can use:

  * to retrieve the compressed page:

    * `wget --header="accept-encoding: gzip" --no-check-certificate --delete-after <a href="https://localhost/foswiki/Main/WebHome">https://localhost/foswiki/Main/WebHome</a>`\{\{exec\}\}

  * and compare to the uncompressed page:

    * `wget --no-check-certificate --delete-after <a href="https://localhost/foswiki/Main/WebHome">https://localhost/foswiki/Main/WebHome</a>`\{\{exec\}\}

  * When you retrieve the external page you get:

    * `wget --header="accept-encoding: gzip" --no-check-certificate --delete-after https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/Main/WebHome`\{\{exec\}\}
    * Hey, this request did not receive a compressed page! Why would that be?

 The performance results for the `deflate` configuration are in seconds. Baseline figures are in brackets. The performance scripts are repeated in the Solutions.

|First|Second|Third|Url|
|-|
|0.59|0.63|0.57|0.59|`localhost`|
|2.27|2.33|2.35|2.27|`katacoda host`|
|1.12|1.12|0.99|1.07|[Pingdom](https://tools.pingdom.com/#!/)|

 As before, the differences appear marginal. Why would that be?

