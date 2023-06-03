<?php
  if(!$con= mysqli_connect('localhost','root','','banco_streaming')){
    echo "Erro ao acessar a base de dados!";
  }
  mysqli_query($con,"SET NAMES utf8");
?>