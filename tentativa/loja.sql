-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2024 às 02:00
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fabricante`
--

INSERT INTO `fabricante` (`id`, `nome`) VALUES
(1, 'Samsung'),
(2, 'Dell'),
(22, 'Samsung'),
(23, 'Dell'),
(24, 'Benq'),
(29, 'Samsung'),
(30, 'Dell'),
(31, 'Benq'),
(36, 'Samsung'),
(37, 'Dell'),
(38, 'Benq'),
(43, 'Samsung'),
(44, 'Dell'),
(45, 'Benq');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `fabricante_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `fabricante_id`) VALUES
(4, 'Teclado', 2),
(5, 'Monitor', 1),
(6, 'Memória', 1),
(7, 'HD', 1),
(11, 'Teclado', 2),
(12, 'Monitor', 1),
(13, 'Memória', 1),
(14, 'HD', 1),
(18, 'Teclado', 2),
(19, 'Monitor', 1),
(20, 'Memória', 1),
(21, 'HD', 1),
(25, 'Teclado', 2),
(26, 'Monitor', 1),
(27, 'Memória', 1),
(28, 'HD', 1),
(32, 'Teclado', 2),
(33, 'Monitor', 1),
(34, 'Memória', 1),
(35, 'HD', 1),
(39, 'Teclado', 2),
(40, 'Monitor', 1),
(41, 'Memória', 1),
(42, 'HD', 1),
(46, 'Teclado', 2),
(47, 'Monitor', 1),
(48, 'Memória', 1),
(49, 'HD', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4wbi6d600gsuphqv493waikhi` (`fabricante_id`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FK4wbi6d600gsuphqv493waikhi` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
