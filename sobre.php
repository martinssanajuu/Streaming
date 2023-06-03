<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="style.css">

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

<div class="card">
    <div class="icon">
      <img src="./svg.svg">
    </div>

    <div class="content">
      <h3>O que é BeMovie?</h3>
      <p>O BeMovie é um Streaming que tem como objetivo unir todos os fãs de filmes, séries, novelas, outros e vamos ajudar você a descobrir novos gostos. Aqui você pode criar suas lista de desejo e aproveitar!</p>
    </div>

    
</div>

<div class="card1">
    <div class="icon1">
      <img src="./svg1.svg">
    </div>

    <div class="content1">
      <h3>Quanto custa tudo isso?</h3>
      <p>Totalmente de graça, você não precisa pagar absolutamente nada para usar o BeMovie. É só cadastrar-se e sair usando. Simples assim. Venha e assistas os melhores filmes e séries de todos os gêneros, se divirta até mesmo sem sair de casa. Aguardo você e todos os seus amigos, compartilhe!</p>
    </div>

    
</div>
   
    

</body>