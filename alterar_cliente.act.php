<?php

require('connect.php');
extract($_POST);
extract($_FILES);


if(mysqli_query($con,"UPDATE `banco_streaming` SET `nome` = '$nome', `telefone` = '$telefone' , `email` = '$email'
 WHERE `banco_streaming`. `codigo` = '$codigo';" )){

    $msg = "Contato gravado com sucesso!";

 }else{
    $msg = "Erro ao gravar";
 }


 session_start();
 $_SESSION['msg'] = $msg;

 echo mysqli_error($con);

header("location:lista.php");

 ?>