### _Forms and Fields_
There are two additional meta properties that are related to user data. They are referred to as the form and the fields:

| *meta data* | *added when:* |
|-------------|---------------|
| META:FORM |Specifies the topic that defines the fields and properties. Forms can be added to a topic through the user interface, _if_ the form topic is listed in the WEBFORMS preference for the web.   |
| META:FIELD |Records the field value when assigned. Fields are defined in the form topic referred in the META:FORM data. |

By convention the form topic  has a name ending with Form. BookPartForm is defined as the form supporting a topic by the following meta data entry in the topic:
<verbatim>
  %META:FORM{ name="BookPartForm" }%
</verbatim>
The form topic usually resides in the same web as the topics that are supported by the form.
If the form topic is located in a different web from the topics supported by the form, the form topic name must be fully qualified with the web.
Like: _Web/Subweb.TopicForm_.

The content of the form topic _must_ contain a table that defines the fields of the form. The table format is:

| *Name*  | *Type* | *Size* | *Values* | *Description* | *Attributes* | *Default* |
|---------|--------|--------|----------|---------------|--------------|-----------|
|the name of the field\
 |the type of the field like =checkbox, date, select= etc.\
 |The width (in characters) for display and data entry\
 |The predefined input for checkboxes, radio buttons and dropdown lists\
 |A description of the field\
 |Mandatory (M) and/or hidden (H)\
 |Value assigned on creation of the field |

A simple form definition in the topic [[Applications/BookApp.BookPartFor][Applications/BookApp.BookPartForm]] looks like:

| *Name*| *Type* | *Size* | *Values* | *Description* | *Attributes* | *Default* |
|-------|--------|--------|----------|---------------|--------------|-----------|
| TopicType | label | 1 | BookPartTopic, WikiTopic | topic type  | | |
| TopicTitle | text | 75 | | title | | |
| Summary | text | 75 | | short description or tagline | | | 

This table defines the following meta data for the topic when the topic is created.
```
  %META:FORM{name="Applications/BookApp.BookPartForm"}%
  %META:FIELD{name="TopicType" title="TopicType" value="BookPartTopic"}%
  %META:FIELD{name="TopicTitle" title="TopicTitle" value=""}%
  %META:FIELD{name="Summary" title="Summary" value=""}%
```
