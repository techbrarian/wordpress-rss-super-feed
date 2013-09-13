<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:content="http://purl.org/rss/1.0/modules/content/"><xsl:template match="/">
<!--Bengtson-Fu!!!-->
<!--created by Jason Bengtson, MLIS, MA under an MIT open-source license-->
<script>
var numbered=0;
</script>
<div id="thegood">
<h3>Announcements</h3>

<xsl:for-each select="rss/channel/item"> <xsl:if test="position() &lt; 4">
<div style="margin-left:5px; width:250px;">
<h5 class="title"> <xsl:value-of select="title"/></h5>

<div class="announceit">
<p class="contentsit"></p><span class="holdingit" style="display:none"><xsl:variable name="cooler" select="content:encoded"/><xsl:variable name="coolong" select="string-length($cooler)-1"/><xsl:variable name="contentit" select="substring($cooler,1,$coolong)"/><xsl:value-of select="$contentit"/></span>
<script>
var hanger=$(".holdingit:eq("+numbered+")").text();var testox=hanger.slice(0,500);var testox=testox.replace(usethis,"");var hangerx=hanger.slice(0,500);var calledit=hangerx.length-testox.length;var testoxe=testox.length;calledit=calledit+130;fixitfunc();var toolit=0;while(toolit!=50){if(hanger.charAt(calledit)!=" "){calledit++;}toolit++;}hanger=hanger.slice(0,calledit);hanger=hanger.replace(replacethis,withthis);$(".contentsit:eq("+numbered+")").html(hanger+' . . .  <a class="more" href="{link}" target="_blank">read more</a>');numbered=numbered+1;</script>

</div>
</div>
</xsl:if> </xsl:for-each>
</div>

<noscript>
<style>
#thegood {display:none;}
</style>

<div id="thebad" style="width: 290px; margin-left: 15px;">
<h3 style="margin-left:-10px;">Announcements</h3>

<xsl:for-each select="rss/channel/item"> <xsl:if test="position() &lt; 4">

<h5 class="title"> <xsl:value-of select="title"/></h5>
<p class="describeit">
<xsl:value-of disable-output-escaping="yes" select="description"/>
