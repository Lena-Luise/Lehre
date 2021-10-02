<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">

	<xsl:output indent="yes"/>

	<xsl:template match="TEI">
		<listWords>
			<xsl:for-each select="text//w">
				<xsl:sort case-order="upper-first"/>
				<xsl:call-template name="word"/>
			</xsl:for-each>
		</listWords>
	</xsl:template>

	<xsl:template name="word">
		<word xml:lang="{ancestor::*[@xml:lang][1]/@xml:lang}">
			<xsl:value-of select="text()"/>
		</word>
	</xsl:template>

</xsl:stylesheet>
