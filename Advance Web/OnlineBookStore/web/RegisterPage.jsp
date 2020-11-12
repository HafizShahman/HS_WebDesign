<%-- 
    Document   : RegisterPage
    Created on : Nov 12, 2020, 10:17:09 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
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
        <form action="regServ" method="post">
            <table id="tab">
                <tr>
                    <td width="30%">Name</td>
                    <td width="70%"><input type="text" size="20" name="name"/></td>
                </tr>
                <tr>
                    <td width="30%">Address</td>
                    <td width="70%"><input type="text" size="20" name="addr"/></td>
                </tr>
                <tr>
                    <td width="30%">Phone Number</td>
                    <td width="70%"><input type="text" size="20" name="phone"/></td>
                </tr>
                <tr>
                    <td width="30%">E-Mail</td>
                    <td width="70%"><input type="text" size="20" name="mail"/></td>
                </tr>
                <tr>
                    <td width="30%">PassWord</td>
                    <td width="70%"><input type="text" size="20" name="pass"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="SUBMIT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
