To demonstrate the running web application, you need to start it. This is done easily with a few docker commands:

1. `docker build docker build -t foswiki -f example-course.dck .`{{execute}}
1. `docker run -d --rm --name foswiki -p 80:80 foswiki`{{execute}}

Scripting this is slightly more complated, since the `example-course.dck` file is an asset to the course. Assets are downloaded in parallel with the startup, so we need to wait until the file exists, before we can run the `docker` commands. That is done by an actve wait in the `setup.sh` script:

```
until [[ -e example-course.dck ]]
do
   sleep 1
done
```

The `setup.sh` script will run in the background. We need to let the course participant know that the environment is ready for interaction. To do that, the script completes with the creation of the `foswiki-running` file:

```
touch foswiki-running
```

