<%-- 
    Document   : logout
    Created on : Oct 11, 2016, 10:51:42 PM
    Author     : imran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../styes/standard-style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
          
        <div class="container">
        <h1>you are successfully logged out !</h1>
        <%
           if(session.getAttribute("userName")!=null){
        session.invalidate();
            }
        response.sendRedirect("http://localhost:8080/System/index.jsp");
            
        %>
        </div>
         
    </body>
</html>
