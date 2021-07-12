As the development of the scenario progresses you may need to

* extend the application to demonstrate an action or
* extend the web site to show a particular feature
* present a complete answer as the result of a task

These actions can all be scripted and executed as a _foreground_ or _backgound_ task in the step. Orthe script can be executed by the student, running it on the command line.

In my experience, I found that these scripts proliferate and become difficult to maintain in sync as the course development progresses, I have over time come to create a single script (in `perl`). Although shell scripts can do many of the tasks, I find the syntax of a higher level languae easier to understand and maintain. The script takes one (or more) parameters (usually a step number) and executes a single routine for each parameter. The script is included as an asset and is copied to `/tmp`. The script runs as `/tmp/answer.pl step5`.

Here is a simple answer.pl:

```
cat << EOF > ~/katacoda-tutorial/first-course/example/assets/answer.pl
#!/usr/bin/perl
my %steps = ( step01 => \&amp;step01 );
&amp;{$steps{$ARGV[0]}};
sub step01 {
  print "Hello from step01\n";
}
EOF
```{{execute}}

`answer.pl` is copied to /tmp on intialisation of the scenario:

`sed -i '/host01/ a \ \ \ \ \ \ { "file": "answer.pl", "target": "/tmp", "chmod": "+x" },' first-course/example/index.json`{{execute}}

And then executed as a _foreground_ activity when entering `step01`

`sed -i '/Create a basic scenario/ a \ \ \ \ \ \ "foreground": "/tmp/answer.pl step01",' first-course/example/index.json`{{execute}}

There is an example answer.pl included in the assets and the next steps in this scenario will inlcude particular activities as part of our example scenario.

