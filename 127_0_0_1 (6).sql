-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 04-Dez-2022 às 02:29
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_d`
--
CREATE DATABASE IF NOT EXISTS `banco_d` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `banco_d`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_site`
--

DROP TABLE IF EXISTS `tabela_site`;
CREATE TABLE IF NOT EXISTS `tabela_site` (
  `filme` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `notas` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Banco de dados: `banco_streaming`
--
CREATE DATABASE IF NOT EXISTS `banco_streaming` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `banco_streaming`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banco_streaming`
--

DROP TABLE IF EXISTS `banco_streaming`;
CREATE TABLE IF NOT EXISTS `banco_streaming` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `banco_streaming`
--

INSERT INTO `banco_streaming` (`codigo`, `nome`, `telefone`, `email`, `senha`) VALUES
(1, '$nome', '$telefone', '$email', '$senha'),
(2, 'João', '11987898564', 'joao2@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Ana', 'ana@gmail.com', '91389173', '202cb962ac59075b964b07152d234b70'),
(5, 'João', '1196565465454', 'j@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'Yasmin', '11564568', 'yaseladeles@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Harison Jr', '111910', 'harisonjr@timao.com', 'ab7314887865c4265e896c6e209d1cd6'),
(14, 'Heloisa', '28818383', 'lolinha@gmail.com', '202cb962ac59075b964b07152d234b70'),
(9, 'Heloisa', '11970120322', 'helo123@gmail.com', '202cb962ac59075b964b07152d234b70'),
(15, 'Ana Ju', '11970120422', 'martinsana0903@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_filme`
--

DROP TABLE IF EXISTS `cadastro_filme`;
CREATE TABLE IF NOT EXISTS `cadastro_filme` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `filme` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `escolha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sinopse` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duracao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_filme`
--

INSERT INTO `cadastro_filme` (`codigo`, `filme`, `genero`, `escolha`, `sinopse`, `foto`, `duracao`) VALUES
(53, 'Death Note', 'Anime', 'Serie', 'Um estudante de repente encontra um caderno que caiu do céu. Trata-se do Death Note, que permite ao seu portador matar qualquer pessoa a partir da mera anotação do nome do alvo em uma de suas páginas.', 'img/37b195b5507fd6c481e62ad39f69b172.jpg', '1 Temporada'),
(52, 'As Branquelas', 'Comédia', 'Filme', 'Dois irmãos agentes do FBI, Marcus e Kevin Copeland, acidentalmente evitam que bandidos sejam presos em uma apreensão de drogas. Como castigo, eles são forçados a escoltar um par de socialites nos Hamptons.', 'img/51338358c3ffe00892b289b18c301a11.jpg', '1h49min'),
(50, 'Teen Wolf', 'Drama', 'Serie', 'O jovem Scott McCall (Tyler Posey) é estudante do ensino médio no colégio fictício de Beacon Hills e vive como um garoto comum, passando por problemas naturais da juventude. Ao ir caminhar na floresta em busca de um suposto corpo morto, o menino é mordido por um lobisomem.', 'img/e9e26fbeaea472087701f3a22e3bf654.jpg', '6 Temporadas'),
(51, 'Enola Holmes 2', 'Suspense', 'Filme', 'Em seu primeiro caso oficial como detetive, Enola precisa encontrar uma menina desaparecida. Para isso, ela conta com a ajuda dos amigos e do irmão, Sherlock.', 'img/5224ab4b01a9b0e526a06d43ce58d6e2.jpg', '2h10min'),
(54, 'Ginny e Georgia', 'Drama', 'Serie', 'Ginny e Georgia acompanha Ginny Miller (Antonia Gentry), uma jovem de 15 anos que não se encaixa no perfil comum de sua idade e que, em várias ocasiões, se sente ainda mais madura do que sua mãe, a enérgica Georgia Miller (Brianne Howey). Georgia teve Ginny quando era adolescente e precisou trabalhar em diferentes cidades para sobreviver como mãe solteira. Agora, depois de passar por poucas e boas, Georgia está pronta para começar do zero e decide se mudar com seus filhos Ginny e Austin (Diesel La Torraca) para uma pequena cidade no estado de Massachusetts.', 'img/94a2676b73ee83c0a8e467c6b3ed05cf.jpg', '1 Temporada'),
(55, 'Crepúsculo', 'Romance', 'Filme', 'A estudante Bella Swan conhece Edward Cullen, um belo mas misterioso adolescente. Edward é um vampiro, cuja família não bebe sangue, e Bella, longe de ficar assustada, se envolve em um romance perigoso com sua alma gêmea imortal.', 'img/4b4ff34ee4b1055cd472b2495df084b5.jpg', '2h1min'),
(56, 'Shrek', 'Animação', 'Filme', 'Um ogro tem sua vida invadida por personagens de contos de fadas que acabam com a tranquilidade de seu lar. Ele faz um acordo pra resgatar uma princesa.', 'img/0d29fb26d86e01dea3ffc53edb91b9de.jpg', '1h30min'),
(57, 'Homem-Aranha - Longe de Casa', 'Herois', 'Filme', 'Peter Parker está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury.', 'img/be7eabf93d4099884cef57ca01f39f86.jpg', '2h9min'),
(58, 'As Crônicas de SpiderWick', 'Aventura', 'Filme', 'Dos três filhos de Grace, Jared sempre foi considerado o causador de problemas. Assim, quando coisas estranhas acontecem depois que a família se muda para uma propriedade arruinada, a irmã Mallory, o irmão gêmeo Simon e a mãe pensam que Jared é o responsável por tudo. Na verdade, eles descobrem que criaturas mágicas que vagueiam pelas terras', 'img/a0e675e039fb1245d92bf344cdd0fcf0.jpg', '1h37min'),
(59, 'Soobrenatural - A Origem', 'Terror', 'Filme', 'Vítima de uma entidade sobrenatural perigosa, a adolescente Quinn Brenner busca a ajuda da médium Elise Rainier, que por meio de suas habilidades paranormais descobre a existência de um demônio com sede de almas humanas.', 'img/65d515d3a943eb05e3d1338ffef4bae7.jpg', '1h37min'),
(60, 'Cloud9', 'Drama', 'Filme', 'Kayla Morgan, uma atleta promissora, porém irresponsável, é afastada de sua equipe de snowboard. Após mais uma confusão, ela se aproxima de Will Cloud, campeão do esporte, que teve a carreira precocemente encerrada por causa de uma queda. ', 'img/cec584fd5839202bd45ccf9c4c2d1c93.jpg', '1h29min'),
(61, 'Lemonade Mouth', 'Drama', 'Filme', 'Cinco jovens considerados \"fracassados\" formam o grupo Lemonade Mouth e acabam ameaçando a liderança da banda mais popular da escola. Com isso, o conjunto rival começa a fazer ameaças e sabotagens para tirá-los de uma disputa.', 'img/e748bbda31ad5a99962668866afaed5e.jpg', '1h50'),
(62, 'Cocórico', 'Animação', 'Serie', 'Júlio, um menino simples de 8 anos de idade que nasceu na cidade grande, inventou de passar suas férias escolares na fazenda de seus avós. Trata-se da Fazenda Cocoricó, localizada na cidade fictícia de Cocoricolândia.', 'img/67f789bf6644a2c866f01839b49db114.jpg', '8 Temporadas'),
(63, 'Violetta', 'Romance', 'Serie', 'Violetta conta a história de uma jovem talentosa, mas solitária, que, após muitos anos morando na Europa, volta à sua Cidade Natal, Buenos Aires. Em sua nova vida, ela encontra amigos verdadeiros e até mesmo o amor, ao mesmo tempo em que descobre seu talento e sua paixão por música.', 'img/7422c1ccae029b192ea6248b7c7488ae.jpg', '3 Temporadas'),
(64, 'The Office', 'Comédia', 'Serie', 'A série acompanha o dia-a-dia do escritório de uma fábrica de papel, a Dunder Miffin, localizada em Scranton, na Pensilvânia. Mostra o chefe Michael tentando estimular seus insatisfeitos funcionários em meio a diversas crises e comportamentos peculiares.', 'img/8a08c2deb1d9d5fccd96e5a47810010a.jpg', '9 Temporadas'),
(65, 'This is Us', 'Drama', 'Serie', 'This Is Us apresenta a história de três pessoas nascidas no mesmo dia, dois homens e uma mulher. A trama navega entre os anos 1980 e os dias atuais, mostrando a infância de cada uma delas em contraste com a vida adulta, marcada por uma grande tragédia familiar.', 'img/3931ccfb2396fb3444983e351fbf1e52.jpg', '6 Temporadas'),
(66, 'You', 'Suspense', 'Serie', 'A história acompanha Joe, um gerente de livrarias que conhece uma aspirante a escritora e usa a internet e as mídias sociais como ferramentas para reunir as informações pessoais para se aproximar dela e também para fazer a mulher dos seus sonhos se apaixonar por ele.', 'img/d9904167f7d4ac0654e692666c122cd9.jpg', '3 Temporadas'),
(67, 'O Espetacular Homem-Aranha', 'Herois', 'Filme', 'Peter Parker está tentando saber mais sobre sua origem. Ele encontra uma pasta que pertenceu ao seu pai e quer descobrir por que seus pais desapareceram. Sua busca o leva a Oscorp e ao dr. Curt Connors, que tem como alterego o letal Lagarto.', 'img/5a4035fb07f1f731f324a0e10b56a670.jpg', '2h16min'),
(68, 'Naruto', 'Anime', 'Serie', 'Naruto (ナルト) é uma série de mangá escrita e ilustrada por Masashi Kishimoto, que conta a história de Naruto Uzumaki, um jovem ninja que constantemente procura por reconhecimento e sonha em se tornar Hokage, o ninja líder de sua vila.', 'img/8f9425b9aafd6e69b105fc847b0ffc0b.jpg', '9 Temporadas'),
(69, 'Barbie - vida de sereia', 'Animação', 'Filme', 'Barbie é uma campeã de surfe que vive com sua família em Malibu. Um dia, ela descobre um segredo de família: ela é uma sereia. Sua mãe, a rainha de Oceana, está em perigo e ela parte numa grande aventura no fundo do mar para salvá-la.', 'img/cf1916a7cf9fb390ff1783acf209f8d5.jpg', '1h14min'),
(70, 'As vantagens de ser invísivel', 'Romance', 'Filme', 'Um jovem tímido se esconde em seu próprio mundo até conhecer dois irmãos que o ajudam a viver novas experiências. Embora esteja feliz nessa nova fase, ele não esquece as tristezas do passado, que têm origem em uma chocante revelação.', 'img/05a22b1d5a9a8a165cbf0c1efe85a527.jpg', '1h42min'),
(71, 'Barbie - Segredo das Fadas', 'Animação', 'Filme', 'Mundos mágicos, fadas e cavalos voadores são alguns dos elementos encontrados neste filme da Barbie. Ela precisa viajar a um mundo encantado para salvar Ken. Nesta aventura, serão revelados segredos e algumas amizades serão testadas.', 'img/5a31e016d1eee88dc0af6313a5bc2c5a.jpg', '1h12min'),
(72, '(500) dias com ela', 'Romance', 'Filme', 'Um romântico escritor se surpreende quando sua namorada Summer termina o namoro repentinamente. Com isso, ele relembra vários momentos dos 500 dias que passaram juntos para tentar descobrir onde seu caso de amor se perdeu e vai redescobrindo suas verdadeiras paixões.', 'img/29e6cd6c6c5fed21f20b86d8e62ef395.jpg', '1h35min'),
(73, 'Simplesmente Acontece', 'Romance', 'Filme', 'lex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. ', 'img/974a6cc3885f3e49e124fcff3698049f.jpg', '1h42'),
(74, 'Jojo Rabbit', 'Drama', 'Filme', 'Jojo é um garoto alemão solitário que descobre que sua mãe está escondendo uma garota judia no sótão. Ajudado apenas por seu amigo imaginário, Adolf Hitler, Jojo deve enfrentar seu nacionalismo cego enquanto a Segunda Guerra Mundial prossegue.', 'img/7519c0592ce9e3e604ea9f36e57d9122.jpg', '1h48min'),
(75, 'Adoraveis Mulheres', 'Romance', 'Filme', 'Nos anos seguintes à Guerra de Secessão, Jo March e suas duas irmãs voltam para casa quando Beth, a tímida irmã caçula, desenvolve uma doença devastadora que muda para sempre a vida delas.', 'img/6ea489e2b86748f2fc561bdd0b633c7a.jpg', '2h15min'),
(76, 'Friends', 'Comédia', 'Serie', 'Seis amigos, três homens e três mulheres, enfrentam a vida e os amores em Nova York e adoram passar o tempo livre na cafeteria Central Perk.', 'img/41b745e98914ff4069cedca5a2c27ffe.jpg', '10 Temporadas'),
(77, 'How i met your mother', 'Comédia', 'Serie', 'ed se apaixonou. Tudo começou quando seu melhor amigo, Marshall, soltou a bomba de que planejava pedir em casamento a namorada de longa data, Lily, uma professora de jardim de infância. Ted percebeu que era melhor se mexer se esperava encontrar o verdadeiro amor.', 'img/8b77f48e2c2419a2cba265833a4793ff.jpg', '9 Temporadas');
--
-- Banco de dados: `bd_contatos`
--
CREATE DATABASE IF NOT EXISTS `bd_contatos` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_contatos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contatos`
--

DROP TABLE IF EXISTS `tb_contatos`;
CREATE TABLE IF NOT EXISTS `tb_contatos` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_contatos`
--

INSERT INTO `tb_contatos` (`Codigo`, `Nome`, `Email`, `Telefone`, `foto`, `Senha`) VALUES
(1, '$Nome', '$Email', '$Telefone', '', ''),
(20, 'Harry Osborn', 'harry@gmail.com', '91922912', 'imgs/441449722298621c942590bdac5573da.jpg', '202cb962ac59075b964b07152d234b70'),
(21, 'Ana Julia', 'martinsdecarvalhoanajulia@gmail.com', '1198394732', 'imgs/54da2b49b02a23e0d9ad68e0aa9df60b.jpg', '202cb962ac59075b964b07152d234b70'),
(18, 'Tia May', 'may@gmail.com', '1292292921', 'imgs/046bcf992753d6972d7fd849ee2270bf.jpg', '202cb962ac59075b964b07152d234b70'),
(17, 'Tio Ben', 'ben@gmail.com', '110928292', 'imgs/3f27082a2f16859c7661f6e96df90650.jpg', '202cb962ac59075b964b07152d234b70'),
(19, 'Miranha', 'spiderman@gmail.com', '1102922020', 'imgs/0b75d33c1bffaf7b7a205ce69c7b8368.jpg', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
