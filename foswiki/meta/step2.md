### _Forms and Fields_
There are two additional meta properties that are related to user data. They are referred to as the form and the fields:

| *meta data* | *added when:* |
|-------------|---------------|
| META:FORM |Specifies the topic that defines the fields and properties. Forms can be added to a topic through the user interface, _if_ the form topic is listed in the WEBFORMS preference for the web.   |
| META:FIELD |Records the field value when assigned. Fields are defined in the form topic referred in the META:FORM data. |

By convention the form topic has a name ending with Form. When you search the System web for the topic title containinf _Form_, you will find several topics.
For instance: PackageForm defines the fields displayed at the end of a topic describing a Plugin. Try:
```
   * Display the !PreferencesPlugin page: [[%SCRIPTURLPATH{"view"}%/System/PreferencesPlugin]]
   * Display its text and metadata definitions: [[%SCRIPTURLPATH{"view"}%/System/PreferencesPlugin?raw=debug]]
   * Display the form definition: [[%SCRIPTURLPATH{"view"}%/System/PackageForm?raw=debug]]
   * Edit the form definition: [[%SCRIPTURLPATH{"edit"}%/System/PreferencesPlugin?action=form]]
```{{copy}}
to display the content of a plugin description, the associated for definition and the editable form. 


PackageForm is defined as the form supporting a topic by the following meta data entry in the topic:
<verbatim>
  %META:FORM{ name="PackageForm" }%
</verbatim>
The form topic usually resides in the same web as the topics that are supported by the form.
If the form topic is located in a different web from the topics supported by the form, the form topic name must be fully qualified with the web.
Like: _System.PackageForm_.

The content of the form topic _must_ contain a table that defines the fields of the form. The table format is:

| *Name* |the name of the field |
|---------|--------|
| *Type* |the type of the field like =checkbox, date, select= etc. |
| *Size* |The width (in characters) for display and data entry |
| *Values* |The predefined input for checkboxes, radio buttons and dropdown lists |
| *Description* |A description of the field |
| *Attributes* |Mandatory (M) and/or hidden (H) |
| *Default* |Value assigned on creation of the field |

A simple form definition in the topic ```[[System.PackageForm]]```{{copy}} looks like:
```
| *Name:* | *Type:* | *Size:* | *Values:* | *Tooltip message:* |
| Author | text | 60 | | |
| Version | text | 60 | | Numerical version number e.g. 1.2 |
| Release | text | 60 | | Release identifier (usually the date) |
| Description | text | 60 | | one line description of the module |
| Repository | text | 60 | | e.g. https://github.com/foswiki/EmptyPlugin |
| Copyright | text | 60 | | e.g. 2015, The Artist, All Rights Reserved |
| License | text | 60 | | e.g GPL ([[http://www.gnu.org/copyleft/gpl.html][GNU General Public License]]) |
| Home | text | 60 | | e.g. https://foswiki.org/Extensions/%TOPIC% |
| Support | text | 60 | | e.g. https://foswiki.org/Support/%TOPIC% |
```

This table defines the following meta data for the topic when the topic is created with the form PackageForm.
```
%META:FORM{name="PackageForm"}%
%META:FIELD{name="Author" title="Author" value="ProjectContributor"}%
%META:FIELD{name="Copyright" title="Copyright" value="Copyright (C) 2008-2015 Foswiki:Main.ThomasWeigert and Foswiki Contributors"}%
%META:FIELD{name="Home" title="Home" value="http://foswiki.org/Extensions/PreferencesPlugin"}%
%META:FIELD{name="License" title="License" value="GPL ([[http://www.gnu.org/copyleft/gpl.html][GNU General Public License]])"}%
%META:FIELD{name="Release" title="Release" value="1.16"}%
%META:FIELD{name="Support" title="Support" value="http://foswiki.org/Support/PreferencesPlugin"}%
%META:FIELD{name="Version" title="Version" value="1.16"}%
%META:FIELD{name="Repository" title="Repository" value="https://github.com/foswiki/distro"}%
```
