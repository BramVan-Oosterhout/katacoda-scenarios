
**FOLLOWING ARE STEPS TO CREATE AND PUSH katacoda-tutorial.tgz**

`git checkout -b test`{{execute}}

`git add *`{{execute}}

`git commit -m "my first course"`{{execute}}

`git checkout master`{{execute}}

`git pull origin master`{{execute}}

`git merge test`{{execute}}

`rm first-course/example/assets/katacoda-tutorial.tgz`{{execute}}

`tar cvzf ../katacoda-tutorial.tgz ../katacoda-tutorial`{{execute}}

`mv ../katacoda-tutorial.tgz first-course/example/assets/katacoda-tutorial.tgz`{{execute}}

`git add *`{{execute}}

`git commit -m "my first course"`{{execute}}

`git push origin master`{{execute}}