-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/11/2024 às 18:11
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE xerodb;

USE xerodb;

CREATE TABLE `produtos` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `produtos` (`id`, `nome`, `preco`, `categoria`, `descricao`, `imagem`) VALUES
(1, 'Margherita', 35.00, 'pizza salgada', 'Molho de tomate, mussarela, manjericão fresco, azeite de oliva', '/src/img/pizza-5501065_640.jpg'),
(2, 'Portuguesa', 64.00, 'pizza salgada', 'Molho de tomate, mussarela, presunto, ovos, azeitonas', '/src/img/pizza-5107039_640.jpg'),
(3, 'Pepperoni', 46.00, 'pizza salgada', 'Molho de tomate, mussarela, pepperoni', '/src/img/pizza-5405848_640.jpg'),
(4, 'Muçarela de Búfala', 70.00, 'pizza salgada', 'Massa fina e crocante, muçarela de búfala tomates cozidos e orégano.', '/src/img/pizzamuçarelabuf.jpg'),
(5, 'Lombo Canadense', 68.00, 'pizza salgada', 'Massa fina com lombo canadense, queijo muçarela, requeijão cremoso e orégano.', '/src/img/pizzalombocana.jpg'),
(6, 'Frango com Catupiry', 38.00, 'pizza salgada', 'Massa grossa frango desfiado, catupiry cremoso e orégano.', '/src/img/pizzafrangocatupiry.jpeg'),
(7, 'Bacon e Cheddar', 45.00, 'pizza salgada', 'Massa grossa com molho de tomate, bacon e queijo cheddar.', '/src/img/pizzabaconcheddar.jpeg'),
(8, 'Calabresa Acebolada', 41.00, 'pizza salgada', 'Massa grossa com molho de tomate, queijo muçarela, calabresa e azeitonas pretas.', '/src/img/pizzacalabresa.jpg'),
(9, 'Banana com Canela', 35.00, 'pizza doce', 'Massa fina com queijo muçarela sem sal, banana frita com açúcar e canela.', '/src/img/pizzadocebananaecanela.png'),
(10, 'Chocolate com Morango', 35.00, 'pizza doce', 'Massa grossa com queijo muçarela sem sal, chocolate ao leite, morangos cortados e granulado.', '/src/img/pizzadocechocolatecommorango.png'),
(11, 'Chocolate Branco', 35.00, 'pizza doce', 'Massa fina com muçarela sem sal, chocolate branco ao leite temperado com uma pitada de sal.', '/src/img/pizzadocechocolatebranco.png'),
(12, 'Chocolate misto', 35.00, 'pizza doce', 'Massa fina com muçarela sem sal, chocolate branco e preto temperados e em formato lindo.', '/src/img/pizzadocechocolatemisto.png'),
(13, 'Coca Cola lata', 7.50, 'bebidas', 'Coca Cola Zero ou comum em lata de 350ml.', '/src/img/bebidascomunscocacola.png'),
(14, 'pepsi cola latinha', 7.50, 'bebidas', 'Pepsi Black, comum ou twist em lata de 350ml.', '/src/img/bebidascomunspepsicola.png'),
(15, 'Fanta Latinha', 7.50, 'bebidas', 'Fanta Laranja, Uva ou Maracujá em lata de 350ml.', '/src/img/bebidasmomunsfanta.png'),
(16, 'Guaraná Antartica', 7.50, 'bebidas', 'Guaraná Antártica Zero ou comum em lata de 350ml.', '/src/img/bebidascomunsguaranaantartica.png'),
(17, 'Agua tônica', 7.50, 'bebidas', 'Água Tônica em lata de 350ml.', '/src/img/bebidascomunsaguatonica.png'),
(18, 'Dell Vale Latinha', 7.50, 'bebidas', 'Suco Del Valle em lata de 350ml.', '/src/img/bebidascomunsdelvalle.png'),
(19, 'Garrafa de Agua', 2.50, 'bebidas', 'Garrafinha de água com ou sem gás 500ml.', '/src/img/bebidascomunsagua.png'),
(20, 'H2OH Garrafa', 5.50, 'bebidas', 'H2OH limoneto ou comum em garrafinha de 500ml.', '/src/img/bebidascomunsh2oh.png'),
(21, 'Cerveja Antartica', 6.00, 'bebidas', 'Cerveja Antartica em lata.', '/src/img/bebidaalcoolantartica.png'),
(22, 'Cerveja Brahma', 6.00, 'bebidas', 'Cerveja Brahma em lata.', '/src/img/bebidaalcoolbrahma.png'),
(23, 'Cerveja Skol', 6.00, 'bebidas', 'cerveja skol em lata', '/src/img/bebidaalcoolskol.png'),
(24, 'Cerveja Heineken', 6.00, 'bebidas', 'cerveja heineken em lata', '/src/img/bebidaalcoolheineken.png'),
(25, 'Cerveja', 6.00, 'bebidas', 'cerveja imperio em lata', '/src/img/bebidaalcoolimperio.png'),
(26, 'Cerveja Itaipava', 6.00, 'bebidas', 'cerveja itaipava em lata', '/src/img/bebidaalcoolitaipava.png');

CREATE TABLE `users` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(4) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;