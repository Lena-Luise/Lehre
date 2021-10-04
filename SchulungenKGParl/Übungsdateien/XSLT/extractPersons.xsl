<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">


    <xsl:template match="/">
        <xsl:result-document indent="yes" method="xml" byte-order-mark="yes" href="persons.xml">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:copy-of select="//teiHeader"/>
                <text>
                    <body>
                        <listPerson>
                            <xsl:for-each
                                select="collection('./Protokolle/Fraktionen/spd/07/.?select=*.xml')">
                            	
<!--                            	<xsl:copy-of select="/TEI/text/body//name[@type='Person']"/>-->
                            	<xsl:for-each select="/TEI/text/body//name[@type='Person']">
                            		<xsl:element name="person">
                            			<xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
                            			<xsl:attribute name="role"><xsl:value-of select="@role"/></xsl:attribute>
                            			<xsl:attribute name="ref"><xsl:value-of select="@ref"/></xsl:attribute>
                            			<!--<xsl:if test="@ref='#'">
                            				<xsl:message terminate="yes">Ref fehlt für <xsl:value-of select="."/>!</xsl:message>
                            			</xsl:if>-->
                               	 		<xsl:value-of select="."/>
                            		</xsl:element>
                            	</xsl:for-each>
                            </xsl:for-each>
                        </listPerson>
                    </body>
                </text>
            </TEI>
        </xsl:result-document>
    </xsl:template>

    
</xsl:stylesheet>
