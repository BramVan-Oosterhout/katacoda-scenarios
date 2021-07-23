
Alternatives to using the scenario created in the Preamble.

**Fork `my-example` from _BramVan-Oosterhout_ **

Login to GitHub with your credentials and navigate to `BramVan-Oosterhout/my-example`. Click the _Fork_ button. GitHub creates a copy of `my-example` under your user name. Continue by cloning this repo. Now add your credentials to `config.sh`{{open}} and configure with: `./config.sh`{{execute}}

**Resetting your GitHub repo**

If you have completed some of this scenario before, there are more commits in the cloned repo. These will create issues when repeating the scenario. You can remove these commits with: `cd ~/katacoda-tutorial`{{execute}}

`git log --oneline`{{execute}}. This will show the commit you want to go back to ('my first commit')

`git reset --hard hash`{{execute}}. Use the hash shown by the log.

`git push -f origin master`{{execute}}

Now you can repeat the scenario as presented.