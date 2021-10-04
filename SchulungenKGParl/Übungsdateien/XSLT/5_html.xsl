<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0">
	
<!--	xmlns="https://www.w3.org/1999/xhtml/"	-->
	
<!--	Quelldokument: spd_deleteIds.xml				-->
<!--	Ziel-Dokument: spd_<KÜRZEL>_html.html	[ACHTUNG: andere Dateiendung: ]	-->	
	
	<xsl:strip-space elements="*"/>
	<xsl:output method="html" encoding="UTF-8" indent="no"/>
		
	
	
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
				<style>
					html,
					body{
					font-family: 'MS Mincho', 'Helvetica', sans-serif;
					width: 1020px; /*1100px;*/
					margin-left: 20px;
					}
					div{
					float: left;
					display: inline;
					}
					h2{
					font-size: 18px;
					font-weight: bold;
					}
					h3{
					font-size: 15px;
					display: block;
					width: 840px;
					text-align: justify;
					}
					li{
					list-style-type: none;
					font-size: 13px;
					}
					b{font-weight: bold;}
					</style>
			</head>
			<body>
				<h2><xsl:value-of select="//titleStmt/title[@level='a']"/></h2>
				<h2><xsl:value-of select="//titleStmt/title[@level='s']"/></h2>
				<h2>Lesefassung</h2>
				<h3>[Stand: <xsl:value-of select="current-dateTime()"/>]</h3>
				<br/>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	<!-- teiHeader -->
	<xsl:template match="teiHeader"/>
	
	
	
	<!-- SVP -->
	<xsl:template match="//front/div[@type='SVPListe']">
		<h3><xsl:value-of select="head"/></h3>
		<xsl:for-each select="list">
			<p>
			<div class="SVPListe">
				<ul>
					<xsl:for-each select="item">
						<li><xsl:value-of select="."/></li>
					</xsl:for-each>
				</ul>
			</div>
			
			</p>
		</xsl:for-each>
	</xsl:template>
	
	

	<xsl:template match="//body//p">
		<p>
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	
	
	<xsl:template match="//name[@type='Person'][ancestor::body]">
		<b>
			<xsl:value-of select="."/>
		</b>
	</xsl:template>
	
	
	<xsl:template match="//text()">
		<xsl:value-of select="."/>
	</xsl:template>



</xsl:stylesheet>
