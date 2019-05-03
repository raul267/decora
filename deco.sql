﻿--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.1.22.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 02-05-2019 19:54:47
-- Server version: 5.5.5-10.1.34-MariaDB
-- Client version: 4.1
--

--
-- Disable foreign keys
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

--
-- Set SQL mode
--
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--


--
-- Drop table `producto`
--
DROP TABLE IF EXISTS producto;

--
-- Set default database
--


--
-- Create table `producto`
--
CREATE TABLE producto (
  idProducto INT(11) NOT NULL AUTO_INCREMENT,
  nombreProducto VARCHAR(50) NOT NULL,
  valorProducto INT(20) NOT NULL,
  categoriaProducto VARCHAR(50) NOT NULL,
  PRIMARY KEY (idProducto)
)
ENGINE = INNODB,
AUTO_INCREMENT = 82,
AVG_ROW_LENGTH = 204,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Dumping data for table producto
--
INSERT INTO producto VALUES
(2, 'Abridor botella grande', 4000, 'Abridores'),
(3, 'Accesorios unicornio cumpleañ', 500, 'Cumpleaños'),
(4, 'adorno caracola', 4000, 'Adornos de mesa'),
(5, 'Adorno loza chico', 1600, 'Terraza y jardin'),
(6, 'Adorno loza mediano', 3200, 'Terraza y jardin'),
(7, 'Arbusto adorno', 1000, 'Terraza y jardin'),
(8, 'Bandeja loza piña', 6000, 'Adornos de mesa'),
(9, 'Banderin unicornio cumpleañ', 1000, 'Cumpleaños'),
(10, 'Caja redonda grande', 4000, 'Regalos'),
(11, 'Caja redonda mediana', 3400, 'Regalos'),
(12, 'Caja te chica', 5000, 'Cocina'),
(13, 'Caja te grande azul', 9000, 'Cocina'),
(14, 'Caja te grande blanca', 9000, 'Cocina'),
(15, 'Caja unicornio cumpleañ', 2000, 'Cumpleaños'),
(16, 'Carro botella vino', 8000, 'Terraza y jardin'),
(17, 'Carro cenicienta', 12000, 'Terraza y jardin'),
(18, 'Corazón mimbre grande', 2000, 'Regalos'),
(19, 'Cuadro Arte Mujeres', 5000, 'Deco'),
(20, 'Cuadro fotos 2u', 2500, 'Regalos'),
(21, 'Cuadro fotos 4u', 4000, 'Regalos'),
(22, 'Cuadro fotos 6u', 7000, 'Regalos'),
(23, 'Cuadro Mandala', 4000, 'Terraza y jardin'),
(24, 'Cuadro Mandala Terraza', 4000, 'Terraza y jardin'),
(25, 'Espejo con base vintage', 6000, 'Regalos'),
(26, 'Espejo corazón colgante', 7500, 'Regalos'),
(27, 'Espejo de mano vintage', 5000, 'Regalos'),
(28, 'Espejo luz cuadrado', 7500, 'Regalos'),
(29, 'Espejo luz redondo', 7900, 'Regalos'),
(30, 'Flotador vaso', 1000, 'Terraza y jardin'),
(31, 'Fundas lisas', 2000, 'Textil '),
(32, 'Fundas peludas', 3000, 'Textil '),
(33, 'Guirnalda ABC123', 5000, 'Regalos'),
(34, 'Guirnalda bolas grandes', 6000, 'Regalos'),
(35, 'Guirnalda bolas pequeñas', 2900, 'Regalos'),
(36, 'Guirnalda craquelada', 3000, 'Regalos'),
(37, 'Guirnalda flamenco', 5000, 'Regalos'),
(38, 'Guirnalda flor', 3000, 'Regalos'),
(39, 'Guirnalda pinzas fotos', 5000, 'Regalos'),
(40, 'Guirnalda Piñas', 5000, 'Regalos'),
(41, 'Guirnalda rosas', 3500, 'Regalos'),
(42, 'Jarron jardinero azul grande', 4000, 'Terraza y jardin'),
(43, 'Jarron jardinero burdeo ', 3000, 'Terraza y jardin'),
(44, 'Joyero', 5000, 'Regalos'),
(45, 'Lampara ampolleta chica', 6000, 'Iluminación'),
(46, 'Lampara ampolleta grande', 7000, 'Iluminación'),
(47, 'Lampara catrina calavera', 3500, 'Iluminación'),
(48, 'Lampara Cisne', 2500, 'Iluminación'),
(49, 'Lampara globo aerostatico', 3000, 'Iluminación'),
(50, 'Lampara led botella', 4000, 'Iluminación'),
(51, 'Lampara led piña', 3500, 'Iluminación'),
(52, 'Lampara luna chica', 4500, 'Iluminación'),
(53, 'Lampara luna grande', 6000, 'Iluminación'),
(54, 'Lampara luna mediana', 5000, 'Iluminación'),
(55, 'Lampara luna mini', 3500, 'Iluminación'),
(56, 'Lampara macetero chica', 3000, 'Iluminación'),
(57, 'Lampara macetero grande', 3600, 'Iluminación'),
(58, 'Lampara piña chica', 2600, 'Iluminación'),
(59, 'Lampara unicornio ', 3000, 'Iluminación'),
(60, 'Letras inflables cumpleañ', 500, 'Cumpleaños'),
(61, 'Macetero piedra', 3000, 'Terraza y jardin'),
(62, 'Mesa chica', 5000, 'Deco'),
(63, 'Mesa grande', 7000, 'Deco'),
(64, 'Pecera grande', 4000, 'Deco'),
(65, 'Pergamino', 3000, 'Deco'),
(66, 'Pizarra led cuadrada', 7000, 'Deco'),
(67, 'Pizarra led redonda', 7900, 'Deco'),
(68, 'Platos unicornio cumpleañ', 1000, 'Cumpleaños'),
(69, 'Porta cubiertos', 6000, 'Cocina'),
(70, 'Porta Nova', 5000, 'Cocina'),
(71, 'Porta retrato', 3600, 'Regalos'),
(72, 'Porta vela ampolleta', 3000, 'Terraza y jardin'),
(73, 'Porta vela botella', 3600, 'Terraza y jardin'),
(74, 'Porta vela dorado', 8000, 'Terraza y jardin'),
(75, 'Porta vela madera', 3000, 'Terraza y jardin'),
(76, 'Posa vasos', 5000, 'Cocina'),
(77, 'Reposera esterilla', 2000, 'Terraza y jardin'),
(78, 'Servilletero Vintage', 4500, 'Cocina'),
(79, 'Vinilo 3D', 1000, 'Deco'),
(80, 'Vinilo con brillo', 1500, 'Deco'),
(81, 'Vinilos azulejos', 1000, 'Deco');

--
-- Restore previous SQL mode
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

--
-- Enable foreign keys
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
