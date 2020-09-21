<div class="foswikiPage">

<span id="PageTop"></span>

There are many presentation and useability changes appropriate to the
current for of the application. You can take the following suggestions
and try your hand at implementing them. Solutions to these execises are
provided in the answers.

#### 1. Refactor the `NoteViewTemplate` and base it on the `NoteWebHomeViewTemplate` {#A_1._Refactor_the_61NoteViewTemplate_61_and_base_it_on_the_61NoteWebHomeViewTemplate_61}

*Hint*: Use `NoteWebHomeViewTemplate` as the root for `NoteViewTemplate`
and remove all common components from `NoteViewTemplate`.

#### 2. Change the access control to allow all registered users to create and edit notes {#A_2._Change_the_access_control_to_allow_all_registered_users_to_create_and_edit_notes}

*Hint*: Experiment in a deployed application. When satisfied, update
`SeedWebPreferences`

#### 3. Add a *Home* link to the top bar in the VIEW template, so you can navigate back to the home page {#A_3._Add_a_Home_link_to_the_top_bar_in_the_VIEW_template_44_so_you_can_navigate_back_to_the_home_page}

*Hint*: Update the `topbar` DEF template definition. Use the ICON macro.

#### 4. Add a *Preferences* link, available only to users in the Admin group. {#A_4._Add_a_Preferences_link_44_available_only_to_users_in_the_Admin_group.}

*Hint*: Update the `topbar` DEF template definition. Use IF{ "context
isadmin" ...}

#### 5. Restrict the COMMENT box to notes with status `Open` or when the user is in the Admin group {#A_5._Restrict_the_COMMENT_box_to_notes_with_status_61Open_61_or_when_the_user_is_in_the_Admin_group}

*Hint*: Update the `aftertext` DEF template. Refiew the
[System.IfStatements](../../../System/IfStatements.html) carefully.

#### 6. Remove the Edit, etc. links for a `Closed` note {#A_6._Remove_the_Edit_44_etc._links_for_a_61Closed_61_note}

Show "You cannot change the content of a closed note." instead of the
`Edit | Attach | Subscribe |` links if the note has status `Closed`
unless the user is in the Admin group.

*Hint*: Create a separate template for `Open` and `Closed` notes. Add
`section` the configuration of the AutoTemplatePlugin to Mode:
`rules, section, exist, type`. And place the logic to select the
template in the `NoteForm` See the documentation for
[AutoTemplatePlugin](../../../System/AutoTemplatePlugin.html),
`mode=section`

These modifications are shown in the SolNotePadApp if you want to see an
example.

### Answer {#Answer}

#### Exercise 1 {#Exercise_1}

See: `/tmp/answer step7`{{execute}}

<span id="TopicEnd"></span>

<div class="foswikiForm foswikiFormStep">

### [ScenarioStepType](../../../Applications/KatacodaApp/ScenarioStepType.html) <span class="foswikiSmall">[edit](ScenarioStep07.html)</span>

  ------------------------------------ ------------------------------------
  [TopicType](TopicType.html "Create t [ScenarioStepType](ScenarioStepType.
  his topic")                          html "Create this topic"),
                                       [WikiTopic](WikiTopic.html "Create t
                                       his topic")

  [TopicTitle](TopicTitle.html "Create 
   this topic")                        

  Summary                              Exercises to refine the working of
                                       the application

  Sequence                             step7

  Coursedata                           

  Code                                 
  ------------------------------------ ------------------------------------

</div>

</div>
