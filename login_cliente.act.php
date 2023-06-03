<?php

extract($_POST);
$senha = md5($senha);

require('connect.php');
$busca = mysqli_query($con, "Select * from `banco_streaming` where `email` = '$email'");
session_start();
if($busca->num_rows == 1){
    $cadastro = mysqli_fetch_array($busca);
    if($senha === $cadastro['senha']){
        echo "Email ou senha incorretos!";
        $_SESSION['login'] = true;
        $_SESSION['nome'] = $cadastro['nome'];
        $target = "location:lista.filme.php";
    }else{
        $msg = "Email ou senha incorretos!";
        $target = "location:login_cliente.php";
    }

    
}

$_SESSION['msg'] = $msg;
header($target);