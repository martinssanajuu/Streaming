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
    $busca = mysqli_query($con,"Select * from `cadastro_filme` where `codigo` = '$codigo'");
    $contato = mysqli_fetch_array($busca);
  ?>
    
    <fieldset class="divForm">
    <legend>Cadastrar Contato</legend>
    <form action="alterar_filme.act.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="codigo" value="<?php echo $contato['codigo'];?>">
        <input type="hidden" name="foto_anterior" value="<?php echo $contato['foto'];?>">
          

        <p>Filme: <input type="text" name="filme" value="<?php echo $contato['filme'];?>" > </p>
        <p>Gênero:</p>
        <p>
            <select name="genero" id="">
                <option value="Terror">Terror</option>
                <option value="Comédia">Comédia</option>
                <option value="Romance">Romance</option>
                <option value="Drama">Drama</option>
                <option value="Animação">Animação</option>
                <option value="Suspense">Suspense</option>
                <option value="Aventura">Aventura</option>
                <option value="Herois">Herois</option>
                <option value="Anime">Anime</option>
                
            </select>
        </p>

        <p>Tipo:</p>
        <p>
            <select name="escolha" id="">
                <option value="Filme">Filme</option>
                <option value="Serie">Série</option>
            </select>
        </p>

        <p>Sinopse: <input type="text" name="sinopse" value="<?php echo $contato['sinopse'];?>" > </p>
        <p>Duração: <input type="text" name="duracao" value="<?php echo $contato['duracao'];?>" > </p>
        <p><label for="fileFoto" id="lblFoto">Foto</label>
        <input type="file" name="foto" id="fileFoto"></p>
        <p><input class="alterar" type="submit" value="Gravar"></p>

    </form>

</body>
</html>