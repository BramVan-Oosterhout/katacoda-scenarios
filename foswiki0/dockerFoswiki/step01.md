 In this Scenario we will create a docker image for use in other Scenarios. The Scenario will show you the steps, but it is not a Docker tutorial. You can find these at: [Katacoda](https://www.katacoda.com/courses/docker). The Docker site has plenty of [documentation](https://docs.docker.com/).

 You can view the build instructions in the _Dockerfile_ called `Dockerfile.foswiki.base`{{open}} in the root directory. Open the file in the editor.

 We start the image from the [official image on Docker hub](https://docs.docker.com/docker-hub/official_images/) `(line 1)`:
```

FROM httpd:2.4-alpine

```

 Then we install `perl`, `bash` and the `cpan` Foswiki pre-requisites for the image using the Alpine packaging `(line 4 - 15)`.

 And we create two directories to mimic the common Foswiki Apache installation `(line 16, 17)`

