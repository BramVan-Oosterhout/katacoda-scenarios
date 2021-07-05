Create a webhook in you GitHub repository `my-example`.

Select the repository and click _Settings_. In the left margin click _WebHooks_ and then _Add webHook_ over on the right. Complete the form with:

* _Payload URL:_ `https://editor.katacoda.com/scenarios/updated`{{copy}}
* _Content type:_ `application/json`
* _Secret:_ provide a secret phrase (**remember this**)my-example=
* _Leave the defaults:_ `Just the push` and `Active`
* Click _Add webhook_

Register with Katacoda at: <https://www.katacoda.com/signup>.

After you are signed up and logged in: Click _Settings_ (the wheels icon next to your name) and complete:

* _Git Scenario Repository:_ <https://github.com/NewUser/my-example>
* _Git webhook Secret:_ provide a secret phrase

Save the settings.

Update your GitHub repository with

`git push origin master`{{execute}}

And your tutorial will appear in your Katacoda workspace.

----

Leave the defaults:

