<?php 
  session_start();
 ?>
<!DOCTYPE html>
<html>
<head>
  <?php 
    include '../PHP/phpMethods.php';
   ?>
  <meta charset="utf-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="style.css">
  <title>Successful Login</title>
</head>
<body>
    <div class="justify-content-center">
      <div class="text-center">
        <h1>This is the welcome page for Clients.</h1>
        <a class="btn btn-outline-dark text-center" role="button" id="place-order-btn">
          <big>Continue to dashboard</big>
        </a>
        <p>(To be implemented later)</p>
        <?php 
          include '../PHP/logout.php';
         ?>
      </div>
    </div>
</body>
</html>