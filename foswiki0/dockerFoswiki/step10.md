 The various configurations demonstrated here are summarized on this page. Response times shown with start are measured using `/usr/bin/time` on `wget locahost/foswiki` on the hostin platform.

 You can run Foswiki with https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki. You can get download time statistics with `./timings https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki`{{execute}}.

 Copy the script to your own platform from `timings`{{open}}. The times on my home server are measured with this script. They are presented as: THS: `first time`, average over next 4 (standard deviation)=.

### Standard cgi	

`./start cgi`{{execute}} <br />
 THS:

### Pre zipped css and javascript	

`./start cgi-gz`{{execute}} <br />
 THS:

### Using PageOptimizer	

`./start pageopt`{{execute}} <br />
 THS:

### Deflated component	

`./start cgi-deflate`{{execute}} <br />
 THS:

### Fast CGI	

`./start fcgi`{{execute}} <br />
 THS:

