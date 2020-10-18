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
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

/**
 *

 */
public class RadioBtnServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) //calling service() method
            throws IOException, ServletException {
        PrintWriter out = response.getWriter();

        String url = request.getParameter("SearchEngine");//requesting info from radio button

        if (url == null) {// if null, will show no directory
            out.println("<!DOCTYPE html>");
            out.println("<html><head>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<title>Student Data</title>");
            out.println("<style>body {background-color: navajowhite;");
            out.println("text-align: center;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body style=\"padding: 20%\">");
            out.println("<h1>No search engine was selected.</h1><br><br>");
            out.println("<a href='WebDirectory.html'>BACK</a>");
            out.println("</body></html>");
        } else { //if radio button is selected
            response.sendRedirect(url);
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RadioBtnServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RadioBtnServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
