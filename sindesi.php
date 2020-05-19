<?php
$connection = mysqli_connect('localhost:3306', 'waytwota', 'Elboss.11014', 'waytwota_Way2TalkDB');
    if(!$connection)
    {
        echo "Error Accessing Database!";
    }
    ?>
<?php include session_start(); ?>
<?php
if (isset($_POST['login']))
    {
        $username = $_POST['username'];
        $password = $_POST['password'];
        
        $username = mysqli_real_escape_string($connection,$username);
        $password = mysqli_real_escape_string($connection,$password);
        

        $query = "SELECT * FROM users WHERE username = '{$username}' ";
        $select_user_query = mysqli_query($connection,$query);
        if(!$select_user_query)
            {
                die("Query Failed" . mysqli_error($connection));
            }
        while($row = mysqli_fetch_array($select_user_query))
                {
                    $db_user_id = $row['id_users'];
                    $db_username = $row['username'];
                    $db_password = $row['password'];
                    $db_id_role = $row['id_role'];
                    $db_id_patient = $row['id_patient'];
                    $db_id_therapist = $row['id_therapist'];
                    $db_email=$row['email'];

                }
        if($username === $db_username && password_verify($password,$db_password))
                {
                    $_SESSION['username'] = $db_username ;
                    $_SESSION['id_patient'] = $db_id_patient;
                    $_SESSION['id_therapist'] = $db_id_therapist;
                    $_SESSION['id_role'] = $db_id_role ;
                    $_SESSION['email'] = $db_email;
                   
                   
                    if($db_id_role==1){
                        header("Location: way2talk/admin/");
                    }
                    else if($db_id_role==2){
                        header("Location: way2talk/clients/");
                    }
                    else if($db_id_role==3){
                        header("Location: way2talk/users/");
                    }
                }
        else
        {
            header("Location: index.php?success=1");
        }
        
               
    }



?>