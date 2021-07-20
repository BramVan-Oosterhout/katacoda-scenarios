
**Add step02 to example/index.json**

```
,
   {
      "title" : "Installing and using Filter plugin",
      "text" : "step02.md",
      "answer": "step02-answer.md"
   }
```{{copy}}

**create the content of example/step02.md**

`cp /tmp/example-step02.md first-course/example/step02.md`{{execute}}

`cp /tmp/example-step02-answer.md first-course/example/step02-answer.md`{{execute}}

**create the example/assets/solutions.tgz file and add to the assets in example/index.json**

`cp /tmp/example-solutions.tgz first-course/example/assets/solutions.tgz`{{execute}}

`sed -i '/host01/ a \ \ \ \ \ \ { "file": "solutions.tgz", "target": "/tmp" },' first-course/example/index.json`{{execute}}

**replace the example/assets/answer.pl and add to the assets in example/index.json**

`cp /tmp/example-answer.pl first-course/example/assets/answer.pl`{{execute}}