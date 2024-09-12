<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
		<xsl:for-each select="reisid/reis">
			<xsl:sort select="kliendihinnang" order="descending"/>
			<xsl:if test="lennujaam!=0">
			<h1>
					<xsl:value-of select="marsruut/saabumiskoht"/>
				</h1>
			
				<ul>
					<li style="background-color: yellow;">
						Valjumiskoht: <xsl:value-of select="marsruut/valjumiskoht"/>
					</li>
					<li>
						Lennujaam: <xsl:value-of select="lennujaam"/>
					</li>
					<xsl:if test="hind/lennuhind>=500">
						<li style="color: red;">
							Lennu hind: <xsl:value-of select="hind/lennuhind"/>
						</li>
					</xsl:if>
					<xsl:if test="hind/lennuhind &lt; 500">
						<li>
							Lennu hind: <xsl:value-of select="hind/lennuhind"/>
						</li>
					</xsl:if>
					<li>
						Kliendi hinnang: <xsl:value-of select="kliendihinnang"/>
					</li>
					<li>
						Majutuse hind: <xsl:value-of select="hind/majutusehind"/>
					</li>
					<li>
						Auto: <xsl:value-of select="auto"/>
					</li>
					<li>
						Kugusum: <xsl:value-of select="number(hind/lennuhind + hind/majutusehind)"/>
					</li>
				</ul>
			</xsl:if>
		</xsl:for-each>

		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Lennujaam</th>
				<th>Lennu hind</th>
				<th>Kliendi hinnang</th>
				<th>Majutuse hind</th>
				<th>Auto</th>
			</tr>
			<xsl:for-each select="reisid/reis">
				<tr>
					<td>
						<xsl:value-of select="marsruut/valjumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="marsruut/saabumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="lennujaam"/>
					</td>
					<td>
						<xsl:value-of select="hind/lennuhind"/>
					</td>
					<td>
						<xsl:value-of select="kliendihinnang"/>
					</td>
					<td>
						<xsl:value-of select="hind/majutusehind"/>
					</td>
					<td>
						<xsl:value-of select="auto"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		
    </xsl:template>
</xsl:stylesheet>
