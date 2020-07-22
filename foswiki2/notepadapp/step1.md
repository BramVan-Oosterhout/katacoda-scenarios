<!-- Scenario text goes here -->
Foswiki supports an automatic incrementing number to create unique topic names on `edit` and `save`. This is documented in the [System.CommandAndCGIScripts](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/System.CommandAndCGIScripts) documentation.

The wiki workbench topic creator supports this mechanism through the `TopicNameTemplate` field on the data form. To use it, we need to define two fields on the form associated with the data form {=NoteForm=). 

If we don't care about editing these fields, we can simply enter them in the topic text. Copy the following into the left margin of the `NoteForm` topic. You **must** remove the leading space before saving the topic.
```
 %META:FIELD{name="TopicNamingMode" title="!TopicNamingMode" value="template"}%
 %META:FIELD{name="TopicNameTemplate" title="!TopicNameTemplate" value="NoteAUTOINC00000"}%
```{{copy}}

If all goes well, you can see the fields added to the meta data of the NoteForm: `less data/Applications/NotePadApp/NoteForm.txt`{{execute}}. The fields are not listed in the `DataForm` box, because they are not defined  in the form definition table for the `DataForm` in [Applications.DataForm](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications.DataForm)

With this change you will see the notes created in the Sandbox application [Sandbox.SolNotePad](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Sandbox.SolNotePad) will have the topic name of `NoteNNNNN`, where `NNNNN` is a number starting at `00000`.

Whilst we are here, we can improve the Home page a little by defining the `TEXT` parameter in the `NoteType` application topic. Changed it to: `TEXT="%TRANSLATE{"Create a new Note" }%"`

You may have noticed that underneath the data entry box there is some small text "title". The !RenderSimpleTopicCreator uses RENDERFOREDIT for the topic title field and renders the `Description` text of the topic title field in that location. Delete the text `title` from the Description column in [Applications/NotePadApp.NoteForm](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications/NotePadApp.NoteForm) and the rendering will not show the text `title` any more.

### Answer

<!-- Solution text (if any) goes here -->
