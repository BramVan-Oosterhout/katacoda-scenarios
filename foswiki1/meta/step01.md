## _Meta data_	

Meta data is usually displayed in a form format and can be edited in that same format. The meta data for each topic (like Creation date, Author and so on) is collected in the topic _.txt_ file. You can see this by opening a topic with the _?raw=debug_ parameter, which displays the TML and meta data for the topic in a Foswiki formatted page.

You find an example in <https://>[HOST_SUBDOMAIN](/devwiki/bin/edit/KatacodaCourses/Foswiki1/Meta/HOST_SUBDOMAIN?topicparent=KatacodaCourses/Foswiki1/Meta.ScenarioStep01 "Create this topic")-80-[KATACODA_HOST](/devwiki/bin/edit/KatacodaCourses/Foswiki1/Meta/KATACODA_HOST?topicparent=KatacodaCourses/Foswiki1/Meta.ScenarioStep01 "Create this topic").environments.katacoda.com/foswiki/Sandbox/MetaDataStep1&gt;Sandbox.MetaDataStep1

Instead of _?raw=debug_ you can use _?raw=all_ url parameter to see the raw text of the topic in the browser window instead of inside a Foswiki formatted page..

When you inspect the topic with either url parameter, you will see two extra lines at the top. They are the meta data associated with this topic: ```
  %META:TOPICINFO{author="JoeBlog" comment="" date="1456896969" format="1.1" reprev="1" version="1"}%
  %META:TOPICPARENT{name="WebHome"}%
``` Meta data is recorded using the same syntax as a macro. The macro starts with _%META:_ followed by the meta data name (like: _TOPICINFO_), followed by the value(s) recorded with that item as _name="value"_ pairs.

The following is standard meta data added in the life cycle of a Foswiki topic:

<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> meta data </th>
<th class="foswikiTableCol1 foswikiLastCol"> added when: </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> META:TOPICINFO </td>
<td class="foswikiTableCol1 foswikiLastCol"> the topic is created. The topic info is maintained as the topic is updated </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> META:TOPICPARENT </td>
<td class="foswikiTableCol1 foswikiLastCol"> the parent is changed using: _More topic actions &gt; Set new topic parent_</td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> META:TOPICMOVED </td>
<td class="foswikiTableCol1 foswikiLastCol"> the topic is moved using _More topic actions &gt; Rename or move topic_</td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol"> META:FILEATTACHMENT </td>
<td class="foswikiTableCol1 foswikiLastCol"> a file is attached to the topic </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> META:PREFERENCE </td>
<td class="foswikiTableCol1 foswikiLastCol foswikiLast"> using _More topic actions &gt; Edit topic preference settings_</td>
</tr>
</table>

The table above presents the circumstances when the meta data is created by Foswiki as part of actions in the user interface. You can add meta data to a topic by typing the correct entry directly into the editor. The percent (in _%META_) must be in column 1 for the meta data to be recognised.

