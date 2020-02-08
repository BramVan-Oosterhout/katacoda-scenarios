### _The plugin interface_
Foswiki capabilities are implemented as a collection of perl programs and modules that are executed on the server hardware
using a web server program to manage all incoming and outgoing messages.
The browser creates the messages sent to the web server and, on return, renders the html in the message received from the web server.
On the server, the main executable receives a message, processes it and returns a message. 

As part of the server side message processing, macros are extracted from the topic text and replaced by the expanded results.
Foswiki has implemented a mechanism whereby modules can "register" to perform the processing for particular macros.
These extensions are called plugins and can be downloaded from the Foswiki web site.

### _Plugin installation_
Plugin installation is easily accomplished using the _Extensions_ section on the _configure_ page.
Select the _Install, update and remove_ tab   in the section and search for the plugin you want to install.
When the plugin is found, you need to select the plugin and click install.
Foswiki will check if the plugin has dependencies on other plugins and if so, install those as well.
Foswiki will warn if there are _cpan_ dependencies, but not install those.
A record of the installation is kept in _Foswikiroot/working/logs/configure/_.
These logs include the observed dependency information. Check the logs and install all missing dependencies, before trying to use the plugin.

There are hundreds of plugins provided with Foswiki, and it is worthwhile to cast your eye over the list
as they provide solutions for many common and not so common applications.
In this section I will touch on a handful of common use plugins to illustrate the diversity and depth of functionality available. 


### _CommentPlugin_
The comment plugin provides a quick way to enter text in Foswiki, without going through an Edit/Save cycle. The simplest version of the use of the comment plugin is to add:
<verbatim>
%COMMENT%</verbatim> to the TML in you topic and after saving you are presented with a edit text box and an Add comment button.

<img src="%ATTACHURLPATH%/CommentExample.png" alt="CommentExample.png" width='751' height='104' />

The comment plugin is more versatile than that. Its presentation as well as its output is controlled through templates. For instance:
<verbatim>%COMMENT{type="table" button="Add" target="Sandbox.TestCommentPlugin" }%</verbatim>
will add the comment as a wiki table entry in the _Sandbox.TestCommentPlugin_ and button text

| today | Main.BramVanOosterhout | canberra |
|-------|------------------------|----------|
| tomorrow | Main.BramVanOosterhout | sydney |
| next week | Main.BramVanOosterhout | the world |
%COMMENT{type="table" button="Add" target="Sandbox.TestCommentPlugin" }%

The comment plugin uses the _comment.tmpl_ template file, which contains one line:
`%TMPL:INCLUDE{CommentPlugin}%`
The plugin looks for the _CommentPluginTemplate_ topic in the current web and, if not found, in the System web to define the presentation of the input (the PROMPT box) and the output. Where the expansion of skin templates reads the template and emits text for every TMPL:P directive, the comment plugin starts the text generation with a specific definition.  

For a particular _type_ the comment plugin will 
*   use the _PROMPT:type_ directive definition (_%TMPL:DEF{PROMPT:type}%_) to generate the input panel for the comment to replace the _%COMMENT{ ... }%_ macro
*   use the _OUTPUT:type_ directive definition (_%TMPL:DEF{OUTPUT:type}%_) to generate the text to be inserted in the requested location

The default entries in _CommentPluginTemplate_ are:
 
*the PROMPT directive*
```
%TMPL:DEF{PROMPT:table}%
%TABLE{databg="#ffffff" tableborder="0" cellborder="0"}%
|        <label for="comment_date">Date</label>| <input class="foswikiInputField" %DISABLED% type="text" size="40" name="comment_date" id="comment_date" /> |
|        <label for="comment_city">City</label>| <input class="foswikiInputField" %DISABLED% type="text" size="40" name="comment_city" id="comment_city" value="" /> |
<input name="comment_date" disabled="disabled" class="foswikiInputField" id="comment_date" type="text" size="40">
|| <input %DISABLED% type="button" class="foswikiButton %TMPL:P{ajax}%" value="%button|Add entry%" /> |
%TMPL:END%
```

*the OUTPUT directive*
```
%TMPL:DEF{OUTPUT:table}%%POS:BEFORE%| %URLPARAM{"comment_date" encode="$encodeguest"}% | %WIKIUSERNAME% | %URLPARAM{"comment_city" encode="$encodeguest"}% |
%TMPL:END%
```
Some observations on the templates:
*   The _TMPL:DEF_ directives (like: _%TMPL:DEF{PROMPT:table}%_) do not quote the identyfier as in the skin templates we saw previously. The quoted syntax (like: _%TMPL:DEF{ "PROMPT:table" }%_ works, and is preferred for consistency.
*   The _PROMPT_ directive is a html form, presented in a TML table. It has _<label>_ and _<input>_ tags.
*      The _PROMPT_ directive does not define _<form></form>_ enclosing tags. These are automatically generated around the _PROMPT_.
*   The _DISABLED_ macro will expand to <code>disabled="disabled"</code> in the preview context
*   Macros are expanded in the _PROMPT_ templates, as they are in skin templates
*   The parameters are expanded in the template. For instance: <code>button="Add"</code> will expand _%button|Add entry%_ to _Add_
*      if the button parameter is not provided _%button|Add entry%_ will expand to  _Add entry_
*   User defined parameters will be expanded in the template. For instance: <code>myparameter="myvalue"</code> will expand _%myparameter|mydefault%_ to _myvalue_
*      and _%myparameter|%_ to _myvalue_, but _%myparameter%_ will not expand and display as _%myparameter%_
*      This construct for expanding parameters is limited to the comment plugin templates.
*   The _OUTPUT_ directive supports a _POS:location_ macro to identify where the generated text is to be inserted in the target topic.
*      _location_ can be _TOP_ or _BOTTOM_ related to the target topic. Or _BEFORE_ or _AFTER_ related to the _%COMMENT{ ... }%_ macro.
*      The actual insertion is handled by the plugin code.
*   Only a limited set of macros are expanded in the output template at the time the comment is made. The remainder will be inserted in the comment and expanded when the comment is viewed.

### _Conclusion_
This summary illustrates how plugins use the standard Foswiki mechanisms to their own ends. They define internally how expansion of variables is arranged, how defaults are defined and handled and what macros are accepted as directives for the plugin behaviour. The summary only scratches the surface and you should carefully read the documentation for each plugin you plan to use. 

Refer to the documentation for details of the operation of the spreadsheet and comment plugin.
---
### _References_
*   [Contribs](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/Contribs) for a description of Foswiki contributions
*   [InstalledPlugins](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/InstalledPlugins) for the list of plugins installed on your site
*   [DevelopingPlugins](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/DevelopingPlugins) for an introduction to the internals of plugins
*   [SpreadSheetPlugin](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/SpreadSheetPlugin) for the full description of the comment plugin functionality.
*   [CommentPlugin](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/CommentPlugin) for the full description of the comment plugin functionality.


