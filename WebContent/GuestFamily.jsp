<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
     <%@ page import = "com.talentsprint.userbean.UserBean" %>
     <%@ page import = "com.talentsprint.availabilitybean.AvailabilityBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Profile</title>

<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!--//fonts-->

<!-- Style --> <link rel="stylesheet" href="css/profilestyle.css" type="text/css" media="all" />

	<script src="js/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#tab2").hide();
			$("#tab3").hide();
			$(".tabs-menu a").click(function(event){
				event.preventDefault();
				var tab=$(this).attr("href");
				$(".tab-grid").not(tab).css("display","none");
				$(tab).fadeIn("slow");
			});
		});
	</script>
</head>
<body>

<!-- header -->
<% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
	<div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					
					<h1><a class="navbar-brand" href="#">Hotel <span>Sheraton</span><p class="logo_w3l_agile_caption">Your home away from home</p></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a href="HomePage.jsp" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">About</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Gallery</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Rooms</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Contact Us</a></li>
								
					
						</ul>
					</nav>
				</div>
			</nav>

		</div>
	</div>
<!-- //header -->


<h1 style="width:50%;align:center">YOUR PROFILE</h1>

<div class="container" >

	<div class="tabs-menu" >
		<ul>
			<li><a href="Guest Profile.jsp">Account</a></li>
			<li><a href="GuestInterests.jsp">Interests</a></li>
			<li><a href="GuestSocialLife.jsp">Social Life</a></li>
			<li><a href="GuestFamily.jsp">Favourites</a></li>
			<li><a href="GuestWork.jsp">Work</a></li>
		</ul>
	</div>

	<div class="tab-grids">
		<div id="tab1" class="tab-grid">
			<br><br>
		     	
		<form style="float: left;">     		
				<% AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));%>
				<ul >
				
				
				
    <li style="float: left; width: 200px; padding: 2px;color:black; font-size: 120%;">Name : -   </li>
    <li style="color:black;font-size: 120%;"><%=currentUser.getFname()+ "  " + currentUser.getLname() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">E-Mail : -</li>
    <li style="color:black;font-size: 120%;"><%=currentUser.getEmail_Id()%></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Contact : -</li>
    <li style="color:black;font-size: 120%;"><%=currentUser.getContact() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Date Of Birth : -</li>
    <li style="color:black;font-size: 120%;"><%=currentUser.getDate_Of_Birth() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:black;font-size: 120%;">Gender : -</li>
    <li style="color:black;font-size: 120%;"><%=currentUser.getGender() %></li><br>
   
    
    </ul>
		</form>	 	
		</div>	
		</div>
	</div>

	

</body>
</html>