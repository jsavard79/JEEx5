<%-- 
    Document   : personForm
    Created on : Jan 22, 2020, 2:13:47 PM
    Author     : Chris.Cusack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>
<%
	Course qCourse = null;
	int id = 0;
	boolean submitted = false;
	errors = new ArrayList<String>();
	setupCourse();
	String name = "";
	String termString = "";
	int term = 0;

	if(request.getParameter("btnSubmit") != null){
		if(request.getParameter("id") != null && isNumeric(request.getParameter("id"))){
			id = getIntegerValue(request.getParameter("id"));		
			qCourse = course.getCourse(id);
		} else {
			qCourse = new Course();
		}
		
		name = checkRequiredField(request.getParameter("name"), "Course Name");
		termString = checkRequiredField(request.getParameter("term"), "Course term");
		
		term = isNumeric(termString, "Course term")? Integer.parseInt(termString) : 0;
		
		qCourse = course.getCourse(id);
		qCourse.setId(id);
		qCourse.setName(name);
		qCourse.setTerm(term);
		if (errors.size() == 0)
			submitted = true;

	} else {
		if (request.getParameter("id")!= null && isNumeric(request.getParameter("id")) ) {
			id = getIntegerValue(request.getParameter("id"));		
			qCourse = course.getCourse(id);
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
                <% if (qCourse != null ){ %>
                    <tr>
                        <td>Course Id</td>
                        <td>
                           <input  type="hidden" name="id" value=<%=!submitted && qCourse !=null ? qCourse.getId() : "" %>/>                       
                        </td>
                    </tr>            
                <tr>                    
                    <td>Course Name</td>
                    <td>
                    <input  type="text" name="name" value="<%= !submitted && qCourse !=null ? qCourse.getName() : "" %>" />  
                    </td>
                </tr>
                <tr>                    
                    <td>Course Term</td>
                    <td>
						<input  type="text" name="term" value=<%= !submitted && qCourse !=null ? qCourse.getTerm() : "" %> />                     
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
                <td>Course Id</td>
                <td><%=qCourse.getId() %></td>
            </tr>
            <tr>                    
                <td>Course Name</td>
                <td><%=qCourse.getName() %></td>
            </tr>
            <tr>                    
                <td>Course Term</td>
                <td><%=qCourse.getTerm() %></td>
            </tr>   
            
        </table>
      <% } %>
        <%@include file="WEB-INF/jspf/footer.jspf" %>  
    </body>
</html>
