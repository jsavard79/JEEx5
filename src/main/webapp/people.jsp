<%-- 
    Document   : people
    Created on : Feb 1, 2021, 7:58:03 AM
    Author     : Chris.Cusack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>People</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/navigation.jspf" %>
        <h1>People</h1>
        <table class="table table-striped">
            <tr>
                <th>
                    Id
                </th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Salary</th>
            </tr>
           
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
                
        </table>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
