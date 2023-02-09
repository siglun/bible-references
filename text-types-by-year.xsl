<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:t="http://www.tei-c.org/ns/1.0"
               xmlns:fn="http://www.w3.org/2005/xpath-functions"
               version="3.0">

  <xsl:param name="year" select="''"/>
  <xsl:param name="file" select="''"/>
  <xsl:output method="text"/>

  <xsl:template match="/">
      <xsl:apply-templates select="//t:text"/>
  </xsl:template>

  <xsl:template match="//t:text">
    &lt;tr>
    &lt;th><xsl:value-of select="$year"/>&lt;/th>
    &lt;td><xsl:value-of select="$file"/>&lt;/td>
      &lt;td class="verse">
        <xsl:variable name="verse" as="xs:string *">
          <xsl:for-each select="//t:lg/t:l//text()">
            <xsl:value-of select="fn:tokenize(.,'\s+')"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="count($verse)"/>
      &lt;/td>
      &lt;td class="prose">
        <xsl:variable name="prose" as="xs:string *">
          <xsl:for-each select="//t:div/t:p//text()">
            <xsl:value-of select="fn:tokenize(.,'\s+')"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="count($prose)"/>
      &lt;/td>
    &lt;/tr>
  </xsl:template>

  
</xsl:transform>
