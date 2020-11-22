<%-- 
    Document   : search
    Created on : Nov 21, 2020, 8:56:05 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "bookstore";
    String userid = "root";
    String password = "";
    String genre = request.getParameter("genre");
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>Book Title</td>
                <td>Author</td>
                <td>Book Genre</td>
                <td>Year Of Publish</td>
                <td>Link</td>
            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from booklist where genre=" + genre + "' ";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("booktitle")%></td>
                <td><%=resultSet.getString("author")%></td>
                <td><%=resultSet.getString("genre")%></td>
                <td><%=resultSet.getString("year")%></td>
                <td><%=resultSet.getString("link")%></td>
            </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </body>
</html>
