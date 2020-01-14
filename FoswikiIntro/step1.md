## First encounter

Start foswiki: https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/foswiki

When you access your Foswiki installation for the first time you will land on a page that looks like the page in figure 1. There are some basic features to note:
*   There is a banner at the top with a Jump and a Search box
*   There is a bar on the right with a dozen navigation links 
*   Inside that structure is:
   *   At the top: a breadcrumb, an edit button, an attachment button and a subscribe button
   *   At the bottom is a navigation bar with actions: Edit, Attach, Subscribe, Print version, History: r1, Backlinks, View wiki text, Edit wiki text, More topic actions
   *   And between those two is the topic body, a collection of text and hyperlinks.
Each of those artefacts is decribed below.

### The topic body
The topic body contains a bulleted list of hyperlinks with link titles that are spelled in camel case like: !WebTopicList. Words spelled that way are referred to as wiki words and are automatically hyperlinked to the topic of that name. If that topic does not exist, the hyperlink will be coloured differently and will *create* a topic of that name for the user to edit.

### The Jump box
The Jump box provides a fast way to navigate between topics if you know the topic name. You have to know the exact spelling of the topic name, including case. All other entries will lead to a _Page not found_ response. So you can jump to !WebTopicList, but not to webtopiclist

### The Search box
The search box provides a way to navigate to a topic  about which something is known. You may search for !WebTopicList and get all pages referring to !WebTopicList as well as !WebTopicList itself. The search is not case sensitive. Searching for webtopiclist gives the same result. Searching for web topic list (three words) produces a different result. That search returms all topics containing the word web, or topic, or list or a combination of these words. The search results page has a number of tabs: Search, Advanced search, A-Z and Help. And it supports a number of search options, including a regular expression search. More on that later.

### The breadcrumb
The breadcrumb is a simple navigation aid. It contains information on where the current topic is located in the web hierarchy, and when and who created the topic. All Foswiki topics are stored as text files on permanent storage. That storage is subdivided in a directory structure. the top of the directory is referred to as _Foswiki_. Below the top are a number of _web_ directories. And each of the _web_ directories can contain one or more _sub-webs_. Topics are organised in a parent child structure. Each topic has at most one parent. The breadcrumb presents the hierarchy from the Foswiki top, through the _web_, _sub-web_ directories, through the paren child relationships to the topic being viewed.

### The toolbox
The toolbox provides access to create and maintain the topics.

#### Create a new topic
The _Create a new topic_ link will present a page to enter the new topic name and then proceed to create that topic. You can define a _parent topic_ for the new topic and you can select a template. Templates are used to define the presentation of a topic. Selecting _Default_ presents an empty topic and you can type the text as required. Foswiki has several editors. Out of the box you will find the WYSIWYG editor which is excellent for writing and formatting text. Once you have completed the entry, you press _Save_. The new topic is saved to disk and rendered as a regular Foswiki topic. One of Foswiki's attractive features is that previous revisions of the text are stored as well, provided the update is more than an hour after the current update. Or by a different user. If you want to guarantee a new revision is created (and the old one saved), you must select the _Force New revision_ checkbox before pressing _Save_.

#### The Index
The _Index_ link navigates to the !WebIndex page. The !WebIndex page lists all topics in the current web (the directory on disk that contains the currently displayed topic). On installation the index has over 20 entries. These are pages used by Foswiki to support the operation of the web.

#### The Search
The _Search_ link navigates to the !WebSearch topic. That topic has a number of tabs: Search, Advanced search, A-Z and Help. And it supports a number of search options, including a regular expression search. It is the "same" page that displayed the search results in response to an entry in the Search box. On the Advanced Search tab you can select search options to make the search case sensitive and several options to decide how the search matches. The default =keyword= option does a string match, supports minus (as in -string) to exclude a string and quoted strings (like "this string") to match strings including spaces. =word= is similar, but includes word boundaries. So _in_ as a keyword matches _string_, but as a word it does not. =literal= matches the whole search entry, including white space and ignores special characters like minus. Other optios, like =regex= and =query= will be discussed later.

%RED% *TODO* %ENDCOLOR%

#### The Changes
The _Changes_ link navigates to  the !WebChanges topic. The topic presents the 50 most recently changed topics.

#### The Notifications
The _Notifications_ link navigates to  the !WebNotifications topic. The topic contains the list of registered users that will be notified when a topic in the web has been modified. If you want to subscribe, you add your registered user name as an entry in the bulleted list. That name is a wiki word. Like: BramVanOosterhout.

#### The RSS feed
The _RSS feed_ link navigates to the !WebRss topic where you can subscribe to the feed. %RED% I don't know how this works/what it does. %ENDCOLOR% The topic is presented differently, because....???

%RED% *TODO* %ENDCOLOR%

#### The Preferences
The _Preferences_ link navigates to the !WebPreferences topic. Preferences are values maintained by Foswiki, that control behaviour and appearance of the application. Preferences are maitained in bullet points that start with the =Set= keyword. Preference values are defined in a hierarchy: Default, Site, User, Web, Sub-web, Topic and the last definition of a preference in this hierarchy will be used at the time the preference variable is encountered. Preferences are important for access control and help greatly in the maintenance of a site. More on preferences later. 

### The Webs list
Topics in a  Foswiki site are stored on disk in a directory structure. Out of the box Foswiki has 4 directories: System, Main, Sandbox and Trash. System contains the topics that define and document Foswiki behaviour. Main contains the topics created and maintained by registered Foswiki users. Sandbox contains topics where Foswiki users experiment with functions and navigation, without an intention to keep these topics on a permanent basis. Trash contains the topics that have been deleted from any web. Webs are an iportant concept in Foswiki and a building stone for Foswiki Applications.

### The bottom navigation bar
The bottom navigation bar contains hyperlinks to functions that maintain and present topics. Below is a short description of each link.

#### Edit 
The _Edit_ link navigates to the edit page for the topic being viewed. The edit page is the same page as the page associated with the _Create new topic_ link in the Toolbox. You can edit the topic and save the revision using the _Save_ button. Revisions more than an hour apart are saved as separate files. _Save and Continue_ saves the topic and remains on the edit page. _Preview_ renders the topic in the form it will be presented. You can close the preview and return to the edit page. _Change form_ supports a change in the structured data associated with the topic. More about that later. _Cancel_ does not save anything and returns to the display of the rendered topic.

#### Attach
The _Attach_ link supports "attaching" a file to a topic. "Attaching" a file means that the file is integrated and stored in the Foswiki directory structure and the topic has a reference to the file location. The reference is embedded in the topic data, and can also be made available as a hyperlink in the topic text. Like topics, attachments have revisions. If an attachment is an image file and linked from the topic text, the image will be displayed in the text.

#### Subscribe
The _Subscribe_ link will record a request to be notified when this topic is changed. You must be logged in to be able to subscribe. The link changes to _Unsubscribe_ once clicked, so you can undo the request.

#### Print version
The _Print version_ link changes the presentation of the topic to a printable rendition. header, sidebar and footer are removed. The displayed page can be printed using the browser print control.

#### History
The _History: r2 < r1_ link supports navigation to previous versions. In the display: _History: r2 < r1_, r1 will navigate to revision 1 and display that; the &lt; character will navigate to a comparison display of r2 and r1; and the History hyperlink will navigate to a comparison page, where the revisions to be compared can be selected.

#### Backlinks
The _Backlinks_ hyperlink navigates to a page that presents a list of topics that have a reference to this topic. Those references can be directly as a hyperlink in the text of the referring topic. Or they can be references from the referring topic to its parent topic.

#### View wiki text
The _View wiki text_ link provides an insight in the notation used by Foswiki to format the presentation of the topic. Wiki text will show the text of the topic as saved on disk. It shows the text you type as well as the Topic Markup Language (TML) elements that provide the formatting. You also see the use of Preferences and their implementation cousins (macros) in the form of the phrases starting with % or %text{ and ending with }%. TML and macros are  building blocks for the wiki applications. We will discuss them in more detail later.

#### Edit wiki text
The _Edit wiki text_ hyperlink navigates to the edit page for the topic being viewed. This is a different editor from the one presented previously. The editor does not support the WYSIWYG paradigm. Instead it will insert appropriate TML for the requested presentation. Clicking B(old) will insert the string <nop>*Bold text*. Selecting text followed by clicking B(old) will preceed and follow that text with an asterisk, the TML for bolding. This editor is a convenient mechanism for entry of TML whilst you are learning the language. 

#### More topic actions
The _More topic actions_ hyperlink navigates to a page that supports the manipulation of the complete topic. It provides the ability to:
*   Show previous revisions of the topic
*   Compare revisions of the topic
*   Restore a topic by copying a selected revision of the topic to a new (latest) revision of the topic.
*   Set a new topic parent for this revision, replacing the old one.
*   Add preference settings to the topic, instead of using the =Set= keyword visibly in the topic.
*   Delete the topic. Move the topic with all revisions to the _Trash_ web.
*   Rename or move the topic. Change the topic name and/or move it to a different web.
*   Copy the topic. Make a copy of the topic with a new name, including the attachments, in the current web.
*   Show the child topics of this topic. I.e. list the topics that have this topic as a parent.
*   Show the _Backlinks_. Show the topics that have hyperlinks referring to this topic.

---++ References
*   %REF{ "BeginnersStartHere" externalweb="System" }% for a quick introduction through a slideshow.
*   %REF{ "TwentyMinuteTutorial" externalweb="System" }% for a more extensive overview of capabilities.
*   %REF{ "UsersGuide" externalweb="System" }% for solid introduction to  Foswiki's features.
