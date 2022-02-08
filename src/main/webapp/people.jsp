<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>
<%@ page import="edu.nbcc.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>People</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/navigation.jspf" %>
         <% setupPeople(); %>
        <h1>People</h1>
        <table class="table table-striped">
            <tr>
                <th>
                    Id
                </th>
                <th>Name</th>
                <th>Email Address</th>  
                <th>Salary</th>            
            </tr>           
           
           <% for (Person p : person.getPeople()){ %>
            <tr>
                <td><a href="<%= response.encodeURL("personDetails.jsp")%>?id=<%=p.getId()%>">Details</a>
                | <a href="<%= response.encodeURL("personForm.jsp")%>?id=<%=p.getId()%>">Edit</a></td>
                <td><%= p.getFirstName() %> <%= p.getLastName() %></td>
                <td><%= p.getEmailAddress() %></td>
                <td><%= currencyFormatter(p.getSalary()) %></td>
             
            </tr>
                <% } %>
                
        </table>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>