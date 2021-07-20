
The following steps are required:
* navigate to the course directory
  * `cd ~/katacoda-tutorial`{{execute}}
* `setup.sh` and `wait.sh`
  * `sed -i '/intro.md/ a \ \ \ \ \ \ "background": "setup.sh",' first-course/example/index.json`{{execute}}
  * `sed -i '/intro.md/ a \ \ \ \ \ \ "foreground": "wait.sh",' first-course/example/index.json`{{execute}}
* `first-course.dck`
  * `sed -i '/host01/ a \ \ \ \ \ \ { "file": "example-course.dck", "target": "~/" },' first-course/example/index.json`{{execute}}

Close and re-open `index.json` to see the results.

**Note:** The _foreground_ and _background_ scripts associated with the steps are not assets. The are expected in the scenario directory.