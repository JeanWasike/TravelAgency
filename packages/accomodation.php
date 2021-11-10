<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- CSS File -->
  <link rel="stylesheet" type="text/css" href="css/accom.css">
  

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>Accomodation</title>
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

<br><br><br>
<br><br><br>

  <?php 
        $hotelID=$_GET["hotelID"];
        
        require_once("phpMethods.php");
        $sql_Select="SELECT * FROM package_table WHERE hotelID='$hotelID';";
        $data=getData($sql_Select);

        for($i=0;$i<count($data);$i++){
          $packageDescription=$data[$i]["packageDescription"];
          $noOfGuests=$data[$i]["noOfGuests"];
          $pricePerGuest=$data[$i]["pricePerGuest"];
          $noOfDays=$data[$i]["noOfDays"];
          $checkInDate=$data[$i]["checkInDate"];
          $checkOutDate=$data[$i]["checkOutDate"];
          $status=$data[$i]["status"];
          $totalPricePerNight= $pricePerGuest * $noOfGuests;
          $totalPrice=$totalPricePerNight * $noOfDays;
          
          echo "
          <div class=\"container\">
          <div class=\"row px-3\">
            <div class=\"col-lg-10 col-xl-9 card flex-row mx-auto px-0\">
              <div class=\"img-left d-none d-md-flex\">
                <img src=\"images/room2.jpg\" height=\"400px\" width=\"400px\">
              </div>
      
          <div class=\"card-body\">
      
            <div>
              <p>$packageDescription</p><br>
              <p>Room Type: </p><br>
              <p>$noOfGuests Guests, $noOfDays Days </p><br>
              <p>Price Per Night: Ksh $totalPricePerNight</p><br>
              <p>Check In Date: $checkInDate</p><br>
              <p>Check Out Date: $checkOutDate</p><br>
              <p> Package Price:  Ksh $totalPrice</p>
            </div>
             <br>
            <div class=\"amenities\">
              <i class=\"fa fa-wifi\">Free Wi-Fi</i>
              <i class=\"fa fa-product-hunt\">Free Parking</i>
            </div>

            
        
        </div>
      </div>
    </div>
  </div>
<br><br><br><br>
";
        }
  ?>


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

    















    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>