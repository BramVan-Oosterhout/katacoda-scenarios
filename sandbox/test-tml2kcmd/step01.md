<style>
.foswikiIndent {
   padding-left: 3em;
}
.foswikiTable {
        border-style:solid;
        border-width:1px;
        margin:2px 0;
}
.foswikiTable td {
        padding:.25em .5em;
        border-style:none none solid none;
        border-width:0 0 1px 0;
}
.foswikiTable th {
        border-style:none none none solid;
        border-width:0 0 0 1px;
        padding:.4em .5em;
}
.foswikiTable th.foswikiFirstCol {
        border-left-style:none;
}
.foswikiTable a:link,
.foswikiTable a:visited {
        text-decoration:underline;
}
.foswikiTable a:hover {
        text-decoration:underline;
}


</style>


`shell command - execute`{{execute}} FILLER----- `file open`{{open}} FILLER----- `text - copy`{{copy}} FILLER----- ```
verbatim block - execute
```{{execute}} FILLER----- ```
verbatim block - copy
```{{copy}} FILLER----- `shell command - code - execute`{{execute}} FILLER----- `file - code - open`{{open}} FILLER----- `text - code - copy`{{copy}} FILLER----- '&gt;&gt;&gt;&gt;&gt; HEADERS<br />
 FILLER-----

# Header 1	

FILLER-----

## Header 2	

FILLER-----

### Header 3	

FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; TEXT<br />
 FILLER----- Regular text FILLER----- **Bold text** FILLER----- _Italic text_ FILLER----- **_Bold italic text_** FILLER----- `Fixed font` FILLER----- `<b>Bold fixed font</b>` FILLER----- '&gt;&gt;&gt;&gt;&gt; HORIZONTAL RULE<br />
 FILLER-----
----
 FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; UNORDERED LIST<br />
 FILLER-----
* step 1
* step 2
  * step 2.1
* step 3  FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; ORDERED LIST<br />
 FILLER-----
1. ordered step 1
1. ordered step 2
  1. ordered step 2.1
1. ordered step 3  FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; DEFINITION LIST<br />
 FILLER-----
Sushi
:    Japan
Dim Sum
:    S.F. FILLER-----
 '&gt;&gt;&gt;&gt;&gt;&gt; INDENTED TEXT<br />
 FILLER-----<div class="foswikiIndent"> Indented line Continued </div><div class="foswikiIndent"> New paragraph <div class="foswikiIndent"> 2nd level indent </div></div> FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; TABLES<br />
 FILLER-----

# Regular table	

FILLER-----
<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<th class="foswikiTableCol0 foswikiFirstCol"> col1 </th>
<th class="foswikiTableCol1"> col2 </th>
<th class="foswikiTableCol2 foswikiLastCol"> col3 </th>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> t1.1 </td>
<td class="foswikiTableCol1"> t1.2 </td>
<td class="foswikiTableCol2 foswikiLastCol"> t1.3 </td>
</tr>
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> t2.1 </td>
<td class="foswikiTableCol1 foswikiLast"> t2.2 </td>
<td class="foswikiTableCol2 foswikiLastCol foswikiLast"> t2.3 </td>
</tr>
</table>
 FILLER-----

# headless table	

FILLER-----
<table class="foswikiTable">
<tr class="foswikiTableOdd foswikiTableRowdataBgSorted0 foswikiTableRowdataBg0">
<td class="foswikiTableCol0 foswikiFirstCol"> t1.1 </td>
<td class="foswikiTableCol1"> t1.2 </td>
<td class="foswikiTableCol2 foswikiLastCol"> t1.3 </td>
</tr>
<tr class="foswikiTableEven foswikiTableRowdataBgSorted1 foswikiTableRowdataBg1">
<td class="foswikiTableCol0 foswikiFirstCol foswikiLast"> t2.1 </td>
<td class="foswikiTableCol1 foswikiLast"> t2.2 </td>
<td class="foswikiTableCol2 foswikiLastCol foswikiLast"> t2.3 </td>
</tr>
</table>
 FILLER----- '&gt;&gt;&gt;&gt;&gt;&gt; LINKS<br />
 FILLER----- [WikiWord](/devwiki/bin/edit/TemporaryTutorialPluginTestsTestWebTutorialPluginTests/WikiWord?topicparent=TemporaryTutorialPluginTestsTestWebTutorialPluginTests.TestMarkdown02 "Create this topic") -- unnamed wikiword FILLER----- [Wiki word](/devwiki/bin/edit/TemporaryTutorialPluginTestsTestWebTutorialPluginTests/WikiWord?topicparent=TemporaryTutorialPluginTestsTestWebTutorialPluginTests.TestMarkdown02 "Create this topic") -- named wiki word FILLER----- [Foswiki](..) -- named ref. FILLER----- [https://google.com](..) -- unnamed ref FILLER----- [https://abc.net.au](..) -- bare ref FILLER-----