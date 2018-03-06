<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
    
<% Class.forName("com.mysql.jdbc.Driver"); %>
    
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
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
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
									<a href="BookARide.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Book a ride</a> 
									
								</li>
								<li><a href="DatabaseTables.jsp"> <i class="fa fa-table" aria-hidden="true"></i> Guest Details</a></li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
                <li class="second logo"><h1><a href="Hope.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Sheraton</a></h1></li>
					<li class="second admin-pic">
				       <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/admin.jpg" alt=""> </span> 
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="Login.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
									<li><a href="Home.jsp">Home</a><span>«</span></li>
									
									<li>Tables</li>
								</ul>
							</div>
						</div>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle"> Guest Details</h2>
									<!-- tables -->
									
									<div class="agile-tables">
										<div class="w3l-table-info agile_info_shadow">
										 <h3 class="w3_inner_tittle two">Guests Registration</h3>
											<% 
            //UserBean bean = new UserBean();
            //String email = bean.getEmail_Id();
            // UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
             // AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/sample", "root", "sush131097");

            Statement statement = connection.createStatement() ;
            ResultSet resultset,rs;
            resultset = statement.executeQuery("select * from reg2") ; 
                
        %>
		<div class="agile-tables">
			<div class="w3l-table-info agile_info_shadow">
			
        <TABLE id="table">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Date Of Birth</th>
                <th>Gender</th>
                
            </tr>
            </thead>
            <tbody>
            <% while(resultset.next()){ %>
            <tr>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                <td> <%= resultset.getString(4) %></td>
                <td> <%= resultset.getString(6) %></td>
                <td> <%= resultset.getString(7) %></td>
                
             </tr>
            </tbody>
            <% } %>
        </TABLE>
        </div>
        </div>
								
								<div class="agile-tables">
										<div class="w3l-table-info agile_info_shadow">
										 <h3 class="w3_inner_tittle two">Guest Booking Details </h3>
											<% 
            //UserBean bean = new UserBean();
            //String email = bean.getEmail_Id();
            
            Statement statement1 = connection.createStatement() ;
            ResultSet resultset1;
            resultset1 = statement1.executeQuery("select * from bd7") ; 
                
        %>
		
			<div class="w3l-table-info agile_info_shadow">
			
        <TABLE id="table">
        <thead>
            <tr>
                <th>Booking ID</th>
                <th>Email</th>
                <th>Room No</th>
                <th>Room Type</th>
                <th>Check-In</th>
                <th>Check-Out</th>
                
            </tr>
            </thead>
            <tbody>
            <% while(resultset1.next()){ %>
            <tr>
                <td> <%= resultset1.getInt(1) %></td>
                <td> <%= resultset1.getString(2) %></td>
                <td> <%= resultset1.getInt(3) %></td>
                <td> <%= resultset1.getString(4) %></td>
                <td> <%= resultset1.getString(6) %></td>
                <td> <%= resultset1.getString(7) %></td>
                
                
            </tr>
            </tbody>
            <% } %>
										  </table>
								</div>
<!--copy rights start here-->
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
<!-- tables -->

<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
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