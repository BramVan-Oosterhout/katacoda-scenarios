## Macros
Macros are the core of Foswiki's functionality and extensibility.
They are syntactically like variables with parameters: _%<nop>MACRO{ parameter="value" ... }%_.
The MACRO name can be all capitals (common for Foswiki defined macros) or mixed case if you choose to define your own.
Their semantics are usually implemented in the internals of Foswiki or as extensions.
There are hundreds of macros available in Foswiki and this course will cover a variety of them.
The Foswiki documentation provides a full list in System.MacrosQuickReference.
Below are some brief examples to demonstrate their power.

### _SHOWPREFERENCE_
_%SHOWPREFERENCE%_ will list all defined preferences __and where they are defined__. You can try this in the Sandbox.TestMacros topic.
The macro takes one or more comma separated variable names to show. Try:
```
%SHOWPREFERENCE{ "ATTACHFILESIZELIMIT,SKIN,UNDEFINED" }%
```

### _DISPLAYTIME_
_%DISPLAYTIME{ "format specification" }%_ presents the current time in a requested format.
The default (_%DISPLAYTIME%_) expands to the current date and time.
The format can be changed using format qualifiers like: =$day, $year, $minute=.
Try:
```
%DISPLAYTIME{ "$year$mo$day$hour$minute: The $day'st day of $month in the year $year" }%
```

The _$formatqualifier_ token format is commonly used in macros to format the output.
The tokens available are provided in the documentation of the macro. Jump to Main.VarDISPLAYTIME.

### _INCLUDE_
The _INCLUDE_ macro includes (part of) a given topic in the current topic.
The simplest form includes one topic in another: _%INCLUDE{ "targettopicname" }%_.
It is made more functional by selecting part of a targettopic by using the =%<nop>STARTINCLUDE%= and =%<nop>STOPINCLUDE%= macros as markers
in the targettopic.
Paste the following code into the Sandbox.TestMacros topic:
```
(%INCLUDE{ "%TOPIC%" }%)
---
<verbatim>
%STARTINCLUDE%
Insert this text and expand the macro %DATE%.
%STOPINCLUDE%
</verbatim> 
```

Notice that the markers _STARTINCLUDE_ and _STOPINCLUDE_ are removed.
*BUT* the new line following the STARTINCLUDE and preceeding the STOPINCLUDE are visible in the rendered page.
When you inspect the html source of the rendered page you see:

```
(
Insert this text and expand the macro 02 Mar 2016 - 05:33.
)
...
```
The new line after the **(** shows as a space in the rendered page.

INCLUDE recognises multiple parts in a topic called sections.
Sections are marked in the topic to be included with _%STARTSECTION{ "sectionname" }%_ and _%ENDSECTION{ "sectionname" }%_.
Paste the following in the Sandbox.TestMacros topic.

```
%INCLUDE{ "%TOPIC%" section="ex2"}%
---
%INCLUDE{ "%TOPIC%" section="ex1"}%
<verbatim>
%STARTSECTION{ "ex1" }%
---+++% The ICON macro
*A list of the documented parameters for the ICON macro with an example*.
   | *Parameter* | *Description* | *Default* |
   | ="filename or icon name"= | requested icon | =else= |
   | =default= | default icon to use if requested icon is not found | |
   | =alt= | alt text to be added to the HTML img tag | |
   | =quote= | allows you to control the quote used in the generated HTML | ="= |

   * =%<nop>ICON{"flag-gray"}%= displays as %ICON{"flag-gray"}%
%ENDSECTION{ "ex1" }%
%STARTSECTION{ "ex2" }%
---+++ The time is now %DISPLAYTIME%
%STARTSECTION{ "ex2" }%
</verbatim>
```

INCLUDE takes user defined parameters.
Where those parameters occur as variables in the included text, they are expanded to the value provided.
Paste the following in the Sandbox.TestMacros topic:

```
---+++ INCLUDE with user defined parameters
%INCLUDE{ "%TOPIC%" section="ex3" theText="birthday" theName="Main.%USERNAME%" theDate="7 December"  }%
---
<verbatim>
%STARTSECTION{ "ex3" }%
The %theText% of %theName% is %theDate%.
%ENDSECTION{ "ex3" }%
</verbatim>
```
