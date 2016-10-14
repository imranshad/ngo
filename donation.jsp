<%@ page import="services.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
      <link href="../styes/footer.css" rel="stylesheet" type="text/css"/>
      <link href="../styes/header.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8">
    <title>Donate NGO</title>
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

  	</style>
  </head>
  <body id="body">
        <jsp:include page="../pages/header.jsp"></jsp:include>

	<div class="container">
		
                               
 
            <h2> Select Amount and  Click On Donate </h2>

            
                <!-- The PayPal Donation Button -->
        
      <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" >
        <div>
            <input type="hidden" name="cmd" value="_donations" />
            <input type="hidden" name="item_name" value="Donation" />

            <!-- Your PayPal email: -->
            <input type="hidden" name="business" value="imran.shad@shad.com" />

            <!-- PayPal will send an IPN notification to this URL: -->
            <input type="hidden" name="notify_url" value="http://localhost:8080/System/pages/ipn.jsp" /> 

            <!-- The return page to which the user is navigated after the donations is complete: -->
            <input type="hidden" name="return" value="http://localhost:8080/System/pages/thankyou.jsp" /> 

            <!-- Signifies that the transaction data will be passed to the return page by POST -->
            <input type="hidden" name="rm" value="2" /> 


			<!-- 	General configuration variables for the paypal landing page. Consult 
            		http://www.paypal.com/IntegrationCenter/ic_std-variable-ref-donate.html for more info  -->

            <input type="hidden" name="no_note" value="1" />
            <input type="hidden" name="cbt" value="Click Me To complete the process" />
            <input type="hidden" name="no_shipping" value="1" />
            <input type="hidden" name="lc" value="US" />
            <input type="hidden" name="currency_code" value="USD" />
            <input type="hidden" name="custom" value="<%= session.getAttribute("userName")%>"/>


			<!-- The amount of the transaction: -->

			<select name="amount">
               <option value="50">$100</option>
                <option value="50">$50</option>
                <option value="20">$20</option>
                <option value="10" selected="selected">$10</option>
                <option value="5">$5</option>
                <option value="2">$2</option>
                <option value="1">$1</option>
            </select>

            <input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_LG.gif:NonHostedGuest" />

            <!-- You can change the image of the button: -->
            <input type="image"  src="https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif" name="submit" alt="PayPal - The safer, easier way to pay online!" />

          <img alt="" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />
        </div>
        </form>
            
               
   
 
 
            
          
            
            
            
            
        
	</div> 
          <jsp:include page="../pages/footer.jsp"></jsp:include>
  </body>
</html>









    