 The material transmitted to render a Foswiki page contains `html` and numerous supporting components (`css`, `JavaScript (js)`). The [PageOptimizerPlugin](https://foswiki.org/Extensions/PageOptimizerPlugin) post processes the page `html` and combines the `css` and `js` elements in a single file each. The result is cached, so that the overhead of the combining is incurred once.

 To use this plugin, it needs to be installed and configured. That can be accomplished in the browser through the `configure` script. But for the sake of this tutorial we will build a Docker image with the `PageOptimizerPlugin` enabled. Open the `Dockerfile.foswiki.pageopt`{{open}}. We start from the `foswiki-cgi` image. (`Line 1`). If you have not built this image in the previous step, you can follow the instructions in the answer section of this step.

 Install the `PageOptimizerPlugin` extension and update the file permissions. (`Line 4 - 6`)

 Build the image with `docker build -t foswiki-pageopt -f Dockerfile.foswiki.pageopt . `{{execute}}

 And start the container with: `docker run -d --rm --name foswiki -p 443:443 foswiki-pageopt`{{execute}}.

 Open Foswiki https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki and measure the performance of the `Main.WebHome` page. In my excercise I get (cgi base line in brackets):

|First|Second|Third|Url|
|-|
||||`localhost`|
||||`katacoda host`|
||||Pingdom|

 The results are marginally different. Why would that be?

