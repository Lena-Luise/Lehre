<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">


	<!--<listPerson type="MdB">
				<person xml:id="AbeleinManfred_1965-10-19">
					<persName n="1">
						<reg>Manfred Abelein</reg>
						<forename>Manfred</forename>
						<surname>Abelein</surname>
						<addName type="praefix"/>
						<roleName/>
						<addName type="Ort"/>
					</persName>
					<sex value="m"/>
					<birth>
						<date when="1930-10-20"/>
						<placeName>Stuttgart</placeName>
						<country/>
					</birth>
					<death>
						<date when="2008-01-17"/>
						<placeName/>
						<country/>
					</death>
					<affiliation type="Erwerbsarbeit">Rechtsanwalt, Wirtschaftsprüfer, Universitätsprofessor</affiliation>
					<affiliation role="Legislative_MDB" type="Wahlperioden">
						<affiliation type="Wahlperiode" period="#wp05">
							<affiliation type="Fraktionszugehoerigkeiten" from="1965-10-19" to="1969-10-19">
								<affiliation type="Fraktionszugehoerigkeit" from="1965-10-19">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp06">
							<affiliation type="Fraktionszugehoerigkeiten" from="1969-10-20" to="1972-09-22">
								<affiliation type="Fraktionszugehoerigkeit" from="1969-10-20">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp07">
							<affiliation type="Fraktionszugehoerigkeiten" from="1972-12-13" to="1976-12-13">
								<affiliation type="Fraktionszugehoerigkeit" from="1972-12-13">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp08">
							<affiliation type="Fraktionszugehoerigkeiten" from="1976-12-14" to="1980-11-04">
								<affiliation type="Fraktionszugehoerigkeit" from="1976-12-14">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp09">
							<affiliation type="Fraktionszugehoerigkeiten" from="1980-11-04" to="1983-03-29">
								<affiliation type="Fraktionszugehoerigkeit" from="1980-11-04">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp10">
							<affiliation type="Fraktionszugehoerigkeiten" from="1983-03-29" to="1987-02-18">
								<affiliation type="Fraktionszugehoerigkeit" from="1983-03-29">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
						<affiliation type="Wahlperiode" period="#wp11">
							<affiliation type="Fraktionszugehoerigkeiten" from="1987-02-18" to="1990-12-20">
								<affiliation type="Fraktionszugehoerigkeit" from="1987-02-18">Fraktion der Christlich Demokratischen Union/Christlich - Sozialen Union</affiliation>
							</affiliation>
						</affiliation>
					</affiliation>
					<affiliation type="Exekutive"/>
					<affiliation type="Sonstiges"/>
					<idno type="MDB_Stammdaten">11000001</idno>
					<idno type="GND"/>
					<idno type="Wikipedia"/>
					<idno type="NDB"/>
				</person>-->



    <xsl:template match="/">
        <xsl:result-document indent="yes" method="xml" byte-order-mark="yes" href="allBibl.xml">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:copy-of select="//teiHeader"/>
                <text>
                    <body>
                        <listPerson>
                            <xsl:for-each
                                select="collection('../dhd-boas-data-master/dhd_2019/TEI/.?select=*.xml')">
                                <xsl:copy-of
                                    select="/TEI/text/back/div[@type = 'bibliogr']/listBibl/bibl"/>
                            </xsl:for-each>
                        </listPerson>
                    </body>
                </text>
            </TEI>
        </xsl:result-document>
    </xsl:template>


	<xsl:template match="name[@type='Person']">
		<xsl:for-each select="@ref">
			<b>Name: </b><xsl:value-of select="." /><br />
			<b>Rolle: </b><xsl:value-of select="@role" /><br />
			<b>ref: </b>
			<xsl:if test="@ref='#'">
				<xsl:message terminate="yes">Ref fehlt für <xsl:value-of select="name"/>!</xsl:message>
			</xsl:if>
			<xsl:value-of select="email" /><br />
			<hr />
		</xsl:for-each>
	</xsl:template>


   <!-- <xsl:for-each
        select="collection('../dhd-boas-data-master/dhd_2019/TEI/.?select=*.xml')">
        <xsl:for-each select="/TEI/text/back/div[@type = 'bibliogr']/listBibl/bibl">
            <xsl:sort select="hi[@rend='bold'][1]"/>
            <xsl:copy-of select="."/>
        </xsl:for-each>
        <!-\-<xsl:copy-of select="/TEI/text/back/div[@type = 'bibliogr']/listBibl/bibl"/>-\->
    </xsl:for-each>-->
    
</xsl:stylesheet>
