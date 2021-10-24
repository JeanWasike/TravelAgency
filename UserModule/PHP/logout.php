<?php

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['User']);
    unset($_SESSION['UserID']);
    echo("<script>
      alert('Successfully logged out.');
      </script>");
    header("location:../FRONT/login.html");
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <?php  if (isset($_SESSION['User'])) : ?>
                
      <h4>Logged In As: <big style="color: royalblue;">&emsp;<?php echo $_SESSION['User']; ?> </big></h4>
    <button type="button" class="btn btn-outline-dark"><big><a href="../PHP/logout.php?logout='1'" style="text-decoration: none;">Click to Logout</a></big></button>
       
      <?php endif ?>
</body>
</html>