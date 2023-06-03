<?php

require('connect.php');
extract($_POST);
extract($_FILES);

if($foto['size'] > 0){
   if($foto_anterior == "") {
      $endereco= "img/".md5(time()).".jpg";
   }else{
      $endereco = $foto_anterior;
   }
   move_uploaded_file($foto['tmp_name'], $endereco);
}else{
    $endereco = $foto_anterior;
}


if(mysqli_query($con,"UPDATE `cadastro_filme` SET `filme` = '$filme', `genero` = '$genero', `escolha` = '$escolha', `sinopse` = '$sinopse',
`foto` = '$endereco', `duracao` = '$duracao' WHERE `cadastro_filme`. `codigo` = '$codigo';" )){

    $msg = "Contato gravado com sucesso!";

 }else{
    $msg = "Erro ao gravar";
 }


 session_start();
 $_SESSION['msg'] = $msg;

 echo mysqli_error($con);

header("location:lista.filme.php");

 ?>