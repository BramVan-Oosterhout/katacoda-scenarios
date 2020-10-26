 With the `Dockerfile` in place, you can build the image with

```

docker build -t kcfoswiki .

```{{execute}}

 And start it with:
```

docker run -d --name foswiki -p 443:443 kcfoswiki

```{{execute}}

 Run Fuswiki with [https://[%nop%[HOST\_SUBDOMAIN]]-80-[%nop%[KATACODA\_HOST]].environments.katacoda.com/foswiki](https://[%nop%[HOST_SUBDOMAIN]]-80-[%nop%[KATACODA_HOST]].environments.katacoda.com/foswiki).

### Answer	

