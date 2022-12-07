<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               version="3.0">

  <xsl:output method="text"/>

  <xsl:param name="ref"><xsl:text>Matt 16,18</xsl:text></xsl:param>
  
  <xsl:variable name="year-list" as="xs:string *">
    <xsl:for-each select="//tr">
      <xsl:value-of select="substring-before(substring-after(td[1],'gv/'),'_')" />
    </xsl:for-each>
  </xsl:variable>

  <xsl:variable name="big-table">
    <xsl:copy-of select="/"/>
  </xsl:variable>
  
  <xsl:template match="/">
    <xsl:text>#####################################
    </xsl:text>
    <xsl:text>#  plotting for reference </xsl:text><xsl:value-of select="$ref"/><xsl:text>
    </xsl:text>
    <xsl:for-each select="distinct-values($year-list)">
      <xsl:sort data-type="number"  select="."/>
      <xsl:variable name="year"  select="."/>
      <xsl:variable name="refs-that-year" as="xs:string *">
        <xsl:for-each select="$big-table//tr[td[1][contains(.,$year)] and td[2][contains(.,$ref)]]">
          <xsl:value-of select="td[2]"/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:variable name="refs-that-year-in-verse" as="xs:string *">
        <xsl:for-each select="$big-table//tr[td[1][contains(.,$year)] and td[2][contains(.,$ref)] and td[3]='l' ]">
          <xsl:value-of select="td[2]"/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:variable name="refs-that-year-in-prose" as="xs:string *">
        <xsl:for-each select="$big-table//tr[td[1][contains(.,$year)] and td[2][contains(.,$ref)] and td[3]='p' ]">
          <xsl:value-of select="td[2]"/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="$year"/><xsl:text> </xsl:text><xsl:value-of select="count($refs-that-year)"/><xsl:text> </xsl:text><xsl:value-of select="count($refs-that-year-in-verse)"/><xsl:text> </xsl:text><xsl:value-of select="count($refs-that-year-in-prose)"/><xsl:text>
      </xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:transform>
