To deploy the course material developed in the previous step, you need to push the repository to a Github repository and provide a webhook from that repository to Katacoda. Below are the mojor steps, with references to the GitHub documentation needed to proceed. Some detail are provided in the Solution section for this step.

* Register with GitHub
  * <https://github.com/join>
* Create a _personal access token_ for your GitHub account
  * <https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token>
* Set up access from your server account to your GitHub account with ssh
  * <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>
* Create a new GitHub repository
  * <https://docs.github.com/en/get-started/quickstart/create-a-repo>
* Add a webhook from your GitHub repository to <https://editor.katacoda.com/scenarios/updated>
  * <https://www.katacoda.community/author-profile.html#github>
* Add the GitHub repository as the origin of your local repository
  * <https://git-scm.com/docs/git-remote>

Now you can push your local repository to GitHub. The result will be forwarded to Katacoda and presented as a course.

----

----

In this step we use the GitHub CLI to configure GitHub. Ref: <https://cli.github.com/manual/index>

To access GitHub remotely, you will need a access token for your account. You only need one access token for all your activities in this course. You can reuse the access token when you rerun this scenario. The scenario requires the following rights: _repo_, _admin:org_ and _admin:public\_key_. You can generate your access token here: <https://github.com/settings/tokens>. Keep it in a safe place.

We also need to identify this course to GitHub. We will use ssh. The instructions are here: <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>

* Generate: `ssh-keygen -t ed25519 -C "root@host01"`{{execute}}
* Start agent: `eval "$(ssh-agent -s)"`{{execute}}
* Add key: `ssh-add ~/.ssh/id_ed25519`{{execute}}
* Paste key: `cat ~/.ssh/id_ed25519.pub`{{execute}}
* Test: `ssh -T git@github.com`{{execute}}

Install `gh`: `~/install-gh`{{execute}}

* `cd ~/example-scenarios`{{execute}}
* `gh auth login`{{execute}}
* `gh repo create --public`{{execute}}
  * if the repo already exists, you can define it as _origin_ through:
  * git remote add origin ssh://git@github.com/BramVan-Oosterhout/example-scenarios.git

Add a webhook to ... for the repo at

* `git remote add origin ssh://git@github.com/BramVan-Oosterhout/example-scenarios.git`{{execute}}
* `git push origin master`{{execute}}

