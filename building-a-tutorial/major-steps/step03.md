We can show the course participant that the environment set up is in progress by running a script in the foreground that waits for the completion of the setup. This is implemented in `wait.sh`{{open}}.

```
echo <<EOF > katacoda-tutorial/first-course/example/wait.sh
#!/bin/bash
{
echo -n "Install/configure environment "
until [ -e foswiki-running ]
do
echo -n "+"
sleep 3
done
echo " done."
} 2>/dev/null
docker exec -it -w /var/www/foswiki foswiki /bin/bash
EOF
```{{execute}}

`wait.sh` starts with an `until` to wait until the `foswiki-running` file exists.

Once it exists, you can add commands to exercise the running image. Or, as in this example, you can change the terminal window to inside the docker image with `docker exec -it -w /var/www/foswiki foswiki /bin/bash`

The wait constructs in `setup.sh` and `wait.sh` are helpful to make sure your environment is ready and your participant is kept informed of progress.

