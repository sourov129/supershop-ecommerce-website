<?php
require("db.php");


$name=$_POST["name"];
$email=$_POST["email"];
$password=$_POST["password"];


$query=$con->prepare("INSERT INTO `login`(`name`, `email`, `password`) VALUES ('$name','$email','$password')");
$res=$query->execute();


echo '<script>alert("Registration Successfully");window.location.href = "show.php"</script>';





?>

