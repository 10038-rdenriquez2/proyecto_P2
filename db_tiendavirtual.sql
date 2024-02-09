-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2024 at 12:27 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Local', 'Tu camiseta favorita, la encuentras aquí', 'img_8c996147a7ab9194cb50742253ad5e9c.jpg', '2023-11-19 22:36:06', 'local', 1),
(2, 'Sudamérica', '¡Equipamiento de los clubes más grandes de América!', 'img_d8c5c8fc78f4e582f8aa14736f6d5259.jpg', '2023-12-25 16:52:40', 'sudamerica', 1),
(3, 'Europa', 'Vestimenta de todos los clubes europeos', 'img_76c6a8861e2a0fdac1a820c5561bf709.jpg', '2023-12-25 16:59:12', 'europa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 7, 1, '60.00', 4),
(2, 8, 3, '45.00', 3),
(3, 8, 2, '55.00', 1),
(4, 8, 1, '60.00', 5),
(5, 9, 2, '55.00', 2),
(6, 9, 3, '45.00', 4),
(7, 10, 9, '20.00', 4),
(8, 10, 8, '30.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `personaid`, `productoid`, `precio`, `cantidad`, `transaccionid`) VALUES
(3, 9, 3, '45.00', 4, 'mdliat0ejhnmkl4hrok4bnvi0o'),
(4, 9, 1, '60.00', 2, 'mdliat0ejhnmkl4hrok4bnvi0o'),
(8, 9, 3, '45.00', 4, 'kdna3kqdendsou39lqo0p0oqu8'),
(9, 9, 8, '30.00', 2, 'kdna3kqdendsou39lqo0p0oqu8');

-- --------------------------------------------------------

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(5, 1, 'pro_4e5f4ea7287327fdb3c5786f6e597b2f.jpg'),
(6, 1, 'pro_55319a736c4d98ab99d2306370204f5f.jpg'),
(7, 1, 'pro_766f98f0a65ca99e91bba31cae7a4454.jpg'),
(8, 1, 'pro_c6db034bbefb1c2aa4a3c6d5e4a1bb76.jpg'),
(13, 2, 'pro_02099891d5d8ebdd44aa295561cbb877.jpg'),
(14, 2, 'pro_529e1aba2d4b1ce684c7462843d5b7ee.jpg'),
(15, 2, 'pro_c0014a137f4cf0c57448ea6c2327580d.jpg'),
(16, 4, 'pro_25e77cd19ef4fc432209b7873c47070f.jpg'),
(17, 4, 'pro_ddbff36cfeaa9ddaa9a283e45b0b4d54.jpg'),
(18, 4, 'pro_e07fc13a26860890e69f756da747d40b.jpg'),
(19, 5, 'pro_94a03e5213c63a70cf25605c6e77ba5b.jpg'),
(20, 5, 'pro_70d9e08a9759a41b5d24beadacc1d633.jpg'),
(21, 5, 'pro_e292cc00250b5a458e329ebe331a777a.jpg'),
(27, 8, 'pro_e5e32bfe422b6837ed1343f03525bfb6.jpg'),
(28, 8, 'pro_75e596868e04a57dd4407a700b3d3d0b.jpg'),
(29, 8, 'pro_9220144949ce360877ed3e87628e15f7.jpg'),
(32, 6, 'pro_9637fc01036a7d9417c6a0b39afbbc85.jpg'),
(33, 6, 'pro_06f0cd6fddb3795d66cc672ee7b14abf.jpg'),
(34, 6, 'pro_609dc314788cbbfc48b28edc7a60517e.jpg'),
(35, 6, 'pro_61356523a3c65f38d57333844d025712.jpg'),
(36, 3, 'pro_d4f40c5294e68cf5e34957381db96687.jpg'),
(37, 3, 'pro_8203784a8f7b50a856e9c107b9db8551.jpg'),
(38, 3, 'pro_cd086621c051fa05b72dd6f4855623e2.jpg'),
(39, 7, 'pro_e73dc46bf72dce1285da14347cf71cb3.jpg'),
(40, 7, 'pro_6ed169cc6787e7831fe8e1e69c19dedf.jpg'),
(41, 7, 'pro_bea73af25c9ea3f7dc21d6c7e9e8ab3e.jpg'),
(42, 9, 'pro_85bdfda0ad206fcda0c24fa5b5aa3cc8.jpg'),
(43, 9, 'pro_9c70e6a3df099b4af4f041521d99457a.jpg'),
(44, 9, 'pro_b7374f17d441d623594b69402123c307.jpg'),
(45, 9, 'pro_d1c011e6ad84a53fe3b4a84637d978ac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de la tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorías', 'Categorías del sistema', 1),
(7, 'Roles', 'Roles de usuario', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, NULL, '0HF22271TR508891G', '{\"id\":\"3TH80229EA9358328\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"50.00\"},\"payee\":{\"email_address\":\"sb-5ibi829441544@business.example.com\",\"merchant_id\":\"KEN4A7YW5NZAS\"},\"description\":\"Compra de artículos en Tienda Virtual por $50 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Quito\",\"admin_area_1\":\"Quito\",\"postal_code\":\"170203\",\"country_code\":\"EC\"}},\"payments\":{\"captures\":[{\"id\":\"0HF22271TR508891G\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"50.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-01-31T18:12:55Z\",\"update_time\":\"2024-01-31T18:12:55Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-hrix4329348617@personal.example.com\",\"payer_id\":\"EEL95LUFEGDP6\",\"address\":{\"country_code\":\"EC\"}},\"create_time\":\"2024-01-31T18:07:02Z\",\"update_time\":\"2024-01-31T18:12:55Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/3TH80229EA9358328\",\"rel\":\"self\",\"method\":\"GET\"}]}', 9, '2024-01-31 13:12:56', '5.00', '50.00', 1, 'Avenida 9 de Octubre y Alejando Labaka, Quito', 'Completo'),
(3, NULL, NULL, NULL, 9, '2024-01-31 17:21:53', '5.00', '65.00', 2, 'Avenida 9 de octubre, Quito', 'Pendiente'),
(4, NULL, NULL, NULL, 9, '2024-01-31 17:30:43', '5.00', '65.00', 3, 'awdlkwad, akwjdajwkd', 'Pendiente'),
(5, NULL, NULL, NULL, 9, '2024-01-31 17:43:37', '5.00', '65.00', 4, 'gtrgtrg, rtgrgtrtg', 'Pendiente'),
(6, NULL, NULL, NULL, 9, '2024-02-01 19:41:22', '5.00', '125.00', 3, 'pawdkawod, awdwand', 'Pendiente'),
(7, NULL, '7MC945234K4160602', '{\"id\":\"0U3526282P128792P\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"245.00\"},\"payee\":{\"email_address\":\"sb-5ibi829441544@business.example.com\",\"merchant_id\":\"KEN4A7YW5NZAS\"},\"description\":\"Compra de artículos en Tienda Virtual por $245 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Quito\",\"admin_area_1\":\"Quito\",\"postal_code\":\"170203\",\"country_code\":\"EC\"}},\"payments\":{\"captures\":[{\"id\":\"7MC945234K4160602\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"245.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-02-02T00:49:15Z\",\"update_time\":\"2024-02-02T00:49:15Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-hrix4329348617@personal.example.com\",\"payer_id\":\"EEL95LUFEGDP6\",\"address\":{\"country_code\":\"EC\"}},\"create_time\":\"2024-02-02T00:48:05Z\",\"update_time\":\"2024-02-02T00:49:15Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/0U3526282P128792P\",\"rel\":\"self\",\"method\":\"GET\"}]}', 9, '2024-02-01 19:49:16', '5.00', '245.00', 1, 'Avenida Las Américas y Jorge Ponce, Cumbayá, Quito', 'Completo'),
(8, NULL, '1VD71541BN706254A', '{\"id\":\"6PC42122HE092590B\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"495.00\"},\"payee\":{\"email_address\":\"sb-5ibi829441544@business.example.com\",\"merchant_id\":\"KEN4A7YW5NZAS\"},\"description\":\"Compra de artículos en Tienda Virtual por $495 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Quito\",\"admin_area_1\":\"Quito\",\"postal_code\":\"170203\",\"country_code\":\"EC\"}},\"payments\":{\"captures\":[{\"id\":\"1VD71541BN706254A\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"495.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-02-05T00:55:16Z\",\"update_time\":\"2024-02-05T00:55:16Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-hrix4329348617@personal.example.com\",\"payer_id\":\"EEL95LUFEGDP6\",\"address\":{\"country_code\":\"EC\"}},\"create_time\":\"2024-02-05T00:54:15Z\",\"update_time\":\"2024-02-05T00:55:16Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/6PC42122HE092590B\",\"rel\":\"self\",\"method\":\"GET\"}]}', 9, '2024-02-04 19:55:17', '5.00', '495.00', 1, 'Avenida General Rumiñahui y Eloy Alfaro, Quito', 'Completo'),
(9, NULL, '2SV97622SB778781K', '{\"id\":\"3CX811200T7843537\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"295.00\"},\"payee\":{\"email_address\":\"sb-5ibi829441544@business.example.com\",\"merchant_id\":\"KEN4A7YW5NZAS\"},\"description\":\"Compra de artículos en Tienda Virtual por $295 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Quito\",\"admin_area_1\":\"Quito\",\"postal_code\":\"170203\",\"country_code\":\"EC\"}},\"payments\":{\"captures\":[{\"id\":\"2SV97622SB778781K\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"295.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-02-06T04:16:07Z\",\"update_time\":\"2024-02-06T04:16:07Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-hrix4329348617@personal.example.com\",\"payer_id\":\"EEL95LUFEGDP6\",\"address\":{\"country_code\":\"EC\"}},\"create_time\":\"2024-02-06T04:15:07Z\",\"update_time\":\"2024-02-06T04:16:07Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/3CX811200T7843537\",\"rel\":\"self\",\"method\":\"GET\"}]}', 9, '2024-02-05 23:16:08', '5.00', '295.00', 1, 'Universidad ESPE, Quito', 'Completo'),
(10, NULL, '3TB86814A1753530H', '{\"id\":\"2A594670MM9735748\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"145.00\"},\"payee\":{\"email_address\":\"sb-5ibi829441544@business.example.com\",\"merchant_id\":\"KEN4A7YW5NZAS\"},\"description\":\"Compra de artículos en Tienda Virtual por $145 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Quito\",\"admin_area_1\":\"Quito\",\"postal_code\":\"170203\",\"country_code\":\"EC\"}},\"payments\":{\"captures\":[{\"id\":\"3TB86814A1753530H\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"145.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-02-07T00:53:00Z\",\"update_time\":\"2024-02-07T00:53:00Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-hrix4329348617@personal.example.com\",\"payer_id\":\"EEL95LUFEGDP6\",\"address\":{\"country_code\":\"EC\"}},\"create_time\":\"2024-02-07T00:51:45Z\",\"update_time\":\"2024-02-07T00:53:00Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/2A594670MM9735748\",\"rel\":\"self\",\"method\":\"GET\"}]}', 9, '2024-02-06 19:53:01', '5.00', '145.00', 1, 'Universidad ESPE, Quito', 'Completo');

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(25, 3, 1, 1, 0, 0, 0),
(26, 3, 2, 0, 0, 0, 0),
(27, 3, 3, 0, 0, 0, 0),
(28, 3, 4, 1, 0, 0, 0),
(29, 3, 5, 0, 0, 0, 0),
(30, 3, 6, 0, 0, 0, 0),
(31, 1, 1, 1, 1, 1, 1),
(32, 1, 2, 1, 1, 1, 1),
(33, 1, 3, 1, 1, 1, 1),
(34, 1, 4, 1, 1, 1, 1),
(35, 1, 5, 1, 1, 1, 1),
(36, 1, 6, 1, 1, 1, 1),
(37, 1, 7, 1, 1, 1, 1),
(73, 2, 1, 1, 0, 0, 0),
(74, 2, 2, 1, 0, 0, 0),
(75, 2, 3, 0, 0, 0, 0),
(76, 2, 4, 0, 0, 0, 0),
(77, 2, 5, 1, 0, 0, 0),
(78, 2, 6, 1, 0, 0, 0),
(79, 2, 7, 1, 0, 0, 0),
(80, 4, 1, 1, 0, 0, 0),
(81, 4, 2, 0, 0, 0, 0),
(82, 4, 3, 0, 0, 0, 0),
(83, 4, 4, 1, 0, 0, 0),
(84, 4, 5, 1, 0, 0, 0),
(85, 4, 6, 1, 0, 0, 0),
(86, 4, 7, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2250135239', 'Ronaldo Daniel', 'Enriquez Granda', '0980031871', 'dani2325@yahoo.com', '6490b2ee35336a9fd50cc98253a7290c07942e5a11c988cf71444924494d8c8f', '1102668926001', 'Empresa AS', 'Quito, Ecuador', '', 1, '2023-10-21 17:40:36', 1),
(2, '0000000000', 'Karol Abigail', 'Martínez Cuvi', '0987654111', 'karol@info.com', '761b5f97541e11a5f52de9e246c0ab25d4421ff79f1a4fdc077291f67e941992', '', '', '', '', 1, '2023-10-21 17:40:36', 1),
(3, '1234567811', 'Roberto', 'Baggio', '0981273611', 'roberto1@info.com', 'd90cb970a85fecd318e615eb3e3020362a2c06ea5410bcd1fbc950c6dd333605', '', '', '', '', 2, '2023-10-23 15:02:48', 1),
(4, '2139879838', 'Felipe', 'Caicedo', '0917236187', 'felipe@info.com', '796891a5852988df8332a2918289c7190ecbb8b59374661116663be07aae3697', '', '', '', '', 3, '2023-10-23 15:03:31', 1),
(5, '1763231234', 'Ngolo', 'Kanté', '0977236126', 'ngolo@info.com', 'fea44e1d406eb2efb157dec18b2f6c396ac17fc82c62f9894e3bd4d036d43684', '', '', '', '', 2, '2023-10-26 20:47:46', 1),
(6, '1723139230', 'Elco', 'Gelindo', '0912783121', 'elco@info.com', '37be39c41ffa83d41a5d8abfc166ea42229c547c91d849b54fcaf7824e21cbec', 'NC', 'TC', 'NPI', '', 4, '2023-11-03 10:09:33', 1),
(7, '0923172319', 'Juninho', 'Permabucano', '0918231290', 'juninho@info.com', '9d2631367bbc304a559c6a738fca617d85d4bc89dad150dde2c0fa0f81591372', 'NC', 'TC', 'NPI', '', 4, '2023-11-03 11:03:47', 1),
(8, '2291273911', 'Oliver', 'Khan', '0981236127', 'oliver@info.com', '0a60063a6d2b6cc2c4c931e85f126933ea91d04ca06997fe5425891ebc9b82a7', 'NC', 'NC', 'NPI', '', 4, '2023-11-05 16:27:41', 1),
(9, '2737128371', 'Julián', 'Álvarez', '0971231253', 'julian@info.com', '8f0914437cb5574896b681c4cb10f89c145cb36e08d5fb88b4bd44f24b148320', 'NC', 'NC', 'NPI', '', 4, '2023-11-05 17:00:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 3, '198237', 'Camiseta Bayern München', '<p>Playera del equipo pricipal del FC Bayern M&uuml;nchen. Temporada 2022-2023</p> <p>Tallas:</p> <ul> <li>X</li> <li>L</li> <li>M</li> <li>XL</li> </ul> <p><strong>100% B&aacute;varo </strong>????⚪????</p>', '60.00', 5, '', '2023-12-25 19:23:55', 'camiseta-bayern-munchen', 1),
(2, 2, '121212', 'Camiseta Boca Juniors', '<p>Camiseta Boca Juniors - Temporada 2022 - 2023</p>', '55.00', 10, '', '2023-12-27 17:57:46', 'camiseta-boca-juniors', 1),
(3, 1, '211214', 'Camiseta Club Sport Emelec', '<p>Camiseta tercera equipaci&oacute;n Club Sport Emelec - Temporada 2022-2023</p>', '45.00', 20, '', '2023-12-27 21:46:04', 'camiseta-club-sport-emelec', 1),
(4, 3, '196832', 'Camiseta Liverpool', '<table class=\"table table-bordered\"> <tbody> <tr> <td>&nbsp;</td> <td id=\"celDescripcion\"> <p>Playera del equipo pricipal del FC Liverpool. Temporada 2022-2023</p> </td> </tr> </tbody> </table>', '60.00', 10, '', '2023-12-27 21:53:54', 'camiseta-liverpool', 1),
(5, 3, '890123', 'Camiseta Paris Saint Germain', '<p>Playera de visitante del Paris Saint Germain. Temporada 2022-2023</p>', '90.00', 15, '', '2023-12-27 22:03:28', 'camiseta-paris-saint-germain', 1),
(6, 3, '2812123', 'Camiseta Juventus', '<p>Playera tercera equipaci&oacute;n de la Juventus. Temporada 2022-2023</p>', '50.00', 10, '', '2023-12-27 22:10:05', 'camiseta-juventus', 1),
(7, 2, '3454362', 'Camiseta River Plate', '<p>Playera principal de River Plate. Temporada 2022-2023</p>', '55.00', 10, '', '2023-12-27 22:19:40', 'camiseta-river-plate', 1),
(8, 1, '781232', 'Camiseta Independiente Del Valle', '<p>Playera de presentaci&oacute;n de Independiente del Valle. Temporada 2022-2023</p>', '30.00', 10, '', '2023-12-27 22:27:11', 'camiseta-independiente-del-valle', 1),
(9, 1, '1238698', 'Camiseta Selección Ecuador', '<p><em><strong>Camiseta temporada 2023 ????</strong></em></p>', '20.00', 20, '', '2024-02-06 19:42:15', 'camiseta-seleccion-ecuador', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Administradores de la empresa', 1),
(2, 'Supervisor', 'Control de ciertos aspectos del sistema', 1),
(3, 'Contabilidad', 'Área contable', 1),
(4, 'Cliente', 'Clientes de la empresa', 1),
(5, 'Ejemplo 2', 'Ejemplo 2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Transferencia', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
