So far we have ignored the content of the topics we create with the ExampleApp.

When we first create the ExampleNoteX topic, we are presented with the standard wiki text entry page.
At this point, you can enter the complete content, or just a placeholder.

At the top of the page are 4 tabs. The page opens on the Text tab.

The Form tab contains the fields we defined earlier:
*   TopicType (read only) defines the type of the topic
*   TopicTitle, Summary and Status can be editted and should be set to an appropriate value.
   
When you add these fields, they will be populated in the grid on the WebHome page.

After the topic has been saved, you can add and modify text by clicking the Edit button,
update the text and save the page like any other topic.
For small additions it would be nice to have a Comment box on the page,
so you can add comments without going through the full edit/save cycle.

That can be done using the CommentPlugin  and the %COMMENT{ ... }% macro.
You can add that whenever you want to the page if the plugin is installed.

But you can also add it as a default by using a TopicTemplate.

