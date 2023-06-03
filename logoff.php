<?php
@session_start();
$SESSION['login'] = false;
unset($_SESSION['login']);
session_destroy();
header("location:entradaadm.php");
?>