<?php

require("db.php");


$email=$_POST["email"];
$password=$_POST["password"];


$query=$con->prepare("SELECT * FROM `login` WHERE email='$email' and password='$password'");

$result=$query->execute();
$list=$query->fetchALL();




if($list)
{

    echo '<script>alert("Log in successfull");window.location.href = "show.php"</script>';
    
}
else{

    echo '<script>alert("Please enter valid email or password");window.location.href = "login.html"</script>';
    

}


?>


