<?php include('sec.php'); ?>
<!DOCTYPE html>
<html lang="ptbr">
<head>
<link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Tipo</title>
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
    
 <?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }

?>
  <?php
    $escolha = $_GET['escolha'];
    require('connect.php');
   

    $cadastros =  mysqli_query($con, "Select * from `cadastro_filme` where `escolha` like '$escolha'");
    while($cadastro = mysqli_fetch_array($cadastros)){




         echo "<div class=\"box\">";
         echo "<a href=info.php?codigo=$cadastro[codigo]><img src=$cadastro[foto]></a>";
         echo "<p>$cadastro[filme]</p>";
        //  echo "<p>Gênero: $cadastro[genero]</p>";
        //  echo "<p>Tipo: $cadastro[escolha]</p>";
        //  echo "<p>Sinopse: $cadastro[sinopse]</p>";
        //  echo "<p>Duração: $cadastro[duracao]</p>";
        echo "</div>";
       
    }
    ?>
 
 

</body>
</html>