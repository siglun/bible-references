<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               version="3.0">

  <xsl:variable name="year-list" as="string() *">
    <xsl:for-each select="//tr">
      <xsl:value-of select="substring-before(substring-after(td[1],'gv/'),'_')" />
    </xsl:for-each>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:for-each select="$year-list">
      <xsl:value-of select="."/>
    </xsl:for-each>
  </xsl:template>

</xsl:transform>
