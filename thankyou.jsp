<%@page contentType="text/html" pageEncoding="UTF-8"  import="services.SendEmail" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../styes/standard-style.css" rel="stylesheet" type="text/css"/>
        <link href="../styes/footer.css" rel="stylesheet" type="text/css"/>
        <link href="../styes/header.css" rel="stylesheet" type="text/css"/>
        <title>Thank you</title>
    </head>
    <body>
          <jsp:include page="../pages/header.jsp"></jsp:include>
            
        
        <div class="container">
        <h1>thank you for donation..... </h1>
        <br><p> Confirmation mail has been sent  To</p>
        <%
           // dbconnect email=new dbconnect();
           String a=request.getParameter("userName");
           String email;
           // out.println("this is parameter value"+a+"<br>");
            //out.println("this is  required email...."+email.getEmailAddress());
           //String mailTo=request.getParameter("custom");
          String mailTo="imran.shad@ymail.com";
           out.println(" "+mailTo);
            
         // SendEmail sendmail=new SendEmail();
           //sendmail.mail(mailTo);
           
            %>
            
            
        </div>
            <jsp:include page="../pages/footer.jsp"></jsp:include>
    </body>
</html>
