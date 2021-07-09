The scenario components are stored in the =example directory:

`mkdir first-course/example`{{execute}}

For the example we develope an intro, a step and a finish:

`echo "Introduction to this scenario" > first-course/example/intro.md`{{execute}}

`echo "The first step to learning" > first-course/example/step01.md`{{execute}}

`echo "You have successfully completed this scenario!" > first-course/example/finish.md`{{execute}}

And as an example of an asset add:

`mkdir first-course/example/assets`{{execute}}

`echo "An example asset" > first-course/example/assets/example.asset`{{execute}}

All this needs to be tied together with an index:

```
cat <<EOF > first-course/example/index.json
{
  "title": "Example scenario",
  "description": "This is an example scenario",
  "difficulty": "beginner",
  "time": "5 minutes",
  "details": {
   "assets": {
      "host01": [
                 { "file": "example.asset", "target": "~/" }
             ]
    },
    "steps": [
   {
      "title" : "Create a basic scenario",
      "text" : "step01.md"
   }
]
,
    "intro": {
      "text": "intro.md",
      "credits": "Credits: New User for the scenario"
    },
    "finish": {
      "text": "finish.md"
    }
  },
  "environment": {
    "uilayout": "editor-terminal",
    "uimessage1": "\u001b[32mYour Interactive  Bash Ubuntu Terminal.\r\nRun your own commands here\u001b[m\r\n"
},
  "backend": {
    "imageid": "ubuntu"
  }
}
EOF
```{{execute}}

I made some choices in this scenario:
* _uilayout:_ select `editor-terminal`
* _imageid:_ selected `ubuntu`

And I made sure the file names referred were the correct ones.

You can see the resulting structure with: `tree -a`{{execute}}

