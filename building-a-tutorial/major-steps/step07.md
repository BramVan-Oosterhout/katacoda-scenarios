If you attempted `/tmp/answer.pl step1` in the `my-example` course, you would have noticed that the file did not exist. The `foswiki` image is running as a separate host from the course itself. If you exit `foswiki1` with `exit`, you can successfully execute the command.

To run `answer.pl` inside the `foswiki` image, you must make it available. There are many ways to achive this. For this course we will use the docker command line interface:

`docker cp /tmp/answer.pl foswiki:/tmp/answer.pl`

To see how this works, you can add some commands to step01.md

```
cat <<"EOF" >> ~/katacoda-tutorial/first-course/example/step01.md

# Exit the foswiki image:
`exit`{{execute}}

# Copy answer.pl to the container
`docker cp /tmp/answer.pl foswiki:/tmp/answer.pl`{{execute}}

# Run answer.pl and take note of the host.
`/tmp/answer.pl step1`{{execute}}

# Re-enter foswiki
`docker exec -it foswiki /bin/bash`{{execute}}

# Run answer.pl again and take note of the host.
`/tmp/answer.pl step1`{{execute}}

EOF
```{{execute}}

`answer.pl` for this course provides the `add`, `commit` and `push` as a package for this step:

`/tmp/answer.pl step7`{{execute}}

Check the updated course now

