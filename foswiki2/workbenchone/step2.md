<!-- Scenario text goes here -->

## Delaying the evaluation
Once the credentials of the user are accepted, the application will render the DBCALL:
```
%IF{ "..."
   then="$percntDBCALL{\"Applications.RenderSimpleTopicCreator\"
      ...
   }$percnt"
}%
```
The first thing to note is that the expansion of the DBCALL macro is delayed. This is a common technique to avoid the expansion of macros, when the expansion is potentially discarded. Remember that Foswiki expands macros inside out, left to right. If the construct above was written as:
```
%IF{ "condition"
   then="%DBCALL{\"Applications.RenderSimpleTopicCreator\"
      ...
   }%"
}%
```
Then the DBCALL would have been expanded first and the result discarded if the "condition" had evaluated "false". The construct used will evaluate the "condition" first and if "true" return the DBCALL for evaluation.

Note that the DBCALL simply includes the section="form" in the Applications.RenderSimpleTopicCreator, the current topic. This reduces the complexity of each step and avoids multiple escapes.

You can experiment with this construct in the [Sandbox.Ex02](https://[HOST_SUBDOMAIN](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/HOST_SUBDOMAIN)-80-[KATACODA_HOST](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/KATACODA_HOST).environments.katacoda.com/Sandbox/Katacoda/FoswikiTwo3.Ex02)

## The parameter default="..." clause
Many of the parameters passed to RenderSimpleTopicCreator are assigned in the form 
```
  PARAMETER="%PARAMETER{ default="some value" }%"
```
This is a general construct supported by parametrised INCLUDEs. If the PARAMETER is not supplied, the default will be assigned to the PARAMETER. The default parameter can in turn be defined in terms of other macros. Consider the TYPE parameter:
```
            TYPE=\"%TYPE{
                  default="%RENDERFORMDEF{
                          form="%FORM{default="%INCLUDINGWEB%.%INCLUDINGTOPIC%"}%"
                          fields="TopicType"
                          format="$value"
                       }%"
            }%\"
```
You can see the convenienence of the inside out, left to right evaluation.  First the FORM parameter is expanded. Then the RENDERFORMDEF macro extracts the TopicType from the Form definition. And that type is provided as the default for the TYPE parameter.

## The DBCALL with parameters resolved
To illustrate the parameter default and the consequence of the expansion, you find the content repeated below with a minor modification: `percentDBCALL` has been replaced by `percent%lt;nop>DBCALL`. DBCALL is no longer recognized as a macro! The result of including the topic %`INCLUDE{ "%`TOPIC%" }% is now:

%INCLUDE{ "%TOPIC%" }%

Note how all the $`percent and \" are now shown as the proper expressions (% and "). Also note that the all parameters have been expanded with their defaults. TEMPLATE is defined in terms of an undefined macror %TEMPLATE%, which is rendered as the original macro. This use of the &lt;nop> tag can be very helpful when debugging a particular wiki application script.

If we had included the topic with some parameters %`INCLUDE{ "%`TOPIC%" TEXT="Hello world" TEMPLATE="theTemplate" }% these parameters would have been set as parameters for the DBCALL:

%INCLUDE{ "%TOPIC%" TEXT="Hello world" TEMPLATE="theTemplate" }%

```
%STARTINCLUDE%%IF{"'%BASEWEB%.%BASETOPIC%' allows 'CREATE'" 
   then="$percnt`DBCALL{\"Applications.RenderSimpleTopicCreator\"
            section=\"form\"
            TEXT=\"%TEXT{default="%TRANSLATE{"Create a new [_1]" args="%INCLUDINGTOPIC%"}%"}%\"
            LABEL=\"%LABEL{default="%TRANSLATE{"Title"}%"}%\"
            BUTTONTEXT=\"%BUTTONTEXT{default="%TRANSLATE{"New"}%"}%\"
            VALUE=\"%VALUE{default=""}%\"
            VALUES=\"%VALUES{default=""}%\"
            FORM=\"%FORM{default="%INCLUDINGWEB%.%INCLUDINGTOPIC%"}%\"
            TEMPLATE=\"%TEMPLATE%\"
            TYPE=\"%TYPE{
                  default="%RENDERFORMDEF{
                  form="%FORM{default="%INCLUDINGWEB%.%INCLUDINGTOPIC%"}%"
                  fields="TopicType"
                  format="$value"
               }%"
            }%\"
            PARENT=\"%PARENT{default="%BASETOPIC%"}%\"
            WHITEBOARD=\"%WHITEBOARD{default="on"}%\"
            EXTRA=\"%EXTRA{default="<!-- -->"}%\"
            SCRIPT=\"%SCRIPT{default="edit"}%\"
            EDITOR=\"%EDITOR{default="%FORMFIELD{"Editor" topic="%FORM{default="%INCLUDINGWEB%.%INCLUDINGTOPIC%"}%"}%"}%\"
         }$percnt"
}%%STOPINCLUDE%
```
 





### Answer
<!-- Solution text (if any) goes here -->
To refresh your answers use:
* `/tmp/answer step2`{{execute}}




