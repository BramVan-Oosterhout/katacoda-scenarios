When you use [Pingdom](https://tools.pingdom.com/#!/) to inspect the network traffic, you will notice that there is one `html` object returned, followed by multiple stylesheets (`css`), javascripts (`js`) and images. Although the `css` and `js` files are small, they take some time to fully transmit. Compressing these text files can reduce the transmission time and improve the performance of the web site.

Foswiki is shipped with pre-compressed files out of the box. Since not all browsers treat these files reliably, the facility is not switched on by default. It can be easily configured in the Foswiki configuration file. A modified configuration file is provided in `foswiki.cgi-gz.conf`{{open}}.

The changes can be seen with: `diff foswiki.cgi.conf foswiki.cgi-gz.conf`{{execute}} Changes are in the access to files in the `pub` directory::
* Access to `.css` is redirected to `.css.gz`
* Access to `.js` is redirected to `.js.gz`
* Symbolic links can be followed (required for redirect)

Implement these configuration changes by:
* building the new docker container from `Dockerfile.foswiki.cgi-gz`{{open}}: `docker build -t foswiki-cgi-gz -f Dockerfile.foswiki.cgi-gz . `{{execute}}
* stopping the running foswiki image: `docker stop foswiki`{{execute}}
* starting a new image: `docker run -d --rm --name foswiki -p 443:443 foswiki-cgi-gz`{{execute}}

The configuration provides the following performance results. Baseline figures are in the `CGI` collumn. (The scripts are repeated in the Solutions).

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> First </th>
<th class="foswikiTableCol1"> Second </th>
<th class="foswikiTableCol2"> Third </th>
<th class="foswikiTableCol3"> CGI </th>
<th class="foswikiTableCol4 foswikiLastCol"> Url </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> 0.62 </td>
<td class="foswikiTableCol1"> 0.59 </td>
<td class="foswikiTableCol2"> 0.58 </td>
<td class="foswikiTableCol3"> 0.59 </td>
<td class="foswikiTableCol4 foswikiLastCol">`localhost`</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> 2.16 </td>
<td class="foswikiTableCol1"> 2.13 </td>
<td class="foswikiTableCol2"> 2.22 </td>
<td class="foswikiTableCol3"> 2.27 </td>
<td class="foswikiTableCol4 foswikiLastCol">`katacoda host`</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> 1.04 </td>
<td class="foswikiTableCol1 foswikiLast"> 1.09 </td>
<td class="foswikiTableCol2 foswikiLast"> 1.05 </td>
<td class="foswikiTableCol3 foswikiLast"> 1.07 </td>
<td class="foswikiTableCol4 foswikiLastCol foswikiLast">[Pingdom](https://tools.pingdom.com)</td>
</tr>
</table>

The results are disappointingly similar. Why would that be?

