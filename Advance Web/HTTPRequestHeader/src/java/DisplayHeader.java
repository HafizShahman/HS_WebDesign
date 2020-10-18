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
public class DisplayHeader extends HttpServlet {
    
    @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String title = "HTTP Header Request Example";
      String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
      out.println(docType +
         "<html>\n" +
         "<head><title>" + title + "</title></head>\n"+
         "<body bgcolor = \"#f0f0f0\">\n" +
         "<h1 align = \"center\">" + title + "</h1>\n" +
         "<table width = \"100%\" border = \"1\" align = \"center\">\n" +
         "<tr bgcolor = \"#949494\">\n" +
         "<th>Header Name</th><th>Header Value(s)</th>\n"+
         "</tr>\n" );
      Enumeration headerNames = request.getHeaderNames();
      while(headerNames.hasMoreElements()) {
         String paramName = (String)headerNames.nextElement();
         out.print("<tr><td>" + paramName + "</td>\n");
         String paramValue = request.getHeader(paramName);
         out.println("<td> " + paramValue + "</td></tr>\n");
       }
      out.println("</table>\n</body></html>");
   }
   
      // Method to handle POST method request.
   @Override
   public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
          doGet(request, response);
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
            out.println("<title>Servlet DisplayHeader</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisplayHeader at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    

}
