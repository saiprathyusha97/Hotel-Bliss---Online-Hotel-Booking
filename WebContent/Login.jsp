<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

<title>Hotel Sheraton - Your home away from home</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Existing Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta-Tags -->

<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />

<!-- Style --> <link rel="stylesheet" href="css/adminstyle.css" type="text/css" media="all">

<!-- Fonts -->
<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
<!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>HOTEL SHERATON</h1>

	<div class="w3layoutscontaineragileits">
	<h2>Admin Login</h2>
		<form action="LoginServlet" method="get">
			<input type="email" name="email" placeholder="EMAIL" required>
			<input type="password" name="password" placeholder="PASSWORD" required>
			<div class="aitssendbuttonw3ls">
				<input type="submit" value="LOGIN">
				<div class="clear"></div>
			</div>
		</form>
	</div>
	
	
	<div class="w3footeragile">
		<p>All Rights Reserved | Design by <a href="#" target="_blank">BVRITH</a></p>
	</div>

	
	<script type="text/javascript" src="js/jquerymin.js"></script>

	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>

</body>
<!-- //Body -->

</html>