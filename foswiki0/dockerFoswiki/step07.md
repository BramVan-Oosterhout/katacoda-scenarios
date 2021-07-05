The material transmitted to render a Foswiki page contains `html` and numerous supporting components (`css`, `JavaScript (js)`). The [PageOptimizerPlugin](https://foswiki.org/Extensions/PageOptimizerPlugin) performs some processing of the generated `html` and combines the `css` and `js` elements in a single file each. The result is cached, so that the overhead of the combining is incurred once.

To use this plugin, it needs to be installed and configured. That can be accomplished in the browser through the `configure` script. But for the sake of this tutorial we will build a Docker image with the `PageOptimizerPlugin` enabled.

Open the `Dockerfile.foswiki.pageopt`{{open}}. We start from the `kcbase` image. (`Line 1`). and install the CGI Foswiki configuration file. (`Line 5 - 7`).

Install the `PageOptimizerPlugin` extension and update the file permissions. (`Line 9 - 12`)

Build the image with `docker build -t foswiki-pageopt -f Dockerfile.foswiki.pageopt . `{{execute}}

Stop the running image: `docker stop foswiki`{{execute}}

And start the container with: `docker run -d --rm --name foswiki -p 443:443 foswiki-pageopt`{{execute}}.

Open Foswiki https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki and measure the performance of the `Main.WebHome` page. Baseline figures are in the `CGI` column. The measurement script are repeated in the Solutions.

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> First </th>
<th class="foswikiTableCol1"> Second </th>
<th class="foswikiTableCol2"> Third </th>
<th class="foswikiTableCol3"> CGI </th>
<th class="foswikiTableCol4 foswikiLastCol"> Url </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> 0.66 </td>
<td class="foswikiTableCol1"> 0.64 </td>
<td class="foswikiTableCol2"> 0.83 </td>
<td class="foswikiTableCol3"> 0.59 </td>
<td class="foswikiTableCol4 foswikiLastCol">`localhost`</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> 2.23 </td>
<td class="foswikiTableCol1"> 2.04 </td>
<td class="foswikiTableCol2"> 1.99 </td>
<td class="foswikiTableCol3"> 2.27 </td>
<td class="foswikiTableCol4 foswikiLastCol">`katacoda host`</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> 0.97 </td>
<td class="foswikiTableCol1 foswikiLast"> 1.49 </td>
<td class="foswikiTableCol2 foswikiLast"> 1.05 </td>
<td class="foswikiTableCol3 foswikiLast"> 1.07 </td>
<td class="foswikiTableCol4 foswikiLastCol foswikiLast">[Pingdom](https://tools.pingdom.com)</td>
</tr>
</table>

The results are marginally different. Why would that be?

