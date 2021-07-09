In this step you will set up the structure of the scenario for other courses. You will find more elaborate exaples later and elsewhere. Here we are only concerned with the components.

Create a course directory and a course description:

`mkdir first-course`{{execute}}

```
cat <<EOF > first-course-pathway.json
{
    "title": "First course",
    "description": "Building a course.",
    "icon": "fa-katacoda",
    "courses": [
      {
        "course_id": "example",
        "title": "Example scenario. Delete me after use",
        "description": "Example scenario for experimentation."
      }
     ]
  }
EOF
```{{execute}}

There are two phrases that are not free text in `first-course-pathway.json`:
* _the filename:_ `first-course-pathway.json`
  * must be: the directory name `first-course` with exetension `-pathway.json`
* _the course\_id:_ `example`
  * must match the directory name of the scenario

