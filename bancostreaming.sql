-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06-Nov-2022 às 16:17
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
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `banco_streaming`
--

INSERT INTO `banco_streaming` (`nome`, `telefone`, `email`, `senha`) VALUES
('$nome', '$telefone', '$email', '$senha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_filme`
--

DROP TABLE IF EXISTS `cadastro_filme`;
CREATE TABLE IF NOT EXISTS `cadastro_filme` (
  `filme` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duracao` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_filme`
--

INSERT INTO `cadastro_filme` (`filme`, `genero`, `foto`, `duracao`) VALUES
('$filme', '$genero', '$foto', '$duracao');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
