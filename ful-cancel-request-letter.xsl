<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:include href="header.xsl"/>
  <xsl:include href="senderReceiver.xsl"/>
  <xsl:include href="mailReason.xsl"/>
  <xsl:include href="footer.xsl"/>
  <xsl:include href="style.xsl"/>
  <xsl:include href="recordTitle.xsl"/>
  <xsl:template match="/">
    <html>
      <xsl:if test="notification_data/languages/string">
        <xsl:attribute name="lang">
          <xsl:value-of select="notification_data/languages/string"/>
        </xsl:attribute>
      </xsl:if>
      <head>
        <title>
          <xsl:value-of select="notification_data/general_data/subject"/>
        </title>
        <xsl:call-template name="generalStyle"/>
      </head>
      <body>
        <xsl:attribute name="style">
          <xsl:call-template name="bodyStyleCss"/>
          <!-- style.xsl -->
        </xsl:attribute>
        <xsl:call-template name="head"/>
        <!-- header.xsl -->
        <xsl:call-template name="senderReceiver"/>
        <!-- SenderReceiver.xsl -->
        <xsl:call-template name="toWhomIsConcerned"/>
        <!-- mailReason.xsl -->
        <div class="messageArea">
          <div class="messageBody">
            <table role="presentation" cellspacing="0" cellpadding="5" border="0">
              <tr>
                <td>
									@@we_cancel_y_req_of@@
                  <xsl:call-template name="recordTitle"/> <!-- recordTitle.xsl -->
									@@on@@
									<xsl:value-of select="notification_data/general_data/current_date"/>.
								</td>
              </tr>
<!--
              <tr>
                <td>
                  <xsl:call-template name="recordTitle"/>
                </td>
              </tr>
-->
              <!-- <xsl:if test="notification_data/metadata/title != ''">
								<tr>
									<td>
										<strong>@@title@@: </strong>
										<xsl:value-of select="notification_data/metadata/title" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/journal_title != ''">
								<tr>
									<td>
										<strong> @@journal_title@@: </strong>
										<xsl:value-of select="notification_data/metadata/journal_title" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/author != ''">
								<tr>
									<td>
										<strong> @@author@@: </strong>
										<xsl:value-of select="notification_data/metadata/author" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/author_initials != ''">
								<tr>
									<td>
										<strong>@@author_initials@@: </strong>
										<xsl:value-of select="notification_data/metadata/author_initials" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/edition != ''">
								<tr>
									<td>
										<strong> @@edition@@: </strong>
										<xsl:value-of select="notification_data/metadata/edition" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/identifier != ''">
								<tr>
									<td>
										<strong>@@identifier@@: </strong>
										<xsl:value-of select="notification_data/metadata/identifier" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/lccn != ''">
								<tr>
									<td>
										<strong> @@lccn@@: </strong>
										<xsl:value-of select="notification_data/metadata/lccn" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/issn != ''">
								<tr>
									<td>
										<strong>@@issn@@: </strong>
										<xsl:value-of select="notification_data/metadata/issn" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/isbn != ''">
								<tr>
									<td>
										<strong> @@isbn@@: </strong>
										<xsl:value-of select="notification_data/metadata/isbn" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/oclc_nr != ''">
								<tr>
									<td>
										<strong> @@oclc_nr@@: </strong>
										<xsl:value-of select="notification_data/metadata/oclc_nr" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/doi != ''">
								<tr>
									<td>
										<strong>@@doi@@: </strong>
										<xsl:value-of select="notification_data/metadata/doi" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/pmid != ''">
								<tr>
									<td>
										<strong> @@pmid@@: </strong>
										<xsl:value-of select="notification_data/metadata/pmid" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/publisher != ''">
								<tr>
									<td>
										<strong> @@publisher@@: </strong>
										<xsl:value-of select="notification_data/metadata/publisher" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/publication_date != ''">
								<tr>
									<td>
										<strong>@@publication_date@@: </strong>
										<xsl:value-of select="notification_data/metadata/publication_date" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/place_of_publication != ''">
								<tr>
									<td>
										<strong> @@place_of_publication@@: </strong>
										<xsl:value-of select="notification_data/metadata/place_of_publication" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/additional_person_name != ''">
								<tr>
									<td>
										<strong> @@additional_person_name@@: </strong>
										<xsl:value-of select="notification_data/metadata/additional_person_name" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/source != ''">
								<tr>
									<td>
										<strong>@@source@@: </strong>
										<xsl:value-of select="notification_data/metadata/source" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/series_title_number != ''">
								<tr>
									<td>
										<strong> @@series_title_number@@: </strong>
										<xsl:value-of select="notification_data/metadata/series_title_number" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/call_number != ''">
								<tr>
									<td>
										<strong> @@call_number@@: </strong>
										<xsl:value-of select="notification_data/metadata/call_number" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/volume != ''">
								<tr>
									<td>
										<strong>@@volume@@: </strong>
										<xsl:value-of select="notification_data/metadata/volume" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/part != ''">
								<tr>
									<td>
										<strong> @@part@@: </strong>
										<xsl:value-of select="notification_data/metadata/part" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/chapter != ''">
								<tr>
									<td>
										<strong> @@chapter@@: </strong>
										<xsl:value-of select="notification_data/metadata/chapter" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/pages != ''">
								<tr>
									<td>
										<strong>@@pages@@: </strong>
										<xsl:value-of select="notification_data/metadata/pages" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/start_page != ''">
								<tr>
									<td>
										<strong> @@start_page@@: </strong>
										<xsl:value-of select="notification_data/metadata/start_page" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/end_pagee != ''">
								<tr>
									<td>
										<strong> @@end_page@@: </strong>
										<xsl:value-of select="notification_data/metadata/end_page" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/issue != ''">
								<tr>
									<td>
										<strong>@@issue@@: </strong>
										<xsl:value-of select="notification_data/metadata/issue" />
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="notification_data/metadata/note != ''">
								<tr>
									<td>
										<strong> @@note@@: </strong>
										<xsl:value-of select="notification_data/metadata/note" />
									</td>
								</tr>
							</xsl:if> -->
              <xsl:if test="notification_data/request/start_time != ''">
                <tr>
                  <td>
                    <strong> @@start_time@@: </strong>
                    <xsl:value-of select="notification_data/booking_start_time_str"/>
                  </td>
                </tr>
              </xsl:if>
              <xsl:if test="notification_data/request/end_time != ''">
                <tr>
                  <td>
                    <strong> @@end_time@@: </strong>
                    <xsl:value-of select="notification_data/booking_end_time_str"/>
                  </td>
                </tr>
              </xsl:if>
              <xsl:if test="notification_data/request/note != ''">
                <tr>
                  <td>
                    <strong> @@request_note@@: </strong>
                    <xsl:value-of select="notification_data/request/note"/>
                  </td>
                </tr>
              </xsl:if>
              <tr>
                <td>
                  <strong> @@reason_deleting_request@@: </strong>
                  <xsl:value-of select="notification_data/request/status_note_display"/>
                </td>
              </tr>
              <xsl:if test="notification_data/request/cancel_reason != ''">
                <tr>
                  <td>
                    <strong> @@request_cancellation_note@@: </strong>
                    <xsl:value-of select="notification_data/request/cancel_reason"/>
                  </td>
                </tr>
              </xsl:if>
            </table>
            <br/>
            <table role="presentation" style="color:red;font-weight:bold">
              <tr>
                <td>TEST URL</td>
              </tr>
              <tr>
                <td>
                  <a>
                    <xsl:attribute name="href">
                      <xsl:value-of select="concat(                      'https://caul-cbua.relais-host.com/user/login.html?group=patron',                      '&amp;LS=', substring(notification_data/organization_unit/isil_code, 3),                      '&amp;title={notification_data/metadata/title}',                      '&amp;jtitle={notification_data/metadata/journal_title}',                      '&amp;au={notification_data/metadata/author}',                      '&amp;edition={notification_data/metadata/edition}',                      '&amp;issn={notification_data/metadata/issn}',                      '&amp;isbn={notification_data/metadata/isbn}',                      '&amp;oclcnum={notification_data/metadata/oclc_nr}',                      '&amp;pub={notification_data/metadata/publisher}',                      '&amp;date={notification_data/metadata/publication_date}',                      '&amp;place={notification_data/metadata/place_of_publication}',                      '&amp;spage={notification_data/metadata/start_page}',                      '&amp;epage={notification_data/metadata/end_page}',                      '&amp;pages={notification_data/metadata/pages}',                      '&amp;vol={notification_data/metadata/volume}',                      '&amp;iss={notification_data/metadata/issue}',                      '&amp;part={notification_data/metadata/part}',                      '&amp;chapter={notification_data/metadata/chapter}'                      )"/>
                    </xsl:attribute>
                    <xsl:text>This link should send the request to Relais (but bad URI characters in metadata will break it) </xsl:text>
                  </a>
                </td>
              </tr>
            </table>
            <table role="presentation">
              <tr>
                <td>@@sincerely@@</td>
              </tr>
              <tr>
                <td>@@department@@</td>
              </tr>
            </table>
          </div>
        </div>
        <xsl:call-template name="lastFooter"/>
        <!-- footer.xsl -->
        <xsl:call-template name="contactUs"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
