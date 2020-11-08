<%-- 
    Document   : error
    Created on : Nov 7, 2020, 12:54:25 AM
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
        <h3 style="color: red">Invalid Credentials</h3>   
        <form name="loginForm" method="POST" action="j_security_check">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" size="20" name="j_username"/></td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td><input type="password" size="20" name="j_password"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>      
    </body>
</html>
