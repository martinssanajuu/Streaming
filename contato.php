<!DOCTYPE html>
<html lang="ptbr">
<head>
<script src="https://kit.fontawesome.com/c223ce0c91.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <title>Contato</title>
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

<div class="email">
    <h1> CONTATOS: </h1>
<p> Dúvidas e reclamações: </p>
<a href= "mailto:martinsdecarvalhoanajulia@gmail.com?
subject=subject text">
martinsdecarvalhoanajulia@gmail.com </a>

<p> Telefone para contato: </p>
<a href="tel:+5511970120422"> +55(11)97012-0422</a>

<p> Localização:</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.5959239354816!2d-46.44094298567478!3d-23.547031566946927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6427fe3f5b23%3A0x54b863d343c81f8f!2sEtec%20Itaquera!5e0!3m2!1spt-BR!2sbr!4v1669488187391!5m2!1spt-BR!2sbr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

<p> Redes Sociais: </p>
<p>
<a href="https://www.instagram.com/martinsanajuu/">
<i  class="fa-brands fa-instagram"></i></a> Instagram </p>

<p>
<a href="https://api.whatsapp.com/send?phone=5511970120422&text=Ol%C3%A1!%20Preciso%20de%20ajuda%20com%20reclama%C3%A7%C3%B5es%2Fd%C3%BAvidas%2Ffeedback">
<i class="fa-brands fa-whatsapp"> </i> </a> Whatsapp </p>
            </div>




</body>