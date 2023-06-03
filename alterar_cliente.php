<?php include('sec.php'); ?>
<!DOCTYPE html>
<html lang="ptbr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Alterar</title>
</head>
<body>
    
 <?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }

?>
  <?php
    $codigo = $_GET['cod'];
    require('connect.php');
    $busca = mysqli_query($con,"Select * from `banco_streaming` where `codigo` = '$codigo'");
    $contato = mysqli_fetch_array($busca);
  ?>
    
    <fieldset class="divForm">
    <legend>Cadastrar Contato</legend>
    <form action="alterar_cliente.act.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="codigo" value="<?php echo $contato['codigo'];?>">

        <p>Nome: <input type="text" name="nome" value="<?php echo $contato['nome'];?>" > </p>
        <p>Telefone: <input type="text" name="email" value="<?php echo $contato['telefone'];?>" > </p>
        <p>Email: <input type="text" name="telefone" value="<?php echo $contato['email'];?>" > </p>
        <p><input type="submit" value="Gravar"></p>

    </form>

</body>
</html>