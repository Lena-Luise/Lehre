<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">
	
<!--	Quelldokument: spd-07_1972-11-29-t1510_WN.xml	-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_tabs.xml-->


	<xsl:strip-space elements="*"/>	
	<xsl:output indent="yes" method="xml"/>

<!--	 identity transform 	-->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
    
	
	<xsl:template match="text()">
		<xsl:value-of select="normalize-space(.)"/>	
	</xsl:template>
	
	
    

    
</xsl:stylesheet>