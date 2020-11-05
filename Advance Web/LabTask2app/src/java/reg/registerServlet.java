package reg;/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    String studentID = " ";
    String firstName = " ";
    String lastName = " ";
    String username = " ";
    String password = " ";
    String address = " ";
    String contact = " ";
    Connection connection;
    Statement querySmt;
    ResultSet result;


    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        studentID = request.getParameter("student_id").trim();
        firstName = request.getParameter("first_name").trim();
        lastName = request.getParameter("last_name").trim();
        username = request.getParameter("username").trim();
        password = request.getParameter("password").trim();
        address = request.getParameter("address").trim();
        contact = request.getParameter("contact").trim();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = " jdbc:mysql://localhost:3306/student";
            Connection connection = DriverManager.getConnection(url, "root", " ");

            if (connection.equals(null)) {
                System.out.println("connection was failed");
            } else {
                System.out.println("connected successfully");
                // Select user from database to check user login id and password
                querySmt = connection.createStatement();
                String INSERT_USERS_SQL = "INSERT INTO `studentlist`"
                        + "  (`StudentID`, `FirstName`, `LastName`, `Username`, `Password`, `Address`, `Contact`) VALUES "
                        + " ('?', '?', '?', '?', '?', '?', '?');";

                int result = 0;

                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
                preparedStatement.setInt(1, 1);
                preparedStatement.setString(2, studentID);
                preparedStatement.setString(3, firstName);
                preparedStatement.setString(4, lastName);
                preparedStatement.setString(5, username);
                preparedStatement.setString(6, password);
                preparedStatement.setString(7, address);
                preparedStatement.setString(8, contact);

                System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                result = preparedStatement.executeUpdate();
                request.getRequestDispatcher("completeRegister.jsp").forward(request, response);

            }
            
        } catch (Exception exception) {
            exception.printStackTrace();
        } finally {

        }
    }

}
