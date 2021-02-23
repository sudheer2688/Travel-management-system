<?php
if(!isset($_SESSION)) { session_start(); }

if(isset($_GET['submit']))
{
	$hotel_location= $_GET['hotel_location'];
	$_SESSION['hotel_location']= $hotel_location;
}




?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Search Results- Hotel</title>
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

<?php include 'Admin/login.php'; ?>

	<div class="colorlib-loader"></div>

	<div id="page">

<?php include 'nav.php'; ?>

		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-13.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>Search Results- Hotel</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="wrap-division">
			                <?php
			                    require 'config.php';

							    if (isset($_GET['pageno'])) {
							        $pageno = $_GET['pageno'];
							    } else {
							        $pageno = 1;
							    }

							    $no_of_records_per_page = 4;
							    $offset = ($pageno-1) * $no_of_records_per_page;							   

						        $total_pages_sql = "SELECT COUNT(*) FROM hotels WHERE location LIKE '%".$_SESSION['hotel_location']."%' and deletedAt is NULL";
						        $result = mysqli_query($conn,$total_pages_sql);
						        $total_rows = mysqli_fetch_array($result)[0];
						        $total_pages = ceil($total_rows / $no_of_records_per_page);

			                    $statement="SELECT * FROM hotels WHERE location LIKE '%".$_SESSION['hotel_location']."%' and deletedAt is NULL LIMIT $offset, $no_of_records_per_page";
			                    $result = mysqli_query($conn, $statement);

			                    if (mysqli_num_rows($result) > 0)
			                    {
			                        while($row = mysqli_fetch_assoc($result))
			                        {
			                     		$min_price_query= mysqli_query($conn, "SELECT min(price) from room_type WHERE hotel_id= $row[hotel_id]");
			                     		$min_price= mysqli_fetch_assoc($min_price_query);
			                     		$price_min= $min_price['min(price)'];
			                     		//var_dump($min_price);



								echo "<div class=\"col-md-6 col-sm-6 animate-box\">";
									echo "<div class=\"hotel-entry\">";
										echo "<a href=\"hotel-room.php?hotel_id=$row[hotel_id]\" class=\"hotel-img\" style=\"background-image: url(Admin/$row[image]);\">";
										echo "</a>";
										echo "<div class=\"desc\">";
											echo "<h3><a href=\"hotel-room.php?hotel_id=$row[hotel_id]\">$row[title]</a></h3>";
											echo "<span class=\"place\">$row[location]</span>";
											echo "<p>$row[hotel_desc]</p>";
										echo "</div>";
									echo "</div>";
								echo "</div>";

			                        }
			                    }
			                    else
			                    {
			                        echo "Nothing found in db";
			                    }
			                    mysqli_close($conn);
			                ?>


							</div>
						</div>
						<div class="row">
							<div class="col-md-12 text-center">
							    <ul class="pagination">
							        <li><a href="?pageno=1">First</a></li>
							        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
							            <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Prev</a>
							        </li>
							        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
							            <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a>
							        </li>
							        <li><a href="?pageno=<?php echo $total_pages; ?>">Last</a></li>
							    </ul>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>



	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
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
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5b82fb9aafc2c34e96e7eb01/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

	</body>
</html>

