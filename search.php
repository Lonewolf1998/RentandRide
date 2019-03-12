<?php
include 'dbcon.php';
$location=$_POST['location'];
$v_type=$_POST['v_type'];

$a=mysqli_query($conn,"SELECT * FROM `rent_shop_detail` WHERE location='$location' and v_type='$v_type' ");
$count=mysqli_num_rows($a);
 if ($count>0)
 {
 $z=mysqli_fetch_array($a,MYSQLI_ASSOC);
	$location=$z["location"];
	$v_type=$z["v_type"];
	echo $location."/".$v_type;
}
else
{
	echo "search not found";
}