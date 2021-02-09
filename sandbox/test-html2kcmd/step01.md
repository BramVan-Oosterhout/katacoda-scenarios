Try the table command
<table>
<tr><td>1.1</td><td>1.2</td></tr>
<tr><td>2.1</td><td>2.2</td></tr>
<tr><td>3.1</td><td>3.2</td></tr>
</table>

<div class="foswikiPage">

<span id="PageTop"></span>

Foswiki supports an automatic incrementing number to create unique topic
names on `edit` and `save`. This is documented in the
[CommandAndCGIScripts](../../../System/CommandAndCGIScripts.html)
documentation.

The wiki workbench topic creator supports this mechanism through the
`TopicNameTemplate` field on the data form. To use it, we need to define
two fields on the form associated with the data form {=NoteForm=).

If we don't care about editing these fields, we can simply enter them
with their values in the topic text. Copy the following into the left
margin of the `NoteForm` topic. You **must** remove the leading `---`
before saving the topic.
    ---%META:FIELD{name="TopicNamingMode" title="!TopicNamingMode" value="template"}%
    ---%META:FIELD{name="TopicNameTemplate" title="!TopicNameTemplate" value="NoteAUTOINC00000"}%

{{copy}}

If all goes well, you can see the fields added to the meta data of the
[NoteForm](NoteForm.html "Create this topic"): less
data/Applications/NotePadApp/NoteForm.txt{{execute}}. The fields are not
listed in the `DataForm` box, because they are not defined in the form
definition table for the `DataForm` in
[Applications.DataForm](../../../Applications/DataForm.html)

To see the result, create a topic `NotePadHome` in the Sandbox and
include the `NotePadApp.NoteWebHome`
    %DBCALL{ "Applications/NotePadApp.NoteWebHome" TYPE="NoteType" }%

{{copy}}

Now you can use [NotePadHome](../../../Sandbox/NotePadHome.html) to
create notes in the Sandbox with the topic name of `NoteNNNNN`, where
`NNNNN` is a number starting at `00000`.

Whilst we are here, we can improve the Home page a little by defining
the `TEXT` parameter in the `NoteType` application topic. Change it to:
`TEXT="Create a new Note"`{{copy}}

### Answer {#Answer}

To compare you answers execute: /tmp/answer step1{{execute}} and refresh
your Foswiki page. New webs will appear in the left margin.

Use the [SolNotePad](SolNotePad.html "Create this topic") web in the
Sandbox to experiment.

Check your answers in the Applications/SolNotePadApp web.

<span id="TopicEnd"></span>

<div class="foswikiForm foswikiFormStep">

### [ScenarioStepType](../../../Applications/KatacodaApp/ScenarioStepType.html) <span class="foswikiSmall">[edit](ScenarioStep01.html)</span>

  ------------------------------------ ------------------------------------
  [TopicType](TopicType.html "Create t [ScenarioStepType](ScenarioStepType.
  his topic")                          html "Create this topic"),
                                       [WikiTopic](WikiTopic.html "Create t
                                       his topic")

  [TopicTitle](TopicTitle.html "Create 
   this topic")                        

  Summary                              Create unique topic names for notes

  Sequence                             step1

  Coursedata                           

  Code                                 
  ------------------------------------ ------------------------------------

</div>

</div>
