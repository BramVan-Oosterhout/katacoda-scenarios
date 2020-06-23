<!-- Scenario text goes here -->
If you have not already done so, open the [Applications.RenderSimpleTopicCreator](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications.RenderSimpleTopicCreator) in a separate tab.

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

You can experiment with this construct in the [Ex01_1](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex01_1) in the Sandbox.

## The PARAMETER default="..." clause
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
You can see the convenienence of the inside out, left to right evaluation.  First the FORM macro is expanded. Then the RENDERFORMDEF macro extracts the TopicType from the form definition. And that type is provided as the default for the TYPE parameter.

You can see the expansion of the DBCALL with default parameters in [Ex01_2](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex01_2) in the Sandbox.



### Answer
<!-- Solution text (if any) goes here -->
To refresh your answers use:
* `/tmp/answer step2`{{execute}}




