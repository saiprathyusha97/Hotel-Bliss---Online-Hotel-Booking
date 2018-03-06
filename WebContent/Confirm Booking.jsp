<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.talentsprint.userbean.UserBean" %>
    <%@ page import = "com.talentsprint.availabilitybean.AvailabilityBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="keywords" content="Hotel Info Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css1/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="//font.googleapis.com/css?family=Play:400,700&amp;subset=cyrillic,cyrillic-ext,greek,latin-ext" rel="stylesheet">
<!--//online-fonts -->
</head>
<body>
<!--header-->
<div class="agileheader">
	<h1>Booking Details</h1>
</div>
<!--//header-->

<!--main-->
<div class="main-w3l">
	
	
	<div class="banner-right-agile">
			<div class="banner-text">
				
				<form action="ConfirmServlet" method="post">
				<% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
				<% AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));%>
				<ul style="width: 600px;">
    <li style="float: left; width: 200px; padding: 2px;color:black; font-size: 120%;">Name : -   </li>
    <li style="color:#ffff99;font-size: 120%;"><%=currentUser.getFname()+ "  " + currentUser.getLname() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">E-Mail : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=currentUser.getEmail_Id()%></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Contact : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=currentUser.getContact() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Room Type : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=availabilityUser.getRoomType() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Room Number : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=availabilityUser.getRoomNo() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Check - In : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=availabilityUser.getCheckIn() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Check - Out : -</li>
    <li style="color:#ffff99;font-size: 120%;"><%=availabilityUser.getCheckOut() %></li><br>
    
    </ul>
    
				
				<br><br>	

					
<h1 style = "color:white;font-size: 25px;"><i>Your booking has been confirmed !!!</i></h1>	
<br>
<a href = "HomePage.jsp" style="color:black;">Go to Home Page</a>	
	</form>
			
<!-- Display Popup Button -->


</div>
			</div>
	</div>
	<div class="clear"></div>
</div>
<!--//main-->

<!--footer-->
<div class="footer-w3l">
	<p>&copy; 2017 Hotel Info Form. All rights reserved | Design by BVRITH</p>
</div>
<!--//footer-->
</body>
</html>