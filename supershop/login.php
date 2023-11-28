<?php

require("db.php");


$email=$_POST["email"];
$password=$_POST["password"];


$query=$con->prepare("SELECT * FROM `login` WHERE email='$email' and password='$password'");

$result=$query->execute();
$list=$query->fetchALL();


if($list)
{
    header("Location: show.php");
}
else{
    header("Location: login.html");
}


?>
