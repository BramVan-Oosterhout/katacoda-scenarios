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

At the time of writing (July 2021) GitHub sent me a message that _Basic authentication using a password to Git is deprecated and will soon no longer work_ with a reference to [token authentication](https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/). We will set this up below.

There are two ways to avoid using a user id and password to access GitHub.
* An `ssh` key, associated with the host you are working on.
  * This will need to be set up for each host. Since the scenario will change host each time to you visit it, this is not so practical
* A `personal access token`, associated with your account.
  * We will use this, but you **must** ensure you remember this token, so you can reuse it each time to you visit GitHub
 Once you are logged in to GitHub, use the dropdown (top right) to access your _Settings_. Click _Developer settings_ in the left margin and then click _Personal access token_.

Click the _Generate a new token_ button (top right). Give the token a description, select _repo_ as the scope and click _Generate token_ at the bottom.

Copy the token value and save it in a secure place.

Enter the token when you are prompted for a password.

