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
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

/**
 *

 */
public class ServletInfo extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) //call service() method
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Servlet Information";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";

        out.println(
                "<BODY BGCOLOR=\"#eee6ff\">\n"
                + "<TABLE BORDER=1 ALIGN=CENTER>\n"
                + "<B>=== Path ===</B><BR><BR>\n"
                + "<TH>Path Name<TH>Path Value"
                + "<TR><TD>" + "<B>Request URL: </B>" + " <TD>" + request.getRequestURL() + "<BR>\n"
                + "<TR><TD>" + "<B>Request URI: </B>" + " <TD>" + request.getRequestURI() + "<BR>\n"
                + "<TR><TD>" + "<B>Servlet Path: </B>" + " <TD>" + request.getServletPath()
                + "</TABLE>\n"
                + "<BR><BR><BR><BR>\n"
                + "<TABLE BORDER=1 ALIGN=CENTER>\n"
                + "<B>=== Header ===</B><BR><BR>\n"
                + "<TH>Header Name<TH>Header Value"
        );
        Enumeration headerNames = request.getHeaderNames();

        while (headerNames.hasMoreElements()) {
            String headerName = (String) headerNames.nextElement();
            out.println("<TR><TD>" + headerName);
            out.println(" <TD>" + request.getHeader(headerName) + "<BR>\n");
        }
        out.println("</TABLE>\n</BODY></HTML>");

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
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}
