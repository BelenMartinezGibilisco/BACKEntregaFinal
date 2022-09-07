-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 07, 2022 at 10:08 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maicitosfundaciontf`
--

-- --------------------------------------------------------

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `ingredientes` text NOT NULL,
  `preparacion` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `ingredientes`, `preparacion`, `img_id`) VALUES
(37, 'Muffins sin tacc de banana', ' 180 gramos harina de almendras sin tacc\r\n    2 cucharadas Maizena\r\n    1 huevo\r\n    2 cucharadas de miel\r\n    1 banana\r\n    1/4 cucharadita bicarbonato de sodio', 'Pisar la Banana (debe estar bien madura) y mezclarla con el huevo y la miel.\r\nIncorporar la Maizena, el bicarbonato y la harina de almendras.\r\nRellenar los pirotines y llevar a horno moderado por aproximadamente 30 minutos o hasta que al pinchar con un palillo salga limpio.\r\nDejar enfriar y servir. Preparados para una merienda sana y libre de gluten\r\n', 'osyhdtcqmdyazgx5wmyi'),
(34, 'Ñoquis rellenos', '400g de papa \r\n300g de calabaza \r\n150g de Maizena \r\n1 huevo \r\nc/n de queso rallado \r\nPara la salsa:\r\n100g de espinaca cocida (1/2 taza) \r\n1 diente de ajo \r\n4 cdas de queso untable \r\n2 cucharadas de leche \r\n', 'Cortar en cubos la papa y la calabaza y cocinar al microondas hasta que estén tiernas. Hacer un puré en seco (sin leche ni manteca)\r\nFormar una corona con el pure, colocar el huevo, el queso rallado y los condimentos en el centro\r\nAgregar la Maizena e integrar hasta que quede un bollo liso y uniforme\r\nAgarrar parte de la masa, colocar un cubo de queso fresco en el centro y cerrar bien\r\nColocar en una placa con Maizena y llevar a la heladera por 15 minutos\r\nHervir en abundante agua. Cuando flotan, dejar 1 minuto y retirar con una espumadera\r\nCómo hacer la salsa:\r\nEscurrir bien la espinaca, picar y saltear con el ajo picado\r\nIncorporar la leche y el queso untable y condimentar a gusto', 'jjp3u7mvbsk1paqahviu'),
(20, 'Empanadas sin tacc', '500 gramos de carne picada \r\n1/2 kilogramo cebolla picada \r\n1 diente ajo picado \r\n2 huevos duros picados \r\n3 cucharadas almidón de maíz Maizena \r\n1 lata de tomate sin tacc \r\naceite cantidad necesaria \r\nají molido seco cantidad necesaria sin tacc \r\norégano seco cantidad necesaria sin tacc \r\ncomino en polvo cantidad necesaria sin tacc \r\npimentón en polvo cantidad necesaria sin tacc \r\n12 tapa para empanada sin tacc \r\n1 huevo para pintar ', 'En una cacerola saltear la cebolla, la cebolla de verdeo y el ajo.\r\nUna vez que las verduras estén bien cocidas agregar la carne picada junto al tomate en conserva (lata). Cocinar por 10 minutos aprox.\r\nAgregar la Maizena® disuelta en el agua fría y cocinar por 1 minuto más. Condimentar con las especias y el huevo duro.\r\nReservar y enfriar.\r\nArmar las empanadas, repulgar y pintar con el huevo batido.\r\nCocinar en horno a 200°C hasta que resulten bien doradas.    ', 'lhui2irsva1ggjmed6h6'),
(32, 'Barritas de Muesli', '\r\n2 tazas de granola Maizena \r\n1/4 taza de maní tostado \r\n1/4 taza de almendras peladas \r\n1/4 taza de castañas de cajú \r\n1/4 taza de pistacho sin cascara \r\n1/4 taza de miel orgánica \r\n1 taza de pasta de maní \r\n3 cucharadas de coco rallado ', 'En un bowl mezclar la Granola Maizena Buenas Semillas sabor Coco y Semillas, el coco rallado, el maní, las almendras, las castañas y los pistachos.\r\nIncorpora la miel y la pasta de mani. Integrando hasta obtener una pasta.\r\nPasar a una placa forrada con papel manteca aplastando y emparejando toda la superficie.\r\nLlevar a la heladera por un mínimo de 30 minutos. Porcionar en formato barra de cereal.\r\nA comer esta deliciosa opción apta para celíacos', 'hxsikjmc0ky1krsigc5y'),
(33, 'Alfajores de chocolate', '50 gramos mandioca \r\n50 gramos de almidón de maíz Maizena \r\n50 gramos leche en polvo descremada \r\n1 cucharada goma xántica \r\n1 cucharadita bicarbonato de sodio \r\n2 cucharadas cacao amargo en polvo \r\n1/4 cucharadita sal \r\n175 gramos chocolate amargo 70% cacao \r\n100 gramos manteca \r\n115 gramos azúcar \r\n', 'Mezclar con batidor de alambre la Maizena®, la leche en polvo, la goma xántica y el bicarbonato de sodio. Agregarle el cacao y la sal.\r\nDerretir a baño Maria el chocolate y la manteca, retirar del fuego y agregar el azúcar.\r\nMezclar bien, agregar los huevos de a uno y por último incorporarle los ingredientes secos. Protege con un film y lleva a la heladera por 15’ o 20’.\r\nPreparar una placa forrada con papel manteca y disponer pequeñas bolitas (como una nuez, no más grande). Llevar al horno de 145°C por 10 o 15 minutos hasta que estén firmes, colocar una asadera con agua en el piso del horno.\r\nPara el relleno, derretir el chocolate, mezclarlo con la crema de leche hasta que se unan y dejar enfriar.\r\nCubrir la mitad de las tapitas con la ganache, tapar con la otra mitad y espolvorear con cacao amargo.', 'naaz55bgnk4ojezolsyj');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'belen', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'tomas', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
