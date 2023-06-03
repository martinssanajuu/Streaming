<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="http://fonts.cdnfonts.com/css/army-rangers" rel="stylesheet">
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <title>Login</title>
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

    <form action="login_cliente.act.php" method="post" enctype="multipart/form-data">
    <div class="login">
        
       <p>Use seu email e senha para entrar</p>

        <input type="text" name="email" placeholder="Email">
        <input type="password" name="senha" placeholder="Senha">
        
        <p> <input class="botaozinho2" type="submit" value="Entrar"></p>
        <p>Ainda não tem BeMovie?? </p>
        <a href="cadastro_cliente.php"><li>Cadastre-se</li></a>

    </form>

</div>

</body>

</html>