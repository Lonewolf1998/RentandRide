<?php
include 'dbcon.php';
$email=$_POST['email'];
$password=$_POST['password'];

$a=mysqli_query($conn,"SELECT * FROM `customer_table` WHERE c_email='$email' and c_password='$password' ");
$count=mysqli_num_rows($a);
 if ($count>0)
{

	$f=mysqli_fetch_array($a,MYSQLI_ASSOC);
	$user_id=$f["c_id"];
	$user_name=$f["c_name"];
	echo $user_id."/".$user_name;
	
}
	
else{
	echo"account doesn't exists";
}
?>	
