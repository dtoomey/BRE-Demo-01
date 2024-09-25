<xsl:stylesheet xmlns:ns0="http://BizTalk_Server_Project1.SchemaUser" xmlns:b="http://schemas.microsoft.com/BizTalk/2003" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dm="http://azure.workflow.datamapper" xmlns:ef="http://azure.workflow.datamapper.extensions" xmlns="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="xsl xs math dm ef ns0 b" version="3.0" expand-text="yes">
  <xsl:output indent="yes" media-type="text/json" method="text" omit-xml-declaration="yes" />
  <xsl:template match="/">
    <xsl:variable name="xmloutput">
      <xsl:apply-templates select="." mode="azure.workflow.datamapper" />
    </xsl:variable>
    <xsl:value-of select="xml-to-json($xmloutput,map{'indent':true()})" />
  </xsl:template>
  <xsl:template match="/" mode="azure.workflow.datamapper">
    <map>
      <map key="UserDetails">
        <number key="Age">{/ns0:Root/UserDetails/Age}</number>
        <string key="Name">{/ns0:Root/UserDetails/Name}</string>
        <string key="ZipCode">{/ns0:Root/UserDetails/zipCode}</string>
      </map>
      <map key="Status">
        <boolean key="Gold">{/ns0:Root/Status/Gold}</boolean>
        <number key="Discount">{/ns0:Root/Status/Discount}</number>
      </map>
    </map>
  </xsl:template>
</xsl:stylesheet>