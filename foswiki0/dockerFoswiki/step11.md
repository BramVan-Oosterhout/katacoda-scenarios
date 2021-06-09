Now that we have all the components for an Apache/Foswiki Docker image together, we can create a permanent version and save it at DockerHub for future use.

The `makefile`{{open}} attached to this scenario shows the steps.

`build` will build the image from a Docker file. We use `Foswikicgi.dck` to create the `foswiki1` image.

`docker build -t foswiki1 -f Foswikicgi.dck .`{{execute}}

`tag` will create a name for the image under which it will be stored. I'll use =bramvanoosterhout/foswiki1:latest

`docker tag foswiki1 bramvanoosterhout/foswiki1:latest`{{execute}}

`login` will ask for your userID and Password and presents those at DockerHub

`docker login`{{execute}}

`push` pushes a copy of the image to DockerHub

`docker push bramvanoosterhout/foswiki1:latest`{{execute}}

All this is achieved by the command:

`make IMAGE=foswiki1 DOCKERFILE=Foswikicgi.dck USER=bramvanoosterhout`{{execute}}

You can provide your own files and names and save your own images at DockerHub using this `makefile`.

