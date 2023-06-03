-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Nov-2022 às 20:39
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `banco_streaming`
--

INSERT INTO `banco_streaming` (`codigo`, `nome`, `telefone`, `email`, `senha`) VALUES
(1, '$nome', '$telefone', '$email', '$senha'),
(2, 'João', '11987898564', 'joao2@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Ana', 'ana@gmail.com', '91389173', '202cb962ac59075b964b07152d234b70'),
(5, 'João', '1196565465454', 'j@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'Yasmin', '11564568', 'yaseladeles@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Harison Jr', '111910', 'harisonjr@timao.com', 'ab7314887865c4265e896c6e209d1cd6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_filme`
--

DROP TABLE IF EXISTS `cadastro_filme`;
CREATE TABLE IF NOT EXISTS `cadastro_filme` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `filme` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sinopse` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `duracao` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_filme`
--

INSERT INTO `cadastro_filme` (`codigo`, `filme`, `genero`, `sinopse`, `foto`, `duracao`) VALUES
(34, 'teste', 'Terror', 'cocococococoococococococcococoocococ', 'img/7990279de9847a2a36a1e56af6d0d949.jpg', '200'),
(36, 'teste', 'Romance', '123', 'img/b4019aada63354cc2c74810a9978c9b4.jpg', '200');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
