The first step to learning

`/tmp/answer.pl step1`{{execute}}

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

