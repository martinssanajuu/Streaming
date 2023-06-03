<!DOCTYPE html>
<html lang="ptbr">
<head>
    <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Lista</title>
<body> 
  

            <?php include('menu.php'); ?>
            <?php
                @session_start();
                if(isset($_SESSION['msg'])){
                    echo "<p class=alert>$_SESSION[msg]</p>";
                    unset($_SESSION['msg']);
                }
            ?>
    
<?php
    require('connect.php');
    
    $codigo = $_GET['codigo'];
    $cadastros =  mysqli_query($con, "Select * from `cadastro_filme` where `codigo` = '$codigo'");
    
    while($cadastro = mysqli_fetch_array($cadastros)){
       
        echo "<div class=\"box2\">";
        echo "<a><img src=$cadastro[foto]></a>";
        echo "<h1> $cadastro[filme]</h1>";
        echo "<p>Gênero: $cadastro[genero]</p>";
        echo "<p>Tipo: $cadastro[escolha]</p>";
        echo "<p>Sinopse: $cadastro[sinopse]</p>";
        echo "<p>Duração: $cadastro[duracao]</p>";
        echo "<p class=botao><a href=alterar_filme.php?cod=$cadastro[codigo]>Alterar</a></p>";
        echo "<p class=botao><a href=javascript:excluir($cadastro[codigo])>Excluir</a></p>";
        echo "</div>";
    }
    ?>

<script>
    function excluir(codigo){
        resp = confirm('Deseja excluir o registro ' +codigo+ '?');
        if(resp == true){
            window.location = "excluir_filme.php?cod="+codigo;
        }
    }
</script>

 


</body>
<html>