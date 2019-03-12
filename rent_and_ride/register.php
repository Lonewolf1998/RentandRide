<?php
include 'dbcon.php';

$name=$_POST['name'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$password=$_POST['password'];

$a=mysqli_query($conn,"SELECT * FROM `customer_table` WHERE c_mobile='$mobile' ");
$count=mysqli_num_rows($a);
if ($count>0) {
	echo "user already exists";
}
else{
	$sql=mysqli_query($conn,"INSERT INTO `customer_table`(`c_name`, `c_mobile`, `c_email`, `c_password`) VALUES ('$name','$mobile','$email','$password')");
if ($sql) {
	echo "registered";
}
}






?>