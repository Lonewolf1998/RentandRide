<?php
include 'dbcon.php';
$user_email=$_POST['email'];


$a=mysqli_query($conn,"SELECT * FROM `feedback_table` WHERE c_email='$mail' ");

	$sql=mysqli_query($conn,"INSERT INTO `feedback_table`(`c_name`,  `c_email`, `f_text`,`f_time`) VALUES ('$name','$email','$text','$time')");
if ($sql) {
	echo "Feedback sent";
}
}
?>	
