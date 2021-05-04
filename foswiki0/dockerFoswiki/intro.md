In this Scenario you will build a Docker image supporting an Apache/Foswiki installation for use in a Katacoda scenario. The Scenario compares the performance five different configurations. They are:

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> Environment </th>
<th class="foswikiTableCol1 foswikiLastCol"> Supports </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> CGI </td>
<td class="foswikiTableCol1 foswikiLastCol"> The out of the box Foswiki install with the standard CGI configuration file. This illustrates the standard performance. </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> CGI-gz </td>
<td class="foswikiTableCol1 foswikiLastCol"> The CGI environment, with support for the delivery of the pre-zipped `js` and `css` files. This will reduce the volume of data to be transported to render the page </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> PageOpt </td>
<td class="foswikiTableCol1 foswikiLastCol"> The CGI environment with the `PageOptimizerPlugin` configured. This will reduce the number of files to be requested to render the page. One `js` and one `css` file </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> CGI-deflate </td>
<td class="foswikiTableCol1 foswikiLastCol"> The CGI environment with the Apache `mod_deflate` enabled. This will reduce the volume of data to be transported to render the page </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> FCGI </td>
<td class="foswikiTableCol1 foswikiLastCol foswikiLast"> The foswiki install with the Fast CGI configuration file and Apache `mod_fcgid` installed </td>
</tr>
</table>

Once you have built the container, you can run it. Since the Katacoda environment is already a container, you will be accessing your Foswiki as `https://[[katacoda ...com]]/foswiki`. In other words, the access method uses ssl.

To avoid issues with [Cross-Origin-Resource-Sharing](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) in the Katacoda environment it is easier to configure the web server in the docker container to support the https protocol. The protocol requires an `ssl` certificate and for the course this is implemented through a [self-signed certificate](https://en.wikipedia.org/wiki/Self-signed_certificate). That reduces the number of work arounds and works reliably. So for the tutorial, you must start the container with port 443 (https) listening.

<div class="katacoda_tutorial" style="background-color: khaki">**Please note** that you are `root` on the server. If you are not a user with root privileges, some commands will need to be \`sudo'ed\`. </div>