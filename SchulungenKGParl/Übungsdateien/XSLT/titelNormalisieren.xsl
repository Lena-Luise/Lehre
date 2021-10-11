<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">

<!--	Quelldokument: spd_ids.xml				-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_deleteIds.xml	-->
	
	
	<xsl:strip-space elements="*"/>	
	<xsl:output indent="yes" method="xml"/>
	
	<xsl:template match="/">
		<xsl:result-document indent="yes" method="xml" byte-order-mark="yes" href="{base-uri(.)}_titleNormalized.xml">
			<xsl:apply-templates/> 
		</xsl:result-document> 
	</xsl:template>
	
	
	
<!--	 identity transform	 -->
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>
	
	
<!-- 	ID löschen	-->
	<xsl:template match="//titleStmt/title[@level='a']">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>

			<xsl:analyze-string select="." regex="\d{{1,2}}\.(\d{{1,2}}\.|(\s(\w)*\s))\d{{4,4}}:(\s)*">
				<xsl:matching-substring/>
					

				<xsl:non-matching-substring>
					<xsl:value-of select="."/>
				</xsl:non-matching-substring>
			</xsl:analyze-string>
				
		</xsl:copy>
	</xsl:template>


</xsl:stylesheet>















