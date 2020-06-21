<!-- Scenario text goes here -->
## The TWISTY and BUTTONs
The form section of the RenderSimpleTopicCreator defines an html form. The html form defines the data submitted to the Foswiki edit script (SCRIPT{ default="edit"}), initiating the creation of a topic. The full documentation of the Foswiki edit script can be found at [System.CommandAndCGIScripts](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.CommandAndCGIScripts#A_61edit_61).

The form is wrapped up in a TWISTY. The TWISTY macro is implemented in the [System.TwistyPlugin](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System. TwistyPlugin). The use here is typical: 
```
%TWISTY{ ... %BUTTON{ ... }% }% wrapped form definition %BUTTON{ ... }% %ENDTWISTY%
```

The TWISTY macro uses jquery to implement the twisty functionality. See [Ex02](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex02) in the Sandbox for some examples of TWISTY use.

The twisty uses the BUTTON macro. This is a handy and powerful macro  documented in [System.VarBUTTON](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBUTTON). BUTTON uses [System.JQueryButton](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.JQueryButton) to implement the functionality. The first definition uses the default `type="button"` parameter. The twisty gets fired by the on-click event from the button and opens the twisty. The second definition uses `type="submit"`. Clicking this button will submit the form containing the button.

## The html form definition
The html form definition inside the TWISTY is defined between the &lt;form> &lt;/form> html tags. The definition contains many hidden input fields, that will define the parameters passed to the `edit` script. In addition there are several macros. We will look at these in detail in the next step, but after expansion these will also expand in hidden input fieds. In summary the form is defined by:
```
<form ... action="%SCRIPTURLPATH{"%SCRIPT%"}%/%BASEWEB%/" method="post">
  <input type="hidden" name="(web|onlynewtopic|action|onlywikiname|topicparent|formtemplate|template)" ... />
  <input type="hidden" name="templatetopic" value="%TEMPLATE{default="%FORMFIELD{"Template" topic="%FORM%"}%"}%" />
  %DBCALL{"%WEB%.%TOPIC%" section="topicnaming" ... }%
  %RENDERFOREDIT{ form="%FORM%" ... }% (x4)
</form>
```

The definition of the value in the name="templatetopic" field is a demonstration of the use of the Foswiki form. A Foswiki form is included in the topic content and contains fields with values. A field value can be extracted from a form located with a particular topic. The `default="%`FORMFIELD{"Template" topic="%`FORM%"}%"` will extract the value of the field `Template` in the form associated with the topic defined in the FORM parameter. The documentation is in [System.VarFORMFIELD](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarFORMFIELD).

It is easy to get confused here. The FORM parameter to RenderSimpleTopicCreator is a reference to the topic that contains the data form **definition** (in table form) for the form data to be included in the new topic. The FORMFIELD macro will extract the value of the `Template` field from the **METADATA** associated with the topic that contains the data form definition (in table form), not the definition in the table or the new topic. You can see some examples in [Ex03](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex03) in the Sandbox.

## The topicnaming section
The topicnaming section renders one of three modes: (|default|template|derived). The mode used is determined by the value of the TopicNamingMode field in the FORM topic. The input field is used by the jqWikiWord javascript (refer: [System.JQueryWikiWord](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.JQueryWikiWord)) to construct a topic name based on the parameters supplied.

The **default** mode  renders a simple input field:
```
<input type='hidden' name='topic' class='jqWikiWord' data-source='input[name=TopicTitle]' data-transliterate='true' value='%value%' />
```
 where the %`value% is provided by the VALUE parameter passed to RenderSimpleTopicCreator.

The **template** mode renders: 
```
<input type='hidden' name='topic' value='%FORMFIELD{"TopicNameTemplate" topic="%form%"}%' value='%value%' />
```
 where the %`value% is provided by the VALUE parameter passed to RenderSimpleTopicCreator, but can be provided by by a formfield: TopicNameTemplate in the topic provided by the FORM parameter passed to RenderSimpleTopicCreator.

The **derived** mode renders:
```
<input type='hidden' name='topic' class='jqWikiWord' value='%value%' $percntDBQUERY{ ... }$percnt/>
```
The DBQUERY renders as a collection of jquery data-* attributes: source, prefix, suffix and transliterate which can be provided as form fields with name TopicName(Source|Prefix|Suffix|Transliterate)

See more example of the topicnaming section in [Ex04](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex04) topic in the Sandbox.







### Answer
<!-- Solution text (if any) goes here -->
To reset the examples use:
* `/tmp/answer step3`{{execute}}




