<?php include('sec.php'); ?>
<!DOCTYPE html>
<html lang="ptbr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    $cadastros =  mysqli_query($con, "Select * from `banco_streaming`");
    
    while($cadastro = mysqli_fetch_array($cadastros)){
       
        echo "<div class=\"boxcliente\">";
        echo "<p>Nome: $cadastro[nome]</p>";
        echo "<p>Email: $cadastro[email]</p>";
        echo "<p>Telefone: $cadastro[telefone]</p>";
        echo "<p class=botaocliente><a href=alterar_cliente.php?cod=$cadastro[codigo]>Alterar</a></p>";
        echo "<p class=botaocliente><a href=javascript:excluir($cadastro[codigo])>Excluir</a></p>";
        echo "</div>";

    }
    ?>

<script>
    function excluir(codigo){
        resp = confirm('Deseja excluir o registro ' +codigo+ '?');
        if(resp == true){
            window.location = "excluir_cliente.php?cod="+codigo;
        }
    }
</script>
 

 


</body>
<html>