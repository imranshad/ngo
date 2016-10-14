<%-- 
    Document   : header
    Created on : Sep 14, 2016, 2:40:40 AM
    Author     : imran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="services.*; "%>
<!DOCTYPE html>
<html>
    
    <body>   
        <div id="header">
            <table border="0" width="0" cellspacing="10" cellpadding="5">               
                <tbody>
                    <tr>                     
                        <td><li><a href="http://localhost:8080/System/index.jsp" >Home</a></li></td>
                        <td><li><a href="">Services </a></li></td>
                        <td><li><a href="http://localhost:8080/System/pages/donation.jsp">Donation </a></li></td>
                        <td><li><a href="">About </a></li></td>
<td>   <div id="profile"><h2> 
            <% 

            if(session.getAttribute("userName")!=null){
                            loginDAO dao=new loginDAO();
            loginBean bean=new loginBean();
                out.println("<h2>"+"Welcome "+session.getAttribute("userName")+"</h2>");
                out.println("<li><a href='http://localhost:8080/System/pages/profile.jsp' >Profile</a></li>");
                out.println("<td><li><a href='http://localhost:8080/System/pages/logout.jsp'>Logout </a></li></td>");
            }
            else{ out.println("<td><li><a href='http://localhost:8080/System/pages/login.jsp'>Login / Register </a></li></td>");}
            %>     
        </h2></div>    </td>                     
                    </tr>
                </tbody>
            </table>                  
        </div>
        </body>
</html>
