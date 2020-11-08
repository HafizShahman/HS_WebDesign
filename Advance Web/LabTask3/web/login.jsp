<%-- 
    Document   : index
    Created on : Nov 7, 2020, 12:43:45 AM
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
        <h2>Login User</h2>
        <form name="loginForm" method="POST" action="j_security_check" action="index.jsp">
            <table border="1" bordercolor="#000000" width="20%" align="center">
                <tr>
                    <td width="30%">Name :</td>
                    <td width="70%"><input type="text" size="20" name="j_username"/></td>
                </tr>
                <tr>
                    <td width="30%">Password :</td>
                    <td width="70%"><input type="password" size="20" name="j_password"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
