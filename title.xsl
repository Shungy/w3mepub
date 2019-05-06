<xsl:stylesheet version="1.0" encoding="UTF-8"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:opf="http://www.idpf.org/2007/opf"
xmlns:dc="http://purl.org/dc/elements/1.1/">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:value-of select="/opf:package//dc:creator[1]"/>
		<xsl:text> -- </xsl:text>
		<xsl:value-of select="/opf:package//dc:title[1]"/>
	</xsl:template>
</xsl:stylesheet>
