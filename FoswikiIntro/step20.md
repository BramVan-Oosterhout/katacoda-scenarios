
Foswiki uses a simple syntax to influence the presentation of the text entered in the wiki.
All words starting and ending with a percent (%) character are potential candidates for translation.
For instance %TOPIC% is translated in the topic name. All Foswiki translation can be viewed as a text manipulation.
Collectively these constructs are referred to as macros, but there are some semantic constructs that distinguish them as
variables, preferences or macros.

## Variables
Variables are defined by placing the following text in a topic:
_(three spaces) * (one space) Set (variable name) = the value allocated to the variable_.
The value of the variable can include TML, including other macros as well as HTML. For example:
<verbatim>
   * Set BRAMVANOOSTERHOUT = [[Main.BramVanOosterhout][Bram van Oosterhout]] (administrator)
</verbatim>
defines the variable BRAMVANOOSTERHOUT and when you write (%BRAMVANOOSTERHOUT%) in the topic,
the text will translate to (Bram van Oosterhout (administrator)).
Variables can take any amount of content, like the results of a search.
But variables are limited in scope to the topic where they are defined.
Note that the variable definition is active, even in &lt;verbatim> ... &lt;/verbatim> tags.

Variables can be defined multiple times in the same topic. However, all definitions are expanded at the time the topic is read from the disk.
The last definition found will be the value available for use.
