<!-- Scenario text goes here -->
## A new VIEW template for the Note
The regular Foswiki skin we have used (the `pattern` skin) displays many options that are marginal and distracting to the functioning of the Note application. In this step you will define a skin for the `NoteType` that leaves many of these distractions behind. The principles of this modification were presented in the previous scenario with the `TopicStub`. 

Before you proceed, reread:
*  the [System.SkinTemplates](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.SkinTemplates) topic and pay special attention to the description of the template path. A skin template topic is searched for in the current web (BASEWEB) or the System web. Nowhere else.
* the [System.AutoViewTemplatePlugin](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.AutoViewTemplatePlugin) topic and note how the template topic name is formed with mode `exist`. Form at the end is removed and Skin and View are added. The skin template topic name for a Note with form NoteForm and skin &lt;cover> is &lt;cover>SkinNoteViewTemplate

Start with 
* the removal of the form display box at the bottom of the page (INCLUDE: WikiTopicView)
* the display of the title at the head of the topic (DEF: beforetext )
* the display of the summary underneath that (DEF: beforetext )
* the removal of the version information (DEF: beforetext )

Here is the component to achieve that:
```
%TMPL:INCLUDE{"Applications.WikiTopicView"}%
%TMPL:DEF{"beforetext"}%
# %FORMFIELD{ "TopicTitle" }%

%FORMFIELD{ "Summary" }%
%TMPL:END%
```{{copy}}

We want to be able to add comments to the note. But we don't need to edit the COMMENT macro as part of the topic text. We can add it by adding the COMMENT at the bottom of the text:
```
%TMPL:DEF{"aftertext"}%
%COMMENT{ type="above" }%
%TMPL:END%
```{{copy}}
Now that the COMMENT macro is embedded in the template, you can remove it from the [NoteTemplate](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications/NotePadApp.NoteTemplate) in the application.

Edit, Attach, Subscribe and Print are useful. But we can remove History, Backlinks, wiki text and topic actions. At the top we don't need any distractions. 

Start with the links at the bottom.. To find what to modify, use grep:
`grep -l "topic actions" core/templates/*`{{execute}}.
`core/templates/viewtopicactionbuttons.tmpl` looks like a good candidate:
`less -N core/templates/viewtopicactionbuttons.tmpl`{{execute}}.
Bingo! Modifying `topicactionbuttons` will do the trick. Note that the `action_printable` definition includes a final separator. So it is replaced with `printable`
```
%TMPL:DEF{"topicactionbuttons"}%%TMPL:P{"action_activatable_edit_or_create"}%%TMPL:P{"action_activatable_attach"}%%TMPL:P{"action_activatable_subscribe"}%%TMPL:P{"printable"}%%TMPL:END%
```{{copy}

The breadcrumbs at the top are meaningless for web user not familiar with Foswiki. And we can also remove the Edit, Attach and Subscribe buttons at the top. For the breadcrumbs `grep -l "You are here" core/templates/*`{{execute}} suggests the `core/templates/view.pattern.tmpl` and `less -N core/templates/view.pattern.tmpl`{{execute}} indicates we can redefine the `breadcrumb` definition. But looking a bit further, you will notice that the breadcrumb and the `toolbarbuttons` are both wrapped in a single definition `top`. So we can kill two birds with one stone:

```
%TMPL:DEF{"top"}%%TMPL:END%
```{{copy}}



### Answer
https://foswiki.org/Support.Question1681
<!-- Solution text (if any) goes here -->
```
%TMPL:INCLUDE{"view"}% 
%TMPL:DEF{"beforetext"}
<noautolink>
#! %FORMFIELD{ "variable1" }%

## Short description
%RENDERFORDISPLAY{ fields="variable2"
                   hideempty="on"
                   format="$percntIMAGE{\"$value\" type=\"frame\" align=\"right\" caption=\"%FORMFIElD{ "variable3" }%\" }$percnt"
}%
%RENDERFORDISPLAY{ fields="variable4"
                   hideempty="on"
                   format="$percntINCLUDE{\"$value\"}$percnt"
}%
%IF{"defined variable5" then="%FORMFIElD{ "variable5" }%"}%
</noautolink>
%TMPL:END%
```




