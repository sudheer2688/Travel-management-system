<?php
if(!isset($_SESSION)) { session_start(); }
function data_sanitization($data)
{
	$data= trim($data);
	$data= stripcslashes($data);
	$data= htmlspecialchars($data);
	return $data;
}
if($_SERVER['REQUEST_METHOD']== "POST")
{
  require 'config.php';
  $uniqueID = md5(rand() * time());
  $target_dir = "Admin/dist/img/";
  $target_dir_temp = "dist/img/";
  
  $username=data_sanitization($_POST['username']);
  $password=data_sanitization($_POST['password']);
  $name=data_sanitization($_POST['name']);
  $email=data_sanitization($_POST['email']);
  $phone=data_sanitization($_POST['phone']);
 
  
  
  $duplicate_check=mysqli_query($conn, "SELECT username from users where username='$username' and deletedAt is NULL ");
  $duplicate_count= mysqli_num_rows($duplicate_check);
  
  
  $duplicate_check_email=mysqli_query($conn, "SELECT email from users where email='$email' and deletedAt is NULL ");
  
  
  
  $statement="insert into users(username,name,password,email,phone,user_role,image) values ('$username','$name', '$password', '$email', '$phone')";

  mysqli_close($conn);
}
?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>User Registrarion</title>
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

	<div id="page">

<?php include 'nav.php'; ?>

		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-45.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>Registration Page</h1>
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
							<div class="col-md-12">
								<div class="wrap-division">
									<div class="col-md-12 col-md-offset-0 heading2 animate-box">
										<h2>User Register</h2>
									</div>
									<div class="row">	
										<div class="col-md-12 animate-box">
											<div class="room-wrap">
												<div class="row">
            									  <form role="form" name="hotels-enq" method="post" action="" enctype="multipart/form-data">
									                <div class="form-group">
									                  <label> User Name</label>
									                  <input type="text" class="form-control" id="sub-input" placeholder="Your Name" name="name" value=""required pattern="^([a-zA-Z\s'-]+\.)*[a-zA-Z\s'-]+$" title="Please Enter Your Name">
									                </div>
										            
													<div class="form-group">
									                  <label>Email Id</label>
									                  <input type="email" class="form-control" id="email" placeholder="Your Email" name="email" value="">
									                </div>
										            <div class="form-group">
									                  <label>Enter your Password</label>
									                  <input type="password" class="form-control" id="sub-input" placeholder="Enter Your password" name="password" value="">
									                </div>
									                
                                                    
									                <div class="form-group">
									                  <label>Mobile Number</label>
									                  <input type="text" class="form-control" id="sub-input" placeholder="Your Phone Number" name="phone" value=""required pattern="^[0-9]{3,15}$" title="Enter Your Phone Number">
									                </div>
                                                    												
                  									<div class="error">
									                 <?php

									                   if (!empty($notifyMsg)) 
									                   {
									                    echo "<p><span id=\"error\">$notifyMsg</span></p>";
									                   }

									                 ?>
										            </div>		
                  									<button type="submit" class="btn btn-primary">SUBMIT</button>
                  								   </form>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
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
    $(".username-unavailable").css("display", "none");
    $(document).ready(function() {
    $('#username').keyup(function() {
    var value = $(this).val();
    
    $.ajax({
      type: 'post',
      url: 'user_available_check.php',
      data: {'username' : value},
      success: function(r) {
        $('.username-unavailable').html(r);
        $(".username-unavailable").css("display", "");
                            }
      });
      });
      });
    </script>
	
    <script type="text/javascript">
    $(".email-unavailable").css("display", "none");
    $(document).ready(function() {
    $('#email').keyup(function() {
    var value = $(this).val();
    
    $.ajax({
      type: 'post',
      url: 'email_available_check.php',
      data: {'email' : value},
      success: function(r) {
        $('.email-unavailable').html(r);
        $(".email-unavailable").css("display", "");
                            }
      });
      });
      });
    </script>

   <script type="text/javascript">
  
  (function(){
   var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
   })();
   </script>
   <!--End of Tawk.to Script-->





	</body>
</html>

