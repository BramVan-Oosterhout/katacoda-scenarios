## Preferences and access control
Preferences play an important role in the access control of webs and topics.
The preferences controlling access are of the form _permission context mode_.
| *Permission* | *Context* | *Mode* |
| ALLOW | TOPIC | VIEW |
| DENY | WEB | CHANGE |
|      | ROOT | RENAME |
For instance if the preference <code>ALLOWROOTRENAME = TheAdmin, AnOtherUser</code>,
then the users _TheAdmin_ and _AnOtherUser_ will be able to rename top level webs, regardless of the settings inside the web's =WebPreferences=

The list of names following an access control preference setting can be a list of wiki user names, groups or a reference to all users by writing =*=.
User are included in a group by listing their wiki name in the group topic.
For instance, listing _BramVanOosterhout_ in the  _Main.SomegroupnameGroup_ topic includes _BramVanOosterhout_ in the _SomegroupnameGroup_. 

Foswiki allows access to a web or topic for a user if the wiki name of the user is listed in the _ALLOW..._ preference,
regardless of the setting of the _DENY..._ preference.
So the settings of <code>DENYTOPICVIEW = BramVanOosterhout</code> in _Main.WebPreference_ together with
the setting of  <code>ALLOWTOPICVIEW = BramVanOosterhout</code> in the  topic _Main.WebTopicList_
will give access to the _Main.WebTopicList_ topic to _BramVanOosterhout_.

If VIEW access is denied, CHANGE access is denied by default.
For instance if _Main.WebTopiclist_ is protected by <code>ALLOWTOPICVIEW = BramVanOosterhout</code>
then _AnOtherUser_ will not be able to see or change it, unless _AnOtherUser_ is listed as <code>ALLOWTOPICCHANGE = AnOtherUser</code> 