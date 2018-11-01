<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : product.xsl
    Created on : November 1, 2018, 2:49 PM
    Author     : Administrator
    Description:
        Purpose of transformation follows.
-->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:ns1="www.kimthanh.com/schema/product" 
                xmlns:ns2="www.kimthanh.com/schema/list-product">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="ns2:ListProduct">
        <xsl:for-each select="ns1:Product">
           <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="{ns1:ImageURL}" /></div>
                    <h2 class="product_name"><xsl:value-of select="ns1:Name" /></h2>
                    <div class="product_code">Mã sản phẩm:  <xsl:value-of select="ns1:Code" /></div>
                    <div class="product_price"> <xsl:value-of select="format-number(ns1:Price, '###,###')" />đ</div>
                </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>