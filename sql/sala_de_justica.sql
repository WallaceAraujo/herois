-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jul-2021 às 22:51
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sala_de_justica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `herois`
--

CREATE TABLE `herois` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `identidade_secreta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `herois`
--

INSERT INTO `herois` (`id`, `nome`, `identidade_secreta`) VALUES
(1, 'Superman', 'Clark Kent'),
(2, 'Batman', 'Bruce Waine'),
(3, 'Lanterna Verde', 'Hall Jordan'),
(4, 'Mulher Maravilha', 'Diana Prince'),
(5, 'Flash', 'Barry Allen'),
(6, 'Aquaman', 'Arthur Curry'),
(7, 'Cyborg', 'Victor Stone'),
(8, 'Shazam', 'Billy Batson'),
(9, 'Arqueiro Verde', 'Oliver Queen'),
(10, 'Cacador de Marte', 'Jonn Jonzz'),
(11, 'Mulher-Gavião', 'Shiera Sanders'),
(12, 'Super Girl', 'Kara Danvers');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `herois`
--
ALTER TABLE `herois`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `herois`
--
ALTER TABLE `herois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
