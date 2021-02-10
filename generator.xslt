<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" version="5"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>الشاطبية</h2>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="/">
        <html>
            <body dir="rtl">
                <xsl:for-each select="/ashatebiya/bab">
                    <p > <b><xsl:value-of select="@name"/></b></p>
                    <xsl:for-each select="bayt">
                        <p>
                            <xsl:value-of select="@nr"/>-
                            <xsl:for-each select="nissf">
                                <xsl:for-each select="text()|node()">
                                    <xsl:choose>
                                        <xsl:when test=". = node() and name()='author'">
                                            <span style="color:#ff0000">
                                                <xsl:value-of select="text()"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test=". = node() and name()='rule'">
                                            <span style="color:#00ff00">
                                                <xsl:value-of select="text()"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="."/>
                                        </xsl:otherwise>
                                    </xsl:choose>

                                </xsl:for-each>
                                &#160;
                            </xsl:for-each>
                        </p>

                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>