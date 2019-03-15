<?php 

include_once ('core.php');

if (isset($_GET['del'])) {

  $id =$_GET['del'];
  $fet =mysqli_query($connect,"DELETE FROM `add_medical` WHERE m_id='$id'");
  // $fet=mysqli_query($connect,"DELETE FROM `add_medical` WHERE m_id='$id'");
 // $result=mysqli_fetch($fet,MYSQLI_ASSOC);
 if($fet===TRUE){
 	header("Location:../addmedicals.php");
 	echo "deleted successfully";

 }else{

 	echo"faild to delete";
 }
}


 