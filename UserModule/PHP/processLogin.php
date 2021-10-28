<?php 
session_start();
require_once("phpMethods.php");

$varUsernameOrEmail = $_POST['usernameOrEmail'];
$varPassword = $_POST['password'];

verifyUser($varUsernameOrEmail,$varPassword);

 ?>
