<?php
require_once '../php_action/db_connect.php';

$t_id=2;//$_POST["t_id"];
	$arrRows=array();
	$arraItem=array();

$q=mysqli_query($connect,"SELECT add_medical.m_name,add_medical.m_address,add_medical.m_contact,add_medical.m_id FROM `medical_medicine`,add_medical,medicine where medicine.t_id='$t_id' and medical_medicine.medicine_id=medicine.t_id and add_medical.m_id=medical_medicine.medical_id");
while ($adr=mysqli_fetch_array($q)) {

			$arraItem["m_name"]=$adr["m_name"];
			$arraItem["m_contact"]=$adr["m_contact"];
			$arraItem["m_address"]=$adr["m_address"];
			$arraItem["m_id"]=$adr["m_id"];
			

			$arrRows[]=$arraItem;
}
			echo json_encode($arrRows);



?>