<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:t="http://www.tei-c.org/ns/1.0"
               version="1.0">

  <xsl:param name="file" select="''"/>
  <xsl:output method="text"/>

  <xsl:variable name="genres">
    <xsl:for-each select="//t:textClass/t:classCode">
      <xsl:for-each select=".//t:term"><xsl:value-of select="."/><xsl:if test="position() &lt; last()">,</xsl:if></xsl:for-each>
    </xsl:for-each>
  </xsl:variable>
  
  <xsl:template match="/">
    <xsl:for-each select="//t:rs[@type='bible']">&lt;tr>&lt;td><xsl:value-of select="$file"/>&lt;/td>&lt;td><xsl:value-of select="@key"/>&lt;/td>&lt;td><xsl:value-of select="local-name(..)"/>&lt;/td>&lt;td><xsl:value-of select="$genres"/>&lt;/td>&lt;/tr>
    </xsl:for-each>
  </xsl:template>
  
</xsl:transform>
