
**Add step02 to `katacoda-tutorial/first-course/example/index.json`{{open}}**

```
,
   {
      "title" : "Installing and using Filter plugin",
      "text" : "step02.md",
      "answer": "step02-answer.md"
   }
```{{copy}}

**create the content of example/step02.md**

`cp /tmp/example-step02.md ~/katacoda-tutorial/first-course/example/step02.md`{{execute}}

`cp /tmp/example-step02-answer.md ~/katacoda-tutorial/first-course/example/step02-answer.md`{{execute}}

**create the example/assets/solutions.tgz file and add to the assets in example/index.json**

`cp /tmp/example-solutions.tgz ~/katacoda-tutorial/first-course/example/assets/solutions.tgz`{{execute}}

`sed -i '/host01/ a \ \ \ \ \ \ { "file": "solutions.tgz", "target": "/tmp" },' ~/katacoda-tutorial/first-course/example/index.json`{{execute}}

**replace the example/assets/answer.pl and add to the assets in example/index.json**

`cp /tmp/example-answer.pl ~/katacoda-tutorial/first-course/example/assets/answer.pl`{{execute}}

**add, commit and push**

`/tmp/answer.pl step8`{{execute}}