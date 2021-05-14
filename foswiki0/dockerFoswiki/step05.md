Performance is a concern for web sites that want to be seen. Slow responses tend to scare off impatient people. Apache and Foswiki support various configurations to improve the performance of the Foswiki site. Foswiki supports these options out of the box and with several plugins. In the following steps we will install some of them and measure the result.

In this step we introduce the measurement and set the base line.

There are tools on the web that will measure the performance of any web site. You can search: _measuring web site response performance_ for a list. In this Scenario we will use the [Pingdom](https://tools.pingdom.com) tool.

However, for a first impression, you can use a simple command line script: <br />

**For localhost:**
* `/usr/bin/time --quiet -f "%e" wget -pq --header="accept-encoding: gzip" --no-check-certificate --delete-after https://localhost/foswiki`{{execute}}
**For the Katacoda environment:**
* `/usr/bin/time --quiet -f "%e" wget -pq --header="accept-encoding: gzip" --no-check-certificate --delete-after https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki`{{execute}}

Try each several times and notice the variations. These measurements form a baseline against which to compare the performance of the other configurations.

For this Foswiki CGI configuration I get the following results in seconds.

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> First </th>
<th class="foswikiTableCol1"> Second </th>
<th class="foswikiTableCol2"> Third </th>
<th class="foswikiTableCol3"> Avg </th>
<th class="foswikiTableCol4 foswikiLastCol"> Url </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> 0.56 </td>
<td class="foswikiTableCol1"> 0.58 </td>
<td class="foswikiTableCol2"> 0.62 </td>
<td class="foswikiTableCol3"> 0.59 </td>
<td class="foswikiTableCol4 foswikiLastCol">`localhost`</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> 2.30 </td>
<td class="foswikiTableCol1"> 2.25 </td>
<td class="foswikiTableCol2"> 2.26 </td>
<td class="foswikiTableCol3"> 2.27 </td>
<td class="foswikiTableCol4 foswikiLastCol">`katacoda host`</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> 1.20 </td>
<td class="foswikiTableCol1 foswikiLast"> 1.01 </td>
<td class="foswikiTableCol2 foswikiLast"> 1.01 </td>
<td class="foswikiTableCol3 foswikiLast"> 1.07 </td>
<td class="foswikiTableCol4 foswikiLastCol foswikiLast">[Pingdom](https://tools.pingdom.com)</td>
</tr>
</table>

