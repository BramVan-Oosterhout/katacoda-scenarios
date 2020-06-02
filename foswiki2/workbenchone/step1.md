<!-- Scenario text goes here -->
When you open the RenderSimpleTopicCreator, you will recognise the START/STOPINCLUDE section. This section is included when you call the RenderSimpleTopicCreator.

### The IF statement

The first statement is
```
%IF{ "'%BASEWEB%.%BASETOPIC%' allows 'CREATE'"  then="..." }%```

The IF macro tests whether the topic BASEWEB.BASETOPIC can be created. The `then="..."` specifies what is to be done (DBCALL) if access is granted.
There is no `else="..."`, so nothing happens if access id denied.

The documentation in [[System.IfStatements]] describes the `allows` comparison as :
| allows  | allows 'Y' is true if web/topic 'X' exists and allows access mode 'Y' for the current user... |
An access mode is defined by an Acces control setting. Typical settings are DENYTOPICCHANGE, ALLOWTOPICVIEW, ALLOWWEBRENAME...
See (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.AccessControl#Restricting_Access)[System.AccessControl] for other common seeting. The complete access control scheme is extended to arbitrary Access controls of the type _permission context mode_. So you can define a CREATE access control using `Set ALLOWTOPICCREATE = user1, user2, ...` to limit the create access to user1, user 2 etc...

For an example see: (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox/FoswikiTwo3.Ex00)[Ex00] in the Sandbox web.

### The BASEWEB and BASETOPIC

Throughout wiki applications you will encounter and use the BASEWEB and BASETOPIC macros.Wiki applications use DBCALL or INCLUDE a lot. To implement stricter security, Foswiki has implemented the INCLUDE  so that it expands the INCLUDED topic content _as if you were opening that topic in that web. So all macros are expanded in the original topic context.

RenderSimpleTopicCreator is defined in the Applications web and is included in many places in webs using the implementation. So there is need to indicate what topic is using the implementation, so references can be tested and expanded appropriately.

BASEWEB and BASETOPIC have equivalents in INCLUDINGWEB and INCLUDINTOPIC and WEB and TOPIC. You find their documentation in the following references:
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBASEWEB)[BASEWEB]
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBASETOPIC)[BASETOPIC]
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarINCLUDINGWEB)[INCLUDINGWEB]
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarINCLUDINGWEB)[INCLUDINGWEB]
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarWEB)[WEB]
* (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarTOPIC)[TOPIC]
For examples see: (https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox/FoswikiTwo3.Ex01)[Ex01] in the Sandbox web.

### Answer
To reset the examples use:
* `./answer step1`{{execute}}

<!-- Solution text (if any) goes here -->

