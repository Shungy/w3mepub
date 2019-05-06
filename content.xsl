<xsl:stylesheet version="1.0" encoding="UTF-8"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:opf="http://www.idpf.org/2007/opf"
xmlns:dc="http://purl.org/dc/elements/1.1/">
	<xsl:output method="text"/>
	<xsl:template match="/opf:package">
		<xsl:for-each select="opf:spine/opf:itemref">
			<xsl:variable name="idsel" select="@idref"/>
			<xsl:value-of select="$rootdir" />
			<xsl:text>/</xsl:text>
			<xsl:value-of select="/opf:package/
			opf:manifest/opf:item[@id=$idsel]/@href"/>
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
