[Katacoda Docker tutorials](https://www.katacoda.com/courses/docker). The Docker site has plenty of [documentation](https://docs.docker.com/).

You can view the build instructions in the _Dockerfile_ called `Dockerfile.foswiki.base`{{open}} in the root directory. Open the file in the editor.

We start the image from the [official `httpd` image on Docker hub](https://hub.docker.com/search?q=&type=image&image_filter=official) `(line 1)`: `FROM httpd:2.4-alpine`.

Then we install `perl`, `bash` and the `cpan` Foswiki pre-requisites for the image using the Alpine packaging `(line 4 - 15)`.

And we create two directories to mimic the common Foswiki Apache installation `(line 16, 17)`

