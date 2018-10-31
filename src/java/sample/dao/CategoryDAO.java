/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import sample.utils.DBUtils;

/**
 *
 * @author Administrator
 */
public class CategoryDAO implements Serializable {

    public static boolean addNewCategory(String category)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "Insert into Category(Name) values(?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, category);
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    public static int getCategoryID(String categoryName)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        int categoryID = 0;

        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "Select ID from Category where Name like ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + categoryName + "%");
                ResultSet rs = stm.executeQuery();
                if (rs.next()) {
                    categoryID = rs.getInt("ID");
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return categoryID;
    }
}
