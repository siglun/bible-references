<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="3.0">

  <xsl:output method="xml"/>
  
  <xsl:variable name="year-list" as="xs:string *">
    <xsl:for-each select="//tr">
      <xsl:value-of select="substring-before(substring-after(td[1],'gv/'),'_')" />
    </xsl:for-each>
  </xsl:variable>

  <xsl:variable name="all_refs" as="xs:string *">
    <xsl:for-each select="//tr">
      <xsl:value-of select="td[2]"/>
    </xsl:for-each>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:variable name="dom" select="."/>
    <xsl:for-each select="distinct-values($year-list)">
      <xsl:sort data-type="number"  select="."/>
      <xsl:variable name="year" select="."/>
      <xsl:value-of select="."/><xsl:text> </xsl:text>
      <xsl:for-each select="$dom//tr[contains(td[1],$year)]">
        <xsl:variable name="rows" select="." as="node() *"/>
        <xsl:for-each select="distinct-values($all_refs)">
          <xsl:variable name="rows_for_selected_ref" as="xs:string *">
            <xsl:value-of select="$rows/tr[contains(td[2],.)]/td[2]/text()"/>
          </xsl:variable>
          <xsl:value-of select="$rows_for_selected_ref"/>        <xsl:text> </xsl:text>
        </xsl:for-each>
        <xsl:text>
        </xsl:text>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
  
</xsl:transform>
