## _Template directives_	

In the context of a template, Foswiki expands a handful of special macros that are similar to meta data. These macros are called template directives. Template directives all have the form _%TMPL:directive\{"identifier"\}%_.

There are five template directives:

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> Name </th>
<th class="foswikiTableCol1 foswikiLastCol"> Purpose </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol">_P_</td>
<td class="foswikiTableCol1 foswikiLastCol"> Places the string associated with the _identifier_ in the output stream. </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol">_DEF_</td>
<td class="foswikiTableCol1 foswikiLastCol"> Defines a string of text of any form (html, TML and text) and associates that string with the _identifier_ . The string is terminated by the template macro: _%TMPL:END%_. </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol">_END_</td>
<td class="foswikiTableCol1 foswikiLastCol"> Terminates the _%TMPL:DEF\{ "identifier" \}%_</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol">_INCLUDE_</td>
<td class="foswikiTableCol1 foswikiLastCol"> Includes another template in the current template file. </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast">_&lt;nothing&gt;_</td>
<td class="foswikiTableCol1 foswikiLastCol foswikiLast"> A special macro that is treated as a comment. All text inside _%\{_ and _\}%_ is ignored, including new lines </td>
</tr>
</table>

Template expansion starts from the first _%TMPL:P\{...\}%_ directive encountered in the templates as they are expanded. In the default _view_ case that directive is `%TMPL:P{"document"}%` in the included _templates/foswiki.tmpl_. Check it out with: `less -N /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

_document_ is defined as: `less -N -j 10 -p 'DEF\{"document"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

You can see the structure of the html page reflected in the macros that are evaluated. First the _htmldoctype_ is emitted which is defined as: `less -N -j 10 -p 'DEF\{"htmldoctype"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

This is followed by the _htmlstart_, which is not defined in the default set of templates. The expansion of undefined templates is quietly skipped. Then _head_ is emitted, defined as: `less -N -j 10 -p 'DEF\{"head"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

Next comes _bodystart_, defined as: `less -N -j 10 -p 'DEF\{"bodystart"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

Followed by _main_ defined as: `less -N -j 10 -p 'DEF\{"main"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

then _bodyend_: `less -N -j 10 -p 'DEF\{"bodyend"\}' /var/www/foswiki/templates/foswiki.tmpl`{{execute}}

and finally _htmlend_, which does not have a definition in the default template files.

The examples above are taken directly from the _foswiki.tmpl_ file in the _Foswikiroot/templates_ directory. They illustrate a few things:
* Empty definitions are OK and do not emit anything. They are silently ignored.
* Definitions can in turn have new _%TMPL:P\{...\}%_ directives, which are potentially defined in another template file or topic.
* Definitions can contain normal macros like: _%GMTIME%, %TOPIC%_ and so on.
* As a guide, the display of content is defined in the _contentwrapper_.