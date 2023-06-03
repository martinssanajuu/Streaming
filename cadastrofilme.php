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
           

    <div class="cadastrofilm">
    <form action="cadastrofilme.act.php" method="post" enctype="multipart/form-data">
       <h1>Cadastre seu Filme/Série:</h1>
        <p>Nome: <input type="text" name="filme"> </p>
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

        <p>Sinopse: <input type="text" name="sinopse"> </p>
        <p>Duração: <input type="text" name="duracao"></p>
        <p><input type="file" name="foto" id=""></p>

        <p> <input class="botaozinho2" type="submit" value="Gravar"></p>

    </form>

</div>

</body>

</html>