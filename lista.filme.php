<!DOCTYPE html>
<html lang="ptbr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Lista</title>
<body> 

            <?php include('menu.php'); 
            @session_start();
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

            <?php
                
                if(isset($_SESSION['msg'])){
                    echo "<p class=alert>$_SESSION[msg]</p>";
                    unset($_SESSION['msg']);
                }
            ?>
            
<?php
    require('connect.php');
    
    $cadastros =  mysqli_query($con, "Select * from `cadastro_filme`");
    while($cadastro = mysqli_fetch_array($cadastros)){

    //    echo "<div class=box>";

        echo "<a class=imagens href=info.php?codigo=$cadastro[codigo]><img src=$cadastro[foto]></a>";
        // echo "<p>Filme: $cadastro[filme]</p>";
        // echo "<p>Gênero: $cadastro[genero]</p>";
        // echo "<p>Sinopse: $cadastro[sinopse]</p>";
        // echo "<p>Duração: $cadastro[duracao]</p>";
        // echo "<p class=botaozinho><a href=alterar_filme.php?cod=$cadastro[codigo]>Alterar</a></p>";
        // echo "<p class=botaozinho><a href=javascript:excluir($cadastro[codigo])>Excluir</a></p>";
        
        
      //  echo"</div>";
    }
   
    echo"</div>";
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