<?php

session_start();

require_once 'db_connect.php';


if (!$_SESSION['userId']) {

    header('location: http://localhost/e-medical/index.php');
}
?>