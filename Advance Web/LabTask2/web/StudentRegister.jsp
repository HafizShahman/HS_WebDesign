<%-- 
    Document   : index
    Created on : Oct 23, 2020, 6:23:25 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
            <h1>Student Register Form</h1>
            <form action="registerServlet" method="post">
                <table style="with: 50%">
                    <tr>
                        <td>Student ID</td>
                        <td><input type="text" name="student_id" /></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="first_name" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="last_name" /></td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" /></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td><input type="text" name="contact" /></td>
                    </tr></table>
                <input type="submit" value="Submit" class="btn"/></form>
        </div>
    </body>
</html>
