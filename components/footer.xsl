<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:urls="http://novanet.ca/memberurls">

  <xsl:variable name="urllookup" select="document('')//urls:lookup/member"/>
  <urls:lookup>
    <member>
      <inst>01NOVA_ACAD</inst>
      <myaccount>https://acadia.novanet.ca/discovery/account?vid=01NOVA_ACAD:ACAD</myaccount>
    </member>
    <member>
      <inst>01NOVA_AST</inst>
      <myaccount>https://ast.novanet.ca/discovery/account?vid=01NOVA_AST:AST</myaccount>
    </member>
    <member>
      <inst>01NOVA_CBU</inst>
      <myaccount>https://cbu.novanet.ca/discovery/account?vid=01NOVA_CBU:CBU</myaccount>
    </member>
    <member>
      <inst>01NOVA_DAL</inst>
      <myaccount>https://dal.novanet.ca/discovery/account?vid=01NOVA_DAL:DAL</myaccount>
    </member>
    <member>
      <inst>01NOVA_DAL:KINGS</inst>
      <campus>KINGS</campus>
      <myaccount>https://kings.novanet.ca/discovery/account?vid=01NOVA_DAL:KINGS</myaccount>
    </member>
    <member>
      <inst>01NOVA_NSCAD</inst>
      <myaccount>https://nscad.novanet.ca/discovery/account?vid=01NOVA_NSCAD:NSCAD</myaccount>
    </member>
    <member>
      <inst>01NOVA_NSCC</inst>
      <myaccount>https://nscc.novanet.ca/discovery/account?vid=01NOVA_NSCC:NSCC</myaccount>
    </member>
    <member>
      <inst>01NOVA_MTA</inst>
      <myaccount>https://mta.novanet.ca/discovery/account?vid=01NOVA_MTA:MTA</myaccount>
    </member>
    <member>
      <inst>01NOVA_MSVU</inst>
      <myaccount>https://msvu.novanet.ca/discovery/account?vid=01NOVA_MSVU:MSVU</myaccount>
    </member>
    <member>
      <inst>01NOVA_STFX</inst>
      <myaccount>https://stfx.novanet.ca/discovery/account?vid=01NOVA_STFX:STFX</myaccount>
    </member>
    <member>
      <inst>01NOVA_SMU</inst>
      <myaccount>https://smu.novanet.ca/discovery/account?vid=01NOVA_SMU:SMU</myaccount>
    </member>
    <member>
      <inst>01NOVA_USA</inst>
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
              <xsl:choose>
                <xsl:when test="/notification_data/receivers/receiver/user/campus_code = 'KINGS'">https://kings.novanet.ca/discovery/account?vid=01NOVA_DAL:KINGS</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_ACAD'">https://acadia.novanet.ca/discovery/account?vid=01NOVA_ACAD:ACAD</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_AST'">https://ast.novanet.ca/discovery/account?vid=01NOVA_AST:AST</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_CBU'">https://cbu.novanet.ca/discovery/account?vid=01NOVA_CBU:CBU</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_DAL'">https://dal.novanet.ca/discovery/account?vid=01NOVA_DAL:DAL</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_NSCAD'">https://nscad.novanet.ca/discovery/account?vid=01NOVA_NSCAD:NSCAD</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_NSCC'">https://nscc.novanet.ca/discovery/account?vid=01NOVA_NSCC:NSCC</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_MTA'">https://mta.novanet.ca/discovery/account?vid=01NOVA_MTA:MTA</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_MSVU'">https://msvu.novanet.ca/discovery/account?vid=01NOVA_MSVU:MSVU</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_STFX'">https://stfx.novanet.ca/discovery/account?vid=01NOVA_STFX:STFX</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_SMU'">https://smu.novanet.ca/discovery/account?vid=01NOVA_SMU:SMU</xsl:when>
                <xsl:when test="/notification_data/receivers/receiver/user/external_id = '01NOVA_USA'">https://usainteanne.novanet.ca/discovery/account?vid=01NOVA_USA:USA</xsl:when>
                <xsl:otherwise>@@email_my_account@@</xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            @@my_account@@
          </a>
        </td>
      </tr>
    </table>
  </xsl:template>
</xsl:stylesheet>
