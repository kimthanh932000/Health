/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import sample.jaxb.product.Product;
import sample.utils.DBUtils;

/**
 *
 * @author Administrator
 */
public class ProductDAO {

    public static int addNewProduct(List<Product> list)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        int count[] = {};
        
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "Insert into Product(Name, Code, Description, Price, ImageURL, CategoryID) "
                        + "values(?,?,?,?,?,?)";
                stm = con.prepareStatement(sql);
                
                con.setAutoCommit(false);
                
                for (Product product : list) {

                    stm.setString(1, product.getName());
                    stm.setString(2, product.getCode());
                    stm.setString(3, product.getDescription());
                    stm.setDouble(4, product.getPrice());
                    stm.setString(5, product.getImageURL());
                    stm.setInt(6, product.getCategoryID().intValue());
                    stm.addBatch();
                    
                }
                count = stm.executeBatch();
                
                con.commit();               
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return count.length;
    }
    
    public static List<Product> getAllProducts() throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        List<Product> list = new ArrayList<>();
        
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "Select * from Product";
                stm = con.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    BigInteger ID = BigInteger.valueOf(rs.getInt("ID"));
                    String name = rs.getString("Name");
                    String code = rs.getString("Code");
                    int price = rs.getInt("Price");
                    String imgURL = rs.getString("ImageURL");
//                    String description = rs.getString("Description");
                    BigInteger categoryID = BigInteger.valueOf(rs.getInt("CategoryID"));
                    Product p = new Product();
                    p.setProductID(ID);
                    p.setName(name);
                    p.setCode(code);
                    p.setPrice(price);
                    p.setImageURL(imgURL);
//                    p.setDescription("description");
                    p.setCategoryID(categoryID);
                    list.add(p);
                }
                return list;
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
    
    public static List<Product> getProductsByCategory(int categoryID) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        List<Product> list = new ArrayList<>();
        
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "Select * from Product where CategoryID = ?";
                stm = con.prepareStatement(sql);
                stm.setInt(1, categoryID);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    BigInteger ID = BigInteger.valueOf(rs.getInt("ID"));
                    String name = rs.getString("Name");
                    String code = rs.getString("Code");
                    int price = rs.getInt("Price");
                    String imgURL = rs.getString("ImageURL");
//                    String description = rs.getString("Description");
                    BigInteger cateID = BigInteger.valueOf(rs.getInt("CategoryID"));
                    Product p = new Product();
                    p.setProductID(ID);
                    p.setName(name);
                    p.setCode(code);
                    p.setPrice(price);
                    p.setImageURL(imgURL);
//                    p.setDescription("description");
                    p.setCategoryID(cateID);
                    list.add(p);
                }
                return list;
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
}
