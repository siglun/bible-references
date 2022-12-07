<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               version="3.0">

  <xsl:output method="text"/>
  
  <xsl:variable name="year-list" as="xs:string *">
    <xsl:for-each select="//tr">
      <xsl:value-of select="substring-before(substring-after(td[1],'gv/'),'_')" />
    </xsl:for-each>
  </xsl:variable>

  <xsl:variable name="big-table">
    <xsl:copy-of select="/"/>
  </xsl:variable>
  
  <xsl:template match="/">
    <xsl:for-each select="distinct-values($year-list)">
      <xsl:sort data-type="number"  select="."/>
      <xsl:variable name="year"  select="."/>
      <xsl:variable name="refs-that-year" as="xs:string *">
        <xsl:for-each select="$big-table//tr[td[1][contains(.,$year)]]">
          <xsl:value-of select="td[2]"/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="$year"/><xsl:text> </xsl:text><xsl:value-of select="count($refs-that-year)"/><xsl:text>
      </xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:transform>
