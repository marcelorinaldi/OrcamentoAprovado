-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25/04/2024 às 19:48
-- Versão do servidor: 10.11.7-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u696308407_jsMobile`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `titulo` varchar(40) DEFAULT NULL,
  `nota` int(1) DEFAULT NULL,
  `mensagem` longtext DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `tempo` datetime DEFAULT NULL,
  `delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `titulo`, `nota`, `mensagem`, `evento`, `tempo`, `delete`) VALUES
(1, 'aaaa', 1, 'bbbb', NULL, '2024-03-29 21:21:39', 0),
(2, 'tttttt', 1, 'ggggg', NULL, '2024-03-29 23:03:56', 1),
(3, '', 3, 'mensagem', NULL, '2024-03-30 07:35:55', 0),
(4, '', 2, '222', NULL, '2024-03-30 07:36:11', 0),
(5, 'domingo', 1, 'cedo', NULL, '2024-03-31 08:30:58', 0),
(6, 'dom 2', 2, 'menino doido', NULL, '2024-03-31 08:31:25', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `imagem` longtext NOT NULL,
  `quantidade` int(2) NOT NULL,
  `apagado` int(1) NOT NULL,
  `tempo` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `valor`, `imagem`, `quantidade`, `apagado`, `tempo`) VALUES
(1, 'Arroz Branco Tio João 5 Kg', '49,90', 'https://m.media-amazon.com/images/I/71rBEHnIkXL._AC_SX679_.jpg', 1, 0, '2024-04-24 14:51:54'),
(2, 'Feijão carioca tipo 1 camil 1 kg', '8,05', 'https://a-static.mlcdn.com.br/1500x1500/feijao-carioca-tipo-1-camil-1-kg/ljdocesesalgados/2813b1a2ab0211eea84e4201ac185040/0f3924353d1bd22e47244c54c0c7246f.jpeg', 1, 0, '2024-04-24 14:53:10'),
(3, 'Pilão Café Torrado E Moído Tradicional Vácu', '14,50', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQhSnoARoYZULz35FGSt0SiDQ9xbC2ZB6BydgNf1cIxU5dNW3Bks0u5zbegu1RXVMVpDQNCy6j4UlRzoce_Sq-cDOTWdjmrvAKG5eyB02tXInEAgBSzpqVFXw&usqp=CAE', 2, 0, '2024-04-24 14:54:41'),
(4, 'Açúcar Refinado União 1kg', '5,13', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTbIc4808cexdsqq25b0xMjMxs0opur-GekF90kyeZjtwOj2rX7lXQZFrdU4SugoVjQmiqTXCHFllPWH3BHD1cipCiMag8x81yJ5hZHz4HXcOa3ReDefntw&usqp=CAE', 123, 0, '2024-04-24 15:56:27'),
(5, 'Manteiga Tablete Extra ', '10,70', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSdCh2jo-ipTOG-8B_gOOl2UNAkMf0nG6Ea8clfF9FOqF4c49hh8IS83lFU6BeHl_UfdBRckzNa3vQG3st92dbrLApeFtRXkw0kqbwnyBQPYR9le-c0Nu1c&usqp=CAE', 3, 0, '2024-04-24 15:57:36'),
(6, 'sem foto =)', '4', '', 444, 0, '2024-04-24 16:05:52'),
(7, 'testes', '1', '', 1, 0, '2024-04-24 16:17:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `data_cad` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `login`, `senha`, `data_cad`) VALUES
(1, 'chico', '11', '22', '2024-04-25 15:14:57'),
(2, 'igor', 'ab', '12', '2024-04-25 15:48:34'),
(3, 'qqq', 'wwww', '123', '2024-04-25 16:17:39'),
(4, '1', '2', '3', '2024-04-25 16:18:04'),
(5, 'silva', 's1', '987', '2024-04-25 16:29:14'),
(6, 'ze', 'ze', '12', '2024-04-25 16:33:10'),
(7, 'maria', 'mar', '34', '2024-04-25 16:36:52');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
