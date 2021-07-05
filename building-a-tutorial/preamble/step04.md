To deploy your scenario to Katacoda so it can be used, you must establish:
* a GitHub account
* a GitHub repository
* a Katacoda account
* a GitHub WebHook to your Katacoda account

In this step we register and establish the GitHub repository. In the next step we will add the webhook.

GitHub is accessed at <https://github.com/signup>. Follow the prompts to register your account.

Once you are registered, you can create new repositories by navigating to `Your repositories` and clicking _New_. Give the repository a name like `my-exercise`, use the defaults and click _Create repository_.

Configure your local repository to link to the GitHub repository you just created with:

`git remote add origin https://github.com/BramVan-Oosterhout/my-exercise.git`{{execute}}

Add, commit and push the local repository to GitHub.

`git add *`{{execute}}

`git commit -m "my first commit"`{{execute}}

`git push origin master`{{execute}}

