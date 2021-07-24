-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 24/07/2021 às 14:18
-- Versão do servidor: 8.0.23
-- Versão do PHP: 7.4.16

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
-- Estrutura para tabela `herois`
--

CREATE TABLE `herois` (
  `id` int NOT NULL,
  `nome` varchar(250) NOT NULL,
  `identidade_secreta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `herois`
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `herois_marvel`
--

CREATE TABLE `herois_marvel` (
  `id` int NOT NULL,
  `nome` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `herois_marvel`
--

INSERT INTO `herois_marvel` (`id`, `nome`) VALUES
(1, 'Homem de Ferro'),
(2, 'Capitão América'),
(3, 'Cyborg Dourado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `poderes`
--

CREATE TABLE `poderes` (
  `id` int NOT NULL,
  `heroi_id` int NOT NULL,
  `titulo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `poderes`
--

INSERT INTO `poderes` (`id`, `heroi_id`, `titulo`) VALUES
(17, 2, 'Eu sou Riiicoooooo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `herois`
--
ALTER TABLE `herois`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `herois_marvel`
--
ALTER TABLE `herois_marvel`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `poderes`
--
ALTER TABLE `poderes`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `herois`
--
ALTER TABLE `herois`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `herois_marvel`
--
ALTER TABLE `herois_marvel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `poderes`
--
ALTER TABLE `poderes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
