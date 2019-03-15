<?php

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if ($_POST) {

    $mname = $_POST['name'];
     // $maddress = $_POST['phonw'];
      $mlocation = $_POST['address'];
      $mcontact = $_POST['phone'];
       $longi = $_POST['long'];
       $lati = $_POST['lat'];
       $user = $_POST['user'];
       $pass = $_POST['pass'];
        
   

    $presql = "SELECT * FROM add_medical WHERE ( m_name='$mname' )";
    $result = $connect->query($presql);

    if ($result->num_rows > 0) {
        $valid['success'] = false;
        $valid['messages'] = "Already Exists";
    } else {

        $sql = "INSERT INTO add_medical (`m_name`,`m_location`,`m_contact`,`m_lat`,`m_log`,`m_user`,`m_password`) VALUES ('$mname','$mlocation','$mcontact','$lati','$longi','$user','$pass')";

        if ($connect->query($sql) === TRUE) {
            $valid['success'] = true;
            header('Location:../addmedicals.php');
            $msg ="success";
            $valid['messages'] = "Successfully Added";
        } else {
            $valid['success'] = false;
            // header('Location:../add_medicals.php');
            $valid['messages'] = "Error while adding the members";
        }
    }
    $connect->close();

    echo json_encode($valid);
} // /if $_POST