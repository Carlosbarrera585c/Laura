-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2016 a las 03:07:10
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
-- Estructura de tabla para la tabla `credencial`
--

CREATE TABLE IF NOT EXISTS `credencial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `credencial`
--

INSERT INTO `credencial` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '2015-02-05 09:56:24.000000', '2015-02-05 09:56:24.000000', NULL),
(2, 'usuario', '2015-02-05 09:56:24.000000', '2015-02-05 09:56:24.000000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordar_me`
--

CREATE TABLE IF NOT EXISTS `recordar_me` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hash_cookie` varchar(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recordar_me_usuario_id_Idx` (`usuario_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `recordar_me`
--

INSERT INTO `recordar_me` (`id`, `usuario_id`, `ip_address`, `hash_cookie`, `created_at`) VALUES
(1, 1, '127.0.0.1', '194af59163884a780e05cdfdbb266025', '2015-03-07 04:25:09.000000'),
(2, 1, '127.0.0.1', 'cf364cd96f27de182e40d920ed176213', '2015-03-07 04:54:45.000000'),
(3, 1, '127.0.0.1', 'bd11e34d5dcdff2afea5665159d101dd', '2015-03-07 05:11:45.000000'),
(4, 1, '127.0.0.1', 'b41f05c01237b181897c02db0c8c3aee', '2015-03-07 05:37:14.000000'),
(5, 1, '127.0.0.1', 'd18f6675d255d01716b4963bc9f677bd', '2015-03-07 05:59:03.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(80) NOT NULL,
  `password` varchar(32) NOT NULL,
  `actived` bit(1) NOT NULL DEFAULT b'1',
  `last_login_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_actived_Idx` (`actived`),
  KEY `usuario_deleted_at_Idx` (`deleted_at`),
  KEY `usuario_user_name_password_Idx` (`user_name`,`password`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user_name`, `password`, `actived`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'consultor', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-02-06 08:13:39.000000', '2015-02-06 08:13:39.000000', '2015-02-06 02:15:20.000000'),
(5, 'bayron', '81dc9bdb52d04dc20036dbd8313ed055', b'1', NULL, '2015-02-26 02:40:50.000000', '2015-02-26 02:40:50.000000', '2015-02-26 08:40:57.000000'),
(4, 'adminisrador', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-02-24 09:15:26.000000', '2015-02-24 09:15:26.000000', '2015-03-01 12:51:40.000000'),
(6, 'henao', '81dc9bdb52d04dc20036dbd8313ed055', b'1', NULL, '2015-02-26 02:43:09.000000', '2015-02-26 02:43:09.000000', '2015-03-01 12:51:40.000000'),
(7, 'Carlos', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-03-06 10:54:07.000000', '2015-03-06 10:54:07.000000', '2015-03-07 04:54:11.000000'),
(8, 'user2', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-03-07 03:58:47.000000', '2015-03-07 03:58:47.000000', '2015-03-07 10:06:56.000000'),
(9, 'carlos', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-03-07 04:07:08.000000', '2015-03-07 04:07:08.000000', '2015-03-07 10:07:22.000000'),
(10, 'otro', 'e10adc3949ba59abbe56e057f20f883e', b'1', NULL, '2015-03-07 04:07:17.000000', '2015-03-07 04:07:17.000000', '2015-03-07 10:07:22.000000'),
(12, 'adminsss', '202cb962ac59075b964b07152d234b70', b'1', NULL, '2015-03-07 04:08:01.000000', '2015-03-07 04:08:01.000000', '2015-03-07 10:08:53.000000'),
(13, 'qweqwe', '870e856360391980a51958b91f12cb3d', b'1', NULL, '2015-03-07 04:08:07.000000', '2015-03-07 04:08:07.000000', '2015-03-07 10:08:53.000000'),
(1, 'admin', '202cb962ac59075b964b07152d234b70', b'1', '2015-05-02 03:43:51.000000', '2015-02-05 09:56:24.000000', '2015-02-05 09:56:24.000000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_credencial`
--

CREATE TABLE IF NOT EXISTS `usuario_credencial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `credencial_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_credencial_credencial_id_Idx` (`credencial_id`),
  KEY `usuario_credencial_usuario_id_Idx` (`usuario_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario_credencial`
--

INSERT INTO `usuario_credencial` (`id`, `usuario_id`, `credencial_id`, `created_at`) VALUES
(1, 1, 1, '2015-02-05 09:56:24.000000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
