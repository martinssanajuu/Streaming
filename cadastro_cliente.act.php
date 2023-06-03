<?php

require('connect.php');
extract($_POST);


$senha = md5($senha);
if(mysqli_query($con, "INSERT INTO `bdtcc` (`codigo`, `nome`,`email`, `telefone`, `senha`)                      
                                    VALUES (NULL, '$nome', '$email', '$telefone', '$senha');")){
            $msg = "Contato gravado com sucesso!";
            }else{
            $msg = "Erro ao gravar!";
            }

    session_start();
    $_SESSION['msg'] = $msg;

header("location:lista.filme.php");

?>