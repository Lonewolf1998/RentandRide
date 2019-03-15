<?php
require_once '../php_action/db_connect.php';

$m_id=$_POST["m_id"];
	$arrRows=array();
	$arraItem=array();

$q=mysqli_query($connect,"SELECT medicine.t_name,medicine.t_brand,medicine.t_company,medical_medicine.m_rate FROM `medicine`,medical_medicine,add_medical where add_medical.m_id='$m_id' and add_medical.m_id=medical_medicine.medical_id and medicine.t_id=medical_medicine.medicine_id");
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