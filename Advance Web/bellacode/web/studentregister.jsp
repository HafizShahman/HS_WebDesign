<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration Form</title>
    </head>
    <body>
        <h1>Student Registration Form</h1>
        <form action ="StudentRegister" method="post">
            <table>
                <tr>
                    <td> First Name </td>
                    <td><input type="name" name="name"/></td>
                </tr>
                <tr>
                    <td> Last Name </td>
                    <td><input type="name" name="name"/></td>
                </tr>
                <tr>
                    <td> UserName </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td> Password </td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td> Address </td>
                    <td><input type="address" name="address"/></td>
                </tr>
                <tr>
                    <td> Contact No </td>
                    <td><input type="number" name="number"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
                </tr>
            </table>
    </body>
</html>