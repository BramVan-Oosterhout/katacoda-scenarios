 The material transmitted to render a Foswiki page contains HTML and numerous supporting components (CSS, [JavaScript](http://cdlhttps://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/KatacodaCourses/Foswiki0/KcDockerAF/JavaScript?topicparent=KatacodaCourses/Foswiki0/KcDockerAF.ScenarioStep06 "Create this topic")). The [PageOptimizerPlugin](https://foswiki.org/Extensions/PageOptimizerPlugin) post processes the page html and compresses the CSS and [JavaScript](http://cdlhttps://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/KatacodaCourses/Foswiki0/KcDockerAF/JavaScript?topicparent=KatacodaCourses/Foswiki0/KcDockerAF.ScenarioStep06 "Create this topic") components in a single file each. The result is cached, so thatthe overhead of the compression is incurred once.

 To use this plugin, it needs to be installed and configured. That can be accomplished in the browser through the configure script. But for the sake of this tutorial we will build a Docker image with the `PageOptimizerPlugin` enabled.

 We start from the `foswiki-cgi` image. If you have not built this image in the previous step, you can follow the instructions in the answer section of this step.

```

FROM foswiki-cgi

```

 Start the container with: `docker...`{{execute}} and measure the performance of the [Main](http://cdlhttps://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Main/WebHome) page. In my excercise I get: |#|html (ms)|Total (ms)|
|-|
|1|||
|2|||
|3|||
|4|||
|5|||
|Avg||

 Dot com tools measures

