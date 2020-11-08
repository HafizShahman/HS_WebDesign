<%-- 
    Document   : printdate
    Created on : Oct 12, 2020, 12:02:22 PM
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
        <% out.print("Today is:" + java.util.Calendar.getInstance().getTime());%>  
        <%= request.getParameter("name")%>
    </body>
</html>
