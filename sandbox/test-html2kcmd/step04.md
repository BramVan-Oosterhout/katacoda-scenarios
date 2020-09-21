<div class="foswikiPage">

<span id="PageTop"></span>

Using styles and cascading style sheets (css) is a large topic, outside
the scope of this tutorial. I will assume you are familiar with the
basics and limit this tutorial to a mechanisms Foswiki offers to add
styles to a page. You have already seen this in the previous step, where
you removed the side bar from view by linking the styles in a stylesheet
attached to
[PatternSkinCssCookbookNoLeftBar](../../../System/PatternSkinCssCookbookNoLeftBar.html).

You can use the same technique for user defined styles. First you decide
where to attach the style sheet. Since it is associated with the
[NoteType](NoteType.html "Create this topic"), it is logical to attach
the style sheet there. Maintaining this kind of attachment is well
supported by the
[AttachContentPlugin](../../../System/AttachContentPlugin.html). Call
the style sheet `UserNoteTypeStyle`

Let's start with hiding the left bar as a user style. You can copy the
content from the
[PatternSkinCssCookbookNoLeftBar](../../../System/PatternSkinCssCookbookNoLeftBar.html).
To create the `UserNoteTypeStyle` you add the following code to the
bottom of the text area in the
[NoteType](NoteType.html "Create this topic") topic:
    %<nop>STARTATTACH{"UserNoteTypeStyle.css"
                 comment="Stylesheet for the Notes in the NotePadApp."
                 hidecontent="on"
    }%
    /* copied from System/PatternSkinCssCookbookNoLeftBar/hideleftbar.css */
    #patternOuter {
     margin-left:0;
    }
    #patternSideBar {
     display:none;
    }
    /* for the content left margin use a bit smaller margin */
    #patternMainContents {
     padding-left:2em; /*S6*/
    }
    /* end copy */
    %<nop>ENDATTACH%

{{copy}} Once you have saved the topic, you will see the attachment
`UserNoteTypeStyle.css` listed.

To use this style sheet instead of the `hideleftbar.css` attached to
[PatternSkinCssCookbookNoLeftBar](../../../System/PatternSkinCssCookbookNoLeftBar.html)
you need to change the link in the `TestSkinNoteViewTemplate` from
    <link rel='stylesheet' href='%PUBURLPATH%/%SYSTEMWEB%/PatternSkinCssCookbookNoLeftBar/hideleftbar.css' media='all' type='text/css' />

to the link below. Note that you cannot use %WEB% for
`Applications/NotePadApp`, because the skin template variables are
expanded in the context of the rendered topic. This is not an INCLUDE.
    <link rel='stylesheet' href='%PUBURLPATH%/Applications/NotePadApp/NoteType/UserNoteTypeStyle.css' media='all' type='text/css' />

{{copy}}

Now you need to spruce up the top bar. It looks thin and the login is
squeezed in the top left corner. Change the class of the container of
the login actions from `class="patternLeftBarPersonal"` to
`id="userTopBarLogin"`{{copy}} and add the following styles to the
`UserNoteTypeStyle.css` by editing the `NoteType`.
    /* style the top bar */
    #userTopBarLogin {
              margin: 40px;       /* deepen the bar */
              height: 20px;       /* deepen the bar */
              text-align: center; /* center the content */
    }    
    #userTopBarLogin img {
              margin-left: 20px; /* space out the entries */
    }

{{copy}}

And that is it for the VIEW template. Feel free to experiement.

In the next scenario you will adjust the edit template for data entry.

### Answer {#Answer}

To compare you answers execute: /tmp/answer step4{{execute}}

The complete template is in
[TestSkinNoteViewTemplate](../../../Applications/SolNotePadApp/TestSkinNoteViewTemplate.html).

Check the answer in the Sandbox by creating a new note.

<span id="TopicEnd"></span>

<div class="foswikiForm foswikiFormStep">

### [ScenarioStepType](../../../Applications/KatacodaApp/ScenarioStepType.html) <span class="foswikiSmall">[edit](ScenarioStep04.html)</span>

  ------------------------------------ ------------------------------------
  [TopicType](TopicType.html "Create t [ScenarioStepType](ScenarioStepType.
  his topic")                          html "Create this topic"),
                                       [WikiTopic](WikiTopic.html "Create t
                                       his topic")

  [TopicTitle](TopicTitle.html "Create 
   this topic")                        

  Summary                              A VIEW template for the Note -
                                       styles

  Sequence                             Step4

  Coursedata                           

  Code                                 
  ------------------------------------ ------------------------------------

</div>

</div>
