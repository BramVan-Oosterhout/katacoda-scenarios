---+ Creating and using templates
%TOC%

Foswiki topic text is presented in the browser inside a container that is referred to as: the skin. The skin is defined through a collection of files and topics that contain a mixture of html,  TML, and macros.  These files and topics are referred to as template files and template topics, templates for short. In the context of a template, Foswiki expands a handful of special macros that are similar to meta data. These macros are called template directives. Template directives all have the form <br /> =%<nop>TMPL:directive{"identifier"}%=.

---++ Template directives
There are five template directive:
| *Name* | *Purpose* |
| =P=      |Places the string associated with the =identifier= in the output stream. | 
| =DEF= |Defines a string of text of any form (html, TML  and text) and associates that string with the =identifier= .  The string is terminated by  the template macro: =%<nop>TMPL:END%=. |
| =END= |Terminates the =%<nop>TMPL:DEF{ "identifier" }%= |
| =INCLUDE= |Includes another template in the current template file. |
| =&lt;nothing>= |A special macro that is treated as a comment. All text inside =%{= and =}%= is ignored, including new lines |

Template expansion starts from the first =%<nop>TMPL:P{...}%= directive encountered in the templates as they are expanded. In the default =view= case that directive is in the included =templates/foswiki.tmpl= line 184:
<verbatim>  184 %TMPL:P{"document"}%</verbatim>

=document= is defined as:
<verbatim>
%TMPL:DEF{"document"}%%TMPL:P{"htmldoctype"}%%TMPL:P{"htmlstart"}%
%TMPL:P{"head"}%
%TMPL:P{"bodystart"}%%TMPL:P{"main"}%%TMPL:P{"bodyend"}%%TMPL:P{"htmlend"}%%TMPL:END%
</verbatim>

You can see the structure of the html page reflected in the macros that are evaluated. First the =htmldoctype= is emitted which is defined as:
<verbatim>
%TMPL:DEF{"htmldoctype"}%<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="%LANG%" lang="%LANG%">%TMPL:END%
</verbatim>

This is followed by the =htmlstart=, which is not defined in the default set of templates. The expansion of undefined templates is quietly skipped.  Then =head= is emitted, defined as:
<verbatim>
%TMPL:DEF{"head"}%<head>
	%TMPL:P{"windowtitle"}%
        %TMPL:P{context="edit" then="ie8compatibilitymode"}%
	<meta http-equiv="Content-Type" content="text/html; charset=%CHARSET%" /> <meta name="robots" content="noindex" /> %HTTP_EQUIV_ON_VIEW%
	<link rel="icon" href="%FAVICON%" type="image/x-icon" /> <link rel="shortcut icon" href="%FAVICON%" type="image/x-icon" />
	<link rel="alternate" href="%SCRIPTURL{edit}%/%BASEWEB%/%BASETOPIC%?t=%GMTIME{"$epoch"}%" type="application/x-wiki" title="edit %BASETOPIC%" />
	<meta name="description" content="%TOPIC%" />
    <base href="%SCRIPTURL{%SCRIPTNAME%}%/%WEB%/%TOPIC%" /><!--[if IE]></base><![endif]-->
	%TMPL:P{"script"}%
	%TMPL:P{"defaultstyle"}%
</head>%TMPL:END%
</verbatim>

Next comes =bodystart=,  defined as:
<verbatim>
%TMPL:DEF{"bodystart"}%<body class="foswikiNoJs %TMPL:P{"bodyclassname"}%"><div class="foswikiPage">
#PageTop %TMPL:END%
</verbatim>

Followed by =main= defined as:
<verbatim>
%TMPL:DEF{"main"}%<div class="foswikiMain">%TMPL:P{"simpleheader"}%%{
---------------------------------------------------
}%%TMPL:P{"pagetitlestylewrapper"}%%TMPL:P{"contentwrapper"}%%{
---------------------------------------------------
}%%TMPL:P{"standardfooter"}%</div>%TMPL:END%
</verbatim>
then =bodyend=
<verbatim>
%TMPL:DEF{"bodyend"}%</div>
</body></html>%TMPL:END%
</verbatim>

and finally =htmlend=, which does not have a definition in the default template files.

The examples above are taken directly from the =foswiki.tmpl= file in the =Foswikiroot/templates= directory. They illustrate a few things:
   * Empty definitions are OK and do not emit anything. They are silently ignored.
   * Definitions can in turn have new %<nop>TMPL:P{...}% directives, which are potentially defined in another template file or topic.
   * Definitions can contain normal macros like: =%<nop>GMTIME%, %<nop>TOPIC%= and so on. 
   * As a guide, the display of content is defined in the =contentwrapper=. 

pansion. At the bottom of the page are tips for developing new templates and an overview of defaults.
   * %REF{ "Skins" }% for a description how to define and customise a skin.

%STOPPUBLISH%

Other pages: %DBCALL{ "Applications/BookApp.PageNavigator" }%


-- Main.BramVanOosterhout - 03 Mar 2016