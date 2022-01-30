<%-- 
    Document   : personForm
    Created on : Jan 22, 2020, 2:13:47 PM
    Author     : Chris.Cusack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person Form</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <h1>Person Form</h1>
        <%@include file="WEB-INF/jspf/navigation.jspf" %>

       
        <form method="POST" >
            <table class="table"> 
                
                    <tr>
                        <td>Course Id</td>
                        <td>
                           
                           
                        </td>
                    </tr>
             
                <tr>                    
                    <td>Course Name</td>
                    <td></td>
                </tr>
                <tr>                    
                    <td>Course Term</td>
                    <td></td>
                </tr>
                 
            </table>
            <button name="btnSubmit" class="btn btn-primary">Submit</button>

        </form>
        <div>
           
        </div>
   
        <table class="table">               
            <tr>                    
                <td>Course Id</td>
                <td></td>
            </tr>
            <tr>                    
                <td>Course Name</td>
                <td></td>
            </tr>
            <tr>                    
                <td>Course Term</td>
                <td></td>
            </tr>   
            <tr>                    
                <td>Salary</td>
                <td></td>
            </tr>   
        </table>
      
        <%@include file="WEB-INF/jspf/footer.jspf" %>  
    </body>
</html>
