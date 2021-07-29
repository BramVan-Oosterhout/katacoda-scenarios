As the development of the scenario progresses you may need to

* extend the application to demonstrate an action or
* extend the web site to show a particular feature
* present a complete answer as the result of a task

These actions can all be scripted and executed as a _foreground_ or _backgound_ task in the step. Or the script can be executed by the student, running it on the command line.

In my experience these scripts proliferate and become difficult to maintain in sync as course development progresses, I have over time come to create a single script (in `perl`). Although shell scripts can do many of the tasks, I find the syntax of a higher level languae easier to understand and maintain. The script takes one (or more) parameters (usually a step number) and executes a single routine for each parameter. The script is included as an asset and is copied to `/tmp`. The script runs as `/tmp/answer.pl step1`.

Here is a simple answer.pl:

```
cat << "EOF" > ~/katacoda-tutorial/first-course/example/assets/answer.pl
#!/usr/bin/perl
my %steps = ( step1 => \&step1 );
&{$steps{$ARGV[0]}};
sub step1 {
  print "Hello from answer.pl - step1 running on ",`hostname`,"\n";
}
EOF
```{{execute}}

`answer.pl` is copied to /tmp on intialisation of the scenario:

`sed -i '/host01/ a \ \ \ \ \ \ { "file": "answer.pl", "target": "/tmp", "chmod": "+x" },' ~/katacoda-tutorial/first-course/example/index.json`{{execute}}

_foreground_ and _background_ scripts must be shell scripts. So we create:

```
   cat << "EOF" > ~/katacoda-tutorial/first-course/example/step01-foreground.sh
until [[ -e /tmp/answer.pl ]] ; do sleep 1; done
/tmp/answer.pl step1
EOF
```{{execute}}

Executed as a _foreground_ activity when entering `step01`:

`sed -i '/Create a basic scenario/ a \ \ \ \ \ \ "foreground": "step01-foreground.sh",' ~/katacoda-tutorial/first-course/example/index.json`{{execute}}

The student can also execute `answer.pl` on the command line.

```
cat << "EOF" >> ~/katacoda-tutorial/first-course/example/step01.md

`/tmp/answer.pl step1`{{execute}}
EOF
```{{execute}}

`add`, `commit`, and `push` the new files and inspect the new scenario.

`git add *`{{execute}}

`git commit -m "web exercise 0.2"`{{execute}}

`git push origin master`{{execute}}

