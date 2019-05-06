<xsl:stylesheet version="1.0" encoding="UTF-8"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:c="urn:oasis:names:tc:opendocument:xmlns:container">
	<xsl:output omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<xsl:value-of select="/c:container/c:rootfiles/
		c:rootfile[@media-type='application/oebps-package+xml']/
		@full-path[1]"/>
	</xsl:template>
</xsl:stylesheet>
