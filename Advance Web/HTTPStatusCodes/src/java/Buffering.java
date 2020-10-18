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

/**
 *
 * @author hafiz
 */
public class Buffering extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setBufferSize(8 * 1024); // 8K 
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        int size = res.getBufferSize(); // returns 8096 or greater
        log("The default buffer size is " + size);
        out.println("The client won't see this");
        res.reset();
        out.println("Nor will the client see this!");
        res.reset();
        out.println("And this won't be seen if sendError() is called");

        if (req.getParameter("param") == null) {
            res.sendError(HttpServletResponse.SC_BAD_REQUEST, "param needed");
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
            out.println("<title>Servlet Buffering</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Buffering at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
