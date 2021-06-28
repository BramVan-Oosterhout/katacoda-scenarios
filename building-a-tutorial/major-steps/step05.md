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

* `git push origin master`{{execute}}

