<style>
.foswikiTable,
.foswikiTable td {
	border-color:#ccc;
}
.foswikiTable th {
	background-color:#9be;
	border-color:#ccc;
}
.foswikiTable th a:link,
.foswikiTable th a:visited,
.foswikiTable th a font {
	color:#fff;
}
</style>

'&gt;&gt;&gt;&gt;&gt; HEADERS<br />

# Header 1	

## Header 2	

### Header 3	

'&gt;&gt;&gt;&gt;&gt;&gt; TEXT<br />

Regular text

**Bold text**

_Italic text_

**_Bold italic text_**

`Fixed font`

`<b>Bold fixed font</b>`

'&gt;&gt;&gt;&gt;&gt; HORIZONTAL RULE<br />

----

'&gt;&gt;&gt;&gt;&gt;&gt; UNORDERED LIST<br />

* step 1
* step 2
  * step 2.1
* step 3

'&gt;&gt;&gt;&gt;&gt;&gt; ORDERED LIST<br />

1. ordered step 1
1. ordered step 2
  1. ordered step 2.1
1. ordered step 3

'&gt;&gt;&gt;&gt;&gt;&gt; DEFINITION LIST<br />

 Sushi  Japan  Dim Sum  S.F.

'&gt;&gt;&gt;&gt;&gt;&gt; INDENTED TEXT<br />

 Indented line Continued

 New paragraph

 2nd level indent

'&gt;&gt;&gt;&gt;&gt;&gt; TABLES<br />

# Regular table	

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

# headless table	

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

'&gt;&gt;&gt;&gt;&gt;&gt; LINKS<br />

[Foswiki](..) -- named ref.

[https://google.com](..) -- unnamed ref

[https://abc.net.au](..) -- bare ref