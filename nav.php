<nav class="colorlib-nav" role="navigation">
	<div class="top-menu">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-3">
					<div id="colorlib-logo"><a href="index.php"> Tours And Travels </a></div>
				</div>
				<div class="col-xs-10 text-right menu-1">
					<ul>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="index.php" ? "active" : "" ?>"><a href="index.php">Home</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="tours.php" ? "active" : "" ?>"><a href="tours.php">Tours</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="tour-place.php" ? "active" : "" ?>"><a href="tours.php">Tour-place</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="hotels.php" ? "active" : "" ?>"><a href="hotels.php">Hotels</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="hotel-room.php" ? "active" : "" ?>"><a href="hotel-room.php">hotel-room</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="feedback.php" ? "active" : "" ?>"><a href="feedback.php">Feedback</a></li>

						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="contact us.php" ? "active" : "" ?>"><a href="contact us.php">Contact Us</a></li>
						<li class="<?php echo basename($_SERVER['PHP_SELF'])=="admin.php" ? "active" : "" ?>"><a href="admin.php">admin</a></li>

						<?php
			            //  $login= "<li id=\"id01\"><a href=\"#\" onclick=\"document.getElementById('id01').style.display='block'\" style=\"width:auto;\" >Login</a></li>";
			                $login= "<li id=\"id01\"><a href=\"login.php\">Login</a></li>";
			                $logout= "<li><a href=\"Admin/logout.php\">Logout</a></li>";

        					echo isset($_SESSION['user']) ? $logout : $login;
    					?>

    					<?php

    						$className= (basename($_SERVER['PHP_SELF'])=="register.php" ? "active" : "") ;

    						$register= "<li class=". "\"$className\"". "><a href=\"register.php\">Register</a></li>";
			                $admin= "<li><a href=\"Admin\">Admin</a></li>";

        					echo isset($_SESSION['user']) ? $admin : $register;
						?>

					

							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</nav>