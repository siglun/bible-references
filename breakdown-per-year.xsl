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
    <xsl:variable name="the-lot" select="."/>
    
    <xsl:variable name="distinct-years" as="xs:string *">
      <xsl:for-each select="distinct-values(//tr/th)">
        <xsl:sort select="."/>
        <xsl:value-of select="."/>
      </xsl:for-each>
    </xsl:variable>
    
    <xsl:for-each select="$distinct-years">
      <xsl:variable name="val" select="."/>
      <xsl:value-of select="."/><xsl:text>	</xsl:text><xsl:value-of select="sum($the-lot//tr[contains(th,$val)]/td[@class='verse'])"/><xsl:text>	</xsl:text><xsl:value-of select="sum($the-lot//tr[contains(th,$val)]/td[@class='prose'])"/><xsl:text>
      </xsl:text>
    </xsl:for-each>

      
  </xsl:template>


  
</xsl:transform>
