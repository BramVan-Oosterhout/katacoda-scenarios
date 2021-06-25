In this step we use the GitHub CLI to configure GitHub. Ref: <https://www.sitepoint.com/github-cli/#>

Install `gh`: `./install-gh`{{execute}}

* `cd ~/example-course`{{execute}}
* `gh auth login`{{execute}}
* `gh repo create --public`{{execute}}

Add a webhook to ... for the repo at

* `git push origin master`{{execute}}

### Notes	

```
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list &gt; /dev/null
sudo apt update
sudo apt install gh
```

Use `gh auth login`{{execute}} and follow the prompts ```
$ gh auth login
? What account do you want to log into? GitHub.com
? What is your preferred protocol for Git operations? SSH
? Upload your SSH public key to your GitHub account? Skip &lt; &lt; &lt; PROBABLY NOT!!!
? How would you like to authenticate GitHub CLI? Paste an authentication token
Tip: you can generate a Personal Access Token here https://github.com/settings/tokens
The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
? Paste your authentication token: ****************************************
- gh config set -h github.com git_protocol ssh
✓ Configured git protocol
✓ Logged in as BramVan-Oosterhout
$
```

```
$ git config --global user.email bram@van-oosterhout.org
$ git config --global user.name "Bram van Oosterhout"
```

```
$ gh repo create --public
? Repository name example-scenarios
? Repository description Example only - DELETE ME
? This will add an "origin" git remote to your local repository. Continue? Yes
✓ Created repository BramVan-Oosterhout/example-scenarios on GitHub
Warning: Permanently added 'github.com,140.82.121.3' (RSA) to the list of known hosts.
ERROR: We're doing an SSH key audit.
Reason: unverified automatically (private key found in a public repository)
Please visit https://github.com/ttripp/gitops-tutorial/settings/keys/32175876
to approve this key so we know it's safe.
```

