Welcome to Katacoda Foswiki tutorial!

---+ Preface
*   Scope of this book
*   Availability of Foswiki
*   Sample programs and topics
*   Conventions used in this book
*   Acknowledgements
## Scope of this tutorial

Foswiki is a good tool with much functionality available out of the box. At it heart it is a wiki.
You install it and you can enter text and display it through a web browser.
In addition Foswiki provides facilities for search and many extensions supporting display and text manipulation options.
Foswiki is used to manage the development, support and distribution of the product. There are some really nice Foswiki sites on the internet like:
*   https://ibis-wiki.cit.nih.gov/foswiki/
*   http://foswiki.cs.uu.nl/foswiki/
*   https://htu.at/Main/

Despite its long history, Foswiki's reputation has not been able to fully capitalise on its many capabilities.
I believe that is in part due to its overwhelming number of parts and a paucity of presentation of the whole.
Foswiki is an excellent vehicle to develop and supply applications that support particular business sectors, operational models and data collection mechanisms.
(The structured data capabilities are a real asset in this area)

This multipart tutorial presents Foswiki as a vehicle to build, distribute, extend and reuse applications rather than specific functionality.
The tutorial assumes that you have some experience with Foswiki out of the box.
Foswiki is first and foremost a wiki. The application supports the creation of web pages, hyperlinked through wiki words.
You can create new pages called topics, link topics with other topics and in that way create a web that can be maintained by anyone that the appropriate access rights.

Foswiki applications are collections of functionality that can be deployed to support particular data collections.
Foswiki applications separate the application data from the functions that manipulate the data.


### Part 1 - Foswiki overview
In this part summarises the operation of Foswiki with functioning examples.
It focusses on the major parts that make up the Foswiki infrastructure as an introduction to Foswiki applications.
Part 2 knits these parts together in the context of the delivery of applications using the Foswiki infrastructure.
It presents coherent examples, rather than the spot examples that illustrate the capabilities of a particular Foswiki feature.

Scenario 1 - [Introduction](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/introduction)
Presents the operation of Foswiki out of the box as seen through the user interface.
Although there is much functionality under the hood, the immediately visible capabilities are essentially the entry of text in topics
and the searching across previously entered text.

Scenario 2 - [Webs](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/webs)
Present the basic data management feature,
the possibility to divide the wiki content in broad classifications: the web. Webs are a basic component in the maintenance and creation of applications.
Webs, sub-webs and the relation between them are fundamental.

Scenario 3 - [Macros](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/macros)
Presents the use of data definitions to control presentation and behaviour of Foswiki topics.
Macros are the cornerstones of the functioning of Foswiki applications and this chapter presents the mechanisms used.

Scenario 4 - [Meta data](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/meta)
Presents the implementation of structured data with each topic. This data is referred to as Meta data
and can be entered and manipulated separate from the text content of the wiki topic.

Scenario 5 - [Templates](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/templates) 
Presents templates. Foswiki templates define the format and presentation of the topic content.
Templates support wholesale changes to the appearance of a Foswiki site.

Scenario 6 - [Extensions](https://www.katacoda.com/bramvanoosterhout/courses/foswiki/extensions) 
Presents the use of extensions and their interface with the topic content. There are hundreds of plugins shipped with Foswiki.
This scenario demonstrates the basic syntax and functionality.

<div style="background-color: khaki" >
The Katacoda training environment is somewhat out of the ordinary. This setup installs Foswiki, listening at port 80 for the http protocol.
Access is through the katacoda-services host, which is accessible with the https protocol.
This leads to a mixed access scenario, which is by default not allowed in modern browsers.
For Firefox  you need to turn off all mixed content checking in
[about:config](https://docs.sdl.com/LiveContent/content/en-US/SDL%20Web-v5/GUID-A96F0612-53DE-4E35-AE09-48D57146D6E4)
<p />
**Please note** that you are `root`on the server.
If you are not a user with root privileges, some commands will need to be `sudo'ed`.
</div>
