<?php 
session_start();



?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Tours And Travels</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  

	<link rel="stylesheet" href="Admin/dist/css/public.css" />

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>


	<div class="colorlib-loader"></div>

	<div id="page">

<?php include 'nav.php'; ?>

		<aside id="colorlib-hero">
			<div class="flexslider">
			   	<li style="background-image: url(images/header.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1> Tours And Travels </h1>
				   			
			  	</ul>
		  	</div>
		</aside>
		
		<div class="colorlib-tour colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h1><b>Popular Destination</b></h1>
						<p><b>Visit the most Awsome Scenic Beauties of Indian Regions with best affordable Pricing and Luxuries way.</b></p>
					</div>
				</div>
			</div>
			<div class="tour-wrap">
			<?php  
							   require 'config.php';

			                    $statement="select * from tours where deletedAt is null order by tour_id asc LIMIT 8";
			                    $res_data = mysqli_query($conn, $statement);

			                    if (mysqli_num_rows($res_data) > 0)
			                    {
			                        while($row = mysqli_fetch_assoc($res_data))
			                        {
										

										echo "<a href=\"tours.php?tour_id=$row[tour_id]\" class=\"tour-entry animate-box\">";
											echo "<div class=\"tour-img\" style=\"background-image: url(Admin/$row[image]);\">";
											echo "</div>";
											echo "<span class=\"desc\">";
												echo "<h2>$row[title]</h2>";
												echo "<span class=\"city\">$row[location]</span>";
										
											echo "</span>";
										echo "</a>";
							        }
			                    }
			                    else
			                    {
			                        echo "Nothing found in db";
			                    }
			                    //mysqli_close($conn);
			                ?>
						</div>
					</div>
				</div>
			</div>
		</div>			            
			</div>
		</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

<script type="text/javascript">
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
})();
</script>

	</body>
</html>
