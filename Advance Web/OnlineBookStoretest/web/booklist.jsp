<%-- 
    Document   : mainmenu
    Created on : Nov 21, 2020, 12:41:23 AM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/booklist-box.css">
    <style>
        .main-content {
            background: image("yellow-comic.jpg");
        }
    </style>
    </head>
    <body>
    <center>
        <div class="main-content">
            <div class="container">
                <div class="form-register-with-email">
                    <div class="form-white-background">
                        <div class="container">
                            <form class="form-inline" method="post" action="search.jsp">
                                <input type="text" name="genre" class="form-control" placeholder="Search genre">
                                <button type="submit" name="save" class="btn btn-primary">Search</button>
                            </form>
                        </div>
                        <h1>Book List</h1>
                        <br>
                        <table border="1" bordercolor="#000000" align="center">
                            <tr>
                                <td width="70">Book ID</td>
                                <td width="300">Book Title</td>
                                <td width="300">Author</td>
                                <td width="150">Book Genre</td>
                                <td width="70">Year Of Publish</td>
                                <td width="70">Link</td>
                            </tr>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl, userid, password);
                                    statement = connection.createStatement();
                                    String sql = "SELECT * FROM `booklist` ORDER BY `booklist`.`bookid` ASC";
                                    resultSet = statement.executeQuery(sql);
                                    while (resultSet.next()) {
                            %>
                            <tr>
                                <td width="70"><%=resultSet.getString("bookid")%></td>
                                <td width="300"><%=resultSet.getString("booktitle")%></td>
                                <td width="300"><%=resultSet.getString("author")%></td>
                                <td width="150"><%=resultSet.getString("genre")%></td>
                                <td width="70"><%=resultSet.getString("year")%></td>
                                <td width="100"><button id="btndw"><a href="<%=resultSet.getString("link")%>">Download</a></button></td>
                            </tr>
                            <%
                                    }
                                    connection.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </center>
</body>
</html>
