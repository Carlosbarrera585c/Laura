-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2016 a las 20:15:26
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `laura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos del cliente`
--

CREATE TABLE IF NOT EXISTS `datos del cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `direccion` varchar(35) NOT NULL,
  `ciudad` varchar(35) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `codico postal` mediumint(10) NOT NULL,
  `fecha de nacimiento` mediumint(10) NOT NULL,
  `edad` mediumint(10) NOT NULL,
  `correo electronico` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actived` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `password`, `deleted_at`, `update_at`, `actived`) VALUES
(1, 'admin', '123456', '2016-03-22 01:59:55', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso`
--

CREATE TABLE IF NOT EXISTS `progreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `peso` mediumint(15) NOT NULL,
  `p/a` varchar(15) NOT NULL,
  `grasa%` decimal(15,0) NOT NULL,
  `grasa lbs` mediumint(15) NOT NULL,
  `agua` decimal(15,0) NOT NULL,
  `notas` text NOT NULL,
  `%de grasa ideal` decimal(15,0) NOT NULL,
  `peso ideal` mediumint(15) NOT NULL,
  `edad` smallint(10) NOT NULL,
  `estatura` mediumint(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `progreso`
--

INSERT INTO `progreso` (`id`, `fecha`, `peso`, `p/a`, `grasa%`, `grasa lbs`, `agua`, `notas`, `%de grasa ideal`, `peso ideal`, `edad`, `estatura`) VALUES
(1, '0000-00-00', 0, '', '0', 0, '0', '', '0', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
