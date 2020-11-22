/*
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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hafiz
 */
public class booklist extends HttpServlet {
    String bookid = "";
    String booktitle = "";
    String author = "";
    String genre = "";
    String year = "";
    String link = "";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/bookstore";
        String userid = "root";
        String password = "";
        String id = request.getParameter("bookid");

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        try {
                    connection = DriverManager.getConnection(connectionUrl, userid, password);
                    statement = connection.createStatement();
                    String sql = "SELECT * FROM `booklist` ORDER BY `booklist`.`bookid` ASC";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
                        bookid = request.getParameter("bookid").trim();
                        booktitle = request.getParameter("booktitle").trim();
                        author = request.getParameter("author").trim();
                        genre = request.getParameter("genre").trim();
                        year = request.getParameter("year").trim();
                        link = request.getParameter("link").trim();
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

    }

}
