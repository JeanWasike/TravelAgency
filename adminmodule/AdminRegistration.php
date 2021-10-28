<?php
require ("connect.php");
$First_name=$_POST['fname'];
$Last_name=$_POST['lname'];
$Username=$_POST['uname'];
$Password=$_POST['password'];
$email=$_POST['mail'];


$sql="INSERT INTO admin_table(adminFName,adminLName,adminUName,adminPassword,adminEmail)VALUES('$First_name','$Last_name','$Username','$Password','$email')";
$insert=setData($sql);

	if($insert===TRUE)
	{
		header("location:adminLogin.html");
    }
   else{
                 
       echo "The credentials are incorrect";
	   }

?>