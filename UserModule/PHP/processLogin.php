<?php 
session_start();
require_once("phpMethods.php");

$varUsername = $_POST['username'];
$varPassword = $_POST['password'];

verifyUser($varUsername,$varPassword);

 ?>
