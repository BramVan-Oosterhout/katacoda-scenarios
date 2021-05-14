Open file `Dockerfile.foswiki.base`{{open}} if not already open.

To configure Apache we need to:

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> Purpose </th>
<th class="foswikiTableCol1"> Action </th>
<th class="foswikiTableCol2 foswikiLastCol"> Lines </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> for `ssl`</td>
<td class="foswikiTableCol1"> supply the security certificate and key </td>
<td class="foswikiTableCol2 foswikiLastCol"> Line 40 - 41 </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol">   </td>
<td class="foswikiTableCol1"> enable `httpd-ssl.conf`</td>
<td class="foswikiTableCol2 foswikiLastCol"> Line 42 - 44 </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol">   </td>
<td class="foswikiTableCol1"> enable `mod_ssl` and `mod_socache_shmcb.so`</td>
<td class="foswikiTableCol2 foswikiLastCol">   </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> for logging </td>
<td class="foswikiTableCol1 foswikiLast"> access to `access.log`<br />
 errors to `error.log`</td>
<td class="foswikiTableCol2 foswikiLastCol foswikiLast"> Line 45 - 46 </td>
</tr>
</table>

For instructions on creating a self-signed security certificate see [Digital Ocean: How To Create a Self-Signed SSL Certificate for Apache](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-debian-10).

At this point we have the base for the 5 configurations we explore in this scenario. The next steps will create, run and explore the various configurations.

