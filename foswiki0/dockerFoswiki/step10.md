 The various configurations demonstrated here are summarized on this page. Response times shown with start are measured using `/usr/bin/time` on `wget localhost/foswiki` on the Katacoda host platform.

 You can run Foswiki with https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki. You can get download time statistics with `./timings https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki`{{execute}}.

 Copy the script to your own platform from `timings`{{open}}. The times on my home server are measured with this script. They are presented as: THS: `first time`, `average over next 4 (standard deviation)`.

### Standard cgi	

`./start cgi`{{execute}} <br />
 THS: 1100ms, 690ms (105)

### Pre zipped css and javascript	

`./start cgi-gz`{{execute}} <br />
 THS: 700ms, 685ms (82)

### Using PageOptimizer	

`./start pageopt`{{execute}} <br />
 THS: 700ms, 700ms (105)

### Deflated component	

`./start cgi-deflate`{{execute}} <br />
 THS: 870ms, 687ms (58)

### Fast CGI	

`./start fcgi`{{execute}} <br />
 THS: 690ms, 682ms (101)

