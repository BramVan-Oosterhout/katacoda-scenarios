
The following steps are required:
* navigate to the course directory
  * `cd ~/katacoda-tutorial`{{execute}}
* `setup.sh` and `wait.sh`
  * `sed -i '21 i \ \ \ \ \ \ "background": "setup.sh",' first-course/example/index.json`{{execute}}
  * `sed -i '21 i \ \ \ \ \ \ "foreground": "wait.sh",' first-course/example/index.json`{{execute}}
* `first-course.dck`
  * `sed -i '9 i \ \ \ \ \ \ { "file": "example-course.dck", "target": "~/" },' first-course/example/index.json`{{execute}}

**Note:** The _foreground_ and _background_ scripts associated with the steps are not assets. The are expected in the scenario directory.