### _To find a template_ 
What template is used is in the first instance defined by the skin defined by the _SKIN_ preference.
There is an extensive naming and location scheme for templates which is roughly (for details see the documentation): 
1   check whether the template occurs as a file in the _Foswikiroot/templates_ directory (Set in _configure_ through _{TemplatePath}_ 
1   check whether the template occurs as a topic in the current web 
1   check whether the template occurs as a topic in the System web 
The __first__ occurrence of the template is used. 

The name of the template is derived from the context as: 
*   `<script(view|edit)> . <skin> . tmpl` for filenames. Example: _view.pattern.tmpl_ 
*   `<skin> . Skin . <script(view|edit)> . Template` for topic names. Example: _PatternSkinViewTemplate_. 
*      <skin> may be undefined, in which case the names become: _view.tmpl_ for the file and _ViewTemplate_ for the topic. 

Template processing starts with a particular template file.
If the _SKIN_ preference is not set (`SKIN =` ), that would be _view.tmpl_ in the _Foswikiroot/templates_ directory for viewing a topic.
And _edit.tmpl_ for editing a topic.
`less /var/tmp/foswiki/templates/view.tmpl`{{execute}}
The first line in _view.tmpl_ is  `%TMPL:INCLUDE{"foswiki"}%` which ends with the line `%TMPL:P{"document"}%`
thereby starting the emission of the html.

The _SKIN_ preference can be a list of skins like: `SKIN = natedit, pattern`.
In that case the name of the template in the scheme above will first be tried with _natedit_ and if that file and topic is not found,
the search continues with _pattern_
*   `less /var/tmp/foswiki/templates/view.pattern.tmpl`{{execute}}
*   `less /var/tmp/foswiki/templates/view.natedit.tmpl`{{execute}}

The set of templates in the _Foswikiroot/templates_ directory is complete and consistent for the operation of Foswiki.
The presentation achieved with these templates is considered plain and various skins are available as contributions on the Foswiki website.
Foswiki is shipped with the _pattern_ skin when installed out-of-the-box.

Templates are processed conceptually in two passes.  The first pass creates all the definitions.
Template definitions can be repeated between template files. When this occurs, the __last__ definition will be the one applied.

### _Customising a skin_
The definition and customisation of a skin is well documented. Customisation requires an entry point in the template file hierarchy. This is most conveniently achieved by adding the name of your skin to the =SKIN= preference like: <code>SKIN = myskin, pattern</code>. This will ask Foswiki to look for:
*   _view.myskin.tmpl_ or _edit.myskin.tmpl_ in the _Foswikiroot/templates_ directory
*   _MyskinSkinViewTemplate_ or _MyskinSkinEditTemplate_ in the current web or the _System_ web

For instance, to remove the _Edit_ link from the bottom of the topic, we need to override the definition of the _edit_topic_link_ directive.
That directive is defined in the _viewtopicactionbuttons.tmpl_ file and can be redefined in a local _MyskinSkinViewTemplate_.
<table>
<col width="50%"><col width="50%">
<tr><td> *view template* </td><td> *MyskinSkinViewTemplate* </td></tr>
<tr><td> defines the edit link by including the definition in viewtopicactionbuttons </td><td>removes the edit link by defining the definition as empty. Since this is the *last* definition, it will be used in the expansion of the directive.</td></tr>
<tr valign="top"><td>
```
%TMPL:INCLUDE{"viewtopicactionbuttons"}%
</verbatim>which contains the definition:<verbatim>
%TMPL:DEF{"edit_topic_link"}%<span class="foswikiRequiresChangePermission"><a href='%SCRIPTURL{"edit"}%/%BASEWEB%/%BASETOPIC%?t=%GMTIME{"$epoch"}%%TMPL:P{"url_param_editaction"}%%IF{"context TinyMCEPluginEnabled" then="" else=";nowysiwyg=1"}%' rel='nofollow' %MAKETEXT{"title='Edit this topic text' accesskey='e'>&Edit"}%</a></span>%TMPL:END%
```

</td><td>
```
%TMPL:INCLUDE{"view"}% 
%TMPL:DEF{"edit_topic_link"}%%TMPL:END% 
```
</td></tr>
</table>