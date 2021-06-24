
The following steps are required:
* `mkdir example-scenarios`{{execute}}
* `cd example-scenarios`{{execute}}
* `git init`{{execute}}
* `mkdir example-course`{{execute}}
* `cp ../example-course-pathway.json .`{{execute}}
* `cd example-course`{{execute}}
* `cp ../../index.json .`{{execute}}
* `cp ../../setup.sh .`{{execute}}
* `cp ../../wait.sh .`{{execute}}
* `echo "## Introduction" > intro.md`{{execute}}
* `echo "## Step 1" > step01.md`{{execute}}
* `echo "You finished this scenario" > finish.md`{{execute}}
* `mkdir assets`{{execute}}
* `cd assets`{{execute}}
* `cp ../../../example-course.dck .`{{execute}}
* `git add*`{{execute}}
* `git commit -m "Example course Release 0.1"`{{execute}}
* `git push origin master`{{execute}} ... OOPS!!