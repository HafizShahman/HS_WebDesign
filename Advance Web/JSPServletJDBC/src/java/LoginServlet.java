/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hafiz
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    String user_ID_from_DB = "";
    String user_password_from_DB = "";
    Connection connection = null;
    Statement querySmt = null;
    ResultSet result = null;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getParameter("id").trim();
        String password = request.getParameter("password").trim();
        // Database operations using JDBC
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = " jdbc:mysql://localhost/Student";
            Connection connection = DriverManager.getConnection(url, "root", " ");
            if (connection.equals(null)) {
                System.out.println("connection was failed");
            } else {
                System.out.println("connected successfully");
                // Select user from database to check user login id and password
                querySmt = connection.createStatement();
                result = querySmt.executeQuery("select * from Authentication where login_id = '"
                        + user_id + "'");
                if (!result.equals(null)) {
                    while (result.next()) {
                        user_ID_from_DB = result.getString("login_id").trim();
                        user_password_from_DB = result.getString("password").trim();
                        System.out.println(user_ID_from_DB + " " + user_password_from_DB);
                    }
                    // Database operations completed
                    if (user_id.equals(user_ID_from_DB) && password.equals(user_password_from_DB)) {
                        request.getRequestDispatcher("/success.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("/failure.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("/failure.jsp").forward(request, response);
                }
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        } finally {
            try {
                result.close ();
                querySmt.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}
