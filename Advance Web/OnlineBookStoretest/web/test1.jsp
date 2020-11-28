<%-- 
    Document   : test1
    Created on : Nov 28, 2020, 9:20:35 PM
    Author     : hafiz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
    String val = request.getParameter("val");
    String select = request.getParameter("select");

    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<script>
    function getOption(){
        #Slide3.
    
    }
</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/test1.css">
    </head>
    <body>
        <div class="contenedor">
            <form>
                <input type="radio" id="Slide1" name="slider" titulo="Home" autofocus="autofocus" checked="checked"/>
                <input type="radio" id="Slide2" name="slider" titulo="Features"/>
                <input type="radio" id="Slide3" name="slider" titulo="Adding pages"/>
                <input type="radio" id="Slide4" name="slider" titulo="+More"/>
                <input type="radio" id="Slide5" name="slider" titulo="About"/>
                <input type="radio" id="Slide6" name="slider" titulo="Dummy page"/>
                <input type="radio" id="Slide7" name="slider" titulo="Dummy page"/>
                <div class="labels">
                    <label class="Slide" for="Slide1" id="Slide1">
                        <div class="content">
                            <h1><strong>Pure CSS</strong> one page vertical navigation</h1>
                            <h1> Hello, <%=session.getAttribute("login")%></h1>
                            <button><a href="logout.jsp">Logout</a></button>
                            <button class="btn"><a href="booklist.jsp">book list</a></button>
                        </div>
                        <div class="icon"><span><img src="http://codecase.work/codepen/keyboard-icon.png"/></span><span>Use keyboard</span></div>
                    </label>
                    <label class="Slide" for="Slide2" id="Slide2">
                        <div class="content">
                            <h1>Book List</h1>
                            <div class="form-inline" method="post" action="#Slide3">
                                <input type="text" name="val" class="form-control" placeholder="Search..." target="Slide3">
                                <select id="select" name="select"> 
                                    <option selected="none">Select one</option>
                                    <option value="booktitle">Book Title</option> 
                                    <option value="genre">Genre</option> 
                                    <option value="year">Year</option> 
                                </select>
                                <button type="submit" name="save" class="btn btn-primary" onclick="getOption() ">Search</button>
                            </div>                           
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
                                    <td width="100"><button id="btndw" onclick="btninsert()"><a href="<%=resultSet.getString("link")%>">Download</a></button></td>
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
                    </label>
                    <label class="Slide" for="Slide3" id="Slide3">
                        <div class="content">
                            <h1>Adding pages</h1>
                            <h1>Book List</h1>
                            <table border="1" bordercolor="#000000" align="center">
                                <tr>
                                    <td>Book ID</td>
                                    <td>Book Title</td>
                                    <td>Author</td>
                                    <td>Book Genre</td>
                                    <td>Year Of Publish</td>
                                    <td>Link</td>
                                </tr>
                                <%
                                    try {
                                        connection = DriverManager.getConnection(connectionUrl, userid, password);
                                        statement = connection.createStatement();
                                        String sql = "SELECT * FROM booklist WHERE " + select + " LIKE '%" + val + "%'";
                                        resultSet = statement.executeQuery(sql);
                                        while (resultSet.next()) {
                                %>
                                <tr>
                                    <td width="70"><%=resultSet.getString("bookid")%></td>
                                    <td width="300"><%=resultSet.getString("booktitle")%></td>
                                    <td width="300"><%=resultSet.getString("author")%></td>
                                    <td width="150"><%=resultSet.getString("genre")%></td>
                                    <td width="70"><%=resultSet.getString("year")%></td>
                                    <td width="100"><button><a href="<%=resultSet.getString("link")%>">Download</a></button></td>
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
                    </label>
                    <label class="Slide" for="Slide4" id="Slide4">
                        <div class="content">
                            <h1>+More</h1>
                            <div class="block"><span><a href="https://codepen.io/hrtzt/pen/NPZKRN" target="_blank">One Page Navigation CSS Menu</a></span><span><a href="https://codepen.io/hrtzt/pen/YPoeWd" target="_blank">The simplest CSS switch</a></span><span><a href="https://codepen.io/hrtzt/pen/JdYaEZ" target="_blank">Animated cube slider CSS only</a></span><span><a href="https://codepen.io/hrtzt/pen/vGqEJO" target="_blank">Google photos album view with only CSS</a></span></div>
                        </div>
                    </label>
                    <label class="Slide" for="Slide5" id="Slide5">
                        <div class="content">
                            <h1>About</h1>
                            <div class="block"><span><a href="https://dribbble.com/albertohartzet" target="_blank"><i class="fa fa-dribbble"> </i>Dribbble me</a></span><span><a href="https://twitter.com/hrtzt" target="_blank"><i class="fa fa-twitter"></i>Tweet me</a></span></div>
                        </div>
                    </label>
                    <label for="Slide6" id="Slide6">
                        <div class="content">
                            <h1>Dummy page</h1>
                            <div class="block">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto numquam, totam iusto officia earum perferendis</div>
                        </div>
                    </label>
                    <label for="Slide7" id="Slide7">
                        <div class="content">
                            <h1>Dummy page</h1>
                            <div class="block">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto numquam, totam iusto officia earum perferendis</div>
                        </div>
                    </label>
                </div>
            </form>
        </div>
    </body>
</html>
