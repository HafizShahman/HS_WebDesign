<%-- 
    Document   : studentLogin
    Created on : Oct 24, 2020, 12:38:01 AM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="loginServlet" method="post">
            <table>
                <tr>
                    <td>User name :</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
