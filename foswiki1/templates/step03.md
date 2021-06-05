## _Customising a skin with templates_	

The definition and customisation of a skin is well documented. Customisation requires an entry point in the template file hierarchy. This is most conveniently achieved by adding the name of your skin to the _SKIN_ preference like: `SKIN = myskin, pattern`. This will ask Foswiki to look for:
* _view.myskin.tmpl_ or _edit.myskin.tmpl_ in the _Foswikiroot/templates_ directory
* _MyskinSkinViewTemplate_ or _MyskinSkinEditTemplate_ in the current web or the _System_ web

As an exercise: remove the remove the _Edit_ link from the bottom of the topic. You need to override the definition of the _edit&amp;lowbar;topic&amp;lowbar;link_ directive. That directive is defined in the _viewtopicactionbuttons.tmpl_ file ./tracetmpl.pl /var/www/foswiki/templates/viewtopicactionbuttons.tmpl | less -N -j 10 -p '-- edit\_topic\_link --'\{\{execute\}\}

The directive can be redefined in a local _Sandbox.MyskinSkinViewTemplate_ with:

```
%TMPL:INCLUDE{"view"}%
%TMPL:DEF{"edit_topic_link"}%%TMPL:END%
&lt;verbatim&gt;{{copy}}

To activate the definition in a topic, you need to add
&lt;verbatim&gt;
   * Set SKIN = myskin, pattern
&lt;verbatim&gt;{{copy}}
to the topic. To activate it for the whole the web, you need to paste the statement in _Sandbox.WebPreferences_

If you want to remove the separator as well, you need to change the definition of _action&amp;lowbar;activatable&amp;lowbar;edit&amp;lowbar;or&amp;lowbar;create_
./tracetmpl.pl /var/www/foswiki/templates/viewtopicactionbuttons.tmpl | less -N -j 10 -p '-- action_activatable_edit_or_create --'{{execute}}

Run the following command and check the Sandbox.SolutionMetaDataStep1 page.

&lt;code&gt;tar xvzf /root/SolutionTemplates.tgz -C /var/www/foswiki/data/Sandbox --wildcards SolutionTemplatesStep3* MyskinSkinViewTemplate*&lt;/code&gt;{{execute}}&lt;/verbatim&gt;&lt;/verbatim&gt;
&lt;nop&gt;
```