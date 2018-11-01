/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;
import sample.dao.CategoryDAO;
import sample.dao.ProductDAO;
import sample.jaxb.category.Categories;
import sample.jaxb.product.ListProduct;
import sample.utils.JaxBUtils;

/**
 *
 * @author Administrator
 */
public class HomeServlet extends HttpServlet {

    private final String home = "index.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, NamingException, JAXBException {
        response.setContentType("text/html;charset=UTF-8");

        String url = home;
        try (PrintWriter out = response.getWriter()) {

//            ListProduct listProduct = new ListProduct();
//            listProduct.getProduct().addAll(ProductDAO.getAllProducts());
//            String xmlProduct = JaxBUtils.marshallXML(listProduct);
//            System.out.println(xmlProduct);

            Categories listCategory = new Categories();
            listCategory.getCategory().addAll(CategoryDAO.getAllCategories());
            String xmlCategory = JaxBUtils.marshallXML(listCategory);
//            System.out.println(xmlCategory);

            String cateID = request.getParameter("categoryId");
            ListProduct productsByCate = new ListProduct();
            if (cateID == null) {
                int categoryID = CategoryDAO.getFirstCategoryID();
                productsByCate.getProduct().addAll(ProductDAO.getProductsByCategory(categoryID));
            } else {
                productsByCate.getProduct().addAll(ProductDAO.getProductsByCategory(Integer.parseInt(cateID)));
            }
            String xmlProductByCate = JaxBUtils.marshallXML(productsByCate);

            request.setAttribute("CATEGORIES", xmlCategory);
            request.setAttribute("PRODUCTS", xmlProductByCate);
//            request.setAttribute("PRODUCTSBYCATEGORY", xmlProductByCate);

            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (JAXBException ex) {
                Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (JAXBException ex) {
                Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
