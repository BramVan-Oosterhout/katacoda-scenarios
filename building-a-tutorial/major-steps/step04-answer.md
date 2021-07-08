
The following steps are required:
* navigate to the course directory
  * `cd ~/katacoda-tutorial`{{execute}}
* `setup.sh` and `wait.sh`
  * `cp ../setup.sh first-course/example/.`{{execute}}
  * `sed -i '21 1 \ \ \ \ \ \ "background": "setup.sh",' first-course/example/index.json`{{execute}}
  * `cp ../wait.sh first-course/example/.`{{execute}}
  * `sed -i '21 i \ \ \ \ \ \ "foreground": "wait.sh",' first-course/example/index.json`{{execute}}
* `example-course.dck`
  * `cp ../example-course.dck first-course/example/assets/.`{{execute}}
  * `sed -i '9 i \ \ \ \ \ \ { "file": "example-course.dck", "target": "~/" },' first-course/example/index.json`{{execute}}

**Note:** The _foreground_ and _background_ scripts associated with the steps are not assets. The are expected in the scenario directory.