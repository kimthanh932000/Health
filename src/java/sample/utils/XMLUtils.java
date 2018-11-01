/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.utils;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

/**
 *
 * @author Administrator
 */
public class XMLUtils {
        public static XPath createXPath() {
        XPathFactory factory = XPathFactory.newInstance();
        XPath xPath = factory.newXPath();
        
        return xPath;
    }
}
