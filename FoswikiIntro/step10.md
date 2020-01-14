## What are webs
The out of the box Foswiki installation implements all Foswiki components as a single directory tree. The directory tree contains the following directories
<table>
<tr valign="bottom"><td>
*Technical directories*
*   =bin= - contains the entry point executable. Like: =edit=, =attach=, =view=, etc.
*   =lib= - contains the implementations of the functionality as perl modules. Like: =Foswiki.pm=. 
*   =locale= - contains the portable object files for translation
*   =templates= - contains the root of the template system, used to define the browser presentation of the topics.
*   =tools= - contains a variety of command line perl scripts to support implementation. Like: =bulk_copy.pl=, dependencies, etc.
*   =working= - contains data supporting the operation of Foswiki. Like: logs (=error.log=, =events.log=, =configure.log=)  
*Content directories*
*   =data= - top directory for storage of topic data. Contains a directory for each web (like: =Main=, =Sandbox=), which in turn can contain directories for sub-webs
   *   For each topic there is a =topic.txt= file and a =topic,pfv= directory. Note the comma in topic&lt;comma&gt;pfv
   *   The =topic,pfv= directory contains the history of the topic as files 1, 2, 3 and so on. Where the highest number is the current revision of the topic
*   =pub= - top directory for the storage of attachments. Mirrors the directory structure of the data directory for each web. 
   *   Inside the web is a directory for each topic that has one or more attachments. Each topic attachment directory contains the attachments for the topic
</td><td>
*   *data*
   *   System
      *   ...
   *   Main
      *   TopicA
      *   TopicA,pfv
         *   1.m
         *   2.m
      *   TopicB,pfv
         *   1.m
         *   2.m
   *   Sandbox
      *   ...
   *   Trash
      *   ...
</td><td>
*   *pub*
   *   System
      *   ...
   *   Main
      *   TopicA
         *   AttachmentX.tgz
         *   AttachmentY.jpeg
      *   TopicB
         *   AttachmentP.txt
         *   AttachmentQ.mpeg
   *   Sandbox
      *   ...
   *   Trash
      *   ...
</td></tr>
</table>
The directories under the =data= and =pub= directories that contain the current versions of topics or attachments  are the implementations of Foswiki *webs*. Webs are entities within the larger Foswiki data structure.  Within a web, topics are hyperlinked with the topic name only. To hyperlink to a topic in another web, the topicname is qualified with the web name Like !Main.TopicA instead of !TopicA. Searches are restricted to a single web, unless specifically asked to cover multiple webs.

Webs can have sub-webs, which in turn can have further sub-webs. Each of the sub-webs is a sub-directory in the parent web and follows the same rules. refererences from webs to subwebs and vice versa must be fully qualified. The qualification is a full pathname followed by a dot, followed by a topic name.For instance:<br />
If the =Main= web is subdivided in two webs: =Myweb= and =Yourweb= with topics as shown below, then a reference from !TopicA to !TopicZ will require the following entry in !TopicA: =Main/Yourweb.TopicZ=. A reference to !TopicS in the =Support= sub-web in =Yourweb= would be made with: =Main/Yourweb/Support.TopicS=.

%RED% *TODO: add picture.* %ENDCOLOR%

## Maintaining webs
Webs are maintained by the wiki administrator. The wiki administrator has access rights to the form !ManagingWebs topic in the System web. The form accepts the following details for the creation of the web:
*   Name of the new web - web names start with a capital and are preferably not wiki words.
*   Summary - summary of the purpose of the web. Foswiki displays this summary on the !SiteMap in the System web.
*   Template web - an existing web, that serves as the template for the new web.
*   List on !SiteMap page - select to show or hide this web on the !SiteMap page
*   Include in global search and WEBLIST - include this web when search all webs is requested. WEBLIST is a variable that contains a list of selected webs in this wiki.
*   Web color - select a colour used as background for the web name.
When you click _Create web_  the new web is created in the =data= directory. the new web is populated with the standard Foswiki topics, used to manage the web. The equivalent directory in the =pub= directory is not created at this time. That happens when the first attachment is stored. The standard Foswiki topics inserted at the time of web creation are:

<table>
<tr><td>
*   WebAtom
*   WebChanges
*   WebCreateNewTopic
*   WebHome
</td><td>
*   WebIndex
*   WebLeftBar
*   WebNotify
*   WebPreferences
</td><td>
*   WebRss
*   WebSearchAdvanced
*   WebSearch
*   WebTopicList
</td></tr>
</table>

We have encountered these pages before when we looked at the navigation from the left bar. The list also includes the topic defining the left bar: !WebLeftBar.txt

Whilst creating the web is the responsibility of the wiki administrator, renaming, moving and deleting the web can be done from the =Tools= section of the !WebPreferences topic in the web. Using this tool you can change the name of the web, make it the sub-web of another wbe or move the web to the =Trash= web.

## References
*   [Managing webs](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/ManagingWebs) for a description of webs and to create new webs.
*   [Site map](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki/System/SiteMap) for a list of webs in this wiki.