### _Developing templates_
The references will help you further if you want to understand and develop templates.
Templates can be daunting to unravel and understand.
The following _perl_ script (_tracetmpl.pl_) can help you to get a summary of a template file.
`less -N tracetmpl.pl`{{execute}}
```
#!/usr/bin/perl -w
use strict;
print "File: $ARGV[0]\n";
# --- Get the template file text
my $template = slurp($ARGV[0]);
# --- Parse the text for definitions =%TMPL:DEF{ "directivename" }%definition%TMPL:END%= and print each with an opening and closing line.
while ( $template =~ m!%TMPL:DEF{"([^"]+)"}%(.*?)%TMPL:END%!gs ) {
  print "\n---------- $1 ----------\n$2\n---------- $1 END ----------\n";
}
# --- Remove the definitions and all comments from the text
$template =~ s!%TMPL:DEF{"([^"]+)"}%(.*?)%TMPL:END%!!gs;
$template =~ s!%{.*?}%!!gs;
# --- Print the remaining template text
print "\n---------- TEMPLATE ----------\n$template\n";

# --- Read the template file text
sub slurp {
  my ( $filename ) = @_;
  open FILE, "<$filename";
  my $file = <FILE>;
  close FILE;
  return $file; 
}
```
Run the script with a template file name as the parameter and you will see that most templates are full of definitions
and very few first level output directives. For instance:
`./tracetmpl.pl /var/www/foswiki/lib/foswiki/templates/edit.tmpl |less`{{execute}}
shows only one include statement. The rest are definitions.
```
---------- TEMPLATE ----------
%TMPL:INCLUDE{"foswiki"}%
```

A more active version of this mechanism is documented in the _System.SkinTemplates_ topic under Debugging.
The module handling the template expansion has a trace mode. Change the constant value in _lib/Foswiki/Templates.pm_ line 49 
```
     49 use constant TRACE => 0;
```
from =0= to =1= and the directivename responsible for each part of the generated html will be included in the html as a comment of the form:
```
<!--directivename--> emitted html <!--/directivename-->
```
