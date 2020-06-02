<!-- Scenario text goes here -->
## The TWISTY and BUTTONs
The form section of the RenderSimpleTopicCreator defines a form. The form defines the data submitted to the Foswiki edit script (SCRIPT{ default="edit"}), initiating the creation of a topic. The full documentation of the Foswiki edit script can be found at (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.CommandAndCGIScripts#A_61edit_61)[System.CommandAndCGIScripts].

The form is wrapped up in a TWISTY. The TWISTY macro is implemented in the (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System. TwistyPlugin)[System.TwistyPlugin]. The use here is typical: 
```
%TWISTY{ ... %BUTTON{ ... }% }% wrapped form definition %BUTTON{ ... }% %ENDTWISTY%
```

The TWISTY macro uses jquery to implement the twisty functionality. See (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox/FoswikiTwo3.Ex02)[Ex02] in the Sandbox for some examples of TWISTY use.

The twisty uses the BUTTON macro. This is a handy and powerful macro  documented in (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBUTTON)[System.VarBUTTON]. The first definition uses the default `type="button"` parameter. The twisty gets fired by the on-click event from the button. The second definition uses `type="submit"`. Clicking this button will submit the form containing the button.

## The html form definition
The html form definition inside the TWISTY is defined between the &lt;form> &lt;/form> html tags. The definition contains many hidden input fields, that will define the parameters passed to the `edit` script. In addition there are several macros. We will look at these in detail in the next step, but after expansion these will also expand in hidden input fieds. In summary:
```
<form ... action="%SCRIPTURLPATH{"%SCRIPT%"}%/%BASEWEB%/" method="post">
  <input type="hidden" name="(web|onlynewtopic|action|onlywikiname|topicparent|formtemplate|template)" ... />
  <input type="hidden" name="templatetopic" value="%TEMPLATE{default="%FORMFIELD{"Template" topic="%FORM%"}%"}%" />
  %DBCALL{"%WEB%.%TOPIC%" section="topicnaming" ... }%
  %RENDERFOREDIT{ form="%FORM%" ... }% (x4)
</form>
```

The definition of the value in the name="templatetopic" field is a demonstration of the use of the Foswiki form. A Foswiki form contains fields with values. A field value can be extracted from a form located with a particular topic. The `default="%<nop>FORMFIELD{"Template" topic="%<nop>FORM%"}%"` will extract the value of the field `Template` in the form associated with the topic defined in the FORM parameter. The documentation is in (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarFORMFIELD)[System.VarFORMFIELD].

It is easy to get confused here. The FORM parameter to RenderSimpleTopicCreator is a reference to the topic that contains the data form **definition** (in table form) for the form data to be included in the new topic. The FORMFIELD macro will extract the value of the `Template` field from the **METADATA** associated with the topic that contains the data form definition (in table form), not the definition in the table or the new topic. You can see some examples in (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox/FoswikiTwo3.Ex03)[Ex03] in the Sandbox.

## The topicnaming section
The topicnaming section renders one of three modes: (|default|template|derived). The mode used is determined by the value of the TopicNamingMode field in the FORM topic. The input field is used by the jqWikiWord javascript (refer: (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.JQueryWikiWord)[System.JQueryWikiWord]) to construct a topic name based on the parameters supplied.

The **default** mode  renders a simple input field:
```
<input type='hidden' name='topic' class='jqWikiWord' data-source='input[name=TopicTitle]' data-transliterate='true' value='%value%' />
```
 where the %<nop>value% is providd by the %<nop>VALUE% parameter passed to RenderSimpleTopicCreator.

The **template** mode renders: 
```
<input type='hidden' name='topic' value='%FORMFIELD{"TopicNameTemplate" topic="%form%"}%' value='%value%' />
```
 where the %<nop>value% is providd by the %<nop>VALUE% parameter passed to RenderSimpleTopicCreator, but can be provided by by a formfield: TopicNameTemplate in the topic provided by the FORM parameter passed to RenderSimpleTopicCreator.

The **derived** mode renders:
```
<input type='hidden' name='topic' class='jqWikiWord' value='%value%' $percntDBQUERY{ ... }$percnt/>
```
The DBQUERY renders as a collection of jquery data-* attributes: source, prefix, suffix and transliterate which can be provided as form fields with name TopicName(Source|Prefix|Suffix|Transliterate)

See more example of the topicnaming section in (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox/FoswikiTwo3.Ex04)[Ex04] topic in the Sandbox.







### Answer
<!-- Solution text (if any) goes here -->
To reset the examples use:
* `./answer step3`{{execute}}




