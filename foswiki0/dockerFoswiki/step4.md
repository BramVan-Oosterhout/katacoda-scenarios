 With the `Dockerfile` in place, you can build the image with

```

docker build -t kcfoswiki .

```{{execute}}

 And start it with:
```

docker run -d --name foswiki -p 443:443 kcfoswiki

```{{execute}}

 Run Fuswiki with [https://[](../../..)[HOST\_SUBDOMAIN]]-80-[[KATACODA\_HOST]].environments.katacoda.com/foswiki.

### Answer	
