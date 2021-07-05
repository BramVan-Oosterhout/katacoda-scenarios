## Macros	

Macros are the core of Foswiki's functionality and extensibility. They are syntactically like variables with parameters: _%MACRO\{ parameter="value" ... \}%_. The MACRO name can be all capitals (common for Foswiki defined macros) or mixed case if you choose to define your own. Their semantics are usually implemented in the internals of Foswiki or as extensions. There are hundreds of macros available in Foswiki and this course will cover a variety of them. The Foswiki documentation provides a full list in [System.MacrosQuickReference](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System.MacrosQuickReference). Below are some brief examples to demonstrate their power.

## _SHOWPREFERENCE_	

_%SHOWPREFERENCE%_ will list all defined preferences **_and where they are defined_**. You can try this in the Sandbox.TestMacros topic. The macro takes one or more comma separated variable names to show. Try:

```
%&lt;nop&gt;SHOWPREFERENCE{ "ATTACHFILESIZELIMIT,SKIN,UNDEFINED" }%
```{{copy}}

## _DISPLAYTIME_	

_format specification_ presents the current time in a requested format. The default (_14 Jun 2021 - 02:18_) expands to the current date and time. The format can be changed using format qualifiers like: _$day, $year, $minute_. Try: ```
%DISPLAYTIME{ "$year$mo$day$hour$minute: The $day'st day of $month in the year $year" }%
```{{copy}}

The _$formatqualifier_ token format is commonly used in macros to format the output. The tokens available are provided in the documentation of the macro. Jump to Main.VarDISPLAYTIME.

