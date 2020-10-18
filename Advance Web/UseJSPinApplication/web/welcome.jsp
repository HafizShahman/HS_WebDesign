<%-- 
    Document   : welcome
    Created on : Oct 12, 2020, 11:39:17 AM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%= "Welcome " + request.getParameter("uname")%>  
    </body>
</html>
