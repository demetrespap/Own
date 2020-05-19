<?php 
include "db.php";
include "function.php";

require 'way2talk/./vendor2/PHPMailer/PHPMailerAutoload.php';

?>
<?php 
$errors = array();
if (isset($_POST['submit']))
{
    if(ifItIsMethod('post'))
     {                                        
        if (isset($_POST['email']))
        {
    
            $email= $_POST['email'];
            $length = 50;
            $token = bin2hex(openssl_random_pseudo_bytes($length));

    
            if(email_exists($email))
            {
                if ($stmt = mysqli_prepare($connection,"UPDATE users SET token = '{$token}' WHERE email = ?"))
                {
                    mysqli_stmt_bind_param($stmt, "s", $email);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_close($stmt);


                        $select_user_info_query = "SELECT * FROM users WHERE email = '{$email}'";
						$select_user_info = mysqli_query($connection, $select_user_info_query);
						$row = mysqli_fetch_array($select_user_info);
						$name = $row['username'];
                    /**
                     * 
                     * configure PHPMailer
                     * 
                     */



                    $mail = new PHPMailer();
                    $mail->isSMTP();                                            // Send using SMTP
                    $mail->Host       = 'mail.way2talk-slp.com';                      // Set the SMTP server to send through
                    $mail->Username   = 'info@way2talk-slp.com';                      // SMTP username
                    $mail->Password   = 'Elboss1';                  // SMTP password
                    $mail->Port       = 465;                      // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above                               // SMTP password
                    $mail->SMTPSecure = 'ssl';                                  // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                    $mail->SMTPAuth = true;
                    $mail->isHTML(true);
                    $mail->setFrom('info@way2talk-slp.com','SpeechRehabCenter');
                    $mail->addAddress($email);
                    $mail->Subject = 'Forgot your password? Reset it here!';
                   $mail->Body = '<style type="text/css" rel="stylesheet" media="all">
                    /* Base ------------------------------ */
                   
                    @import url("https://fonts.googleapis.com/css?family=Nunito+Sans:400,700&display=swap");
                    body {
                      width: 100% !important;
                      height: 100%;
                      margin: 0;
                      -webkit-text-size-adjust: none;
                    }
                   
                    a {
                      color: #3869D4;
                    }
                   
                    a img {
                      border: none;
                    }
                   
                    td {
                      word-break: break-word;
                    }
                   
                    .preheader {
                      display: none !important;
                      visibility: hidden;
                      mso-hide: all;
                      font-size: 1px;
                      line-height: 1px;
                      max-height: 0;
                      max-width: 0;
                      opacity: 0;
                      overflow: hidden;
                    }
                    /* Type ------------------------------ */
                   
                    body,
                    td,
                    th {
                      font-family: "Nunito Sans", Helvetica, Arial, sans-serif;
                    }
                   
                    h1 {
                      margin-top: 0;
                      color: #333333;
                      font-size: 22px;
                      font-weight: bold;
                      text-align: left;
                    }
                   
                    h2 {
                      margin-top: 0;
                      color: #333333;
                      font-size: 16px;
                      font-weight: bold;
                      text-align: left;
                    }
                   
                    h3 {
                      margin-top: 0;
                      color: #333333;
                      font-size: 14px;
                      font-weight: bold;
                      text-align: left;
                    }
                   
                    td,
                    th {
                      font-size: 16px;
                    }
                   
                    p,
                    ul,
                    ol,
                    blockquote {
                      margin: .4em 0 1.1875em;
                      font-size: 16px;
                      line-height: 1.625;
                    }
                   
                    p.sub {
                      font-size: 13px;
                    }
                    /* Utilities ------------------------------ */
                   
                    .align-right {
                      text-align: right;
                    }
                   
                    .align-left {
                      text-align: left;
                    }
                   
                    .align-center {
                      text-align: center;
                    }
                    /* Buttons ------------------------------ */
                   
                    .button {
                      background-color: #3869D4;
                      border-top: 10px solid #3869D4;
                      border-right: 18px solid #3869D4;
                      border-bottom: 10px solid #3869D4;
                      border-left: 18px solid #3869D4;
                      display: inline-block;
                      color: #FFF;
                      text-decoration: none;
                      border-radius: 3px;
                      box-shadow: 0 2px 3px rgba(0, 0, 0, 0.16);
                      -webkit-text-size-adjust: none;
                      box-sizing: border-box;
                    }
                   
                    .button--green {
                      background-color: #22BC66;
                      border-top: 10px solid #22BC66;
                      border-right: 18px solid #22BC66;
                      border-bottom: 10px solid #22BC66;
                      border-left: 18px solid #22BC66;
                    }
                   
                    .button--red {
                      background-color: #FF6136;
                      border-top: 10px solid #FF6136;
                      border-right: 18px solid #FF6136;
                      border-bottom: 10px solid #FF6136;
                      border-left: 18px solid #FF6136;
                    }
                   
                    @media only screen and (max-width: 500px) {
                      .button {
                        width: 100% !important;
                        text-align: center !important;
                      }
                    }
                    /* Attribute list ------------------------------ */
                   
                    .attributes {
                      margin: 0 0 21px;
                    }
                   
                    .attributes_content {
                      background-color: #F4F4F7;
                      padding: 16px;
                    }
                   
                    .attributes_item {
                      padding: 0;
                    }
                    /* Related Items ------------------------------ */
                   
                    .related {
                      width: 100%;
                      margin: 0;
                      padding: 25px 0 0 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                    }
                   
                    .related_item {
                      padding: 10px 0;
                      color: #CBCCCF;
                      font-size: 15px;
                      line-height: 18px;
                    }
                   
                    .related_item-title {
                      display: block;
                      margin: .5em 0 0;
                    }
                   
                    .related_item-thumb {
                      display: block;
                      padding-bottom: 10px;
                    }
                   
                    .related_heading {
                      border-top: 1px solid #CBCCCF;
                      text-align: center;
                      padding: 25px 0 10px;
                    }
                    /* Discount Code ------------------------------ */
                   
                    .discount {
                      width: 100%;
                      margin: 0;
                      padding: 24px;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      background-color: #F4F4F7;
                      border: 2px dashed #CBCCCF;
                    }
                   
                    .discount_heading {
                      text-align: center;
                    }
                   
                    .discount_body {
                      text-align: center;
                      font-size: 15px;
                    }
                    /* Social Icons ------------------------------ */
                   
                    .social {
                      width: auto;
                    }
                   
                    .social td {
                      padding: 0;
                      width: auto;
                    }
                   
                    .social_icon {
                      height: 20px;
                      margin: 0 8px 10px 8px;
                      padding: 0;
                    }
                    /* Data table ------------------------------ */
                   
                    .purchase {
                      width: 100%;
                      margin: 0;
                      padding: 35px 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                    }
                   
                    .purchase_content {
                      width: 100%;
                      margin: 0;
                      padding: 25px 0 0 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                    }
                   
                    .purchase_item {
                      padding: 10px 0;
                      color: #51545E;
                      font-size: 15px;
                      line-height: 18px;
                    }
                   
                    .purchase_heading {
                      padding-bottom: 8px;
                      border-bottom: 1px solid #EAEAEC;
                    }
                   
                    .purchase_heading p {
                      margin: 0;
                      color: #85878E;
                      font-size: 12px;
                    }
                   
                    .purchase_footer {
                      padding-top: 15px;
                      border-top: 1px solid #EAEAEC;
                    }
                   
                    .purchase_total {
                      margin: 0;
                      text-align: right;
                      font-weight: bold;
                      color: #333333;
                    }
                   
                    .purchase_total--label {
                      padding: 0 15px 0 0;
                    }
                   
                    body {
                      background-color: whitesmoke;
                      color: #51545E;
                    }
                   
                    p {
                      color: #51545E;
                    }
                   
                    p.sub {
                      color: #6B6E76;
                    }
                   
                    .email-wrapper {
                      width: 100%;
                      margin: 0;
                      padding: 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      background-color: #F4F4F7;
                    }
                   
                    .email-content {
                      width: 100%;
                      margin: 0;
                      padding: 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                    }
                    /* Masthead ----------------------- */
                   
                    .email-masthead {
                      padding: 25px 0;
                      text-align: center;
                    }
                   
                    .email-masthead_logo {
                      width: 94px;
                    }
                   
                    .email-masthead_name {
                      font-size: 16px;
                      font-weight: bold;
                      color: #A8AAAF;
                      text-decoration: none;
                      text-shadow: 0 1px 0 white;
                    }
                    /* Body ------------------------------ */
                   
                    .email-body {
                      width: 100%;
                      margin: 0;
                      padding: 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      background-color: #FFFFFF;
                    }
                   
                    .email-body_inner {
                      width: 570px;
                      margin: 0 auto;
                      padding: 0;
                      -premailer-width: 570px;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      background-color: #FFFFFF;
                    }
                   
                    .email-footer {
                      width: 570px;
                      margin: 0 auto;
                      padding: 0;
                      -premailer-width: 570px;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      text-align: center;
                    }
                   
                    .email-footer p {
                      color: #6B6E76;
                    }
                   
                    .body-action {
                      width: 100%;
                      margin: 30px auto;
                      padding: 0;
                      -premailer-width: 100%;
                      -premailer-cellpadding: 0;
                      -premailer-cellspacing: 0;
                      text-align: center;
                    }
                   
                    .body-sub {
                      margin-top: 25px;
                      padding-top: 25px;
                      border-top: 1px solid #EAEAEC;
                    }
                   
                    .content-cell {
                      padding: 35px;
                    }
                    /*Media Queries ------------------------------ */
                   
                    @media only screen and (max-width: 600px) {
                      .email-body_inner,
                      .email-footer {
                        width: 100% !important;
                      }
                    }
                   
                    @media (prefers-color-scheme: dark) {
                      body,
                      .email-body,
                      .email-body_inner,
                      .email-content,
                      .email-wrapper,
                      .email-masthead,
                      .email-footer {
                        background-color: #333333 !important;
                        color: #FFF !important;
                      }
                      p,
                      ul,
                      ol,
                      blockquote,
                      h1,
                      h2,
                      h3 {
                        color: #FFF !important;
                      }
                      .attributes_content,
                      .discount {
                        background-color: #222 !important;
                      }
                      .email-masthead_name {
                        text-shadow: none !important;
                      }
                    }
                    </style>
                    <!--[if mso]>
                    <style type="text/css">
                      .f-fallback  {
                        font-family: Arial, sans-serif;
                      }
                    </style>
                  <![endif]-->

                    <table class="email-wrapper" width="100%" cellpadding="0" cellspacing="0" role="presentation">
                      <tr>
                        <td align="center">
                          <table class="email-content" width="100%" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                              <td class="email-masthead">
                                <img src="" alt="" width ="150px">
                              </td>
                            </tr>
                            <!-- Email Body -->
                            <tr>
                              <td class="email-body" width="100%" cellpadding="0" cellspacing="0">
                                <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0" role="presentation">
                                  <!-- Body content -->
                                  <tr>
                                    <td class="content-cell">
                                      <div class="f-fallback">
                                        <h2>Hello '.$name.',</h2>
                                        <p>Έχετε στείλει με επιτυχία αίτημα για αλλαγή κωδικού πρόσβασης. Κάνετε κλικ στο πιο κάτω κουμπί για να επαναφέρετε τον κωδικό σας.</p>
                                        <!-- Action -->
                                        <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
                                          <tr>
                                            <td align="center">
                                              <!-- Border based button
                                            https://litmus.com/blog/a-guide-to-bulletproof-buttons-in-email-design -->
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0" role="presentation">
                                                <tr>
                                                  <td align="center">
                                                    <a href="https://way2talk-slp.com/forgot_pass5.php?email='.$email.'&token='.$token.'" class="f-fallback button button--green" target="_blank" style="text-dexoration:none">Επαναφορά Κωδικού Πρόσβασης</a>
                                                  </td>
                                                </tr>
                                              </table>
                                            </td>
                                          </tr>
                                        </table>
                                        <p>Εάν δεν κάνατε αίτημα για επαναφορά κωδικού, αγνοείστε το παρόν ηλεκτρονικό μήνυμα.</p>
                                        <p>Με εκτίμηση,
                                          <br>SpeechRehabCenter</p>
                                        <!-- Sub copy -->
                                        <table class="body-sub" role="presentation">
                                          <tr>
                                            <td>
                                              <p class="f-fallback sub">Εάν αντιμετωπίζετε κάποιο πρόβλημα με το πιο πάνω κουμπί, αντιγράψτε το σύνδεσμο πιο κάτω στον ιστότοπό σας.</p>
                                              <p class="f-fallback sub">https://way2talk-slp.com/forgot_pass5.php?email='.$email.'&token='.$token.'</p>
                                            </td>
                                          </tr>
                                        </table>
                                      </div>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0" role="presentation">
                                  <tr>
                                    <td class="content-cell" align="center">
                                      <p class="f-fallback sub align-center">&copy; 2020 SpeechRehabCenter. All rights reserved.</p>
                                      <p class="f-fallback sub align-center">
                                        SpeechRehabCenter
                                        <br><a href="info@way2talk-slp.com" style="text-decoration:none;">info@way2talk-slp.com</a>
                                      </p>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>';
                    // <a href="https://way2talk-slp.com/forgot_pass5.php?email='.$email.'&token='.$token.' ">https://way2talk-slp.com/forgot_pass5.php?email='.$email.'&token='.$token.'</a>

                    
                    
                    
                    
                    
                   /* $sql = "SELECT email_address FROM users";
                    $result = mysqli_query($sql,$connection);

                    while ($row_data = mysqli_fetch_array($result)) 
                    {

                        // Then you will set your variables for the e-mail using the data 
                        // from the array.

                        $from = 'makis080997@gmail.com';
                        $to = $row_data['email_address']; // The column where your e-mail was stored.
                        $subject = 'Forgot your password? Reset it here!';
                        $msg = '<p>Please click here to reset your password 
                        <a href="http://localhost:8080/xoroempnefsi/website/html/forgot_pass2.php?email='.$email.'&token='.$token.' ">http://localhost:8080/xoroempnefsi/website/html/forgot_pass2.php?email='.$email.'&token='.$token.'</a> </p>';
                        mail($to, $subject, $msg, $from);
                    }*/

                    $mail->CharSet = 'UTF-8';
                    if ($mail->send())
                    {
                        $emailSent = true;
                        
                    }

                }

            } else {
				array_push($errors, "Το email αυτό δεν υπάρχει!");	//If email does not exist then show error message
			}
               
        }
        
    }  
}





?>

<!DOCTYPE html>
<html lang="en">
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
<head>
	<title>Ανάκτηση κωδικού</title>
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
			<div class="wrap-login100 p-t-50 p-b-90">
			    <?php if(!isset($emailSent)): ?>
				<form class="login100-form validate-form flex-sb flex-w" action="forgot_password.php" method="POST">
					<span class="login100-form-title p-b-51">
						Ανακτηση κωδικου
					</span>
					<div class="wrap-input100 validate-input m-b-16" data-validate = "email is required">
						<input class="input100" type="email" name="email" placeholder="email">
						<span class="focus-input100"></span>
					</div>

                    <?php include "errors.php"?>
					<div class="container-login100-form-btn m-t-17">
						<input type="submit" class="login100-form-btn m-t-17 bg-dark" value="Aποστολη email" name=submit style="border-radius: 10px;background-color:#1a7599!important;color:white;">
						</button>
					</div>
                </form>
                <?php else: ?>
                <form class="login100-form validate-form flex-sb flex-w" action="index.php" method="">
					<span class="login100-form-title p-b-51">
						Ανακτηση κωδικου
					</span>
					
					<span class="w-100 text-center"><strong>Παρακαλώ ελέγξτε το email σας</strong></span>
					
					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn m-t-17 bg-dark" style="border-radius: 10px;background-color:#1a7599!important;color:white;">Πισω στη σελιδα συνδεσης</button>
					</div>
                </form>
                <?php endIF; ?>
			</div>
		</div></div>
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