<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">

<!--	Quelldokument: spd_kapitaelchen.xml		-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_ids.xml    -->
	
	
	<xsl:strip-space elements="*"/>	
	<xsl:output indent="yes" method="xml"/>
	


<!--	 identity transform 	-->
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>
	
<!--	incidend mit id versehen-->
	<xsl:template match="TEI/text//incident">
		<!-- ID vergeben -->
		<incident xml:id="{generate-id()}">
			<xsl:apply-templates select="@* | node()"/>
		</incident>
	</xsl:template>

</xsl:stylesheet>
