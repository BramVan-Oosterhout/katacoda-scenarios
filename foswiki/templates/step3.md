### _Developing templates_
The references will help you further if you want to understand and develop templates.
Templates can be daunting to unravel and understand.
The following _perl_ script (_tracetmpl.pl_) can help you to get a summary of a template file.
`less -N tracetmpl.pl`{{execute}}

Run the script with a template file name as the parameter and you will see that most templates are full of definitions
and very few first level active directives. For instance:
`./tracetmpl.pl /var/www/foswiki/lib/foswiki/templates/edit.tmpl |less`{{execute}}
shows only one include statement. The rest are definitions.
```
---------- ACTIVE ----------
%TMPL:INCLUDE{"foswiki"}%
```

A more active version of this mechanism is documented in the _System.SkinTemplates_ topic under Debugging.
The module handling the template expansion has a trace mode. Change the constant value in _lib/Foswiki/Templates.pm_ line 49 
```
     49 use constant TRACE => 0;
```
from _0_ to _1_ and the directivename responsible for each part of the generated html will be included in the html as a comment of the form:
```
<!--directivename--> emitted html <!--/directivename-->
```
This setting will lead to some mangled html and the display will be affected.