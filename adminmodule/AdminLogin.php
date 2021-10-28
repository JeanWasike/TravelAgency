<?php 
require_once("connect.php");
session_start();

if(isset($_POST["admin"]))
{
	if(empty($_POST["Uname"])|| empty($_POST["password"]))
    {
    	header("location:Log_in.php");
    	exit();
    }
    else{

        $Username=$_POST['Uname'];
        $password=$_POST['password'];
    	$sql="SELECT * FROM admin_table WHERE adminUName='$Username' && adminPassword ='$password'";
    	
         $arr = getData($sql);
         header("location:adminHome.html");
        
         //echo '<script window.location="adminHome.html"</script> ';

    	/*if ($arr!= 0)
         {
            if($arr[0]['adminPassword']==$password)
            {
    		//$_SESSION['clients']=$_POST['uname'];
    		//header("location:dashboard.php");
            $_SESSION['adminUName'] =$Username;
            //header("location:dashboard.php");
            echo '<script window.location="adminHome.html"</script> ';
            }
        }
        else{
                 
         echo "The credentials are incorrect";

    		
    	}*/
    }
}
else if(isset($_POST["home"]))
{
    if(empty($_POST["Uname"])|| empty($_POST["password"]))
    {
    	header("location:Log_in.php");
    	exit();
    }
    else{

        $Username=$_POST['Uname'];
        $password=$_POST['password'];
    	$sql="SELECT * FROM admin_table WHERE adminUName='$Username' && adminPassword ='$password'";
    	
         $arr = getData($sql);
         header("location:adminHome.html");
    }
        



}






 ?>