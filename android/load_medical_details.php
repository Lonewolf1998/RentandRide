<?php
require_once '../php_action/db_connect.php';

$m_id=$_POST["medical_id"];
	$arrRows=array();
	$arraItem=array();

$q=mysqli_query($connect,"SELECT * FROM `add_medical` where m_id=$m_id ");
while ($adr=mysqli_fetch_array($q)) {

			$arraItem["m_name"]=$adr["m_name"];
			$arraItem["m_contact"]=$adr["m_contact"];
			$arraItem["m_address"]=$adr["m_address"];
			$arraItem["m_id"]=$adr["m_id"];
			

			$arrRows[]=$arraItem;
}
			echo json_encode($arrRows);



?>