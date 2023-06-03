<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <title>Cadastro</title>
    <style>
@import url('http://fonts.cdnfonts.com/css/caver-pitalsal');
</style>

</head>
<body>

<?php include('menu.php'); ?>
            <?php
                @session_start();
                if(isset($_SESSION['msg'])){
                    echo "<p class=alert>$_SESSION[msg]</p>";
                    unset($_SESSION['msg']);
                }
            ?>
           

    <div class="cadastro">
    <form action="cadastro_cliente.act.php" method="post" enctype="multipart/form-data">
   
        
       <p>Cadastre-se</p>

       <input type="text" name="nome" placeholder="Nome">
       <input type="text" name="email" placeholder="Email">
       <input type="text" name="telefone" placeholder="Telefone">
       <input type="password" name="senha" placeholder="Senha">

        <p> <input class="botaozinho" type="submit" value="Gravar"></p>
        
        <p>Já tem cadastro? </p>
        <a href="login_cliente.php"><li>Entrar</li></a>
    </form>

</div>
</body>

</html>