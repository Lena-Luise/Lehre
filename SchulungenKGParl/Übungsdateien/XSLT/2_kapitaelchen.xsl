<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">
	
<!--	Quelldokument: spd_tabs.xml	-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_kapitaelchen.xml-->



	<xsl:strip-space elements="*"/>	
	<xsl:output indent="yes" method="xml"/>

<!--	 identity transform 	-->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
    
    
<!--	hi Element entfernen	-->
	
	<xsl:template match="//hi[@rendition='#smcap']">
<!--		<xsl:value-of select="if (count(//hi[@rendition='#smcap']) gt 3) then 'lang' else 'kurz'"/>	-->
		<xsl:copy-of select="."/>	
	</xsl:template>
	
	
    

    
</xsl:stylesheet>