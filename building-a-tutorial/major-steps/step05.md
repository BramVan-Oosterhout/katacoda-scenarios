To deploy the course material developed in the previous step, you need to:

* Add the new components to the local repository
  * `git add *`{{execute}}
  * `git commit -m "web exercise 0.1"`{{execute}}
* And push the repository to GitHub
  * `git push origin master`{{execute}}

If you have worked through this scenario before, your GitHub repo may be out of sync with the local repo. You will get a message like: _error: failed to push some refs_ and _hint: (e.g., 'git pull ...')_. This is easily resolved:

* Do the pull
  * `git pull origin master`{{execute}}
* Resolve the reported merge _CONFLICT_ by editing the reported file(s)
  * like: _CONFLICT (add/add): Merge conflict in first-course/example/wait.sh_
* Repeat the steps above (`add`, `commit` and `push`)

Now wait for your updated scenario in Katacoda!

