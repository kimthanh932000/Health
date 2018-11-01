<?xml version="1.0" encoding="UTF-8"?> 
<!--
    Document   : category.xsl
    Created on : November 1, 2018, 2:48 PM
    Author     : Administrator
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:ns1="www.kimthanh.com/schema/category" 
                xmlns:ns2="www.kimthanh.com/schema/categories">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="ns2:Categories">
        <xsl:for-each select="ns1:Category">
            <li>
                <a href="ProcessServlet?btnAction=Home&#38;categoryId={@ID}" class="hover">
                    <xsl:value-of select="ns1:Name" />
                </a>
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
