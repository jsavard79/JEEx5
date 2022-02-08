<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>
<%
	Person qPerson = null;
	setupPeople();
	errors = new ArrayList<String>();
	int id = 0;
	boolean submitted = false;
	String name = "";
	String email = "";
	double salary;

	if(request.getParameter("btnSubmit") != null){
		if(request.getParameter("id") != null && isNumeric(request.getParameter("id"))){
			id = getIntegerValue(request.getParameter("id"));		
		} else {
			qPerson = new Person();
		}
		
		name = checkRequiredField(request.getParameter("name"), "Name");
		email = checkRequiredField(request.getParameter("email"), "Email address");
		String salaryString = checkRequiredField(request.getParameter("salary"), "Salary");
		
		salary = isNumeric(salaryString, "Salary")? Double.parseDouble(salaryString) : 0;
		
		qPerson = person.getPerson(id);
		
		submitted = true;
	}else {
		if (request.getParameter("id")!= null && isNumeric(request.getParameter("id")) ) {
			id = getIntegerValue(request.getParameter("id"));		
			qPerson = person.getPerson(id);
		}
	}
 
%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person Form</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <h1>Course Form</h1>
        <%@include file="WEB-INF/jspf/navigation.jspf" %>

		<% if(!submitted || !errors.isEmpty() ){  %>
       
        <form method="POST" >
            <table class="table"> 
                <% if (qPerson != null ){ %>
                    <tr>
                        <td>Id</td>
                        <td>
                           <input  type="hidden" name="id" value=<%=!submitted && qPerson !=null ? qPerson.getId() : "" %>/>                       
                        </td>
                    </tr>            
                <tr>                    
                    <td>Name</td>
                    <td>
                    <input  type="text" name="name" value="<%= !submitted && qPerson !=null ? qPerson.getFirstName() : "" %> <%= !submitted && qPerson !=null ? qPerson.getLastName() : "" %>" />  
                    </td>
                </tr>
                <tr>                    
                    <td>Email Address</td>
                    <td>
						<input  type="text" name="email" value=<%= !submitted && qPerson !=null ? qPerson.getEmailAddress() : "" %> />                     
                    </td>
                </tr>
                <tr>                    
                    <td>Salary</td>
                    <td>
						<input  type="text" name="salary" value=<%= !submitted && qPerson !=null ? qPerson.getSalary() : "" %> />                     
                    </td>
                </tr>
                 
            </table>
            <button name="btnSubmit" class="btn btn-primary">Submit</button>
			<% }
             %>
        </form>
        <div>
           <% if (errors.size() > 0){
        	   %>
        	   <ul>
        	   <%
        	   for (String e : errors){
        		   %>
        	   	<li><%= e %>
        		  <% 
        	   } %>
        	   </ul>
        	   <%
        	   }%>
        </div>
	   <% 
	   } else {	   
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
      <% } %>
        <%@include file="WEB-INF/jspf/footer.jspf" %>  
    </body>
</html>
