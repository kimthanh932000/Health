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
import javax.xml.stream.XMLStreamException;
import sample.crawler.NhaThuoc365;
import sample.crawler.TrungTamThuoc;

/**
 *
 * @author Administrator
 */
public class CrawlerManagerServlet extends HttpServlet {

    private final String homePage = "index.jsp";
    private final String crawlerPage = "crawler.jsp";

    public class Crawler implements Runnable {

        public Thread t;

        public Crawler() {
            t = new Thread(this);
            t.start();
        }

        @Override
        public void run() {
            try {

                TrungTamThuoc.Crawler();
//                NhaThuoc365.Crawler();

            } catch (IOException ex) {
                Logger.getLogger(CrawlerManagerServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (XMLStreamException ex) {
                Logger.getLogger(CrawlerManagerServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(CrawlerManagerServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NamingException ex) {
                Logger.getLogger(CrawlerManagerServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (JAXBException ex) {
                Logger.getLogger(CrawlerManagerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter();){         
            String token = request.getParameter("token");
            String toolAction = request.getParameter("toolAction");
            String url = null;
            if(token.equals("kimthanh_crawler")){
                if(toolAction == null){
                    url = crawlerPage;
                }else if(toolAction.equals("Start")){
                    Crawler tool = (Crawler) request.getServletContext().getAttribute("CRAWLER");
//                    if(tool != null){
//                        tool.t.suspend();
//                    }
                    Crawler crawler = new Crawler();
                    request.getServletContext().setAttribute("CRAWLER", tool);
                    request.setAttribute("IsStart", true);
                    url = crawlerPage;
                }else if(toolAction.equals("Stop")){
                    Crawler tool = (Crawler) request.getServletContext().getAttribute("CRAWLER");
                    if(tool != null){
                        tool.t.suspend();
                        request.getServletContext().setAttribute("CRAWLER", null);
                        request.setAttribute("IsStart", false);
                    }
                    url = crawlerPage;
                }
            }else{
                url = homePage;
            }     
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
        processRequest(request, response);
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
        processRequest(request, response);
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
