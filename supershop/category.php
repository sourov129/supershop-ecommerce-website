<?php
require('db.php');

$cato=$_GET["item"];





$query=$con->prepare("SELECT * FROM `products` WHERE lower(category)='$cato'");
$res=$query->execute();
$list=$query->fetchALL();






?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BD SHOP</title>
    <script src="https://kit.fontawesome.com/173dc7d1ab.js" crossorigin="anonymous"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- <div class="header">
        <div><img src="image/logo.png" alt="Logo"></div>

        <form action="" method="POST">
            <input type="text" name="search" placeholder="Enter Search" id="search">
            <i class="fa-solid fa-magnifying-glass fa-fade"></i>

        </form>

    </div> -->



    <nav class="navbar bg-body-tertiary p-3">
        <div class="container-fluid  ">
          <a class="navbar-brand" href="show.php"><img src="image/logo.png" alt="Logo"></a>

          <form class="d-flex mx-auto w-25 " role="search" action="search.php" method="POST">
            <input class="form-control me-2 rounded-pill" type="search" placeholder="Enter search" aria-label="Search" name="search" id="search">
            <button class="btn btn-outline-success rounded-pill fw-bold" type="submit">Search</button>
          </form>

          <div class="align-items-center">
           
            <div class="cart-user d-flex align-items-baseline mt-3">
            <div>
                  <a href="addtocart.php"><i class="fa-solid fa-cart-shopping fa-lg" style="color: #050505; width: 50px;"></i></a>
                <p>cart</p>  
                </div>  

                <div class="text-center">
                  <a href="login.html"><i class="fa-solid fa-user fa-lg" style="color: #0a0a0a; width: 50px;"></i></a>
                <p>Sign In</p>  
                </div>  
        </div>
      </nav>

      <section>



        <nav class="navbar navbar-expand-lg mt-5 fw-semibold bg-secondary " data-bs-theme="secondary"">
            <div class="container-fluid">

                <div class="dropdown">
                    <a class="btn btn-warning dropdown-toggle p-3 fs-5  fw-semibold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Category
                    </a>

                    
                  
                    <ul class="dropdown-menu">



                      <li><a class="dropdown-item" href="category.php?item=meat">Meat</a></li>
          
                      <li><a class="dropdown-item" href="category.php?item=fish">Fish</a></li>
                      <li><a class="dropdown-item" href="category.php?item=fruits">Fruits and Vegetables</a></li>
                    </ul>
                  </div>


           
              <div class="collapse navbar-collapse text-white" id="navbarNavDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="show.php">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white" href="#">Blog</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white" href="#">Contact Us</a>
                  </li>
                  
                </ul>
              </div>
            </div>
          </nav>


      </section>

    

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>






    <section>

     


    <div class="container my-5 ">   
        <div class="row gy-3">    

<?php



foreach($list as $item){
    echo "
    <div class=\"col-lg-3 shadow p-4  bg-white rounded\">
    <div class=\"card text-center\" style=\"width: 18rem;\">
    <a href=\"productdetails.php?item=$item[0]\"> 
    <img src=\"$item[7]\" class=\"card-img-top \" alt=\"image\">
    </a>
    <div class=\"card-body \">
      <h5 class=\"card-title\"><a href=\"productdetails.php?item=$item[0]\" class=\"text-decoration-none text-dark\">$item[1]</a></h5>
      <p class=\"card-text\" style=\"font-size: 20px;\">৳ $item[3]</p>
      <a href=\"productdetails.php?item=$item[0]\" class=\"btn btn-primary\">Add to cart</a>
    </div>
    </div>
    </div>
    
    ";
}



  ?>
  </div>
</div>

        
    </section>



    <section class="customer-servies">
        <div class="grid-container">
            <div class="grid-item">
                <div class="icon-bg"> <img src="image/icon1.png" alt=""></div>
                <div class="servies-content">
                    <h3>Free shipping</h3>
                    <p>Free shipping on all US order or order above $200</p>
                </div>
            </div>

            <div class="grid-item">
                <div class="icon-bg"> <img src="image/icon2.png" alt=""></div>
                <div class="servies-content">
                    <h3>
                        Support 24/7</h3>
                    <p>Contact us 24 hours a day, 7 days a week</p>
                </div>
            </div>

            <div class="grid-item">
                <div class="icon-bg"> <img src="image/icon3.png" alt=""></div>
                <div class="servies-content">
                    <h3>
                        60-Day Returns</h3>
                    <p>If you don’t love it, you have 60 days to return it.

                    </p>
                </div>
            </div>

            <div class="grid-item">
                <div class="icon-bg"> <img src="image/icon4.png" alt=""></i>
                </div>
                <div class="servies-content">
                    <h3>100% Payment Secure</h3>
                    <p>We ensure secure payment with PEV</p>
                </div>
            </div>


        </div>

    </section>




    <section>

    <footer class="bg-secondary text-white">
        <div class="d-flex flex-column justify-content-center align-items-center ">
        <h3 class="mt-2" >BDSHOP</h3>
            <p>Offical, Dhanmondi 27</p>
            <p>Privacy Ploicy | Terms of use</p>
        </div>
        <ul style="list-style: none; " class="d-flex justify-content-center align-items-center ">

            <li class="p-2 fs-3 "><a href="https://www.facebook.com/nahid.parvej.731 "><i class="fa-brands fa-facebook text-white "></i></a></li>
            <li class="p-2 fs-3 "><a href="https://twitter.com/?lang=en "><i class="fa-brands fa-twitter text-white "></i></a></li>
           
        </ul>
    </footer>

    </section>

    

</body>
</html>