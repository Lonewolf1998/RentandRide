<?php
include 'dbcon.php';
$user_email=$_POST['email'];


$a=mysqli_query($conn,"SELECT * FROM `customer_table` WHERE c_email='$user_email'");
$count=mysqli_num_rows($a);
 if ($count>0)
{

	$f=mysqli_fetch_array($a,MYSQLI_ASSOC);
	$user_id=$f["c_id"];
	$user_name=$f["c_name"];
	$user_email=$f["c_name"];
	$user_mobile=$f["c_mobile"];
	

	echo $user_id."/".$user_name."/".$user_email."/".$user_mobile;
	
}
	
else{
	echo"account doesn't exists";
}
?>	
