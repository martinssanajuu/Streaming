<?php

$texto = $_GET['texto'];
require('connect.php');

$cadastros =  mysqli_query($con, "Select * from `cadastro_filme` where `filme` like '%$texto%'");

while($cadastro = mysqli_fetch_array($cadastros)){
   
    echo "<div class=\"boxpesq\">";
    echo "<p>Filme: $cadastro[filme]</p>";
    echo "<p>Gênero: $cadastro[genero]</p>";
    echo "<p> $cadastro[escolha]</p>";
    echo "<a href=info.php?codigo=$cadastro[codigo]><img src=$cadastro[foto]></a>";
    echo "</div>";
}
?>