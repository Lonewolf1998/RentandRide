<?php
require_once '../php_action/db_connect.php';


	$arrRows=array();
	$arraItem=array();

$q=mysqli_query($connect,"SELECT * FROM `category`");
while ($adr=mysqli_fetch_array($q)) {

			$arraItem["c_id"]=$adr["c_id"];
			$arraItem["category"]=$adr["categorys"];
			$arrRows[]=$arraItem;
}
			echo json_encode($arrRows);



?>