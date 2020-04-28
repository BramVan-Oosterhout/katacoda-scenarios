Now that we can create a topic for the note pad, we can begin to compose a home page for our implementation.
Since the home page will contain some logic, the type for the home page is selected as a TopicFunction.
Use the TopicFunction link on the application work bench to create a topic ExampleWebHome.

The content of the page must be placed between the %STARTINCLUDE% and %STOPINCLUDE% markers under the _Implementation_ header.
You can make it as nice as you want. At this stage you must include `%DBCALL{ "Applications/ExampleApp.ExampleType" }%`
so that the create button is included on the page. Save the topic.

You can see the resulting page under the _Test_ heading.

Note that there are no records found, even though we created two topics
(ExampleNote1 and ExampleNote2) in previous steps of this scenario. On closer inspection you will see that the grid is created by
`%DBCALL{"Applications.RenderTopicsOfType"}%` in the ExampleType topic. The documentation of Applications.RenderTopicsOfType states that the TYPE rendered is the BASETOPIC by default.
But our BASETOPIC is ExampleWebHome and there are no topics of thet TYPE. So we nee to proved the TYPE explicitly.
Edit the ExampleWebHome topic to use `%DBCALL{ "Applications/ExampleApp.ExampleType" TYPE="ExampleType"}%`{{copy}}
Now the two topics previously created in appear in the table.
