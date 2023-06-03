
     <header>
        <div class= "container"> 
        <div class= "logo"> <img src="./BeMovieLogo3.png"></div>
        <div class= "menu"> 
          <nav>
            
            <!-- entrar ou sair! eis a questão =( -->
              
            <?php
            @session_start();
                if(isset($_SESSION['login']) && $_SESSION['login'] == true ){
                  echo "<a href=#>Olá, $_SESSION[nome]!</a>";
                  echo "<a href= \"cadastrofilme.php\">Cadastrar Filmes</a>";
                  echo "<a href= \"pesquisar.php\">Pesquisar</a>";
                  echo "<a href= \"lista.filme.php\">Área Cliente</a>";
                  
                  echo "<a href=logoff.php>Sair</a>";
              
                } else{
                  echo  "<a href= \"entradaadm.php\">Início</a>";
                  echo   "<a href= \"sobre.php\">Sobre nós</a>";
                  echo    "<a href= \"contato.php\">Contato</a>";
                  echo "<a href=login_cliente.php>Entrar</a>";
                }

               
                  
 ?>
  
          </nav>
          </div>
         
    </div>
</header>

  <?php
     @session_start();
   ?>

