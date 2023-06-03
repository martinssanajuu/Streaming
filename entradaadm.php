
<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="entradaadm.css">

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

            <div class="contente">
                <div class="slides">
                    <input type="radio" name="slide" id="slide1" checked>
                    <input type="radio" name="slide" id="slide2">
                    <input type="radio" name="slide" id="slide3">   
                    <input type="radio" name="slide" id="slide4">
                    <input type="radio" name="slide" id="slide5">

                    <div class="slide s1"><img src="./pixar.png" alt="Filme Homem-Aranha"></div>
                    <div class="slide s2"><img src="./whatif.png" alt="Filme PulpFiction"></div>
                    <div class="slide s3"><img src="./tini.jpg" alt="Filme Terrifier"></div>
                    <div class="slide s4"><img src="./inclusao.png" alt="Filme Viva"></div>
                    <div class="slide s5"><img src="./himym.jpg" alt="Filme Jujutsu"></div>
                </div>
                <div class="navigation">
                    <label class="bar" for="slide1"></label>
                    <label class="bar" for="slide2"></label>
                    <label class="bar" for="slide3"></label>
                    <label class="bar" for="slide4"></label>
                    <label class="bar" for="slide5"></label>
                </div>
            </div>

<a id="botaozinho" href= "login_cliente.php">Entrar</a>

<div class= "parte2">
    <div class="icontv">
      <img src="./tv.png">
    </div>


<div class=texto>  
<h1>Aproveite na TV </h1>
 <p>   Assista em Smart TVs, PlayStation, Xbox, Chromecast,<br> Apple TV, aparelhos de Blu-ray e outros dispositivos.</p> 
 </div> 
</div>

<div class= "parte3">
    <div class="icontv3">
      <img src="./device-pile.png">
    </div>


<div class=texto3>  
<h1>Assista quando quiser. </h1>
 <p>Assista no celular, tablet, Smart TV ou<br> notebook sem pagar a mais por isso.</p> 
 </div> 
</div>

<div class= "parte4">
    <div class="icontv4">
      <img src="./infantil.png">
    </div>


<div class=texto4>  
<h1>Desenhos para todas as Crianças </h1>
 <p>Suas crianças sempre incluidas.<br> Desenhos e séries para nossas crianças</p> 
 </div> 
</div>


<div class= "parte5">

<div class=textoinfo>  
<h1>Dúvidas? Ligue 55 (11)97012-0422 </h1>
<a href="lista.php"> Alterar informações</a>
 </div> 
</div>
         
    

</body>