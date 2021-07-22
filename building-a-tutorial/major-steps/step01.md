Get the scenario you built in the Preamble to this course from GitHub. Open `config.sh`{{open}} and add your details. Configure the environment with: `./config.sh`{{execute}}

You can list the files with: `tree`{{execute}} and view the content in the editor pane.

If you did not built the starting scenario in the Preamble to this course, and don't want to do that, check out alternatives in the Solutions.

At this point you have a course/scenario running. It has an intro, a step and a finish. You have the following components:

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> For the course </th>
<th class="foswikiTableCol1 foswikiLastCol"> For the scenario </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> first-course-pathway.json </td>
<td class="foswikiTableCol1 foswikiLastCol"> index.json </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol">   </td>
<td class="foswikiTableCol1 foswikiLastCol"> intro.md </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol">   </td>
<td class="foswikiTableCol1 foswikiLastCol"> step01.md </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast">   </td>
<td class="foswikiTableCol1 foswikiLastCol foswikiLast"> finish.md </td>
</tr>
</table>

You now need to set up an environment in which to run and demonstrate your web application. The best approach is to create a docker image and save this at DockerHub for future reference.

It is possible to build the environment by scripting the creation and run it as a background task when starting the scenario. That is time consuming (several minutes) and will not fit in the 100 second time limit that Katacoda sets for startup. The creation of the docker image as part of the scenario sometimes also takes too long. So the best course of action is to create a docker image and save it at DockerHub for later use.

The Dockerfile used to create the image for this scenario (`foswiki1`) can be inspected at <https://www.katacoda.com/bramvanoosterhout/courses/foswiki0/dockerfoswiki>. The creation of the image and the storage at DockerHub are explained in step11.

The image can start as just enough for the job at hand. `echo "FROM bramvanoosterhout/foswiki1" > katacoda-tutorial/first-course/example/assets/first-course.dck`{{execute}}

Adaptations can be made through additional Docker build files of the form: ```
FROM bramvanoosterhout/foswiki1
RUN apk add tree
.... other docker commands to modify the image
```

You can see examples of this method in the multiple Docker files in the [dockerfoswiki](https://www.katacoda.com/bramvanoosterhout/courses/foswiki0/dockerfoswiki) course referred above.

