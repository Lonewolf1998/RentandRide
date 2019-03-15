<?php
require_once '../php_action/db_connect.php';

$c_id=$_POST["c_id"];
	$arrRows=array();
	$arraItem=array();

$q=mysqli_query($connect,"SELECT * FROM `medicine` where cat_id='$c_id' ");
while ($adr=mysqli_fetch_array($q)) {

			$arraItem["t_id"]=$adr["t_id"];
			$arraItem["cat_id"]=$adr["cat_id"];
			$arraItem["t_name"]=$adr["t_name"];
			$arraItem["t_brand"]=$adr["t_brand"];
			$arraItem["t_company"]=$adr["t_company"];
			$arraItem["t_effect"]=$adr["t_effect"];
			$arraItem["t_solution"]=$adr["t_solution"];

			$arrRows[]=$arraItem;
}
			echo json_encode($arrRows);



?>