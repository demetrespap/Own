<?php include "db.php" ?>
<?php include "function.php" ?>
<?php

if(!isset($_GET['email']) && !isset($_GET['token']))
{
    header("Location: index.php");
}

$errors = array();


if (isset($_POST['reset']))
{
    if($stmt = mysqli_prepare($connection,'SELECT username,email,token FROM users WHERE token=?'))
{
    mysqli_stmt_bind_param($stmt,"s",$_GET['token']);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt,$username,$email,$token);
    mysqli_stmt_fetch($stmt);
    mysqli_stmt_close($stmt);


    if (isset($_POST['password']) && isset($_POST['confirm_password']))
    {
        if($_POST['password'] === $_POST['confirm_password'])
        {
            $password = $_POST['password'];
            $pass=password_hash($password,PASSWORD_BCRYPT);
            if($stmt = mysqli_prepare($connection ,"UPDATE users SET token ='', password = '{$pass}' WHERE email = ?"))
            {
                mysqli_stmt_bind_param($stmt,"s",$_GET['email']);
                mysqli_stmt_execute($stmt);
                if(mysqli_stmt_affected_rows($stmt)>=1)
                {
                    header("Location: index.php");
                }
                mysqli_stmt_close($stmt);
                

            }

        } else {
			array_push($errors, "Οι κωδικοί πρόσβασης δεν ταιριάζουν");
		}
    }



}
}







?>
<!DOCTYPE html>
<html>
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
<title>SpeecRehabCenter</title>
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
</head>

<body>
<?php include "navbar-b-l.php";?>
<!--27/02/2020-->

<!-- Button to Open the Modal
<button class="btn btn-link" data-toggle="modal" data-target="#myModal">
Click here to reset your password! 
</button> -->

<!-- The Modal 
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">-->

      <!-- Modal Header 
      <div class="modal-header">
        <h4 class="modal-title">Forgot yout Password?</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>-->

      <!-- Modal body 
      <div class="modal-body">
      Email
      </div>-->
     
      <div class="limiter">
		<div class="container-login100">
		    <div class="styling">
			    <div class="wrap-login100 p-t-50 p-b-90" style="padding: 20px;">
                    <form action=" " class="login100-form validate-form flex-sb flex-w" method="post">
    					<span class="login100-form-title p-b-51">Επαναφορα κωδικου προσβασης</span>
                         <!-- <label for="exampleInputUsername1">Username</label>
                          <input type="username" class="form-control" id="exampleInputUsername1" placeholder="Enter Username">-->
                        <!--<input type="password" class="form-control required password" name="password" id="password" placeholder="Type to update your password">-->
                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Ο κωδικός είναι απαιτούμενο πεδίο">
                            <input type="text" class="input100 password required" id="password" name="password" placeholder="Νέος κωδικός..">
    						<span class="focus-input100"></span>
    					</div>
                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Η επαλήθευση κωδικού είναι απαιτούμενο πεδίο">
    						<input type="Password" class="input100 confpassword" id="confpassword" name="confirm_password" placeholder="Επαλήθευση νέου κωδικού..">
    						<span class="focus-input100"></span>
					    </div>
                          <!--<label for="exampleInputVerifyCode1">Verify Code</label>
                          <input type="text" class="form-control" id="verify_code" placeholder="Enter Verify Code">-->
            
      
      </div>
      <!-- Modal footer 
      <div class="modal-footer ">-->
      <?php include "errors.php"?>
      <button type="submit" href="https://way2talk-slp.com/" class="login100-form-btn m-t-17 bg-dark forgot_pass" name="reset"  style="border-radius: 10px;color:white;">Αποθηκευση</button>
      <!--<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>-->
      <!-- </div>-->
      <input type="hidden" class="hide" name="token" id="token" value="">
      
      </form>
      </div>
  </div>
</div>
</div>
</div>
</div>

</body>
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


</html>
<script>
    function showTable(){
    var x = document.getElementById('diagnosisTable');
    if (x.style.display == "none"){
        x.style.display = "table";
    }else{
        x.style.display = "none";
    }
}
$("input:checkbox").on('click', function() {
  var $box = $(this);
  if ($box.is(":checked")) {
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});
function testAllInputs(pane){
        var form = document.getElementById(pane);
        var x = form.getElementsByClassName("required");
        var y = form.getElementsByClassName("requiredonly");
        var w = form.getElementsByClassName("invalid");
        var i;
        var inputempty = [];
        var inputempty2 = [];
        
        for(i=0; i<x.length; i++){
            if(x[i].value === ""){
                inputempty[i] = x[i];
            }
        }
       
        for(i=0; i<y.length; i++){
            if(y[i].value === ""){
                inputempty2[i] = y[i];
            }
        }
        
        if( inputempty.length != 0 ||inputempty2.length !==0  || w.length != 0){
          for(i=0; i<inputempty.length; i++){
                $(inputempty[i]).addClass(" invalid");
                $(inputempty[i]).prev().html(" Το πεδίο είναι υποχρεωτικό!");
                $(inputempty[i]).prev().addClass(" invalidl");
          }
          
          for(i=0; i<inputempty2.length; i++){
                $(inputempty2[i]).addClass(" invalid");
                $(inputempty2[i]).prev().html(" Το πεδίο είναι υποχρεωτικό!");
                $(inputempty2[i]).prev().addClass(" invalidl");
          }
          if(inputempty.length != 0){
              $(inputempty[0]).focus();
          }else{
              $(inputempty2[0]).focus();
          }
        }else if(pane == "allInfo"){
            $('#submit').trigger('click');
        }else{
            $('.nav-tabs > .nav-item > .active').parent('li').next('li').find('a').trigger('click');
        }
    }
     $('.nonumbers').keyup( function(){
            let hasNumber=/[^[a-zA-ZΆΈ-ώ]/;
            var x = $(this).val();
            var y = $(this).hasClass("required");
            
            if(y && x===""){
                $(this).addClass(" invalid");
                $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
                $(this).prev().addClass(" invalidl");
            }else if (x.match(hasNumber)){
                $(this).addClass(" invalid");
                $(this).prev().html(" Αποδεκτά μόνο γράμματα!");
                $(this).prev().addClass(" invalidl");
            }else{
                $(this).removeClass(" invalid");
                $(this).prev().removeClass(" invalidl");
                $(this).prev().empty();
            }
                
    });
    
     $('.noletters').keyup( function(){
            let hasLetter=/[^\+0-9]/;
            var x = $(this).val();
            var y = $(this).hasClass("required");
            var w = $(this).hasClass("phone");
            
            if(y && x===""){
                $(this).addClass(" invalid");
                $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
                $(this).prev().addClass(" invalidl");
            }else if (x.match(hasLetter)){
                $(this).addClass(" invalid");
                $(this).prev().html(" Αποδεκτοί μόνο αριθμοί!");
                $(this).prev().addClass(" invalidl");
            }else if(!((x>=94000000 && x<=97999999) || (x>=99000000 && x<=99999999) || (x>=22000000 && x<27000000)) && w) {
                $(this).addClass(" invalid");
                $(this).prev().html(" Λάθος καταχώρηση τηλεφώνου!");
                $(this).prev().addClass(" invalidl");
            }else{
                $(this).removeClass(" invalid");
                $(this).prev().removeClass(" invalidl");
                $(this).prev().empty();
            }
    });
    
    $('.bday').change( function(){
        var x = $(this).val();
        var y = $(this).hasClass("required");
        var today = new Date();
        var date = (today.getFullYear()-3)+'-'+(today.getMonth()+1)+'-'+today.getDate();
        var date2 = (today.getFullYear()-100)+'-'+(today.getMonth()+1)+'-'+today.getDate();
        
        if(y && x===""){
            $(this).addClass(" invalid");
            $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
            $(this).prev().addClass(" invalidl");
        }else if((x>= date || x<=date2)){
            $(this).addClass(" invalid");
            $(this).prev().html("Μη αποδεκτή ημερομηνία!");
            $(this).prev().addClass(" invalidl");
        }else{
            $(this).removeClass(" invalid");
            $(this).prev().removeClass(" invalidl");
            $(this).prev().empty();
        }
    });
    
    $('.password').keyup( function(){
        var x = $(this).val();
        var w = $('.confpassword');
        var y = $(this).hasClass("required");
        if(x==="" && y){
            $(this).addClass(" invalid");
            $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
            $(this).prev().addClass(" invalidl");
        }else if(x.length>=6){
            $(this).removeClass(" invalid");
            $(this).prev().removeClass(" invalidl");
            $(this).prev().empty();
        }else{
            $(this).addClass(" invalid");
            $(this).prev().html("Μέγεθος μη αποδεκτό!");
            $(this).prev().addClass(" invalidl");
        }
        if(x!=w.val()){
            w.removeClass(" valid");
            w.prev().removeClass(" validl");
            w.prev().empty();
            w.addClass(" invalid");
            w.prev().html("<i class='fas fa-times-circle'></i>");
            w.prev().addClass(" invalidl");
        }
        
    });
    
    $('.confpassword').keyup( function(){
        var x = $(this).val();
        var w = $('.password').val();
        if(x===w){
            $(this).removeClass(" invalid");
            $(this).prev().removeClass(" invalidl");
            $(this).prev().empty();
            $(this).addClass("valid");
            $(this).prev().addClass("validl");
            $(this).prev().html("<i class='fas fa-check-circle'></i>");
        }else{
            $(this).removeClass(" valid");
            $(this).prev().removeClass(" validl");
            $(this).prev().empty();
            $(this).addClass(" invalid");
            $(this).prev().html("<i class='fas fa-times-circle'></i>");
            $(this).prev().addClass(" invalidl");
        }
    });
    
   $('.username').keyup(function (){
       var x = $(this).val();
       var name = [];
       name = $('.s');
       var i, flag;
       var y = $(this).hasClass("required");
       flag = false;
       for(i=0; i<name.length; i++){
           if(x === name[i].innerHTML){
            flag = true;
          }
       }
       if(y && x===""){
            $(this).addClass(" invalid");
            $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
            $(this).prev().addClass(" invalidl");
       }else if(flag==true){
            $(this).addClass(" invalid");
            $(this).prev().html("Το όνομα χρήστη χρησιμοποιείται ήδη!");
            $(this).prev().addClass(" invalidl");
          }
          else{
            $(this).removeClass(" invalid");
            $(this).prev().removeClass(" invalidl");
            $(this).prev().empty();
        }
   });
   
   $('.requiredonly').change( function(){
       var x = $(this).val();
       if(x===""){
            $(this).addClass(" invalid");
            $(this).prev().html(" Το πεδίο είναι υποχρεωτικό!");
            $(this).prev().addClass(" invalidl");
       }else{
            $(this).removeClass(" invalid");
            $(this).prev().removeClass(" invalidl");
            $(this).prev().empty();
       }
   });
    
</script>
