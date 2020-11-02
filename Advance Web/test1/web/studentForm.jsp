<%-- 
    Document   : index
    Created on : Oct 24, 2020, 6:14:40 PM
    Author     : hafiz
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

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
        <div align="center">
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost/test"
                               user="root"  password=" "/>

            <sql:query dataSource="${snapshot}" var="result">
                SELECT * from employees;
            </sql:query>

            <table>
                <tr>
                    <th>emp ID</th>
                    <th>Name</th>

                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.emp_id}"/></td>
                        <td><c:out value="${row.emp_name}"/></td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
