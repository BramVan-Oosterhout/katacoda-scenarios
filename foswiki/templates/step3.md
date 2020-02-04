



---++ Developing templates
The references will help you further if you want to understand and develop templates. Templates can be daunting to unravel and understand. The following =perl= script (=tracetmpl.pl=) can help you to get a summary of a template file. 
<verbatim>
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
</verbatim>
Run the script with a template file name as the parameter and you will see that most templates are full of definitions and very few first level output directives. For instance:
<verbatim>
./tracetmpl.pl /var/lib/foswiki/templates/edit.tmpl |less
</verbatim>
shows only one include statement. The rest are definitions.
<verbatim>
---------- TEMPLATE ----------
%TMPL:INCLUDE{"foswiki"}%
</verbatim>

A more active version of this mechanism is documented in the =System.SkinTemplates= topic under Debugging. The module handling the template expansion has a trace mode. Change the constant value in =lib/Foswiki/Templates.pm= line 49 
<verbatim>
     49 use constant TRACE => 0;
</verbatim>
from =0= to =1= and the directivename responsible for each part of the generated html will be included in the html as a comment of the form:
<verbatim>
<!--directivename--> emitted html <!--/directivename-->
</verbatim>

---++ References
   * %REF{ "SkinTemplates" }% for a description of template macros and their ex