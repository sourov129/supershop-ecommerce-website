<?php
require("db.php");


$del=$_GET["item"];

$query=$con->prepare("DELETE FROM `customercart` WHERE id=$del");
$result=$query->execute();






header("Location: addtocart.php");







?>


