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
public class EchoValidationData extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html; charset=UTF-8"); // response message MIME type
        PrintWriter out = response.getWriter(); //output writer to write the response message

        try {
            out.println("<!DOCTYPE html>");
            out.println("<html><head>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<title>Student Data</title>");
            out.println("<style>body {background-color: navajowhite;}</style>");
            out.println("</head>");
            out.println("<body style=\"padding: 0% 10%\"><h2>Your Data</h2>");
            //output student number
            // Retrieve the value of the query parameter "stno" (from text field)
            String stno = request.getParameter("stno");
            //user must enter every detail
            //if null, output will be "missing"
            if (stno == null || (stno = htmlFilter(stno.trim())).length() == 0) {

                out.println("<p>Student Number : MISSING</p>");

            } else {
                out.println("<p>Student Number : " + stno + "</p>");
            }
            // output student name
            // Retrieve the value of the query parameter "sname" (from text field)
            String sname = request.getParameter("sname");
            if (sname == null || (sname = htmlFilter(sname.trim())).length() == 0) {

                out.println("<p>Student Name : MISSING</p>");

            } else {
                out.println("<p>Student Name : " + sname + "</p>");
            }

            //output student marks
            // Retrieve the value of the query parameter "smarks" (from text field)
            String smarks = request.getParameter("smarks");
            if (smarks == null || (smarks = htmlFilter(smarks.trim())).length() == 0) {

                out.println("<p>Student Mark : MISSING</p>");

            } else {
                out.println("<p>Student Mark : " + smarks + "</p>");
            }

            //end
            out.println("<a href='StudentValidation.html'>BACK</a>");
            out.println("</body></html>");
        } finally {
            out.close();  // Always close the output writer
        }
    }
    // Redirect POST request to GET request.

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        doGet(request, response);
    }
    
    private static String htmlFilter(String message) {
        if (message == null) {
            return null;
        }
        int len = message.length();
        StringBuffer result = new StringBuffer(len + 20);
        char aChar;
        for (int i = 0; i < len; ++i) {
            aChar = message.charAt(i);
            switch (aChar) {
                case '<':
                    result.append("&lt;");
                    break;
                case '>':
                    result.append("&gt;");
                    break;
                case '&':
                    result.append("&amp;");
                    break;
                case '"':
                    result.append("&quot;");
                    break;
                default:
                    result.append(aChar);
            }
        }
        return (result.toString());
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
            out.println("<title>Servlet EchoValidationData</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EchoValidationData at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}
