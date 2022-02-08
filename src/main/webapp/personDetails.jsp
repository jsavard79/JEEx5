<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>
<%@ page import="edu.nbcc.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person Details</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <h1>Person Details</h1>
        <%@include file="WEB-INF/jspf/navigation.jspf" %>
		<% setupPeople(); 
			Person qPerson = null;
			if(request.getParameter("id") != null && isNumeric(request.getParameter("id"))){
				int id = getIntegerValue(request.getParameter("id"));
				qPerson = person.getPerson(id);
			}
		%>
        <table class="table">               
            <tr>                    
                <td>Id</td>
                <td><%=qPerson.getId() %></td>
            </tr>
            <tr>                    
                <td>Name</td>
                <td><%= qPerson.getFirstName() %> <%= qPerson.getLastName() %></td>
            </tr>
            <tr>                    
                <td>Email Address</td>
                <td><%= qPerson.getEmailAddress() %></td>
            </tr>   
            <tr>                    
                <td>Salary</td>
                <td><%= currencyFormatter(qPerson.getSalary()) %></td>
            </tr>  
        </table>
            
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>    
</html>