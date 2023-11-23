<?php
require('db.php');

$query=$con->prepare("SELECT * FROM `products` WHERE 1");
$result=$query->execute();
$habu=$query->fetchALL();



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <table>
       <tr>
        <th>Product Name</th>
        <th>Category</th>
        <th>Price</th>
        <th>Sku</th>
        <th>Description</th>
        <th>Quantity</th>
        <th>Image</th>
       </tr>

       <?php
       foreach($habu as $item){
        echo "<tr>
       <td>$item[1]</td>
       <td>$item[2]</td>
       <td>$item[3]</td>
       <td>$item[4]</td>
       <td>$item[5]</td>
       <td>$item[6]</td>
       <td>$item[7]</td>
       </tr>"; 

       }
       
       
      
       ?>

      
    </table>
</body>
</html>