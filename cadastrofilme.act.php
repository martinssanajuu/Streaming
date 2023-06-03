<?php

require('connect.php');

extract($_POST);
extract($_FILES);

$endereco = "img/".md5(time()).".jpg";
move_uploaded_file($foto['tmp_name'],$endereco);
if(mysqli_query($con, "INSERT INTO `cadastro_filme` (`codigo`,`filme`,`genero`, `escolha`, `sinopse`, `foto`, `duracao`)                      
                                    VALUES (NULL, '$filme', '$genero', '$escolha','$sinopse', '$endereco', '$duracao');")){
            $msg = "Contato gravado com sucesso!";
            }else{
            $msg = "Erro ao gravar!";
            }

    session_start();
    $_SESSION['msg'] = $msg;

header("location:lista.filme.php");

?>