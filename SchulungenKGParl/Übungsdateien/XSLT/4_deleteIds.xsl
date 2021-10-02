<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">

<!--	Quelldokument: spd_ids.xml				-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_deleteIds.xml	-->
	
	
	<xsl:strip-space elements="*"/>	
	<xsl:output indent="yes" method="xml"/>
	
	<xsl:import href="identity.xsl"/>
	
<!--	 identity transform	 -->
<!--	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>-->
	
	
<!-- 	ID löschen	-->
	<xsl:template match="TEI/text//incident[@xml:id]">
		<xsl:element name="incident">
			<xsl:apply-templates/>
<!--			<xsl:apply-templates select="@* | node()"/>-->
		</xsl:element>
	</xsl:template>


</xsl:stylesheet>
