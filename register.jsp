
<%@ page import="services.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
      <link href="../styes/register.css" rel="stylesheet" type="text/css"/>
      <link href="../styes/header.css" rel="stylesheet" type="text/css"/>
      <link href="../styes/footer.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8">
    <title>Register At NGO</title>
  </head>
  <body id="body">
        <jsp:include page="../pages/header.jsp"></jsp:include>
	<div class="container">
                    <div id="registration-header">
            <center><h2>Register Yourself...</h2> </center>
        </div>
    <center>
        
        <div id="input-table">
            <form action="" method="post" >
                <table>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" id="fname" required="" placeholder="Enter your first name ...."></td>
                    </tr>
                                        <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" required=""  id="lname" placeholder="Enter your last name ...."></td>
                    </tr>
                    <tr>
                        <td> Email</td>
                        <td><input type="email" name="email" required=""  id="email" placeholder="Enter your email..." ></td>
                    </tr>
                    <tr>
                        <td>Post Address</td>
                        <td>
                    <input type="text" id="address" required=""  name="address" > 
                        </td>
                    </tr>
                                        <tr>
                        <td>Contact Number</td>
                        <td>
                    <input type="text" id="contact" required=""  name="contact" > 
                        </td>
                    </tr>
                                        <tr>
                        <td>User Name</td>
                        <td>
                    <input type="text" id="userName" required=""  name="user-name" > 
                        </td>
                    </tr>
                                        <tr>
                        <td>Password</td>
                        <td>
                            <input type="password" required=""  id="password" name="pwd" > 
                        </td>
                    </tr>
                                        <tr>
                        <td>User Type</td>
                        <td>
                            <select name="user-type"  >
                                <option value="Donor">Donor</option>
                                <option value="Volunteer">Volunteer</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <input type="submit" value="submit" name="submit">
            </form>            
<% 
    register user=new register();
    
   if(request.getParameter("submit") !=null ){  
      user.setfName(request.getParameter("fname"));
      user.setlName(request.getParameter("lname"));
      user.setAddress( request.getParameter("address"));
      user.setContact(request.getParameter("contact"));
      user.setEmail(request.getParameter("email"));
      user.setUserName(request.getParameter("user-name"));
      user.setPassword(request.getParameter("pwd"));    
      user.setUserType(request.getParameter("user-type"));
      user.insertToDb();
        out.println(" You are registered Successfully ...");
        session.setAttribute("userName", user.userName);
        out.println(session.getAttribute("userName"));
   } 
%>
<br><br>
<br><br>
    </div>
    </center> 
	</div>  
  <jsp:include page="../pages/footer.jsp"></jsp:include>
  </body>
</html>
