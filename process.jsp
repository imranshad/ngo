<%-- 
    Document   : process
    Created on : Oct 12, 2016, 2:46:21 PM
    Author     : imran
--%>

<%@page import="services.loginDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>processing</title>
    </head>

	<style type="text/css"> 	
  	 body {
	background-color:gray;
	background-size:cover;
}
.container{
	margin-left:300px;
	margin-top:100px;
	width:400px;
	height:510px;
	padding:50px;
	
	border-radius:5px;
	background-color:silver;
	color: chocolate;
}

  	</style>
  </head>
  <body id="body">
        <jsp:include page="../pages/header.jsp"></jsp:include>
	<div class="container">
		
                               
 


                   
         <%  
    loginDAO dao=new loginDAO(); 
        
                dao.userName=(request.getParameter("userName"));
                dao.password=(request.getParameter("password"));
            if(dao.validate()){  
                out.println("You are successfully logged in You will be auto redirect.....");
                response.sendRedirect("../index.jsp");
 
session.setAttribute("userName",dao.userName);    
    }
 else  
  
out.print("Sorry, UsertName or password error...!"); 


%>
<center><h2> <a href="../pages/login.jsp">Login Again</a>  </h2>  </center>  
            
               
   
 
 
            
          
            
            
            
            
        
	</div>   
  </body>
    <jsp:include page="../pages/footer.jsp"></jsp:include>



        
        
        
    </body>
</html>
