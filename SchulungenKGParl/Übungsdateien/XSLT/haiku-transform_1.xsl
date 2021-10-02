<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">

	<xsl:output indent="yes"/>

	<xsl:template match="TEI">
		<listWords>
			<xsl:apply-templates/>
		</listWords>
	</xsl:template>

	<xsl:template match="w">
		<word>
			<xsl:value-of select="."/>
		</word>
	</xsl:template>

	<xsl:template match="text()"/>

</xsl:stylesheet>
