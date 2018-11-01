<?xml version="1.0" encoding="UTF-8"?>
tglb    
<!--
    Document   : category.xsl
    Created on : November 1, 2018, 2:48 PM
    Author     : Administrator
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:cate="www.kimthanh.com/schema/category">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <xsl:for-each select="cate:Category">
            <li>
                <a href="#" class="hover"><xsl:value-of select="cate:Name" /></a>
            </li>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
