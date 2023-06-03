<?php

echo $codigo = $_GET['cod'];
require('connect.php');
$busca = mysqli_query($con, "SELECT * FROM `cadastro_filme` WHERE `codigo` = $codigo");

$contato = mysqli_fetch_array($busca);
unset($contato['foto']);

if(mysqli_query($con, "DELETE FROM `cadastro_filme` WHERE `codigo` = '$codigo'")) {

    $msg = "Registro deletado!";
}else {
    $msg= "Falha ao deletar!";

}

session_start();
$_SESSION['msg'] = $msg;

header("location:lista.filme.php");


?>