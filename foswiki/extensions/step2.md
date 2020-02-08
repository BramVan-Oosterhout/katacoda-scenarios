### _SpreadsheetPlugin_
The Spreadsheet plugin provides the ability to perform arithmatic and some list manipulation in Foswiki. The manipulation can be performed within a table, thereby providing spreadsheet functionality. That can be useful in some applications. The plugin also provides for simple calculations through the _%CALCULATE{ ... }%_ macro. For example, the following construct returns a very crude wordcount for the WebHome topic:
<verbatim>
%CALCULATE{ "$COUNTSTR($SPLIT( $sp$sp*, %INCLUDE{"WebHome"}%),  )" }%
</verbatim>
%CALCULATE{ "$COUNTSTR($SPLIT( $sp$sp*, %INCLUDE{"WebHome"}%),  )" }%

This example also illustrates how nested macros are evaluated: Left to right, inside out. 
1.   As Foswiki scans the statement it first evaluates _%INCLUDE{"WebHome"}%_. The _%INCLIDE{ ... }%_ will be replaced by the text of the _WebHome_ topic.
2.   Next Foswiki finds the _}%_ associated with the _%CALCULATE{_ macro and passes the parameters _$COUNTSTR($SPLIT( $sp$sp*, WebHome_topic_text),  )_ to the spreadsheet plugin
3.   The spreadsheet plugin parses the parameters and completes the _SPLIT_ of the WebHome_topic_text into individual list items separated by a comma. The _SPLIT_ is done using one or more spaces ($sp$sp*) as the boundary between items.
4.   The resulting list is passed to _COUNTSTR_, which counts the items in the list since the last parameter (the string text to count) is not specified

A word of warning. Although this looks very much like a programming example, Foswiki is essentially a text processor.
If you leave off the last parameter of COUNTSTR, like:
<verbatim>
%CALCULATE{ "$COUNTSTR($SPLIT( $sp$sp*, %INCLUDE{"WebHome"}%) )" }%
</verbatim>
the result changes to: 
%CALCULATE{ "$COUNTSTR($SPLIT( $sp$sp*, %INCLUDE{"WebHome"}%) )" }%. _COUNTSTR_ now takes the last element in the list as the string to count and counts the occurrences of that string in the remainder of the list.

Here are some other examples of the use of the spreadsheet plugin functionality:
<verbatim>
*   All characters: %CALCULATE{ "$LENGTH( %INCLUDE{"TestScrap"}% )" }%
*   All non blank characters: %CALCULATE{ "$LENGTH( $FILTER($sp, %INCLUDE{"TestScrap"}% ) )" }%
*   All new lines: %CALCULATE{ "$LENGTH($FILTER( [^\n], %INCLUDE{"TestScrap"}% ) )" }%
</verbatim>
*   All characters: %CALCULATE{ "$LENGTH( %INCLUDE{"TestScrap"}% )" }%
*   All non blank characters: %CALCULATE{ "$LENGTH( $FILTER($sp, %INCLUDE{"TestScrap"}% ) )" }%
*   All new lines: %CALCULATE{ "$LENGTH($FILTER( [^\n], %INCLUDE{"TestScrap"}% ) )" }%
