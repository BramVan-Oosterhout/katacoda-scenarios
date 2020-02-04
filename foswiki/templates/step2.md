---++ To find a template 
What template is used is in the first instance defined by the skin defined by the =SKIN= preference.
There is an extensive naming and location scheme for templates which is roughly (for details see the documentation): 
   1 check whether the template occurs as a file in the =Foswikiroot/templates= directory (Set in =configure= through ={TemplatePath}= 
   1 check whether the template occurs as a topic in the current web 
   1 check whether the template occurs as a topic in the System web 
The _first_ occurrence of the template is used. 

The name of the template is derived from the context as: 
   * =&lt;script(view|edit)> . &lt;skin> . tmpl= for filenames. Example: =view.pattern.tmpl= 
   * =&lt;skin> . Skin . &lt;script(view|edit)> . Template= for topic names. Example: =PatternSkinViewTemplate=. 
      * &lt;skin> may be undefined, in which case the names become: =view.tmpl= for the file and =ViewTemplate= for the topic. 

Template processing starts with a particular template file. If the =SKIN= preference is not set (<code>SKIN =</code> ), that would be =view.tmpl= in the =Foswikiroot/templates= directory for viewing a topic. And =edit.tmpl= for editing a topic. The first line in =view.tmpl= is  <verbatim>  %TMPL:INCLUDE{"foswiki"}% </verbatim> which ends with the line <verbatim>%TMPL:P{"document"}%</verbatim> thereby starting the emission of the html.

The =SKIN= preference can be a list of skins like: <code>SKIN = natedit, pattern</code>. In that case the name of the template in the scheme above will first be tried with =natedit= and if that file and topic is not found, the search continues with =pattern=.

The set of templates in the =Foswikiroot/templates= directory is complete and consistent for the operation of Foswiki. The presentation achieved with these templates is considered plain and various skins are available as contributions on the Foswiki website. Foswiki is shipped with the =pattern= skin when installed out-of-the-box.

Templates are processed conceptually in two passes.  The first pass creates all the definitions.
Template definitions can be repeated between template files. When this occurs, the _last_ definition will be the one applied.

---++ Customising a skin
The definition and customisation of a skin is well documented. Customisation requires an entry point in the template file hierarchy. This is most conveniently achieved by adding the name of your skin to the =SKIN= preference like: <code>SKIN = myskin, pattern</code>. This will ask Foswiki to look for:
   * =view.myskin.tmpl= or =edit.myskin.tmpl= in the =Foswikiroot/templates= directory
   * =MyskinSkinViewTemplate= or =MyskinSkinEditTemplate= in the current web or the =System= web

For instance, to remove the =Edit= link from the bottom of the topic, we need to override the definition of the =edit_topic_link= directive. That directive is defined in the =viewtopicactionbuttons.tmpl= file and can be redefined in a local =MyskinSkinViewTemplate=.
<table>
<col width="50%"><col width="50%">
<tr><td> *view template* </td><td> *MyskinSkinViewTemplate* </td></tr>
<tr><td> defines the edit link by including the definition in viewtopicactionbuttons </td><td>removes the edit link by defining the definition as empty. Since this is the *last* definition, it will be used in the expansion of the directive.</td></tr>
<tr valign="top"><td>
<verbatim>
%TMPL:INCLUDE{"viewtopicactionbuttons"}%
</verbatim>which contains the definition:<verbatim>
%TMPL:DEF{"edit_topic_link"}%<span class="foswikiRequiresChangePermission"><a href='%SCRIPTURL{"edit"}%/%BASEWEB%/%BASETOPIC%?t=%GMTIME{"$epoch"}%%TMPL:P{"url_param_editaction"}%%IF{"context TinyMCEPluginEnabled" then="" else=";nowysiwyg=1"}%' rel='nofollow' %MAKETEXT{"title='Edit this topic text' accesskey='e'>&Edit"}%</a></span>%TMPL:END%
</verbatim>

</td><td>
<verbatim>
%TMPL:INCLUDE{"view"}% 
%TMPL:DEF{"edit_topic_link"}%%TMPL:END% 
</verbatim>
</td></tr>
</table>