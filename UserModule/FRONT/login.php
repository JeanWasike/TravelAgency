<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="userStyles.css">
	<title>Login</title>
</head>
<body>

  
<div class="view" style="background-image: url('../IMAGES/travel4.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
	
  <div class="col-6 offset-md-4 justify-content-center">
<form class="row g-3" action="../PHP/processLogin.php" method="POST">
  <a href="../FRONT/index.php"><button type="button" class="btn-close" aria-label="Close"></button></a>
  <h3 style="text-align: center;">SIGN IN</h3>
  
  <div class="mb-3">
  <label for="Username" class="form-label">Username or Email</label>
  <input type="text" class="form-control" name="usernameOrEmail" id="username" placeholder="Enter Username or Email">
<br>

  <label for="password" class="form-label">Password</label>
  <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
<br>
  
  <div class="col-12 offset-md-2 justify-content-center">
    <button type="submit" class="btn btn-primary">Sign in</button><br>
    <span style="color:white;">Don't have an account? </span>
    <button type="button" class="btn btn-light"><a href="../FRONT/register.php" style="text-decoration: none;">Register</a></button><br>
    
  </div>
</form>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>