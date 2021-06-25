In this step we use the GitHub CLI to configure GitHub. Ref: <https://www.sitepoint.com/github-cli/#>

Install `gh`: `./install-gh`{{execute}}

```
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list &gt; /dev/null
sudo apt update
sudo apt install gh
```

