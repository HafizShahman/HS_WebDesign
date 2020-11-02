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
        <title>login</title>
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
        <div align="center">
            <h1>Student Login Form</h1>
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
                        <td colspan="2" align="center"><input type="submit" value="Login" class="btn"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
