Katacoda course development is done on your local server. The deployment to Katacoda is done by pushing the source to GitHub and then transferring it to Katacoda by activating a WebHook. Fundamental to this process is a git repository for the course. I will use `katacoda-tutorial` as the git repository on this server.

`mkdir katacoda-tutorial`{{execute}}

To make `katacoda-tutorial` a git repository and own it, it needs to be intialised:

`cd katacoda-tutorial`{{execute}}

`git init`{{execute}}

`git config user.name "New User"`{{execute}}

`git config user.email "new@user.com"`{{execute}}

Make sure you use your own user name and email

