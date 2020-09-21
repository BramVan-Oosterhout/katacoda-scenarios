<div class="foswikiPage">

<span id="PageTop"></span>

You now have a working application, with a home page in the Sandbox web.
There are sevaral approaches to creating Note pads for multiple purposes
and multiple people:

1.  Using tags - through the
    [System.TagMePlugin](../../../System/TagMePlugin.html "Create this topic")
2.  Using categories - through the
    [System.ClassificationPlugin](../../../System/ClassificationPlugin.html "Create this topic")
3.  Using webs - by creating a web for each personalised Note pad

Each approach has its own merit. In this course we will use the latter.
Creating webs does not introduce new concepts and is relatively straight
forward. The approach is well supported by the
[System.CopyContrib](../../../System/CopyContrib.html) with
`mode="application"`.

### The Deploy button {#The_Deploy_button}

To begin you create a new `TopicFunction`: `RenderDeployButton` in the
NotePad application. we start with the basic functionality from the
documentation:
    <form action='%SCRIPTURLPATH{"copy"}%/%WEB%/%TOPIC%' method='post'>
      <input type='hidden' name='mode' value='application' />
      <input type='text' name='destination' size='80' value='Sandbox/Testapp1' />
      <input type='submit' />
    </form>

{{copy}} Save the topic. Under the *Test* header you find a text field
with the target webname: `Sandbox.Testapp1` and a button: *Submit
query*. Click the button and the `Sandbox.Testapp1` web is created.
Check the *Index* to verify the topics created. They are the default
Foswiki topics, plus a copy of the `RenderDeployButton`. Try to repeat
the button click and you will be told you cannot overwrite existing
topics.

### The home page {#The_home_page}

Next you need to deploy a home page in the new web. The seed for the
home page is part of the application. There are several options for the
type of the seed topic. Make it a `TopicTemplate` for a `WikiTopic`. Use
the `TopicTemplate` application topic to create a `WikiTopic` in the
application with title: `SeedWebHome` and content:
    %DBCALL{ "Applications/NotePadApp.NoteType" 
                 TYPE="NoteType" 
                 TEXT="Create a new Note" 
    }%

{{copy}} Save the topic.

To add the `SeedWebHome` topic as part of the creation of the new web,
you add some parameters to the `copy` operation:

-   `source - SeedWebHome > WebHome` will copy the seed as the real
    =WebHome topic. Note &gt; instead of &gt;.
    -   ``{{copy}}
-   `onlynew - off` to allow repeated deployments to the same web
    -   ``{{copy}}
-   and you can adjust the button text by repacing the `submit` with:
    -   `%BUTTON{"Deploy" type="submit" icon="fa-check"}%`{{copy}}

Save the topic and deploy `Sandbox/Testapp1` again. You will find that
the WebHome page is now a proper home page for the application. You can
update `SeedWebHome` and redeploy to see the updates applied.

### The VIEW template for the home page {#The_VIEW_template_for_the_home_page}

To make the home page specific for the Note pad application, you need
toapply a view template. It will be very similar to the Note VIEW
template. Copy `TestSkinNoteViewTemplate` to `NoteWebHomeViewTemplate`
and make the following changes:

-   Remove the `aftertext` definition, returning it to the default empty
    one
    -   This removes the `COMMENT` box from the VIEW template

To apply the template to the `WebHome` page you can use the `rules` mode
of the
[System.AutoTemplatePlugin](../../../System/AutoTemplatePlugin.html).
Define the `rule` in `WebPreferences` with:
       * Set VIEW_TEMPLATE_RULES =  WebHome => Applications.NotePadApp.NoteWebHomeView 

{{copy}} and save `WebPreferences`. Navigate to `WebHome` and you will
see the template applied. To make this setting part of the application,
you create a `SeedWebPreferences` topic with the desired content in the
application and add it to the list of topics to be deployed in
`RenderDeployButton`.
-   Change:
    `value='SeedWebHome => WebHome, SeedWebPreferences => WebPreferences'`
-   To:
    `value='SeedWebHome => WebHome, SeedWebPreferences => WebPreferences'`{{copy}}

### Automatic application of the VIEW and EDIT template for a note {#Automatic_application_of_the_VIEW_and_EDIT_template_for_a_note}

So far we have applied the `?cover=test` url parameter to display the
note in the defined skin. In the deployed application you want this
cover to be applied automatically. This is easy to achieve with the
AutoTemplatePlugin. Copy the `TopicView`s

-   from `TestSkinNoteViewTemplate` to `NoteViewTemplate`; and
-   from `TestSkinNoteEditTemplate` to `NoteEditTemplate`.

These templates are now automatically applied to any topic with a
`NoteForm` attached.

The next step provides an opportuinity to fine tune the application.
This is presented in the form of execises.

### Answer {#Answer}

To compare you answers execute: `/tmp/answer step6`{{execute}}

The complete template is in
[Applications/SolNotePadApp/NoteViewTemplate](../../../Applications/SolNotePadApp/NoteViewTemplate.html)
and
[Applications/SolNotePadApp/NoteEditTemplate](../../../Applications/SolNotePadApp/NoteEditTemplate.html).

Check the answer in the Sandbox by creating a new note.

<span id="TopicEnd"></span>

<div class="foswikiForm foswikiFormStep">

### Applications/KatacodaApp.ScenarioStepType <span class="foswikiSmall">[edit](ScenarioStep06.html)</span>

  ------------------------------------ ------------------------------------
  TopicType                            ScenarioStepType, WikiTopic

  TopicTitle                           

  Summary                              Develop a Deploy button and a Home
                                       page

  Sequence                             Step6

  Coursedata                           

  Code                                 
  ------------------------------------ ------------------------------------

</div>

</div>
