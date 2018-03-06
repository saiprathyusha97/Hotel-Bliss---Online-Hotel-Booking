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
<style>


/* Style the tab */


/* Style the buttons inside the tab */
/*yle the tab content */
.tabcontent {
    
    
    width: 120%;
    padding: 40px 30px;
    float:center;
    

}
</style>
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
	<script>
function openProfile(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
</head>
<body>

<!-- header -->

	<% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					
					<h1><a class="navbar-brand" href="#">Hotel <span>Sheraton</span><p class="logo_w3l_agile_caption">Your home away from home</p></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a href="HomePage.jsp" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">About</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Gallery</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Rooms</a></li>
							<li class="menu__item"><a href="HomePage.jsp" class="menu__link scroll">Contact Us</a></li>
								
					
						</ul>
					</nav>
			
			</nav>

		</div>
	
<!-- //header -->
	

<h1 style="width:50%;align:center">YOUR PROFILE</h1>

<div class="container" >

	<div class="tabs-menu" class="tab">
		<ul>
			<li class="tablinks" onclick="openProfile(event, 'Account')"><a>Account</a></li>
			<li class="tablinks" onclick="openProfile(event, 'Interest')"><a>Interests</a></li>
			<li class="tablinks" onclick="openProfile(event, 'Social Profile')"><a>Social Profile</a></li>
			<li class="tablinks" onclick="openProfile(event, 'Favourites')"><a>Favourites</a></li>
			<li class="tablinks" onclick="openProfile(event, 'Work')"><a>Work</a></li>
		</ul>
	</div>
<div id="Account" class="tabcontent" style="display: none;">
  
		     	
		     		
				<% AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));%>
				<ul >
				
				
				
    <li style="float: left; width: 200px; padding: 2px;color:white; font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Name : -   </li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;"><%=currentUser.getFname()+ "  " + currentUser.getLname() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">E-Mail : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;"><%=currentUser.getEmail_Id()%></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Contact : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;"><%=currentUser.getContact() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Date Of Birth : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;"><%=currentUser.getDate_Of_Birth() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Gender : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;"><%=currentUser.getGender() %></li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">City : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Hyderabad</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Country : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">India</li><br>
   
    
    </ul>
		 	
		
</div>

<div id="Interest" class="tabcontent" style="display: none;">
  			
		 	
		
</div>

<div id="Social Profile" class="tabcontent" style="display: none;">
  			<ul >
	<li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Facebook : -   </li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Sushmitha</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Twitter : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">@Sush</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Instagram : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Sush@123</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Linked In : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Susmitha Sanikommu</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Skype : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">sushmitha@gmail.com</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Whats App : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">9542043558</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Snap Chat : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">sush</li><br>
   
    
    </ul>
		 	
		
</div>

<div id="Favourites" class="tabcontent" style="display: none;">
  			<ul >
	<li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Book : -   </li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Harry Potter Series</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Game : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Jardinains,Subsea Relic</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Food : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Biryani</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Holiday Spot : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">London</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Color : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Pink</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Sport : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Badminton</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Dress : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Lehenga</li><br>
   
    
    </ul>
		 	
		
</div>

<div id="Work" class="tabcontent" style="display: none;">
  			<ul >
	<li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Organization : -   </li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Microsoft</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">ID : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">I70D2456</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">E-Mail : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">sushmitha.mic@microsoft.in</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Contact : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">9642362366</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Designation : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Software Developer</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Experience : -</li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">4 Years</li><br>
    
    <li style="float: left; width: 200px; padding: 2px;color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">Projects Done : </li>
    <li style="color:white;font-size: 120%;letter-spacing: 1px;font-family: Nunito-Regular;">16</li><br>
    
    
   
    
    </ul>
		 	
		
</div>
  
</div>
	
	

	

</body>
</html>