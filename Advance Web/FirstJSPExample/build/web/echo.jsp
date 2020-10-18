<%-- 
    Document   : echo
    Created on : Oct 5, 2020, 7:16:02 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Echoing HTML Request Parameter</title>
    </head>
    <body>
        <h3>Choose an author:</h3>
        <form method="get">
            <input type="checkbox" name="author" value="Tan Ah Teck">Tan
            <input type="checkbox" name="author" value="Mohd Ali">Ali
            <input type="checkbox" name="author" value="Kumar">Kumar
            <input type="submit" value="Query">
        </form>        
        <%
            String[] authors = request.getParameterValues("author");
            if (authors != null) {
        %>
        <h3>You have selected author(s):</h3>
        <ul>
            <%
                for (int i = 0; i < authors.length; ++i) {
            %>
            <li><%= authors[i]%></li>
                <%
                    }
                %>
        </ul>
        <a href="<%= request.getRequestURI()%>">BACK</a>
        <%
            }
        %>

    </body>
</html>
