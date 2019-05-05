<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:exslt="http://exslt.org/common"
xmlns="http://www.w3.org/1999/xhtml"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:ops="http://www.idpf.org/2007/ops"
xmlns:_="http://www.w3.org/1999/xhtml"
xmlns:DEFAULT="http://www.w3.org/1999/xhtml"
extension-element-prefixes="exslt">
  <xsl:output omit-xml-declaration="yes" indent="no"/>
  <xsl:template match="/">
    <xsl:copy-of select="/_:html/_:body"/>
  </xsl:template>
</xsl:stylesheet>
