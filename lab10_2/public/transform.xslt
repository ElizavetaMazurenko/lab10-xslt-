<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
<body style="font-size: 1.2em; text-align: center; background-color:#9ae5c9">
<h2 style="color: #09886c"> Palindromes-Table</h2>
<table border="1" style='background-color:#17cb89'>
<tr bgcolor="#7fe3aa">
<th style = "font-weight: bold; color: #071b44;">Palindrome</th>
<th style = "font-weight: bold; color: #071b44;">Square</th>
</tr>
<xsl:for-each select="objects/object">
<tr>
<td><xsl:value-of select="elem"/></td>
<td><xsl:value-of select="square"/></td>
</tr>
</xsl:for-each>
<tr><td colspan="2" id = "kol" style = "font-weight: bold; color: #071b44; background-color: white"> 
<xsl:value-of select="count(objects/object)"/>

 </td></tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>