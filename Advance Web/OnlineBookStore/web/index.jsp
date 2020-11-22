<%-- 
    Document   : index
    Created on : Nov 9, 2020, 9:10:01 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             body {
                background-color: navajowhite;
                text-align: center;
            }
            .btn {
                background-color: brown;
                border: none;
                color: aliceblue;
                padding: 5px 15px;
                text-align:center;
                display: inline-block;
                font-size: 15px;
                margin: 5px;
                cursor: pointer;
                border-radius: 12px;
            }
        </style>
    </head>
    <body>
          <div class="main-content">
            <center>
                <h1> Hello, <% String Email = request.getParameter("Email"); %><% out.println(Email); %></h1>
                <h2><a href="login.jsp">Logout</a></h2>
            </center>
        </div>
        <button class="btn"><a href="booklist.jsp">book list</a></button>
    </body>
</html>
