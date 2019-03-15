<?php

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if ($_POST) {

    $catName = $_POST['c_name'];
   

    $presql = "SELECT * FROM category WHERE ( categorys='$catName' )";
    $result = $connect->query($presql);

    if ($result->num_rows > 0) {
        $valid['success'] = false;
        $valid['messages'] = "Already Exists";
    } else {

        $sql = "INSERT INTO category (categorys) VALUES ('$catName')";

        if ($connect->query($sql) === TRUE) {
            $valid['success'] = true;
            header('Location:../addcategory.php');
            $msg ="success";
            $valid['messages'] = "Successfully Added";
        } else {
            $valid['success'] = false;
            header('Location:../addcategory.php');
            $valid['messages'] = "Error while adding the members";
        }
    }
    $connect->close();

    echo json_encode($valid);
} // /if $_POST