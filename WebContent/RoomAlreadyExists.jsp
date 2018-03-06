<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
<title>Hotel Sheraton : Your home away from home</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

<link href="css/style1.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--wefonts-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>


<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />


</head>
<body>
<!-- banner -->
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li><a href="Home.jsp"> <i class="fa fa-tachometer"></i> Home</a></li>
								<li>
									<a href="AddingRoom.jsp"><i class="fa fa-cogs" aria-hidden="true"></i>Add a room</a> 
								</li>
								<li>
									<a href="#"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Payment</a></li> 	
								<li><a href="DatabaseTables.jsp"> <i class="fa fa-table" aria-hidden="true"></i> Database Tables</a></li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
                <li class="second logo"><h1><a href="Home.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>SHERATON </a></h1></li>
					<li class="second admin-pic">
				       <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/admin.jpg" alt=""> </span> 
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>
				</li>
				
				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</li>

			</ul>
			<!-- //nav -->
			
		</div>
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->

					<!-- breadcrumbs -->
						<div class="w3l_agileits_breadcrumbs">
							<div class="w3l_agileits_breadcrumbs_inner">
								<ul>
									<li><a href="main-page.html">Home</a><span>«</span></li>
									<li>Add a Room</li>
								</ul>
							</div>
						</div>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle">ADDING A ROOM   </h2> 
					  <div align="center"><h4>Room Already Exists</h4></div>

<!--/forms-->
<div class="wthree_general graph-form agile_info_shadow ">
	<form action="AddRoomServlet" method="post">
	<div class="grid-1 ">
	
	<div class="form-body">
	Room No   <input type="text" class="text" value="" name = "room_no" >
	


<div >

	<br>
	

		
		<table id="table">
						<tr>
						<td>Room Type</td>
						</tr>
						
						<tr>
						<td><input type="radio" class="text" name="roomtype" value="1001" > Luxury</td>
						<td><input type="radio" class="text" name="roomtype" value="2002" > Deluxe</td>
						<td><input type="radio" class="text" name="roomtype" value="3003" > Executive</td>
						<td><input type="radio" class="text" name="roomtype" value="4004" > Suite</td>
						</tr>
						
						<tr></tr>
						</table>
		
	
	
	</div>	
	
</div>
<br>
<div align="center">
<input type="submit" class="btn btn-default" value = "ADD">
</div>
</div>
</form>
</div>
</div>
</div>
																													
<div class="copyrights">
	 <p>All Rights Reserved | Design by  <a href="#" target="_blank">BVRITH</a> </p>
</div>
<!--copy rights end here-->
<!-- js -->

          <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		  <script src="js/modernizr.custom.js"></script>
		
		   <script src="js/classie.js"></script>
		  <script src="js/gnmenu.js"></script>
		  <script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		 </script>

<!-- //js -->
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>
</html>