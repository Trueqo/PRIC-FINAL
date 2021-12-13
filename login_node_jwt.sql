-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2021 a las 05:44:20
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `login_node_jwt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `llegadasTardes` int(11) DEFAULT NULL,
  `boletas` int(11) DEFAULT NULL,
  `goticas` int(11) DEFAULT NULL,
  `boxBlock` float DEFAULT NULL,
  `vueltos` float DEFAULT NULL,
  `TPC` float DEFAULT NULL,
  `depencia` text,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `name`, `llegadasTardes`, `boletas`, `goticas`, `boxBlock`, `vueltos`, `TPC`, `depencia`, `pass`) VALUES
(2, '1152471615', 'Julian', 3, 230, 45, 115, 89.355, 1.6, 'Éxito Molinos', '$2a$08$xDhHuuBhwNlXabBE9TOJ3uA/x3X5kwnJd7bHRCIRM2ui3dCGJUn5q'),
(7, '1152471614', 'Alecsa', 7, 340, 670, 70, 199.657, 2, 'Éxito Bello', '$2a$08$AxM51R5aOwQ7lf2Av3vlYuS/xTDrzW1WLw4y6lT7t6crMDCgL0Wwm'),
(8, '1152471613', 'aurelio', 9, 1, 1, 200, 0, 8, 'éxito apart', '$2a$08$XIJUmK.qE/QuMiowsErM/OY..9V1CIfXAUr4Ku4zjU.szOzxk6.qa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
