<%@ page import="services.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
      <link href="../styes/footer.css" rel="stylesheet" type="text/css"/>
      <link href="../styes/header.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8">
    <title>Calm breeze login screen</title>
	<link href="/styes/index.css" rel="stylesheet" type="text/css"/>
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
	color: green;
}
input {
	width:388px;
	height:40px;
	border-radius:8px;
	border-width: 7px;
	border-color: teal;
	text-shadow: green;
	font-size: 18px;
	color: green;
	font-weight: 400;
	padding:10px;
	margin:10px;
}
#submit{
	background-color: teal;
	opacity:0.6;
	width:280px;
	height:80px;
	padding:10px;
	margin:10px;
	border-radius:5px;
	border-width:5px;
	border-color:teal;
	font-weight: 300;
	font-size:20px;
	font-family:elevation;	
}
  	</style>
  </head>
  <jsp:include page="../pages/header.jsp"></jsp:include>
  
  <body id="body">
	<div class="container">
		<h1>Welcome</h1>	
                <form class="form" method="get" action="../loginservlet">
			<input type="text" placeholder="Username" name="userName" required="required" autocomplete="off">
			<input type="password" placeholder="Password" name="password" required="required">
			<button id="submit" name="submit" type="submit" >Login</button>
		</form>
                <br><br><br>
                <h3> do not Have an account ?</h3>
                <a href="../register"><h3>Register</h3></a>        
	</div>   
      <jsp:include page="../pages/footer.jsp"></jsp:include>      
  </body>
</html>
