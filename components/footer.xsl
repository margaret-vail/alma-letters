<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:urls="http://novanet.ca/memberurls">

  <xsl:variable name="urllookup" select="document('')//urls:lookup/member"/>
  <urls:lookup>
    <member>
      <vid>01NOVA_ACAD</vid>
      <myaccount>https://acadia.novanet.ca/discovery/account?vid=01NOVA_ACAD:ACAD</myaccount>
    </member>
    <member>
      <vid>01NOVA_AST</vid>
      <myaccount>https://ast.novanet.ca/discovery/account?vid=01NOVA_AST:AST</myaccount>
    </member>
    <member>
      <vid>01NOVA_CBU</vid>
      <myaccount>https://cbu.novanet.ca/discovery/account?vid=01NOVA_CBU:CBU</myaccount>
    </member>
    <member>
      <vid>01NOVA_DAL</vid>
      <myaccount>https://dal.novanet.ca/discovery/account?vid=01NOVA_DAL:DAL</myaccount>
    </member>
    <member>
      <vid>01NOVA_DAL:KINGS</vid>
      <code>KINGS</code>
      <myaccount>https://kings.novanet.ca/discovery/account?vid=01NOVA_DAL:KINGS</myaccount>
    </member>
    <member>
      <vid>01NOVA_NSCAD</vid>
      <myaccount>https://nscad.novanet.ca/discovery/account?vid=01NOVA_NSCAD:NSCAD</myaccount>
    </member>
    <member>
      <vid>01NOVA_NSCC</vid>
      <myaccount>https://nscc.novanet.ca/discovery/account?vid=01NOVA_NSCC:NSCC</myaccount>
    </member>
    <member>
      <vid>01NOVA_MTA</vid>
      <myaccount>https://mta.novanet.ca/discovery/account?vid=01NOVA_MTA:MTA</myaccount>
    </member>
    <member>
      <vid>01NOVA_MSVU</vid>
      <myaccount>https://msvu.novanet.ca/discovery/account?vid=01NOVA_MSVU:MSVU</myaccount>
    </member>
    <member>
      <vid>01NOVA_STFX</vid>
      <myaccount>https://stfx.novanet.ca/discovery/account?vid=01NOVA_STFX:STFX</myaccount>
    </member>
    <member>
      <vid>01NOVA_SMU</vid>
      <myaccount>https://smu.novanet.ca/discovery/account?vid=01NOVA_SMU:SMU</myaccount>
    </member>
    <member>
      <vid>01NOVA_USA</vid>
      <myaccount>https://usainteanne.novanet.ca/discovery/account?vid=01NOVA_USA:USA</myaccount>
    </member>
  </urls:lookup>
  
  <xsl:template name="salutation"/>
  <xsl:template name="lastFooter">
    <table>
      <xsl:attribute name="style">
        <xsl:call-template name="footerTableStyleCss"/>
        <!-- style.xsl -->
      </xsl:attribute>
      <tr>
        <xsl:for-each select="notification_data/organization_unit">
          <xsl:attribute name="style">
            <xsl:call-template name="listStyleCss"/>
            <!-- style.xsl -->
          </xsl:attribute>
          <td align="left">
            <xsl:value-of select="name"/>
          </td>
        </xsl:for-each>
      </tr>
    </table>
  </xsl:template>
  <xsl:template name="contactUs"/>
  <xsl:template name="myAccount">
    <table align="left" style="margin-top:1em;">
      <tr>
        <td align="left">
          <a>
            <xsl:attribute name="style">
              <xsl:call-template name="myAccountStyleCss"/>
            </xsl:attribute>
            <xsl:attribute name="href">
              @@email_my_account@@
            </xsl:attribute>
						@@my_account@@
					</a>
        </td>
      </tr>
    </table>
  </xsl:template>
</xsl:stylesheet>
