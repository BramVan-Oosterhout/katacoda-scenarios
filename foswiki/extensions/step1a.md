### _FilterPlugin_
_FilterPlugin_ provides text manipulation macros across _Foswiki_ topics. The documentation is at _System.FilterPlugin_
The text manipulation can create lists fron topics with specific formatted output. There are three formatting macros:
*   _FORMATLIST_ - supports extensive transformation from one format to another
*   _EXTRACT_ - supports the extraction of a list from a specified text
*   _SUBST_ -

Use the configure page to install _FilterPlugin_.
----
*   Open the _configure_ page from the _System.InstalledPlugins_ topic.
*   Click the _Update ..._ button
*   Search for _FilterPlugin_
*   Select _FilterPlugin_ and click _Install_
*   Note the _Text::Unidecode_ dependency
*   Install this from the command line `cpan install Text::Unidecode`{{execute}}
*   On the configure page, select the Enable or Disable installed extensions
*   Enable _FilterPlugin_
*   Click _Save 2 changes_ (at the top right of the _configure_ page)

That completes the installation. 
---


### _The EXTRACT macro_
The _EXTRACT_ macro can extract text from a given text or topic. In _Sandbox.ExtensionsStep1_ try:
```
%EXTRACT{
        text="The quick brown fox jumped over the lazy dog"
        pattern="(The|the)"
        format="$1"
        separator="~~~"
}%
```{{copy}}
This example selects the stings _The_ or _the_ from the text and formats the output as a list  separated by three _~_.

Or a more realistic example:
```
%EXTRACT{
        topic="System.WebHome"
        pattern="([^\n]*)"
        format="$1"
        separator="~~~"
}%
```{{copy}}

This example selects each line from _System.WebHome_ (all text except the new line) and formats the text as each line separated by three _~_.

This example illustrates how the _EXTRACT_ macro can include the wiki text from a topic and flatten it,
thereby making the topic text available for further manipulation by other macros. We will see an example when we visit the _SpreadsheetPlugin_.

        
