<%-- 
    Document   : index
    Created on : Nov 7, 2020, 5:50:28 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Succeed</title>
    </head>
    <body>
        <%= "Welcome " + request.getParameter("j_username")%><br>
        <a href="logout.jsp">Click to Logout </a>
    </body>
</html>
