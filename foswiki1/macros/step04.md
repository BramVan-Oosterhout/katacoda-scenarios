## Macros	

Macros are the core of Foswiki's functionality and extensibility. They are syntactically like variables with parameters: _%MACRO\{ parameter="value" ... \}%_. The MACRO name can be all capitals (common for Foswiki defined macros) or mixed case if you choose to define your own. Their semantics are usually implemented in the internals of Foswiki or as extensions. There are hundreds of macros available in Foswiki and this course will cover a variety of them. The Foswiki documentation provides a full list in System.MacrosQuickReference. Below are some brief examples to demonstrate their power.

## _SHOWPREFERENCE_	

\_ \* Set ADMINLOGIN = "%IF\{"\{LoginManager\} = 'Foswiki::LoginManager::ApacheLogin' AND NOT context authenticated" then="Foswiki is configured using &lt;nop&gt;ApacheLogin, please [[%LOGINURL%]\[login]] as a normal user first. Then the Admin Login will replace this text" else="[[%SCRIPTURLPATH\{"login" topic="%BASEWEB%.%BASETOPIC%" sudo="sudo"\}%]\[internal admin login]] (use the password set in [[%SCRIPTURLPATH\{"configure"\}%]\[configure]])."\}%"
* * ADMINLOGIN was defined in System.DefaultPreferences
* Set ALLOWROOTCHANGE = "%USERSWEB%.AdminGroup"
  * ALLOWROOTCHANGE was **finalised** in System.DefaultPreferences
* Set ALLOWTOPICCHANGE = "%USERSWEB%.AdminGroup"
  * ALLOWTOPICCHANGE was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set ALLOWTOPICRENAME = "%USERSWEB%.AdminGroup"
  * ALLOWTOPICRENAME was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set ALLOWWEBCHANGE = "%USERSWEB%.AdminGroup"
  * ALLOWWEBCHANGE was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set ALLOWWEBRENAME = "%USERSWEB%.AdminGroup"
  * ALLOWWEBRENAME was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set AQUA = "&lt;span class='foswikiAquaFG'&gt;"
  * AQUA was defined in System.DefaultPreferences
* Set ATTACHEDFILELINKFORMAT = "\\n \* [[$percntATTACHURL$percnt/$fileurl]\[$filename]]%IF\{"'$comment'=''" else=": $comment"\}%"
  * ATTACHEDFILELINKFORMAT was defined in System.DefaultPreferences
* Set ATTACHEDIMAGEFORMAT = "\\n%IF\{"'$comment'=''" else=" \* $comment: &lt;br /&gt;
 "\}% &lt;img src="$percntATTACHURLPATH$percnt/$fileurl" alt="$filename" $size /&gt;"
* * ATTACHEDIMAGEFORMAT was defined in System.DefaultPreferences
* Set ATTACHFILESIZELIMIT = "10000"
  * ATTACHFILESIZELIMIT was **finalised** in System.DefaultPreferences
* Set ATTACHLINKBOX = ""
  * ATTACHLINKBOX was defined in System.DefaultPreferences
* Set ATTACHMENTNAMEFILTER = "[\\\\\*?~^$@%"'&amp;|&lt;&gt;/\\[\\]#\\x00-\\x1f]"
* Set AUTHUSER = "BramVanOosterhout"
* Set BASETOPIC = "ScenarioStep04"
* Set BASEWEB = "KatacodaCourses/Foswiki1/Macros"
* Set BB = "&lt;br /&gt;&amp;#8226;"
  * BB was defined in System.DefaultPreferences
* Set BB2 = "&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;#8226;"
  * BB2 was defined in System.DefaultPreferences
* Set BB3 = "&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;#8226;"
  * BB3 was defined in System.DefaultPreferences
* Set BB4 = "&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;#8226;"
  * BB4 was defined in System.DefaultPreferences
* Set BLACK = "&lt;span class='foswikiBlackFG'&gt;"
  * BLACK was defined in System.DefaultPreferences
* Set BLUE = "&lt;span class='foswikiBlueFG'&gt;"
  * BLUE was defined in System.DefaultPreferences
* Set BR = "&lt;br /&gt;"
  * BR was defined in System.DefaultPreferences
* Set BROADCASTMESSAGE = ""
  * BROADCASTMESSAGE was defined in System.DefaultPreferences
* Set BROWN = "&lt;span class='foswikiBrownFG'&gt;"
  * BROWN was defined in System.DefaultPreferences
* Set BULLET = "&amp;#8226;"
  * BULLET was defined in System.DefaultPreferences
* Set CARET = "&amp;#94;"
  * CARET was defined in System.DefaultPreferences
* Set CHANGEPASSWORDDISABLEDMESSAGE = "%MAKETEXT\{"Resetting and setting password is not available."\}%"
  * CHANGEPASSWORDDISABLEDMESSAGE was defined in System.DefaultPreferences
* Set CLEAR = "&lt;span class='foswikiClear'&gt;&lt;/span&gt;"
  * CLEAR was defined in System.DefaultPreferences
* Set CURRREV = "3"
* Set DEFAULTPAGESIZE = "50"
  * DEFAULTPAGESIZE was defined in System.DefaultPreferences
* Set DENYWEBCHANGE = "%USERSWEB%.WikiGuest"
  * DENYWEBCHANGE was defined in Main.WebPreferences
* Set DENYWEBRENAME = "%USERSWEB%.WikiGuest"
  * DENYWEBRENAME was defined in Main.WebPreferences
* Set DIFFRENDERSTYLE = "sequential"
  * DIFFRENDERSTYLE was defined in System.DefaultPreferences
* Set DOCWEB = "%SYSTEMWEB%"
  * DOCWEB was **finalised** in System.DefaultPreferences
* Set DONTNOTIFYCHECKBOX = ""
  * DONTNOTIFYCHECKBOX was defined in System.DefaultPreferences
* Set EDITBOXHEIGHT = "22"
  * EDITBOXHEIGHT was defined in System.DefaultPreferences
* Set EDITBOXSTYLE = "width:99%"
  * EDITBOXSTYLE was defined in System.DefaultPreferences
* Set EDITBOXWIDTH = "70"
  * EDITBOXWIDTH was defined in System.DefaultPreferences
* Set EDITTOPIC = "&lt;a href="%EDITURL%" title="Edit Topic - deprecated usage - please see release notes"&gt;Edit&lt;/a&gt;"
  * EDITTOPIC was defined in System.DefaultPreferences
* Set EDITURL = "%SCRIPTURLPATH\{"edit" topic="%WEB%.%TOPIC%" t="%GMTIME\{"$epoch"\}%"\}%"
  * EDITURL was defined in System.DefaultPreferences
* Set ENDCOLOR = "&lt;/span&gt;"
  * ENDCOLOR was defined in System.DefaultPreferences
* Set EXPORTEDPREFERENCES = "PUBURL, PUBURLPATH, SCRIPTSUFFIX, SCRIPTURL, SCRIPTURLPATH, SERVERTIME, SKIN, SYSTEMWEB, TOPIC, USERNAME, USERSWEB, WEB, WIKINAME, WIKIUSERNAME, NAMEFILTER"
  * EXPORTEDPREFERENCES was defined in System.DefaultPreferences
* Set FAVICON = "%PUBURLPATH%/%SYSTEMWEB%/ProjectLogos/favicon.ico"
  * FAVICON was defined in Main.SitePreferences
* Set FINALPREFERENCES = "ATTACHFILESIZELIMIT, PREVIEWBGIMAGE, WIKITOOLNAME, WIKIHOMEURL, ALLOWROOTCHANGE, DENYROOTCHANGE, DOCWEB, WIKIWEBMASTER, WIKIWEBMASTERNAME, WIKIAGENTEMAIL, WIKIAGENTNAME"
  * FINALPREFERENCES was defined in Main.SitePreferences
* Set FORCENEWREVISIONCHECKBOX = ""
  * FORCENEWREVISIONCHECKBOX was defined in System.DefaultPreferences
* Set FOSWIKISTRIKEONE = "659f883a380bba6cb41acc576e60303d"
* Set FOSWIKI\_COLORS\_URL = "%PUBURLPATH\{"colors.css" topic="%SYSTEMWEB%.PatternSkinTheme"\}%"
  * FOSWIKI\_COLORS\_URL was defined in System.DefaultPreferences
* Set FOSWIKI\_LAYOUT\_URL = "%PUBURLPATH\{"layout.css" topic="%SYSTEMWEB%.PatternSkinTheme"\}%"
  * FOSWIKI\_LAYOUT\_URL was defined in System.DefaultPreferences
* Set FOSWIKI\_STYLE\_URL = "%PUBURLPATH\{"style.css" topic="%SYSTEMWEB%.PatternSkinTheme"\}%"
  * FOSWIKI\_STYLE\_URL was defined in System.DefaultPreferences
* Set FREF = "[[https://foswiki.org/%web.%DEFAULT%]\[%DEFAULT%]]"
  * FREF was defined in KatacodaCourses.WebPreferences
* Set FWCOMPRESSED = ".compressed"
  * FWCOMPRESSED was defined in System.DefaultPreferences
* Set FWSRC = ""
  * FWSRC was defined in System.DefaultPreferences
* Set FWUNCOMPRESSED = ""
  * FWUNCOMPRESSED was defined in System.DefaultPreferences
* Set GRAY = "&lt;span class='foswikiGrayFG'&gt;"
  * GRAY was defined in System.DefaultPreferences
* Set GREEN = "&lt;span class='foswikiGreenFG'&gt;"
  * GREEN was defined in System.DefaultPreferences
* Set H = "&lt;img src="%ICONURLPATH\{help\}%" alt="HELP" title="HELP" width="16" height="16" /&gt;"
  * H was defined in System.DefaultPreferences
* Set HTTP\_EQUIV\_ON\_EDIT = ""
  * HTTP\_EQUIV\_ON\_EDIT was defined in System.DefaultPreferences
* Set HTTP\_EQUIV\_ON\_PREVIEW = ""
  * HTTP\_EQUIV\_ON\_PREVIEW was defined in System.DefaultPreferences
* Set HTTP\_EQUIV\_ON\_VIEW = "&lt;link rel="alternate" type="application/rss+xml" title="RSS Feed" href="%SCRIPTURLPATH\{"view" topic="%WEB%.WebRss"\}%" /&gt;"
  * HTTP\_EQUIV\_ON\_VIEW was defined in System.DefaultPreferences
* Set I = "&lt;img src="%ICONURLPATH\{tip\}%" alt="IDEA!" title="IDEA!" width="16" height="16" /&gt;"
  * I was defined in System.DefaultPreferences
* Set ICONTOPIC = "%SYSTEMWEB%.DocumentGraphics"
  * ICONTOPIC was defined in System.DefaultPreferences
* Set INCLUDEWARNING = "on"
  * INCLUDEWARNING was defined in System.DefaultPreferences
* Set INCLUDINGTOPIC = "ScenarioStep04"
* Set INCLUDINGWEB = "KatacodaCourses/Foswiki1/Macros"
* Set INSTALLEDPLUGINS = "The INSTALLEDPLUGINS macro is no longer supported. You can set the Plugins execution order using the [[%SCRIPTURLPATH\{"configure"\}%]\[configure]] interface."
  * INSTALLEDPLUGINS was defined in System.DefaultPreferences
* Set INTROFOOTER = "$percentINCLUDE\{ "KatacodaCourses.IntroFooter" \}$percent"
  * INTROFOOTER was defined in KatacodaCourses.WebPreferences
* Set KATACODAHOST = "&lt;nop&gt;https://&amp;#91;&amp;#91;HOST_SUBDOMAIN&amp;#93;&amp;#93;-80-&amp;#91;&amp;#91;KATACODA_HOST&amp;#93;&amp;#93;.environments.katacoda.com"
  * KATACODAHOST was defined in KatacodaCourses.WebPreferences
* Set KREF = "&lt;a href="%KATACODAHOST%/foswiki/%DEFAULT%"&gt;%DEFAULT%&lt;/a&gt;"
  * KREF was defined in KatacodaCourses.WebPreferences
* Set LIME = "&lt;span class='foswikiLimeFG'&gt;"
  * LIME was defined in System.DefaultPreferences
* Set LINKTOOLTIPINFO = "off"
  * LINKTOOLTIPINFO was defined in System.DefaultPreferences
* Set M = "&lt;img src="%ICONURLPATH\{arrowright\}%" alt="MOVED TO..." title="MOVED TO..." width="16" height="16" /&gt;"
  * M was defined in System.DefaultPreferences
* Set MAILTHISTOPIC = "&lt;a href="mailto:?subject=%BASETOPIC%&amp;amp;body=%TOPICURL%"&gt;%MAILTHISTOPICTEXT%&lt;/a&gt;"
  * MAILTHISTOPIC was defined in System.DefaultPreferences
* Set MAILTHISTOPICTEXT = "Send a link to this page"
  * MAILTHISTOPICTEXT was defined in System.DefaultPreferences
* Set MAINWEB = "%USERSWEB%"
  * MAINWEB was defined in System.DefaultPreferences
* Set MAROON = "&lt;span class='foswikiMaroonFG'&gt;"
  * MAROON was defined in System.DefaultPreferences
* Set MAXREV = "3"
* Set N = "&lt;img src="%ICONURLPATH\{new\}%" alt="NEW" title="NEW" width="30" height="16" /&gt;"
  * N was defined in System.DefaultPreferences
* Set NAMEFILTER = "%QUERY\{"\{NameFilter\}"\}%"
  * NAMEFILTER was defined in System.DefaultPreferences
* Set NAVY = "&lt;span class='foswikiNavyFG'&gt;"
  * NAVY was defined in System.DefaultPreferences
* Set NEWLINKFORMAT = "&lt;a class="foswikiNewLink" href="%SCRIPTURLPATH\{"edit" topic="$web.$topic" topicparent="%WEB%.%TOPIC%"\}%" rel="nofollow" title="%MAKETEXT\{"Create this topic"\}%"&gt;$text&lt;/a&gt;"
  * NEWLINKFORMAT was defined in System.DefaultPreferences
* Set NOAUTOLINK = "on"
  * NOAUTOLINK was defined in KatacodaCourses.WebPreferences
* Set NOSEARCHALL = ""
  * NOSEARCHALL was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set OLIVE = "&lt;span class='foswikiOliveFG'&gt;"
  * OLIVE was defined in System.DefaultPreferences
* Set ORANGE = "&lt;span class='foswikiOrangeFG'&gt;"
  * ORANGE was defined in System.DefaultPreferences
* Set P = "&lt;img src="%ICONURLPATH\{pencil\}%" alt="REFACTOR" title="REFACTOR" width="16" height="16" /&gt;"
  * P was defined in System.DefaultPreferences
* Set PATTERNSKIN\_COLUMNS = "%PUBURLPATH\{"column\_left.css" topic="%SYSTEMWEB%.PatternSkinTheme"\}%"
  * PATTERNSKIN\_COLUMNS was defined in System.DefaultPreferences
* Set PATTERNSKIN\_JQUERY\_THEME = "PatternSkinTheme"
  * PATTERNSKIN\_JQUERY\_THEME was defined in System.DefaultPreferences
* Set PATTERNSKIN\_THEME = "%PATTERNSKIN\_THEME\_VARIANT%"
  * PATTERNSKIN\_THEME was defined in System.DefaultPreferences
* Set PATTERNSKIN\_THEME\_VARIANT = "%PUBURLPATH\{"variant\_foswiki\_noframe.css" topic="%SYSTEMWEB%.PatternSkinTheme"\}%"
  * PATTERNSKIN\_THEME\_VARIANT was defined in System.DefaultPreferences
* Set PINK = "&lt;span class='foswikiPinkFG'&gt;"
  * PINK was defined in System.DefaultPreferences
* Set PREVIEWBGIMAGE = "%PUBURLPATH\{"preview2bg.gif" topic="%SYSTEMWEB%.PreviewBackground"\}%"
  * PREVIEWBGIMAGE was **finalised** in System.DefaultPreferences
* Set PUBLISHPLUGIN\_SHORTDESCRIPTION = "Generate static output (HTML, PDF) for a web and optionally upload (FTP) the output to a publishing site."
  * PUBLISHPLUGIN\_SHORTDESCRIPTION was defined in System.PublishPlugin
* Set PURPLE = "&lt;span class='foswikiPurpleFG'&gt;"
  * PURPLE was defined in System.DefaultPreferences
* Set Q = "&lt;img src="%ICONURLPATH\{question\}%" alt="QUESTION?" title="QUESTION?" width="16" height="16" /&gt;"
  * Q was defined in System.DefaultPreferences
* Set RED = "&lt;span class='foswikiRedFG'&gt;"
  * RED was defined in System.DefaultPreferences
* Set REGISTRATIONGROUPTYPE = "none"
  * REGISTRATIONGROUPTYPE was defined in System.DefaultPreferences
* Set REMEMBER = ""
* Set REVTITLE = ""
* Set S = "&lt;img src="%ICONURLPATH\{starred\}%" alt="PICK" title="PICK" width="16" height="16" /&gt;"
  * S was defined in System.DefaultPreferences
* Set SEARCHDEFAULTTTYPE = "keyword"
  * SEARCHDEFAULTTTYPE was defined in System.DefaultPreferences
* Set SEARCHSTOPWORDS = "a, all, am, an, and, any, as, at, b, be, by, c, d, e, for, from, g, h, how, i, i'm, i.e., in, is, isn't, it, it's, its, j, k, l, m, n, o, of, on, or, p, q, r, s, t, that, that's, the, this, to, u, v, w, was, wasn't, what, what's, when, where, who, who's, will, with, x, y, z"
  * SEARCHSTOPWORDS was defined in System.DefaultPreferences
* Set SEARCHVARDEFAULTTYPE = "literal"
  * SEARCHVARDEFAULTTYPE was defined in System.DefaultPreferences
* Set SESSIONID = "3dc3125fdcae43de149d695f96c77f70"
* Set SESSIONVAR = "FOSWIKISID"
* Set SIGNATUREFORMAT = "-- %WIKIUSERNAME% - %DATE%"
  * SIGNATUREFORMAT was defined in System.DefaultPreferences
* Set SILVER = "&lt;span class='foswikiSilverFG'&gt;"
  * SILVER was defined in System.DefaultPreferences
* Set SITEMAPLIST = "on"
  * SITEMAPLIST was defined in KatacodaCourses/Foswiki1/Macros.WebPreferences
* Set SKIN = "natedit,pattern"
  * SKIN was defined in System.DefaultPreferences
* Set T = "&lt;img src="%ICONURLPATH\{tip\}%" alt="TIP" title="TIP" width="16" height="16" /&gt;"
  * T was defined in System.DefaultPreferences
* Set TEAL = "&lt;span class='foswikiTealFG'&gt;"
  * TEAL was defined in System.DefaultPreferences
* Set TESTFIXTUREPLUGIN\_SHORTDESCRIPTION = "Support for automatic tests"
  * TESTFIXTUREPLUGIN\_SHORTDESCRIPTION was defined in System.TestFixturePlugin
* Set TEXT = "---++ Macros
 Macros are the core of Foswiki's functionality and extensibility. They are syntactically like variables with parameters: \_%&lt;nop&gt;MACRO\{ parameter="value" ... \}%\_. The MACRO name can be all capitals (common for Foswiki defined macros) or mixed case if you choose to define your own. Their semantics are usually implemented in the internals of Foswiki or as extensions. There are hundreds of macros available in Foswiki and this course will cover a variety of them. The Foswiki documentation provides a full list in System.MacrosQuickReference. Below are some brief examples to demonstrate their power.

## \_SHOWPREFERENCE\_	

\_%SHOWPREFERENCE%\_ will list all defined preferences \_\_and where they are defined\_\_. You can try this in the Sandbox.TestMacros topic. The macro takes one or more comma separated variable names to show. Try: &lt;verbatim&gt; %SHOWPREFERENCE\{ "ATTACHFILESIZELIMIT,SKIN,UNDEFINED" \}% &lt;/verbatim&gt;\{\{copy\}\}

## \_DISPLAYTIME\_	

\_%DISPLAYTIME\{ "format specification" \}%\_ presents the current time in a requested format. The default (\_%DISPLAYTIME%\_) expands to the current date and time. The format can be changed using format qualifiers like: \_$day, $year, $minute\_. Try: &lt;verbatim&gt; %DISPLAYTIME\{ "$year$mo$day$hour$minute: The $day'st day of $month in the year $year" \}% &lt;/verbatim&gt;\{\{copy\}\}

The \_$formatqualifier\_ token format is commonly used in macros to format the output. The tokens available are provided in the documentation of the macro. Jump to Main.VarDISPLAYTIME.

