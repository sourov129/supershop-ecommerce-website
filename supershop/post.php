<?php
require('db.php');

$product_name=$_POST["product_name"];
$category=$_POST["category"];
$price=$_POST["price"];
$sku=$_POST["sku"];
$description=$_POST["description"];
$quantity=$_POST["quantity"];
$image=$_POST["image"];


$query=$con->prepare("INSERT INTO `products`(`product_name`,`category`, `price`, `sku`, `description`, `quantity`, `image`) VALUES ('$product_name','$category','$price','$sku','$description','$quantity','$image')");

$result=$query->execute();


if($result){
    header('Location:list.php');
}
else{
    echo "failed";
}



?>