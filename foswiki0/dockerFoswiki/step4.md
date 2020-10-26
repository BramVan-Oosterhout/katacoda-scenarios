 With the `Dockerfile` in place, you can build the image with

```

docker build -t kcfoswiki .

```{{execute}}

 And start it with:
```

docker run -d --name foswiki -p 443:443 kcfoswiki

```{{execute}}

 Run Foswiki with https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki.

 You can make changes to the Dockerfile using the editor and rebuild the image. To use the updated image, you must:

  * stop the running container: `docker stop foswiki`{{execute}}
  * remove the container: `docker rm foswiki`{{execute}}
  * and then start the container again: `docker run -d --name foswiki -p 443:443 kcfoswiki`{{execute}}

 You can save the image as build to Docker Hub if you have registered. You need to:

  * login: `docker login -u bramvanoosterhout -p-password-stdin`{{execute}}
  * find the `IMAGE-ID`: `docker images`{{execute}}
  * tag the image: `docker tag &lt;INAGE-ID&gt; bramvanoosterhout/kcfoswiki:0.1`{{execute}}
  * push the image: `docker push bramvanoosterhout/kcfoswiki`{{execute}}

 Once it is saved, you can use it anywhere with: `docker pull bramvanoosterhout/kcfoswiki`{{execute}}

### Answer	

