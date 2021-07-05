Now that we have the parts together, we can complete the initial scenario and deploy it to Katacoda.

For the scenario we need to complete the `index.json`{{open}} file.

`setup.sh` is executed as a _background_ job for the `intro` step. And wait.sh as a _foreground_ job.

Some other decisions to make are:
* the title: Building a Katacoda course
* the assets: the `example-course.dck` file
* the uilayout: `editor-terminal`
  * The editor to develop extensions
  * The terminal to test the extensions
* the dashboard: add an access point for the web application
* the backend: choose ubuntu. It has a good deal of tools available

For the course we need to add the pathway: `example-course-pathway.json`((open))

**Exercise:** Create a git repository called `example-scenarios` with directory structure and files reflectiong the components of the course. The structure will be pushed to `GitHub` and deployed to `Katacoda` in the next step.

`tree example-scenarios`{{execute}}

