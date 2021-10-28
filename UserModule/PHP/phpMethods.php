<?php 

//For tips and tricks, see '../PHP/phpTipsAndTricks.php'
//NOTE: to specify port number, see 'dbPortInfo' method.

function dbPortInfo(){
	$dbport = "3306"; //Can be specified according to Developer's preferred or available port.
	return ($dbport);
}

function connect(){
	$dbserver = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "travelagency";
	$dbport = dbPortInfo(); //Can be specified according to Developer's preferred or available port.
	$link=mysqli_connect($dbserver,$dbuser,$dbpass,$dbname,$dbport) or die("Could not connect".mysqli_connect_error());
	return ($link);
}

function setData($sql){
	$link=connect();
	if (mysqli_query($link,$sql)) {
		echo("<script>
			alert('Data inserted successfully.');
			</script>");
		return true;
	} else {
		//echo("Error".mysqli_error($link));
		echo("<script>
			alert('Error '".mysqli_error($link).");
			</script>");
		return false;
	}
}

function getData($sql){
	$link=connect();
	$result=mysqli_query($link,$sql);
	while ($row=mysqli_fetch_array($result,MYSQLI_ASSOC)) {
		$rows[]=$row;
	}
	return $rows;
}

function destroyCookie($cookieName){
	$expired = time() -1;
	setcookie($cookieName, "", $expired);
}

function verifyUser($varUsernameOrEmail, $varPassword){
	$dbserver = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "travelagency";
	$dbport = dbPortInfo(); //Can be specified according to Developer's preferred or available port.

	$conn = new mysqli($dbserver,$dbuser,$dbpass,$dbname,$dbport);
	$sql="SELECT * FROM tbl_client where clientUName = '".$varUsernameOrEmail."'";
	$result= $conn->query($sql);
	if (mysqli_num_rows($result)==0) { 
		$sql="SELECT * FROM tbl_client where clientEmail = '".$varUsernameOrEmail."'";
		$result= $conn->query($sql);
		if (mysqli_num_rows($result)==0) { 
			echo '<script>alert("User not found! Try logging in again.");
			window.location.href = "../FRONT/login.html";</script>';
		} else{
			while($res = mysqli_fetch_array($result)) {
				$hashedPass = $res['clientPassword'];
				$verify = password_verify($varPassword, $hashedPass);
			  	if ($verify) {
					$_SESSION['User']=$res['clientUName'];
					$_SESSION['UserID']=$res['clientID'];
					echo("<script>
						window.location.href='../FRONT/welcomePage.php';
						alert('Login Successful');
						</script>");
			  	} else {
			  		echo("<script>
						window.location.href='../FRONT/login.html';
						alert('Please check your info and try again.');
						</script>");
			  	}
			}
		}
	} else{
		while($res = mysqli_fetch_array($result)) {
			$hashedPass = $res['clientPassword'];
			$verify = password_verify($varPassword, $hashedPass);
		  	if ($verify) {
				$_SESSION['User']=$res['clientUName'];
				$_SESSION['UserID']=$res['clientID'];
				echo("<script>
					window.location.href='../FRONT/welcomePage.php';
					alert('Login Successful');
					</script>");
		  	} else {
		  		echo("<script>
					window.location.href='../FRONT/login.html';
					alert('Please check your info and try again.');
					</script>");
		  	}
		}
	}
}
 ?>