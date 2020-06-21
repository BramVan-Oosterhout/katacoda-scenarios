<!-- Scenario text goes here -->
Open the [Applications.RenderSimpleTopicCreator](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications.RenderSimpleTopicCreator). You will recognise the START/STOPINCLUDE section. This section is included when you call the RenderSimpleTopicCreator with: `DBCALL{ "RenderSimpleTopicCreator" }`.

### The IF statement

The first statement is
```
%IF{ "'%BASEWEB%.%BASETOPIC%' allows 'CREATE'"  then="..." }%```

The IF macro tests whether the topic BASEWEB.BASETOPIC can be created. The `then="..."` specifies what is to be done (DBCALL) if access is granted.
There is no `else="..."`, so nothing happens if access is denied.

The documentation in [System.IfStatements](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.IfStatements) describes the `allows` comparison as :

<table><tr>
<td> allows  </td><td> allows 'Y' is true if web/topic 'X' exists and allows access mode 'Y' for the current user... </td>
</tr></table>

An access mode is defined by an Acces control setting. Typical settings are DENYTOPICCHANGE, ALLOWTOPICVIEW, ALLOWWEBRENAME, ... Settings are of the general form: _permission_ (ALLOW/CHANGE), _context_ (TOPIC/WEB) and _mode_ (CHANGE/VIEW)
See [System.AccessControl](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.AccessControl#Restricting_Access) for other common settings. The complete access control scheme is extended to arbitrary Access controls of the type _permission context mode_. So you can define a CREATE access control using `Set ALLOWTOPICCREATE = user1, user2, ...` to limit the create TOPIC access to user1, user 2 etc...

For an example see: [Ex00](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex00) in the Sandbox web.

### The BASEWEB and BASETOPIC

Throughout wiki applications you will encounter and use the BASEWEB and BASETOPIC macros.Wiki applications use DBCALL or INCLUDE a lot. To implement stricter security, Foswiki has implemented the INCLUDE  so that it expands the INCLUDEd topic content as if you were opening the included topic in that web. So all macros are expanded in the original topic context. BASEWEB and BASETOPIC serve that purpose.

RenderSimpleTopicCreator is defined in the Applications web and is included in many places in webs using the implementation. There is need to indicate what topic is using the implementation, so references can be tested and expanded appropriately.

BASEWEB and BASETOPIC have equivalents in INCLUDINGWEB and INCLUDINGTOPIC and in WEB and TOPIC. You find their documentation in the following references:
* [BASEWEB](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBASEWEB)
* [BASETOPIC](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarBASETOPIC)
* [INCLUDINGWEB](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarINCLUDINGWEB)
* [INCLUDINGWEB](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarINCLUDINGWEB)
* [WEB](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarWEB)
* [TOPIC](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.VarTOPIC)

For examples of their use see: [Ex01](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.Ex01) in the Sandbox web.

### Answer
To reset the examples use:
* `/tmp/answer step1`{{execute}}

<!-- Solution text (if any) goes here -->

