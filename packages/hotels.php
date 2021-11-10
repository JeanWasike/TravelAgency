<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- font Awesome Cdn -->
  <script src="https://kit.fontawesome.com/e48d166edc.js" crossorigin="anonymous"></script>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- CSS File -->
  <link rel="stylesheet" type="text/css" href="css/hotels.css">
  

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>HOTEL</title>
  </head>
  <body>
<!-- Header -->

    <header class="header trans_300">

       <!-- main Navigation -->

       <div class="main_nav_container">
         <div class="container">
           <div class="row">
             <div class="col-lg-12 text-right">
               <div class="logo_container">
                 <nav class="navbar">
                   <ul class="navbar_menu">
                    
                     <li><a href="#">Home</a></li>
                     <li><a href="#">About Us</a></li>
                     <li><a href="#">Contacts</a></li>
                   </ul>

                   <ul class="navbar_user">
                    <li><a href="#"><i class="fa fa-search" arial-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-user" arial-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                    <li class="checkout">
                      <a href="#">
                        <i class="fa fa-bell" aria-hidden="true"></i>
                          <span id="checkout_items" class="checkout_items"></span>
                      </a>
                      
                    </li>
                    

                   </ul>

                 </nav>
               </div>
             </div>
           </div>
         </div>
       </div>
    </header>

<br><br>


<div class="container mt-5">

  <div class="categories">
    <h2>Accomodation Offered</h2>
    <hr style="color:#FFD700"></hr>
</div>
<?php 
    require_once("phpMethods.php");
    $destID=$_GET["destID"];

    $sql_Select="SELECT * FROM hotels_table WHERE destID='$destID';";

    $data=getData($sql_Select);
    if($data!=0){
      for($i=0;$i<count($data);$i++){
        $hotelID=$data[$i]["hotelID"];
        $hotelName=$data[$i]["hotelName"];
        $hotelAddress=$data[$i]["hotelAddress"];
        $hotelImage=$data[$i]["hotelImage"];

        echo "
        <div class=\"card\">
        <div class=\"row\">
          <div class=\"col-md-4\">
            <img src=\"$hotelImage\" class=\"img-fluid\">
          </div>
          <div class=\"col-md-8\">
            <h2 class=\"card-title mt-3\">$hotelName</h2>
            <br>
            <h4>Address: $hotelAddress</h4>
            <br>  
            <p>Features: Free wifi,  Breakfast,Pool, Free Parking, Spa, Air conditioning</p> 
            <br>
            <div class=\"stars\">
                    <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                    <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                    <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                    <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                    <i style=\"color:#008000;\"class=\"far fa-star\"></i>
                </div>   
  
            <button class=\"btn btn-primary\"><a href=\"accomodation.php?hotelID=".$hotelID."\" style=\"text-decoration: none; color: black;\">Book Now</a></button>
            
          </div>
        </div>
      </div>
        
        ";
      }
        
        
        
    }
    else{
        echo "No destinations for this country";
    }

?>
</div>


<br><br><br><br>



<!--footer-->
<footer class="footer-bs">
        <div class="row">
            <div class="col-md-3 footer-brand animated fadeInLeft">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-7">
                     <center>
                            <img src="images/LOGO.jpg" height="200" class="rounded">
                        </center>
                      
                    </div>

                    </div>
              </div>
                    
                </div>
            <div class="col-md-3 footer-nav animated fadeInUp">
                <h4>Menu </h4>
                <div class="col-md-6 ">
                    <ul class="list">
                        <li><a href="#" style="text-decoration:none;">About Us</a></li>
                        <li><a href="#">Contacts</a></li>
                        <li><a href="#">Terms & Condition</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 footer-social animated fadeInDown">
                <h4>Follow Us</h4>
                <ul>
                    <ul id="social-medialist">
                    <li id="social-medialistitem"><a href="https://facebook.com/" id="icon"><i class="fa fa-facebook"></i></a></li>
                    <li id="social-medialistitem"><a href="https://fa-twitter.com/" id="icon"><i class="fa fa-twitter"></i></a></li>
                    <li id="social-medialistitem"><a href="https://instagram.com/" id="icon"><i class="fa fa-instagram"></i></a></li>
                    <li id="social-medialistitem"><a href="https://fa-linkedin.com/" id="icon"><i class="fa fa-linkedin"></i></a></li> 
                </ul>
            </div>
            <div class="col-md-3 footer-ns animated fadeInRight">
                <h4>Newsletter</h4>
                <p>Subscribe to stay Updated</p>

                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Search for...">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-envelope"></span></button>
                      </span>
                    </div><!-- /input-group -->
                 </p>

                 <h2> Cross-border Escapades</h2>
                <p> Spreading smiles across the globe</p>
                <p>
            </div>
        </div>
    </footer>

    <section style="text-align:center; margin:10px auto;"><p> Cross-border Escapades | 2021  </p></section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>