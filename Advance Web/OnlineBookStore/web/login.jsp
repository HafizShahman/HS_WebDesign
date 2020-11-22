<%-- 
    Document   : LoginPage
    Created on : Nov 12, 2020, 11:58:29 PM
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
        <form name="loginForm" method="POST" action="login">
            <table border="1" bordercolor="#000000" width="20%" align="center">
                <tr>
                    <td width="30%">Name :</td>
                    <td width="70%"><input type="Email" placeholder="Email" name="Email"/></td>
                </tr>
                <tr>
                    <td width="30%">Password :</td>
                    <td width="70%"><input type="password" placeholder="Password" name="Password"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
