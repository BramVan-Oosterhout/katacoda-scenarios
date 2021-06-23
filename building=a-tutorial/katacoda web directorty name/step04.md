Now that we have the parts together, we can complete the initial scenario and deploy it to Katacoda.

For the scenario we need to complete the =index.json=\{\{open\}\} file.

`setup.sh` is executed as a _background_ job for the `intro` step. And wait.sh as a _foreground_ job.

Some other decisions to make are:
* the title: Building a Katacoda course
* the assets: the `course.dck` file
* the uilayout: _editor-terminal_
  * The editor to develop extensions
  * The terminal to test the extensions
* the dashboard: add an access point for the web application
* the backend: choose ubuntu. It has a good deal of tools available

For the course we need to add the pathway: =course-pathway.json=((open))

Put all these files in the appropriate directory structure

`tree katacoda-scenarios`{{execute}}

And push the result to GitHub. Your initial course material will soon appear in your Katacoda area.

