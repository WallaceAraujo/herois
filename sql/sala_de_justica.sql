-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jul-2021 às 21:35
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `herois_marvel`
--

CREATE TABLE `herois_marvel` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `herois_marvel`
--

INSERT INTO `herois_marvel` (`id`, `nome`) VALUES
(1, 'Homem de Ferro'),
(2, 'Capitão América'),
(3, 'Homem Aranha'),
(4, 'Thor'),
(5, 'Hulk'),
(6, 'Gavião Arqueiro'),
(7, 'Viuva Negra'),
(8, 'Pantera Negra'),
(9, 'Homem Formiga'),
(10, 'Soldado Invernal'),
(11, 'Vespa'),
(12, 'Falcão'),
(13, 'Doutor Estranho'),
(14, 'Loki'),
(15, 'Visão'),
(16, 'Feitiçeira Escarlate'),
(17, 'Mercúrio'),
(18, 'Capitã Marvel'),
(19, 'Senhor das Estrelas'),
(20, 'Gamora'),
(21, 'Drax o Destruidor'),
(22, 'Groot'),
(23, 'Rocket Raccoon'),
(24, 'Mantis'),
(25, 'Adam Warlock'),
(26, 'Quasar'),
(27, 'Deadpool'),
(28, 'Wolverine'),
(29, 'Prefessor Xavier'),
(30, 'Tempestade'),
(31, 'Magneto'),
(32, 'Jean Grey'),
(33, 'Homem de Gelo'),
(34, 'Noturno'),
(35, 'Vampira'),
(36, 'Colossus'),
(37, 'Ciclop'),
(38, 'Fera'),
(39, 'Lince Negra'),
(40, 'Gambit'),
(41, 'Anjo'),
(42, 'Jubileu'),
(43, 'Senhor Fantástico'),
(44, 'Mulher Invisível'),
(45, 'Tocha Humana'),
(46, 'Coisa'),
(47, 'Doutor Destino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `poderes`
--

CREATE TABLE `poderes` (
  `id` int(11) NOT NULL,
  `heroi_id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `poderes`
--

INSERT INTO `poderes` (`id`, `heroi_id`, `titulo`) VALUES
(26, 4, 'Super-força'),
(27, 4, 'Invulnerabilidade'),
(28, 4, 'Fator de Cura'),
(29, 4, 'Sentidos Aprimorados'),
(30, 4, 'Agilidade Sobre-Humana'),
(31, 4, 'Projeção e Manipulação de Energia'),
(32, 5, 'Super Velocidade'),
(37, 7, 'Aprimoramentos cibernéticos'),
(38, 7, 'Força Sobre-Humana'),
(39, 7, 'Resistência Sobre-Humana'),
(40, 7, 'Resistência à Energia'),
(41, 7, 'Velocidade Sobre-Humana'),
(42, 7, 'Vôo'),
(43, 7, 'Mecanocinese'),
(44, 8, 'Sabedoria de Salomão'),
(45, 8, 'Força de Hércules'),
(46, 8, 'Resistência de Atlas'),
(47, 8, 'Poder de Zeus'),
(48, 8, 'Coragem de Aquiles'),
(49, 8, 'Velocidade de Mercúrio'),
(50, 9, 'Super Força'),
(51, 9, 'Ivunerabilidade'),
(52, 9, 'habilidade de copiar os poderes de qualquer ser da face da terra apenas ingerindo uma amostra de DNA'),
(53, 10, 'Invisibilidade'),
(54, 10, 'Agilidade Sobre-Humana'),
(55, 10, 'Força Sobre-Humana'),
(56, 10, 'Reflexo Sobre-Humano'),
(57, 10, 'Telecinese'),
(58, 10, 'Telepatia'),
(59, 10, 'Regeneração Celular'),
(60, 11, 'Vôo através das asas e do cinto'),
(61, 11, 'Super Força'),
(62, 11, 'Super Reflexos'),
(63, 11, 'Falar com pássaros'),
(64, 1, 'Absorção de energia solar'),
(65, 1, 'Super Força'),
(66, 1, 'Invulnerabilidade'),
(67, 1, 'Visão de Calor'),
(68, 1, 'Visão Raio X'),
(69, 1, 'Visão Telescopia'),
(70, 1, 'Super Velocidade'),
(71, 1, 'Super Audição'),
(72, 1, 'Voo'),
(73, 12, 'Absorção de energia solar'),
(74, 12, 'Super Força'),
(75, 12, 'Invulnerabilidade'),
(76, 12, 'Visão de Calor'),
(77, 12, 'Visão Raio X'),
(78, 12, 'Visão Telescopia'),
(79, 12, 'Super Velocidade'),
(80, 12, 'Super Audição'),
(81, 12, 'Voo'),
(82, 6, 'Respirar embaixo da água'),
(83, 6, 'Nadar a velocidades altíssimas'),
(84, 6, 'Força sobre-humana'),
(85, 6, 'Poder telepático'),
(86, 2, 'Equipamentos avançados'),
(87, 2, 'Veículos extraordinários'),
(88, 2, 'Técnicas de combate corpo-a-corpo'),
(89, 2, 'Cérebro previlegiado'),
(90, 2, 'Considerado o homem mais perigoso do mundo'),
(91, 3, 'Anel de Poder que é conhecido como a arma mais poderosa do universo'),
(92, 3, 'Habilidade de criar qualquer coisa através do poder do anel');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `herois`
--
ALTER TABLE `herois`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `herois_marvel`
--
ALTER TABLE `herois_marvel`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Índices para tabela `poderes`
--
ALTER TABLE `poderes`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `herois`
--
ALTER TABLE `herois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `herois_marvel`
--
ALTER TABLE `herois_marvel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `poderes`
--
ALTER TABLE `poderes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
