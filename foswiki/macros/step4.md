## Macros
Macros are the core of Foswiki's functionality and extensibility.
They are syntactically like variables with parameters: =%<nop>MACRO{ parameter="value" ... }%=.
The MACRO name can be all capitals (common for Foswiki defined macros) or mixed case if you choose to define your own.
Their semantics are usually implemented in the internals of Foswiki or as extensions.
There are hundreds of macros available in Foswiki and this course will cover a variety of them.
The Foswiki documentation provides a full list in [[System.MacrosQuickReference][System.MacrosQuickReference]].
Below are some brief examples to demonstrate their power.

### _SHOWPREFERENCE_
_%SHOWPREFERENCE%_ will list all defined preferences __and where they are defined__.
The macro takes one or more comma separated variable names to show. So:
_%SHOWPREFERENCE{ "ATTACHFILESIZELIMIT,SKIN,UNDEFINED" }%_ returns the following:

%SHOWPREFERENCE{ "ATTACHFILESIZELIMIT, SKIN, UNDEFINED" }%

### _DISPLAYTIME_
=%<nop>DISPLAYTIME{ "format specification" }%= presents the current time in a requested format. The default (=%<nop>DISPLAYTIME%=) expands to (%DISPLAYTIME%). The format can be changed using format qualifiers like: =$day, $year, $minute=. For example: =%<nop>DISPLAYTIME{ "$year$mo$day$hour$minute: The $day'st day of $month in the year $year" }%= expands to:

%DISPLAYTIME{ "$year$mo$day$hour$minute: The $day'st day of $month in the year $year at $hour:$minute" }%.

The =$formatqualifier= token format is commonly used in macros to format the output. The tokens available are provided in the documentation of the macro.

---+++ _INCLUDE_
The =INCLUDE= macro includes (part of) a given topic in the current topic. The simplest form includes one topic in another: =%<nop>INCLUDE{ "targettopicname" }%=. It is made more functional by selecting part of a targettopic by using the =%<nop>STARTINCLUDE%= and =%<nop>STOPINCLUDE%= macros as markers in the targettopic. The example below uses =(%<nop>INCLUDE{ "%<nop>TOPIC%" }%)= to include the section between =STARTINCLUDE= and =STOPINCLUDE=  into this topic.
<verbatim>
%STARTINCLUDE%
Insert this text and expand the macro %DATE%.
%STOPINCLUDE%
</verbatim> 
(%INCLUDE{ "%TOPIC%" }%)

Notice that the markers =STARTINCLUDE= and =STOPINCLUDE= are removed. *BUT* the new line following the =STARTINCLUDE= and preceeding the =STOPINCLUDE= are visible in the rendered page. When you inspect the html source of the rendered page you see:
<verbatim>
...
(
Insert this text and expand the macro 02 Mar 2016.
)
...
</verbatim>
The new line after the ( shows as a space in the rendered page.

INCLUDE recognises multiple parts in a topic called sections. Sections are marked in the topic to be included with =%<nop>STARTSECTION{ "sectionname" }%= and =<nop>%ENDSECTION{ "sectionname" }%=.  The example below uses <code>%<nop>INCLUDE{ "%TOPIC%" section="example1" }%</code> to include the the text between the markers with the name: =example1=.

<verbatim>
%STARTSECTION{ "example1" }%
*A list of the documented parameters for the ICON macro with an example*.
   | *Parameter* | *Description* | *Default* |
   | ="filename or icon name"= | requested icon | =else= |
   | =default= | default icon to use if requested icon is not found | |
   | =alt= | alt text to be added to the HTML img tag | |
   | =quote= | allows you to control the quote used in the generated HTML | ="= |

   * =%<nop>ICON{"flag-gray"}%= displays as %ICON{"flag-gray"}%
%ENDSECTION{ "example1" }%
</verbatim>
%INCLUDE{ "%TOPIC%" section="example1" }%

INCLUDE takes user defined parameters. Where those parameters occur as variables in the included text, they are expanded to the value provided. The example uses =%<nop>INCLUDE{ "%TOPIC%" section="example2" theTEXT="birthday" theNAME="Main.%<nop>USERNAME%" theDATE="7 December"  }%= to include the the text between the markers with the name: =example2=.

<verbatim>
%STARTSECTION{ "example2" }%
The %theTEXT% of %theNAME% is %theDATE%.
%ENDSECTION{ "example2" }%
</verbatim>
%INCLUDE{ "%TOPIC%" section="example2" theTEXT="birthday" theNAME="Main.%USERNAME%" theDATE="7 December" }%




---+++ _IF_
When rendering a page it is common that the rendering varies depending on the exact content of the page or the context in which the page is rendered. The IF macro can do this. The syntax is: =%<nop>IF{ "condition" then="then text" else="else text" }%=.  =Condition= can have many forms. Refer to the example3 section below for some.
<verbatim>
%STARTSECTION{ "example3" }%
%IF{ "$theTEXT='birthday'" then="%RED%" }%
The %IF{ "defined theTEXT"
         then="%theTEXT%"
         else="holiday" }% of %theNAME% is %IF{ "$theTEXT='birthday'" 
                                                then="%theDATE%"
                                                else="anytime" }%.
%IF{ "$theTEXT='birthday'" then="%ENDCOLOR%" }%
%ENDSECTION{ "example3" }%
</verbatim>

<verbatim>%INCLUDE{ "%TOPIC%" 
              section="example3" 
              theTEXT="birthday" 
              theNAME="Main.%USERNAME%" 
              theDATE="7 December" }%</verbatim>
is expanded to<br />
%INCLUDE{ "%TOPIC%" 
              section="example3" 
              theTEXT="birthday" 
              theNAME="Main.%USERNAME%" 
              theDATE="7 December" }%

Whereas this:<br />
<verbatim>%INCLUDE{ "%TOPIC%" 
             section="example3" 
             theNAME="Main.%USERNAME%" 
             theDATE="7 December" 
}%</verbatim>
becomes<br />
%INCLUDE{ "%TOPIC%" 
            section="example3" 
            theNAME="Main.%USERNAME%" 
            theDATE="7 December" }%

The syntax of the =condition= in the IF macro is unusual in that it uses (dollar) $variablename to refer to the macro value, rather than the usual %<nop>variablename%. Also note the use of single quotes around the comparison value.

Example 3 also demonstrates a convenient feature of the macro specification. All text from =%MACRO{= to =}%= is replaced by the substitution result. There is no need to put all information on the one line. As a consequence, the parameter list of the macro can be formatted for readability.