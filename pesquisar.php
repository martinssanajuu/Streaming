<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisar</title>
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <script>
        function pesquisar(texto){
            $.ajax({
                type: "post",
                url: "pesquisar.act.php?texto="+texto,
                data: "texto",
                success: function (response) {
                    $('#result').html(response);
                }
            });
        }
    </script>
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
            

    <div class= "h1Pesq">
    <h1>Pesquisar:</h1>
    <input type="search" name="" id="txtPesquisar" onkeyup="pesquisar(this.value)">
    <a class="voltar" href= "pesquisar.php">Voltar</a>;
        <div id="result"></div>
        </div>

        <?php
                   echo"<div class=tudo>";

                   echo"<div class=categorias>";
                   
                   echo" <p class=botoes> <a href=tipo.php?escolha=serie>Séries</a></p>";
                   echo "<p class=botoes><a href=tipo.php?escolha=filme>Filmes</a></p>";
                   echo" <p class=botoes> <a href=categoria.php?genero=romance>Romance</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=terror>terror</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=drama>drama</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=animacao>animação</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=comedia>comedia</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=suspense>suspense</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=herois>Herois</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=aventura>aventura</a></p>";
                   echo "<p class=botoes><a href=categoria.php?genero=anime>Anime</a></p>";
                  
                
                    echo"</div>";
                   ?>
    </body>
</html>