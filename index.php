<style>
    .styling{
        border-color:#1a7599;
        border-style: solid;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 5px 5px 10px 1px #2c5d71;
 
    }
    .hoverstyle:hover{
        background:none!important;
    }
</style>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Σύνδεση-Way2Talk</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/vendor/animate/animate.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="way2talk/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="way2talk/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="way2talk/css/util.css">
	<link rel="stylesheet" type="text/css" href="way2talk/css/stylelog.css">
<!--===============================================================================================-->
</head>
<body>
<?php
include "navbar-b-l.php";
?>
	<!--end of navbar and the begining of the form-->
	<div class="limiter">
		<div class="container-login100">
		    <div class="styling">
			<div class="wrap-login100 p-t-50 p-b-90" style="padding: 20px;">
			    <?php
			    if (isset($_GET['success']) && $_GET['success']==1){
      echo "<div class='alert alert-danger alert-diismissible'>";
      echo "<button type='button' class='close' data-dismiss='alert'>×</button>";
      echo "Λάθος <strong>username</strong> ή <strong>password!</strong></div>";
      }?>
				<form action="sindesi.php" class="login100-form validate-form flex-sb flex-w" method="post">
					<span class="login100-form-title p-b-51">
						Συνδεση
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<!--<div class="contact100-form-checkbox">-->
						<!--	<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">-->
						<!--	<label class="label-checkbox100" for="ckb1">-->
						<!--		Remember me-->
						<!--	</label>-->
						<!--</div>-->

						<div>
							<a href="forgot_password.php" class="txt1 hoverstyle">
								Ξεχάσατε τον κωδικό σας?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<input class="login100-form-btn m-t-17 bg-dark" type="submit" value="Συνδεση" name="login" style="border-radius: 10px;background-color:#1a7599;color:white;">
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
