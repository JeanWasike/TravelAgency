<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="userStyles.css">
	<title>Registration</title>
</head>
<body>

 
<div class="view" style="background-image: url('../IMAGES/travel.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
	
  <div class="col-6 offset-md-4 justify-content-center">
<form class="row g-3" action="../PHP/processRegister.php" method="POST">
  <a href="../FRONT/index.php"><button type="button" class="btn-close" aria-label="Close"></button></a>
  <h3 style="text-align: center;">CREATE AN ACCOUNT</h3>
  
  <div class="mb-3">
  <label for="firstname" class="form-label">Firstname</label>
  <input type="text" required="true" class="form-control" name ="firstname" id="firstname" placeholder="Enter Firstname">
  <br>
  <label for="lastname" class="form-label">Lastname</label>
  <input type="text" required="true" class="form-control" name ="lastname" id="lastname" placeholder="Enter Lastname">
<br>
  <label for="Username" class="form-label">Username</label>
  <input type="text" required="true" class="form-control" name="username" id="username" placeholder="Enter Username">
<br>
  <label for="Phone" class="form-label">Phone</label>
  <input type="text" required="true" class="form-control" name="phone" id="phone" placeholder="Enter phone number (+254123456789)">
<br>
  <label for="email" class="form-label">email</label>
  <input type="email" required="true" class="form-control" name="email" id="email" placeholder="Enter email address">
<br>
  <label for="password" class="form-label">Password</label>
  <input type="password" required="true" class="form-control" name="password" id="password" placeholder="Enter password">
<br>
  <label for="location" class="form-label" >Location</label>
  <input type="text" required="true" class="form-control" name="location" id="location" placeholder="Enter location">
</div>
  <div class="col-12 offset-md-2 justify-content-center">
    <button type="submit" class="btn btn-success">Create Account</button><br>
    <span style="color:darkkgray;">Already have an account? </span>
    <button type="button" class="btn btn-light"><a href="../FRONT/login.php" style="text-decoration: none;">Login</a></button><br><br>
  </div>
</form>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>