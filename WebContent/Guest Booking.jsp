<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import = "com.talentsprint.userbean.UserBean" %>
    <%@ page import = "com.talentsprint.availabilitybean.AvailabilityBean" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
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

<!-- Style --> <link rel="stylesheet" href="css/guestbookingstyle.css" type="text/css" media="all" />


<title>Guest Booking</title>
<style>
.button {
    background-color: blue; /* Green */
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


.button3 {border-radius: 8px;}
.button4 {border-radius: 12px;}

</style>
</head>
<body>
<!-- header -->

	
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
	
<br><br>
        <% 
            //UserBean bean = new UserBean();
            //String email = bean.getEmail_Id();
             UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
              AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/sample", "root", "sush131097");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from bd7 where email='"+currentUser.getEmail_Id()+"'") ; 
                
        %>
		<div class="agile-tables">
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
                <th>Cancellation</th>
            </tr>
            </thead>
            <tbody>
            <% while(resultset.next()){ %>
            <tr>
                <td> <%= resultset.getInt(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getInt(3) %></td>
                <td> <%=availabilityUser.getRoomType() %></td>
                <td> <%= resultset.getString(5) %></td>
                <td> <%= resultset.getString(6) %></td>
                
                <td><button class="button button4" data-toggle="modal" data-target="#myModal" onclick="" ><%int id = resultset.getInt(3); %>Cancel Booking</a></button></td>
            </tr>
            </tbody>
            <% } %>
        </TABLE>
        </div>
        </div>
        <!-- Modal -->
           <div class="modal fade" id="myModal" role="dialog">
             <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
        
          Confirmation<button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
		
		<div class="container">
	       
         <div class="row lead">
           
           Proceed for cencellation??
	     </div>
    
       
        </div>
		
		
        <div class="modal-footer">
        <form action = "CancelBooking" method = "post">
        <button type="submit"  class="btn btn-default"  style="width:10%;">Yes</button>
        <input type="button" class="btn btn-default" data-dismiss="modal" value ="No" style="width:10%;"></input>
        </form>
          
          
        </div>
      </div>
      
    </div>
  </div>
</body>
</html>