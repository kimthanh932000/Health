/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.main;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import javax.xml.bind.JAXBException;
import javax.xml.stream.XMLStreamException;
import sample.crawler.NhaThuoc365;
import sample.crawler.TrungTamThuoc;
import sample.dao.CategoryDAO;
import sample.jaxb.category.Categories;
import sample.jaxb.category.Category;
import sample.jaxb.product.Product;
import sample.utils.JaxBUtils;

/**
 *
 * @author Administrator
 */
public class Main {

    public static int count = 0;   //count product

    public static void main(String[] args)
            throws IOException, XMLStreamException, SQLException, NamingException, JAXBException {
//        TrungTamThuoc.Crawler();
//        NhaThuoc365.Crawler();
        String xmlFilePath = "src/sample.resource/category.xml";
//        List<Product> allProducts = new ArrayList<>();
//        
//        List<Product> allProductsTrungTamThuoc = TrungTamThuoc.Crawler();
//        
//        if(allProductsTrungTamThuoc != null && allProductsTrungTamThuoc.size() > 0)
//            allProducts.addAll(allProductsTrungTamThuoc);
//        
//        List<Product> allProductsNhaThuoc365 = NhaThuoc365.Crawler();
//        
//        if(allProductsNhaThuoc365 != null && allProductsNhaThuoc365.size() > 0)
//            allProducts.addAll(allProductsNhaThuoc365);
//        
        Categories c = new Categories();
        c.getCategory().addAll(CategoryDAO.getAllCategories());
        JaxBUtils.marshallXML(xmlFilePath, c.getCategory());
    }
}
