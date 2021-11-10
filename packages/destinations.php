<!DOCTYPE html>
<html lang="en">

<head>
  <title>Packages Module</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Colo Shop Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- font Awesome Cdn -->
  <script src="https://kit.fontawesome.com/e48d166edc.js" crossorigin="anonymous"></script>

  <!-- Bootstrap cdn -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


  <!-- CSS File -->
  <link rel="stylesheet" type="text/css" href="css/dest.css">
  

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

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
                <img class="pic"src="images/LOGO.jpg" alt="Image not found" height="100px" width="100px">
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

<br><br><br>


<!-- packages section starts  -->

<section class="packages" id="packages">

<div class="categories">
    <h1>Destination Packages</h1>
</div> 

<?php 
    require_once("phpMethods.php");
    $sql_Select ="SELECT * FROM countries_table;";//Obtaining available countries
    $data=getdata($sql_Select);

    if($data!=0){
        for($i=0;$i<count($data);$i++){
            $countryID=$data[$i]["countryID"];
            $countryName=$data[$i]["countryName"];
            $sql_Select="SELECT * FROM destination_table WHERE countryID='$countryID';";//Obtaining destinations within a country
            $destData=getdata($sql_Select);

          echo "
          <div class=\"categories\">
          <h2>$countryName</h2>
          <hr style=\"color:#FFD700\"></hr>
          </div> 

          <div class=\"box-container\">
          ";//displaying the country header

            if(!$destData==0){
                for($x=0;$x<count($destData);$x++){
                    $destID=$destData[$x]["destID"];
                    $destName=$destData[$x]["destName"];
                    $destImage=$destData[$x]["destImage"];

                  //Template for displaying the destinations
                    echo "
                        <div class=\"box\">
                        <img src=\"images/$destImage\" alt=\"\">
                            <div class=\"content\">
                             <h3> <i class=\"fas fa-map-marker-alt\" style=\"color:#008000;\"></i> $destName </h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, nam!</p>
                            <div class=\"stars\">
                                <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                                <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                                <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                                <i style=\"color:#008000;\" class=\"fas fa-star\"></i>
                                <i style=\"color:#008000;\"class=\"far fa-star\"></i>
                             </div>
                            <div class=\"price\"> $90.00 <span>$120.00</span> </div>
                            <a href=\"hotels.php?destID=".$destID."\" class=\"btn\" >book now</a>
                            </div>
                        </div>           
                ";
                }
            }
            else{
                echo "No destinations for this country";
            }
           echo "</div>";
        }
    }
    else{
        echo "No countries found";
    }
?>

</section>
<!-- packages section ends -->

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
  

  <!-- Bootstrap JS CDN -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
    integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
    crossorigin="anonymous"></script>
  <!-- jquery JS File -->
  <script src="js/jquery-3.2.1.min.js"></script>
  <!-- Isotope JS File -->
  <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
  <!-- Owl Carousel JS File -->
  <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
  <!-- Javascript File -->
  <script src="js/custom.js"></script>
 </div>
</body>

</html>