`Main.WebHome` page, you will see that the the object size has a some bearing on the time to deliver the object to your browser. Apache can help by compressing the output file before transmission, thereby trading transmission time for processing time.

Open `Dockerfile.foswiki.cgi-deflate`{{open}}. The module to use is `mod_deflate`. It is activated in `line 7`.

The Foswiki configuration needs to be changed to instruct apache to take advantage of the compression. Open `foswiki.cgi-deflate.conf`{{open}}. The changes are at `line 176 - 192`. They can also be shown with: `diff foswiki.cgi-deflate.conf foswiki.cgi.conf`{{execute}}

Build the image with: `docker build -t foswiki-deflate -f Dockerfile.foswiki.cgi-deflate . `{{execute}}

Stop the running `foswiki` container: `docker stop foswiki`{{execute}}

And start the container: `docker run -d --rm --name foswiki -p 443:443 foswiki-deflate`{{execute}}

To demonstrate the effect you can use:
* to retrieve the compressed page:
  * `wget --header="accept-encoding: gzip" --no-check-certificate --delete-after https://localhost/foswiki/Main/WebHome`{{execute}}
* and compare to the uncompressed page:
  * `wget --no-check-certificate --delete-after https://localhost/foswiki/Main/WebHome`{{execute}}
* When you retrieve the external page you get:
  * `wget --header="accept-encoding: gzip" --no-check-certificate --delete-after https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/Main/WebHome`{{execute}}
  * Hey, this request did not receive a compressed page! Why would that be?

The performance results for the `deflate` configuration are in seconds. Baseline figures are in the `CGI` column. The performance scripts are repeated in the Solutions.

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> First </th>
<th class="foswikiTableCol1"> Second </th>
<th class="foswikiTableCol2"> Third </th>
<th class="foswikiTableCol3"> CGI </th>
<th class="foswikiTableCol4 foswikiLastCol"> Url </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> 0.59 </td>
<td class="foswikiTableCol1"> 0.63 </td>
<td class="foswikiTableCol2"> 0.57 </td>
<td class="foswikiTableCol3"> 0.59 </td>
<td class="foswikiTableCol4 foswikiLastCol">`localhost`</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> 2.27 </td>
<td class="foswikiTableCol1"> 2.33 </td>
<td class="foswikiTableCol2"> 2.35 </td>
<td class="foswikiTableCol3"> 2.27 </td>
<td class="foswikiTableCol4 foswikiLastCol">`katacoda host`</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> 1.12 </td>
<td class="foswikiTableCol1 foswikiLast"> 1.12 </td>
<td class="foswikiTableCol2 foswikiLast"> 0.99 </td>
<td class="foswikiTableCol3 foswikiLast"> 1.07 </td>
<td class="foswikiTableCol4 foswikiLastCol foswikiLast">[Pingdom](https://tools.pingdom.com)</td>
</tr>
</table>

As before, the differences appear marginal. Why would that be?

