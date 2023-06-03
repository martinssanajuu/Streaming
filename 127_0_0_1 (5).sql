-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27-Nov-2022 às 01:27
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(9, 'Heloisa', '11970120322', 'helo123@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_filme`
--

DROP TABLE IF EXISTS `cadastro_filme`;
CREATE TABLE IF NOT EXISTS `cadastro_filme` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `filme` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sinopse` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duracao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_filme`
--

INSERT INTO `cadastro_filme` (`codigo`, `filme`, `genero`, `sinopse`, `foto`, `duracao`) VALUES
(46, 'Brooklyn nine-nine', 'Comédia', 'A série gira em torno de Jake Peralta (Andy Samberg), um imaturo, mas talentoso, detetive da polícia de Nova York na fictícia 99. ª Delegacia do Brooklyn, que muitas vezes entra em conflito com seu novo comandante, o sério e severo capitão Raymond Holt (Andre Braugher).', 'img/de859bc0a8bedf075368b4bccfabbafc.jpg', '2:00'),
(47, 'O Espetacular Homem -Aranha', 'Animação', 'Teste', 'img/260819de8fb2c9b58ef5653521ff436d.jpg', '2:00'),
(41, 'Teen Wolf', 'Drama', 'Teste', 'img/bd2ba2f748a592eb51ea87cc103494b6.jpg', '2:00'),
(42, 'As Branquelas', 'Comédia', 'teste', 'img/cd153e937a38037c90f4dde941bb98d1.jpg', '2:00'),
(43, 'Brilhante Victoria', 'Comédia', 'teste', 'img/c0ccdfe8cc5bf537e5ff04e4560e39dd.jpg', '2:00'),
(44, 'Crepúsculo - Amanhecer parte 2', 'Romance', 'teste', 'img/603c05f7cd75ff092fa4c212461b981c.jpg', '2:00'),
(45, 'Barbie - Segredo das Fadas', 'Animação', 'teste', 'img/15dc0bc2298a1164616581cf5f06d428.jpg', '2:00');
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
