<?php

$host="localhost";
$dbuser="root";
$dbpass="";
$dbname="supershop";

$con=new PDO("mysql:host=$host; dbname=$dbname", $dbuser, $dbpass);


if(!$con){
    echo "failed db";
}



?>