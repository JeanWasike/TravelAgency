<?php 
session_start();
require_once("phpMethods.php");

$varFName = $_POST['firstname'];
$varLName = $_POST['lastname'];
$varUsername = $_POST['username'];
$varPhone = $_POST['phone'];
$varEmail = $_POST['email'];
$varPassword = $_POST['password'];
$varLocation = $_POST['location'];

$hashedPass = password_hash($varPassword,PASSWORD_DEFAULT);

if(!empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['email'])){
	//Inserting data
	$sql_insert = "INSERT INTO tbl_client(clientFName,clientLName,clientUName,clientPhone,clientEmail,clientPassword,clientLocation) 
		VALUES('$varFName','$varLName','$varUsername','$varPhone','$varEmail','$hashedPass',
		'$varLocation')";
	setData($sql_insert);
	header('location:../FRONT/login.php');
} else{
	echo("<script>
		window.location.href='../FRONT/register.php';
		alert('Please check your info and try again.');
		</script>");
}
 ?>
