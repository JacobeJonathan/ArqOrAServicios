-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 03, 2021 at 01:58 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `alimento`
--

DROP TABLE IF EXISTS `alimento`;
CREATE TABLE IF NOT EXISTS `alimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portada` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `oferta` tinyint(1) NOT NULL,
  `portada_oferta` varchar(150) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000016 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alimento`
--

INSERT INTO `alimento` (`id`, `portada`, `titulo`, `descripcion`, `precio`, `categoria`, `oferta`, `portada_oferta`, `estado`) VALUES
(1, '5ec41dee388c0.png', 'California Burger', 'Turkey / Alfalfa / Lettuce / Chicken Beef / Tomatoes', '$25.90', 'Hamburguesas', 1, '', 'Disponible'),
(2, '5ec44fe0abbb0.png', 'Mexican Burger', 'All-natural chicken / Tomatoes / Arugula / Baguette', '$21.90', 'Hamburguesas', 0, '', 'Disponible'),
(3, '5ec44ffb53fe9.png', 'Mini Burger', 'Smoked turkey breast / Bacon / Lettuce / Toast', '$10.90', 'Hamburguesas', 0, '', 'Disponible'),
(4, '5ec45b26ece68.png', 'Chicken Burger', 'Roasted red peppers / Arugula / Basil / Baguette', '$15.90', 'Hamburguesas', 0, '', 'Disponible'),
(5, '5ec45b5c51572.png', 'Double Burger', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$35.90', 'Hamburguesas', 0, '', 'Disponible'),
(1000001, '5ec53b46d522e.png', 'Tomato Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000002, '5ec53b6c56168.png', 'Chicken Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Tostadas', 0, '', 'Disponible'),
(1000003, '5ec53b9570abe.png', 'Cheese Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000004, '5ec53baf27b1e.png', 'Beef Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000005, '5ec53bc8129f3.png', 'Mediterreant Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Tostadas', 1, '', 'Disponible'),
(1000006, '5ec53c578d572.png', 'Pepperoni', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000007, '5ec53c7341728.png', 'Hawaiian', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000008, '5ec53c8658e90.png', 'Sicilian', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000009, '5ec53ca642592.png', 'Classic Cheddar', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 1, '', 'Disponible'),
(1000010, '5ec53ce229d49.png', 'Buffalo Bleu', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 0, '', 'Disponible'),
(1000011, '5ec53d1bb745f.png', 'Chicken Caprese', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 0, '', 'Disponible'),
(1000012, '5ec53d2f0f35e.png', 'Greek Salad', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 1, '5ecbf695f3ab6.jpeg', 'Disponible'),
(1000013, '5ec53d47c7acf.png', 'Turkey Salad', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 1, '', 'Disponible'),
(1000015, '5ef365d398cf2.png', 'Donas', 'Fresa / Chocolate / Chispas', '$5.5', 'Postres', 1, '5ef3660aad2ee.jpeg', 'Disponible');

-- --------------------------------------------------------

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
CREATE TABLE IF NOT EXISTS `carrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idalimento` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `createAt` datetime NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `config_general`
--

DROP TABLE IF EXISTS `config_general`;
CREATE TABLE IF NOT EXISTS `config_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `cr` varchar(150) NOT NULL,
  `ubicacion` longtext NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono1` varchar(30) NOT NULL,
  `telefono2` varchar(30) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL,
  `horarios` varchar(300) NOT NULL,
  `iframe` longtext NOT NULL,
  `categorias_menu` longtext NOT NULL,
  `color_texto_menu` varchar(20) NOT NULL,
  `color_fondo_menu` varchar(10) NOT NULL,
  `facebook_iframe` longtext NOT NULL,
  `culqi_public` varchar(50) NOT NULL,
  `culqi_private` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config_general`
--

INSERT INTO `config_general` (`id`, `nombre_empresa`, `logo`, `cr`, `ubicacion`, `correo`, `telefono1`, `telefono2`, `facebook`, `twitter`, `instagram`, `horarios`, `iframe`, `categorias_menu`, `color_texto_menu`, `color_fondo_menu`, `facebook_iframe`, `culqi_public`, `culqi_private`, `counter`) VALUES
(1, 'Chicken Burger', '60dcfd3359547.png', 'ChickenBurger  © 2020 Privacy Policy', '4578 Marmora St, San Francisco D04 89GR', 'ChickenBurger@gmail.com', '(+18) 001-2345', '(+18) 001-2345', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '9:00am-7:00pm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2493.346998274002!2d-77.03931130287246!3d-12.09864768277226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1589811010099!5m2!1ses-419!2spe\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Pizzas, Hamburguesas, Bebidas, Tostadas, Ensaladas', 'white', 'black', '<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fenespanol&tabs=timeline&width=340&height=350&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=775587709299584\" width=\"340\" height=\"350\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>', 'pk_test_9204944525b58275', 'sk_test_bce400facb406e4b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `telefono` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nombres`, `apellidos`, `mensaje`, `correo`, `createAt`, `telefono`) VALUES
(1, 'Diego', 'Arroyo', 'Hola k hace', 'diegoarca02@gmail.com', '2020-06-16', 998106245),
(2, 'Vincent', 'Murray', 'LKJDSGFPOÑAE G', 'vincentmurray01@gmail.com', '2020-06-16', 998106245),
(4, 'Eduardo', 'Campos', 'Hola como estas quiero info por favor', 'eduar.arca001@gmail.com', '2020-06-17', 960845614);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(150) NOT NULL,
  `respuesta` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pregunta`, `respuesta`) VALUES
(1, 'Can I track my order?', 'Yes, you can! After placing your order you will receive an order confirmation via email. Each order starts production 24 hours after your order is placed. Within 72 hours of you placing your order, you will receive an expected delivery date. When the order ships, you will receive another email with the tracking number and a link to trace the order online with the carrier.'),
(2, 'How can I change something in my order?', 'If you need to change something in your order, please contact us immediately. We usually process orders within 2-4 hours, and once we have processed your order, we will be unable to make any changes.'),
(3, 'How can I pay for my order?', 'We accept Visa, MasterCard, and American Express credit and debit cards for your convenience.'),
(4, 'Can I return an item?', 'Please contact our administrators for more information.'),
(5, 'How long will my order take to be delivered?', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.'),
(6, 'How long will my order take to be delivered? e', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.'),
(7, 'How long will my order take to be delivered?', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.');

-- --------------------------------------------------------

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
CREATE TABLE IF NOT EXISTS `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `resena` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`id`, `foto`, `titulo`, `resena`) VALUES
(1, '5eca91a71d780.jpeg', 'Salads', 'We offer a vast variety of salads, both classic and modern, including world favorites.'),
(2, '5eca94497ac3d.jpeg', 'Snacks', 'Looking for a tasty snack? Fast Food menu has something to offer!'),
(6, '5eca9741a97ed.jpeg', 'Sandwiches', 'Our sandwiches are perfect if you want to have a quick bite at affordable price.'),
(7, '5eca976d92a83.jpeg', 'Mini Hamburgers', 'Finish the design for blog listings and articles, including mixed meda'),
(8, '5eca979010907.jpeg', 'Pizzas', 'Various types of our pizza always taste awesome, even if ordered online.'),
(9, '5eca97afb3bed.jpeg', 'Desserts', 'From tiramisu to cheesecakes, in Fast Food menu you will find a lot of tasty desserts.');

-- --------------------------------------------------------

--
-- Table structure for table `inicio`
--

DROP TABLE IF EXISTS `inicio`;
CREATE TABLE IF NOT EXISTS `inicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_cabecera` varchar(50) NOT NULL,
  `titulo_principal` varchar(100) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `titulo_producto` varchar(50) NOT NULL,
  `foot_img_uno` varchar(250) NOT NULL,
  `foot_img_dos` varchar(250) NOT NULL,
  `foot_img_tres` varchar(250) NOT NULL,
  `foot_img_cuatro` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inicio`
--

INSERT INTO `inicio` (`id`, `titulo_cabecera`, `titulo_principal`, `precio`, `titulo_producto`, `foot_img_uno`, `foot_img_dos`, `foot_img_tres`, `foot_img_cuatro`) VALUES
(1, 'Free Delivery', 'SANDWICH DAY', '3.99', 'Sandwich Salad Drink', '5ec15aa3e95d3.jpeg', '5ec15aa3ea063.jpeg', '5ec15aa3ea7e3.jpeg', '5ec15aa3ead45.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
CREATE TABLE IF NOT EXISTS `locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_comida`
--

DROP TABLE IF EXISTS `menu_comida`;
CREATE TABLE IF NOT EXISTS `menu_comida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `preview` varchar(250) DEFAULT NULL,
  `enlace` varchar(300) DEFAULT NULL,
  `fondo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_comida`
--

INSERT INTO `menu_comida` (`id`, `titulo`, `preview`, `enlace`, `fondo`) VALUES
(2, 'Pizzas', '5ec6ee1e0059d.png', 'http://127.0.0.1:8000/menu/pizzas', '5ec6ee1e00c91.jpeg'),
(3, 'Hamburguesas', '5ec83835e4b86.png', 'http://127.0.0.1:8000/menu/hamburguesas', '5ec83835e59b8.jpeg'),
(4, 'Bebidas', '5ec8386490d96.png', 'http://127.0.0.1:8000/menu/bebidas', '5ec8386491268.jpeg'),
(5, 'Tostadas', '5ec8387616a89.png', 'http://127.0.0.1:8000/menu/tostadas', '5ec8387616fa8.jpeg'),
(6, 'Ensaladas', '5ec83894e13fe.png', 'http://127.0.0.1:8000/menu/ensaladas', '5ec83894e191e.jpeg'),
(7, 'Postres', '5ec83a56f0a9c.png', 'http://127.0.0.1:8000/menu/postres', '5ec83a56f1122.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_single`
--

DROP TABLE IF EXISTS `menu_single`;
CREATE TABLE IF NOT EXISTS `menu_single` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `titulo_comida` varchar(250) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `ingredientes` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navegacion`
--

DROP TABLE IF EXISTS `navegacion`;
CREATE TABLE IF NOT EXISTS `navegacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `icono` varchar(50) NOT NULL,
  `enlace` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navegacion`
--

INSERT INTO `navegacion` (`id`, `titulo`, `icono`, `enlace`) VALUES
(3, 'Contacto', 'thin-icon-phone-support', 'http://127.0.0.1:8000/contacto'),
(5, 'Online', 'thin-icon-cup', 'http://127.0.0.1:8000/ordenar-online');

-- --------------------------------------------------------

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE IF NOT EXISTS `ofertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portada` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(300) NOT NULL,
  `precio` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `total_pagado` decimal(7,2) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `mes` varchar(20) NOT NULL,
  `year` varchar(5) NOT NULL,
  `tiempo_estimado` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `iduser`, `fecha`, `direccion`, `total_pagado`, `estado`, `mes`, `year`, `tiempo_estimado`) VALUES
(3, 1, '2020-21-06', 'Miraflores Alto MZ G2 LT 30-A', '42.70', 'En espera', '5', '2020', 'Calculando'),
(4, 1, '2020-21-6', 'Miraflores 789', '15.90', 'Entregado', '6', '2020', 'Calculando'),
(5, 1, '2020-23-6', 'Miraflores Alto', '15.90', 'En espera', '6', '2020', 'Calculando'),
(9, 2, '2020-24-6', '958785412', '53.00', 'Entregado', '6', '2020', 'Calculando'),
(10, 11, '2021-30-6', '944930557', '16.00', 'Enviado', '6', '2021', 'Calculando');

-- --------------------------------------------------------

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
CREATE TABLE IF NOT EXISTS `pedido_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido_detalle`
--

INSERT INTO `pedido_detalle` (`id`, `idpedido`, `producto`, `precio`) VALUES
(4, 3, 'Buffalo Bleu', '15.90'),
(5, 3, 'Mini Burger', '10.90'),
(6, 3, 'Sicilian', '15.90'),
(7, 4, 'Classic Cheddar', '15.90'),
(8, 5, 'Pepperoni', '15.90'),
(9, 7, 'Mexican Burger', '21.90'),
(10, 7, 'Pepperoni', '15.90'),
(11, 8, 'Buffalo Bleu', '15.90'),
(12, 8, 'Mini Burger', '10.90'),
(13, 8, 'California Burger', '25.90'),
(14, 8, 'Pepperoni', '15.90'),
(15, 9, 'Tomato Toast', '10.90'),
(16, 9, 'Greek Salad', '15.90'),
(17, 9, 'California Burger', '25.90'),
(18, 10, 'Pepperoni', '15.90');

-- --------------------------------------------------------

--
-- Table structure for table `seccion_tres`
--

DROP TABLE IF EXISTS `seccion_tres`;
CREATE TABLE IF NOT EXISTS `seccion_tres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icono` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seccion_tres`
--

INSERT INTO `seccion_tres` (`id`, `icono`, `titulo`, `descripcion`, `estado`) VALUES
(1, 'thin-icon-time', 'FAST DELIVERY EDIT', 'Everything you order at QuickFood will be quickly delivered to your door.', 1),
(2, 'thin-icon-book', 'FRESH FOOD EDIT', 'We use only the best ingredients to cook the tasty fresh food for you.', 1),
(3, 'thin-icon-checklist', 'EXPERIENCED CHEFS', 'Our staff consists of chefs and cooks with years of experience.', 1),
(4, 'thin-icon-cd', 'A VARIETY OF DISHES', 'In our menu you’ll find a wide variety of dishes, desserts, and drinks.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seccion_uno`
--

DROP TABLE IF EXISTS `seccion_uno`;
CREATE TABLE IF NOT EXISTS `seccion_uno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(50) NOT NULL,
  `portada` varchar(250) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seccion_uno`
--

INSERT INTO `seccion_uno` (`id`, `titulo`, `subtitulo`, `portada`, `estado`) VALUES
(1, 'For Vegans edit', 'Burger + French Fries + Drink', 'index-01-566x401.jpg', 1),
(2, 'Order Online', 'Available Every Day 9 AM - 11 PM', 'index-02-566x401.jpg', 1),
(3, 'Cake Specials edit', 'Every Friday Only $0.99', 'index-03-566x401.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portada` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `subtitulo` varchar(150) NOT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `portada`, `titulo`, `subtitulo`, `estado`) VALUES
(1, '5ecdbe18892d1.jpeg', 'HOT STUFF', 'MEXICAN', 'BURGER'),
(2, '5ecdbf4b1c9f2.jpeg', 'From Our Chef', 'MEET THE LEGEND', 'CALIFORNIA BURGER'),
(3, '5ecdbfa781232.jpeg', 'NEW MENU', 'PIZZA', 'WITH SEAFOOD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `perfil`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diego Alonso Arroyo Campos', 'diegoarca02@gmail.com', NULL, '$2y$10$uosfKP50/6XxzubVWTzsWOU4Ng3ttZNaCdk2OlQLA3UHRAzlp.RWa', 'ADMIN', 'perfil.png', NULL, '2020-06-11 21:02:55', '2020-06-11 21:02:55'),
(2, 'Vincent Murray', 'vincentmurray01@gmail.com', NULL, '$2y$10$3RiCbgWy1zYhniFEelYq1epVuLGlPx28q/8KGLRH27uUtwTcFHqmq', 'USER', 'perfil.png', NULL, NULL, NULL),
(4, 'Francisco Bulnes', 'dialarroyo02@hotmail.com', NULL, '$2y$10$ig.ccg2ZAlEc1SNyWV6MmetvEC1V.P8NvKQvSJ8eDN37QgVkXM71O', 'USER', 'perfil.png', NULL, NULL, NULL),
(9, 'Sheldon Cooper', 'sheldon@gmail.com', NULL, '$2y$10$VsVq/DUlk7Gr0/90Xa3WFOFYP8end49uagDKPkVpVi5/w8sbtLhi.', 'USER', 'perfil.png', NULL, NULL, NULL),
(10, 'jonathan jacobe montes', 'jonathanf4.32@hotmail.com', NULL, '$2y$10$eMALFBS5Xp2HH1UPWCvNq.XxaVqL3N0WXpgJ0VZdHeWEeBz9yPtgq', 'ADMIN', 'perfil.png', NULL, NULL, NULL),
(11, 'wetgwet', '2@hotmail.co', NULL, '$2y$10$JX/hLpC9CSNyGXbAWQX5s.OI0Z2Y7LTwhJHwXnYqkuLSRqrKoWaXW', 'USER', 'perfil.png', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
