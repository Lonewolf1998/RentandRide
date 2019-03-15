<?php

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if ($_POST) {

    $cat = $_POST['cname'];
  $tname = $_POST['name'];
  $tbrand = $_POST['brand'];
  $tcomp = $_POST['compeny'];
  $teffect = $_POST['effect'];
  $tsolution = $_POST['solution'];

        
   

    $presql ="SELECT * FROM `medicin` WHERE (t_name='$tname')";
    $result = $connect->query($presql);

    if ($result->num_rows > 0) {
        $valid['success'] = false;
        $valid['messages'] = "Already Exists";
    } else {

        $sql = "INSERT INTO `medicin`(`cat_id`, `t_name`, `t_brand`, `t_compeny`, `t_effect`, `t_solution`) VALUES ('$cat','$tname','$tbrand','$tcomp','$teffect','$tsolution')";

        if ($connect->query($sql) === TRUE) {
            $valid['success'] = true;
            header('Location:../addmedicine.php');
            $msg ="success";
            $valid['messages'] = "Successfully Added";
        } else {
            $valid['success'] = false;
            header('Location:../add_medicine.php');
            $valid['messages'] = "Error while adding the members";
        }
    }
    $connect->close();

    echo json_encode($valid);
} // /if $_POST