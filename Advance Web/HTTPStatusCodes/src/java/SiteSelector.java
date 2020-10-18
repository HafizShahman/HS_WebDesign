/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author hafiz
 */
public class SiteSelector extends HttpServlet {

    Vector<String> sites = new Vector<String>();
    Random random = new Random();

    @Override
    public void init() throws ServletException {
        sites.addElement("http://www.java2s.com");
        sites.addElement("http://www.servlets.com");
        sites.addElement("http://java.sun.com/products/servlet");
        sites.addElement("http://www.google.com");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        int siteIndex = Math.abs(random.nextInt()) % sites.size();
        String site = sites.elementAt(siteIndex);
        res.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
        res.setHeader("Location", site);
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SiteSelector</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SiteSelector at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}
