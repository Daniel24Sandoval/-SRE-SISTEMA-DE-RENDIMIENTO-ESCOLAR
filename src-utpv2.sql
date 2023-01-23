-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 02:13:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `src-utpv2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_DNI` int(11) NOT NULL,
  `ID_Rol` int(11) NOT NULL,
  `ID_grado` int(11) NOT NULL,
  `Nombre_Alumno` varchar(255) NOT NULL,
  `Apellido_Alumno` varchar(255) NOT NULL,
  `Correo_Alumno` varchar(2550) NOT NULL,
  `Contrasena_Alu` varchar(100) NOT NULL,
  `Fecha_Creacion_alunmo` varchar(100) NOT NULL,
  `Estado_Alu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID_ALUMNO`, `ID_DNI`, `ID_Rol`, `ID_grado`, `Nombre_Alumno`, `Apellido_Alumno`, `Correo_Alumno`, `Contrasena_Alu`, `Fecha_Creacion_alunmo`, `Estado_Alu`) VALUES
(3213, 23123, 3, 9, 'Mariana', 'Bayona', '23123@GMAIL.COM', '3213', '2022-11-26', 'ACTIVO'),
(31231, 31231, 3, 9, 'Isis', 'Marquez', '31231@gmail.com', '31231', '2022-11-26', 'ACTIVO'),
(32232, 32232, 3, 8, 'Isis', 'Lopez', '32232@gma', 'admins2', '2022-11-17', 'ACTIVO'),
(252353, 442342, 3, 9, 'Jose Antonia', 'Bayona', '252353@GMAIL.COM', 'admin', '2022-11-05', 'ACTIVO'),
(312312, 321312, 3, 9, 'Edson ', 'Msrchena', '312312@gmail.com', '312312', '2022-11-26', 'ACTIVO'),
(423523, 423523, 3, 9, 'Carlos', 'San', '423523@gmail.com', '423523', '2022-12-03', 'ACTIVO'),
(2630142, 2630142, 3, 9, 'Carlos', 'Aguilar Calderon', '02630142@gmail.com', '02630142', '2022-11-30', 'ACTIVO'),
(5370432, 5370432, 3, 9, 'Washington', 'Aguirre Zamora', '05370432@gmail.com', '05370432', '2022-11-30', 'ACTIVO'),
(15866316, 15866316, 3, 9, 'Rosay', 'Abarca Ramirez', '15866316@gmail.com', '15866316', '2022-11-30', 'ACTIVO'),
(19102982, 70426014, 3, 9, 'Daniel Enrique', 'Jimenez', '70426014@gmail.com', 'admin', '2022-11-01', 'ACTIVO'),
(27965130, 27965130, 3, 9, 'Yuli', 'Alcantara Ramirez', '27965130@gmail.com', '27965130', '2022-11-30', 'ACTIVO'),
(33671494, 33671494, 3, 9, 'Julio', 'Abad Zevallos ', '33671494@gmail.com', '33671494', '2022-11-30', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciongrade`
--

CREATE TABLE `asignaciongrade` (
  `ID_grado` int(11) NOT NULL,
  `Nivel_Grado` varchar(255) NOT NULL,
  `Grado_Academico` varchar(2550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaciongrade`
--

INSERT INTO `asignaciongrade` (`ID_grado`, `Nivel_Grado`, `Grado_Academico`) VALUES
(1, 'Default', 'Default'),
(5, 'Secundaria', '1ro'),
(6, 'Secundaria', '2do'),
(8, 'SECUNDARIA', '5TO'),
(9, 'SECUNDARIA', '4TO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `ID_ASIGNATURA` int(11) NOT NULL,
  `NOMBRE_ASIGNATURA` varchar(200) NOT NULL,
  `ID_grado` int(11) NOT NULL,
  `Fecha_Creacion_Asignatura` varchar(100) NOT NULL,
  `Estado_Asig` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`ID_ASIGNATURA`, `NOMBRE_ASIGNATURA`, `ID_grado`, `Fecha_Creacion_Asignatura`, `Estado_Asig`) VALUES
(1, 'MATEMATICA', 6, '2022-11-04', 'ACTIVO'),
(2, 'INTEGRADOR DE SISTEMAS', 6, '2022-11-04', 'ACTIVO'),
(3, 'COMUNICACION', 8, '2022-11-05', 'ACTIVO'),
(4, 'PROGRAMACION 1', 9, '2022-11-05', 'ACTIVO'),
(5, 'COMUNICACION', 9, '2022-11-26', 'ACTIVO'),
(6, 'MATEMATICA I', 9, '2022-11-26', 'ACTIVO'),
(7, 'CTA', 9, '2022-11-26', 'ACTIVO'),
(8, 'FISICA', 9, '2022-11-26', 'ACTIVO'),
(9, 'INTEGRADOR', 9, '2022-11-26', 'ACTIVO'),
(10, 'INTEGRADOR 2', 5, '2022-12-03', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistecia`
--

CREATE TABLE `asistecia` (
  `ID_asistencia` int(11) NOT NULL,
  `ID_Seccion_Aula` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `Asistencia` varchar(255) NOT NULL,
  `Fecha_asistencia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistecia`
--

INSERT INTO `asistecia` (`ID_asistencia`, `ID_Seccion_Aula`, `ID_ALUMNO`, `Asistencia`, `Fecha_asistencia`) VALUES
(38, 11, 31231, 'FALTO', '2022-12-02'),
(39, 11, 312312, 'FALTO', '2022-12-02'),
(40, 11, 2630142, 'FALTO', '2022-12-02'),
(41, 11, 5370432, 'FALTO', '2022-12-02'),
(42, 11, 15866316, 'FALTO', '2022-12-02'),
(43, 11, 27965130, 'FALTO', '2022-12-02'),
(44, 11, 33671494, 'FALTO', '2022-12-02'),
(45, 11, 31231, 'ASISTIO', '2022-12-02'),
(46, 11, 312312, 'ASISTIO', '2022-12-02'),
(47, 11, 2630142, 'ASISTIO', '2022-12-02'),
(48, 11, 5370432, 'ASISTIO', '2022-12-02'),
(49, 11, 15866316, 'ASISTIO', '2022-12-02'),
(50, 11, 27965130, 'ASISTIO', '2022-12-02'),
(51, 11, 33671494, 'ASISTIO', '2022-12-02'),
(52, 11, 31231, 'ASISTIO', '2022-12-02'),
(53, 11, 312312, 'ASISTIO', '2022-12-02'),
(54, 11, 2630142, 'ASISTIO', '2022-12-02'),
(55, 11, 5370432, 'ASISTIO', '2022-12-02'),
(56, 11, 15866316, 'ASISTIO', '2022-12-02'),
(57, 11, 27965130, 'ASISTIO', '2022-12-02'),
(58, 11, 33671494, 'ASISTIO', '2022-12-02'),
(59, 11, 31231, 'FALTO', '2022-12-02'),
(60, 11, 312312, 'FALTO', '2022-12-02'),
(61, 11, 2630142, 'ASISTIO', '2022-12-02'),
(62, 11, 5370432, 'FALTO', '2022-12-02'),
(63, 11, 15866316, 'FALTO', '2022-12-02'),
(64, 11, 27965130, 'ASISTIO', '2022-12-02'),
(65, 11, 33671494, 'ASISTIO', '2022-12-02'),
(66, 11, 31231, 'ASISTIO', '2022-12-02'),
(67, 11, 312312, 'ASISTIO', '2022-12-02'),
(68, 11, 2630142, 'ASISTIO', '2022-12-02'),
(69, 11, 5370432, 'ASISTIO', '2022-12-02'),
(70, 11, 15866316, 'ASISTIO', '2022-12-02'),
(71, 11, 27965130, 'ASISTIO', '2022-12-02'),
(72, 11, 33671494, 'ASISTIO', '2022-12-02'),
(73, 12, 31231, 'ASISTIO', '2022-12-02'),
(74, 12, 312312, 'ASISTIO', '2022-12-02'),
(75, 12, 2630142, 'ASISTIO', '2022-12-02'),
(76, 12, 5370432, 'ASISTIO', '2022-12-02'),
(77, 12, 15866316, 'ASISTIO', '2022-12-02'),
(78, 12, 27965130, 'ASISTIO', '2022-12-02'),
(79, 12, 33671494, 'ASISTIO', '2022-12-02'),
(80, 12, 31231, 'FALTO', '2022-12-02'),
(81, 12, 312312, 'FALTO', '2022-12-02'),
(82, 12, 2630142, 'FALTO', '2022-12-02'),
(83, 12, 5370432, 'FALTO', '2022-12-02'),
(84, 12, 15866316, 'ASISTIO', '2022-12-02'),
(85, 12, 27965130, 'ASISTIO', '2022-12-02'),
(86, 12, 33671494, 'ASISTIO', '2022-12-02'),
(87, 12, 31231, 'ASISTIO', '2022-12-02'),
(88, 12, 312312, 'ASISTIO', '2022-12-02'),
(89, 12, 2630142, 'ASISTIO', '2022-12-02'),
(90, 12, 5370432, 'ASISTIO', '2022-12-02'),
(91, 12, 15866316, 'ASISTIO', '2022-12-02'),
(92, 12, 27965130, 'ASISTIO', '2022-12-02'),
(93, 12, 33671494, 'ASISTIO', '2022-12-02'),
(94, 12, 31231, 'ASISTIO', '2022-12-02'),
(95, 12, 312312, 'ASISTIO', '2022-12-02'),
(96, 12, 2630142, 'ASISTIO', '2022-12-02'),
(97, 12, 5370432, 'ASISTIO', '2022-12-02'),
(98, 12, 15866316, 'ASISTIO', '2022-12-02'),
(99, 12, 27965130, 'ASISTIO', '2022-12-02'),
(100, 12, 33671494, 'ASISTIO', '2022-12-02'),
(101, 12, 31231, 'ASISTIO', '2022-12-02'),
(102, 12, 312312, 'ASISTIO', '2022-12-02'),
(103, 12, 2630142, 'ASISTIO', '2022-12-02'),
(104, 12, 5370432, 'ASISTIO', '2022-12-02'),
(105, 12, 15866316, 'ASISTIO', '2022-12-02'),
(106, 12, 27965130, 'ASISTIO', '2022-12-02'),
(107, 12, 33671494, 'ASISTIO', '2022-12-02'),
(108, 12, 31231, 'ASISTIO', '2022-12-02'),
(109, 12, 312312, 'ASISTIO', '2022-12-02'),
(110, 12, 2630142, 'ASISTIO', '2022-12-02'),
(111, 12, 5370432, 'ASISTIO', '2022-12-02'),
(112, 12, 15866316, 'ASISTIO', '2022-12-02'),
(113, 12, 27965130, 'ASISTIO', '2022-12-02'),
(114, 12, 33671494, 'ASISTIO', '2022-12-02'),
(115, 12, 31231, 'FALTO', '2022-12-02'),
(116, 12, 312312, 'ASISTIO', '2022-12-02'),
(117, 12, 2630142, 'ASISTIO', '2022-12-02'),
(118, 12, 5370432, 'ASISTIO', '2022-12-02'),
(119, 12, 15866316, 'ASISTIO', '2022-12-02'),
(120, 12, 27965130, 'ASISTIO', '2022-12-02'),
(121, 12, 33671494, 'ASISTIO', '2022-12-02'),
(122, 12, 31231, 'ASISTIO', '2022-12-02'),
(123, 12, 312312, 'ASISTIO', '2022-12-02'),
(124, 12, 2630142, 'ASISTIO', '2022-12-02'),
(125, 12, 5370432, 'ASISTIO', '2022-12-02'),
(126, 12, 15866316, 'ASISTIO', '2022-12-02'),
(127, 12, 27965130, 'ASISTIO', '2022-12-02'),
(128, 12, 33671494, 'ASISTIO', '2022-12-02'),
(129, 12, 31231, 'FALTO', '2022-12-02'),
(130, 12, 312312, 'FALTO', '2022-12-02'),
(131, 12, 2630142, 'FALTO', '2022-12-02'),
(132, 12, 5370432, 'ASISTIO', '2022-12-02'),
(133, 12, 15866316, 'ASISTIO', '2022-12-02'),
(134, 12, 27965130, 'ASISTIO', '2022-12-02'),
(135, 12, 33671494, 'ASISTIO', '2022-12-02'),
(136, 12, 31231, 'FALTO', '2022-12-02'),
(137, 12, 312312, 'FALTO', '2022-12-02'),
(138, 12, 2630142, 'ASISTIO', '2022-12-02'),
(139, 12, 5370432, 'ASISTIO', '2022-12-02'),
(140, 12, 15866316, 'ASISTIO', '2022-12-02'),
(141, 12, 27965130, 'ASISTIO', '2022-12-02'),
(142, 12, 33671494, 'ASISTIO', '2022-12-02'),
(143, 13, 31231, 'FALTO', '2022-12-02'),
(144, 13, 312312, 'ASISTIO', '2022-12-02'),
(145, 13, 2630142, 'ASISTIO', '2022-12-02'),
(146, 13, 5370432, 'ASISTIO', '2022-12-02'),
(147, 13, 15866316, 'ASISTIO', '2022-12-02'),
(148, 13, 27965130, 'ASISTIO', '2022-12-02'),
(149, 13, 33671494, 'ASISTIO', '2022-12-02'),
(150, 13, 31231, 'ASISTIO', '2022-12-02'),
(151, 13, 312312, 'ASISTIO', '2022-12-02'),
(152, 13, 2630142, 'ASISTIO', '2022-12-02'),
(153, 13, 5370432, 'ASISTIO', '2022-12-02'),
(154, 13, 15866316, 'ASISTIO', '2022-12-02'),
(155, 13, 27965130, 'ASISTIO', '2022-12-02'),
(156, 13, 33671494, 'ASISTIO', '2022-12-02'),
(157, 13, 31231, 'FALTO', '2022-12-02'),
(158, 13, 312312, 'ASISTIO', '2022-12-02'),
(159, 13, 2630142, 'ASISTIO', '2022-12-02'),
(160, 13, 5370432, 'ASISTIO', '2022-12-02'),
(161, 13, 15866316, 'ASISTIO', '2022-12-02'),
(162, 13, 27965130, 'ASISTIO', '2022-12-02'),
(163, 13, 33671494, 'ASISTIO', '2022-12-02'),
(164, 13, 31231, 'ASISTIO', '2022-12-02'),
(165, 13, 312312, 'ASISTIO', '2022-12-02'),
(166, 13, 2630142, 'ASISTIO', '2022-12-02'),
(167, 13, 5370432, 'ASISTIO', '2022-12-02'),
(168, 13, 15866316, 'ASISTIO', '2022-12-02'),
(169, 13, 27965130, 'ASISTIO', '2022-12-02'),
(170, 13, 33671494, 'ASISTIO', '2022-12-02'),
(171, 13, 31231, 'ASISTIO', '2022-12-02'),
(172, 13, 312312, 'ASISTIO', '2022-12-02'),
(173, 13, 2630142, 'ASISTIO', '2022-12-02'),
(174, 13, 5370432, 'ASISTIO', '2022-12-02'),
(175, 13, 15866316, 'ASISTIO', '2022-12-02'),
(176, 13, 27965130, 'ASISTIO', '2022-12-02'),
(177, 13, 33671494, 'ASISTIO', '2022-12-02'),
(178, 14, 31231, 'ASISTIO', '2022-12-02'),
(179, 14, 312312, 'ASISTIO', '2022-12-02'),
(180, 14, 2630142, 'ASISTIO', '2022-12-02'),
(181, 14, 5370432, 'ASISTIO', '2022-12-02'),
(182, 14, 15866316, 'ASISTIO', '2022-12-02'),
(183, 14, 27965130, 'ASISTIO', '2022-12-02'),
(184, 14, 33671494, 'ASISTIO', '2022-12-02'),
(185, 14, 33671494, 'ASISTIO', '2022-12-02'),
(186, 14, 31231, 'ASISTIO', '2022-12-02'),
(187, 14, 312312, 'ASISTIO', '2022-12-02'),
(188, 14, 2630142, 'ASISTIO', '2022-12-02'),
(189, 14, 5370432, 'ASISTIO', '2022-12-02'),
(190, 14, 15866316, 'ASISTIO', '2022-12-02'),
(191, 14, 27965130, 'ASISTIO', '2022-12-02'),
(192, 14, 33671494, 'ASISTIO', '2022-12-02'),
(193, 14, 33671494, 'ASISTIO', '2022-12-02'),
(194, 14, 31231, 'ASISTIO', '2022-12-02'),
(195, 14, 312312, 'ASISTIO', '2022-12-02'),
(196, 14, 2630142, 'ASISTIO', '2022-12-02'),
(197, 14, 5370432, 'ASISTIO', '2022-12-02'),
(198, 14, 15866316, 'ASISTIO', '2022-12-02'),
(199, 14, 27965130, 'ASISTIO', '2022-12-02'),
(200, 14, 33671494, 'ASISTIO', '2022-12-02'),
(201, 14, 33671494, 'ASISTIO', '2022-12-02'),
(202, 14, 31231, 'ASISTIO', '2022-12-02'),
(203, 14, 312312, 'ASISTIO', '2022-12-02'),
(204, 14, 2630142, 'ASISTIO', '2022-12-02'),
(205, 14, 5370432, 'ASISTIO', '2022-12-02'),
(206, 14, 15866316, 'ASISTIO', '2022-12-02'),
(207, 14, 27965130, 'ASISTIO', '2022-12-02'),
(208, 14, 33671494, 'ASISTIO', '2022-12-02'),
(209, 14, 33671494, 'ASISTIO', '2022-12-02'),
(210, 14, 31231, 'ASISTIO', '2022-12-02'),
(211, 14, 312312, 'ASISTIO', '2022-12-02'),
(212, 14, 2630142, 'ASISTIO', '2022-12-02'),
(213, 14, 5370432, 'ASISTIO', '2022-12-02'),
(214, 14, 15866316, 'ASISTIO', '2022-12-02'),
(215, 14, 27965130, 'ASISTIO', '2022-12-02'),
(216, 14, 33671494, 'ASISTIO', '2022-12-02'),
(217, 14, 33671494, 'ASISTIO', '2022-12-02'),
(218, 14, 31231, 'ASISTIO', '2022-12-02'),
(219, 14, 312312, 'ASISTIO', '2022-12-02'),
(220, 14, 2630142, 'ASISTIO', '2022-12-02'),
(221, 14, 5370432, 'ASISTIO', '2022-12-02'),
(222, 14, 15866316, 'ASISTIO', '2022-12-02'),
(223, 14, 27965130, 'ASISTIO', '2022-12-02'),
(224, 14, 33671494, 'ASISTIO', '2022-12-02'),
(225, 14, 33671494, 'ASISTIO', '2022-12-02'),
(226, 15, 31231, 'ASISTIO', '2022-12-02'),
(227, 15, 312312, 'ASISTIO', '2022-12-02'),
(228, 15, 2630142, 'ASISTIO', '2022-12-02'),
(229, 15, 5370432, 'ASISTIO', '2022-12-02'),
(230, 15, 15866316, 'ASISTIO', '2022-12-02'),
(231, 15, 27965130, 'ASISTIO', '2022-12-02'),
(232, 15, 33671494, 'ASISTIO', '2022-12-02'),
(233, 15, 31231, 'FALTO', '2022-12-02'),
(234, 15, 312312, 'FALTO', '2022-12-02'),
(235, 15, 2630142, 'ASISTIO', '2022-12-02'),
(236, 15, 5370432, 'ASISTIO', '2022-12-02'),
(237, 15, 15866316, 'ASISTIO', '2022-12-02'),
(238, 15, 27965130, 'ASISTIO', '2022-12-02'),
(239, 15, 33671494, 'ASISTIO', '2022-12-02'),
(240, 15, 31231, 'ASISTIO', '2022-12-02'),
(241, 15, 312312, 'ASISTIO', '2022-12-02'),
(242, 15, 2630142, 'ASISTIO', '2022-12-02'),
(243, 15, 5370432, 'ASISTIO', '2022-12-02'),
(244, 15, 15866316, 'ASISTIO', '2022-12-02'),
(245, 15, 27965130, 'ASISTIO', '2022-12-02'),
(246, 15, 33671494, 'ASISTIO', '2022-12-02'),
(247, 15, 31231, 'ASISTIO', '2022-12-02'),
(248, 15, 312312, 'ASISTIO', '2022-12-02'),
(249, 15, 2630142, 'ASISTIO', '2022-12-02'),
(250, 15, 5370432, 'ASISTIO', '2022-12-02'),
(251, 15, 15866316, 'ASISTIO', '2022-12-02'),
(252, 15, 27965130, 'ASISTIO', '2022-12-02'),
(253, 15, 33671494, 'ASISTIO', '2022-12-02'),
(254, 15, 31231, 'ASISTIO', '2022-12-02'),
(255, 15, 312312, 'ASISTIO', '2022-12-02'),
(256, 15, 2630142, 'ASISTIO', '2022-12-02'),
(257, 15, 5370432, 'ASISTIO', '2022-12-02'),
(258, 15, 15866316, 'ASISTIO', '2022-12-02'),
(259, 15, 27965130, 'ASISTIO', '2022-12-02'),
(260, 15, 33671494, 'ASISTIO', '2022-12-02'),
(261, 11, 31231, 'FALTO', '2022-12-03'),
(262, 11, 312312, 'FALTO', '2022-12-03'),
(263, 11, 2630142, 'ASISTIO', '2022-12-03'),
(264, 11, 5370432, 'ASISTIO', '2022-12-03'),
(265, 11, 15866316, 'ASISTIO', '2022-12-03'),
(266, 11, 27965130, 'ASISTIO', '2022-12-03'),
(267, 11, 33671494, 'ASISTIO', '2022-12-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica_perfil`
--

CREATE TABLE `caracteristica_perfil` (
  `ID_CaractPerfil` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `Interes_Acad` varchar(100) NOT NULL,
  `Interes_Ciencia` varchar(100) NOT NULL,
  `Hobbies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_alumno`
--

CREATE TABLE `datos_alumno` (
  `ID_DATOS_ALU` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `N_Contacto` int(255) NOT NULL,
  `DOMICILIO` varchar(400) NOT NULL,
  `PESO` int(255) NOT NULL,
  `TALLA` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `ID_DOCENTE` int(11) NOT NULL,
  `DNI_DOCENTE` int(11) NOT NULL,
  `ID_Rol` int(11) NOT NULL,
  `Nombre_Docente` varchar(255) NOT NULL,
  `Apellido_Docente` varchar(255) NOT NULL,
  `Correo_Docente` varchar(2550) NOT NULL,
  `Contrasena_Doc` varchar(100) NOT NULL,
  `Telefono_doc` int(100) NOT NULL,
  `Fecha_Creacion_Docente` varchar(100) NOT NULL,
  `Estado_Doc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`ID_DOCENTE`, `DNI_DOCENTE`, `ID_Rol`, `Nombre_Docente`, `Apellido_Docente`, `Correo_Docente`, `Contrasena_Doc`, `Telefono_doc`, `Fecha_Creacion_Docente`, `Estado_Doc`) VALUES
(3123, 3123, 2, 'LESLY ', 'POPE', 'POPE@GMAIL.COM', 'POPE', 3121312, '2022-11-26', 'ACTIVO'),
(25253, 3525, 2, 'Daniel Enrique', 'Jimenez', 'kimberenrique@gmail.com', 'admin', 3525, '2022-11-05', 'ACTIVO'),
(702111, 702111, 2, 'Enrique', 'Jimenez', 'enrique@gmail.com', 'admin2', 343242, '2022-11-01', 'ACTIVO'),
(3123124, 3123124, 2, 'Iara ', 'Massiel', '3123124@gmail.com', '3123124', 3123124, '2022-12-03', 'ACTIVO'),
(9798770, 9798770, 2, 'Marie', 'Adver', 'profe1@gmail.com', 'profe1', 223212, '2022-11-26', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `ID_evalucion` int(11) NOT NULL,
  `ID_ASIGNATURA` int(11) NOT NULL,
  `Nombre_Evaluacion` varchar(255) NOT NULL,
  `Porcentaje` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluaciones`
--

INSERT INTO `evaluaciones` (`ID_evalucion`, `ID_ASIGNATURA`, `Nombre_Evaluacion`, `Porcentaje`) VALUES
(1, 1, 'PRUEBA ENTRADA', '0.005'),
(2, 2, 'PRUEBA DE ENTRADA', '0.01'),
(3, 2, 'PC 1', '0.015'),
(5, 1, 'PC1', '0.015'),
(6, 2, 'PC2', '0.01'),
(9, 3, 'PRUEBA DE ENTRADA', '0.005'),
(10, 4, 'PC 1', '0.015'),
(11, 1, 'PC3', '0.015'),
(15, 5, 'PC1', '0.015'),
(16, 5, 'PC2', '0.015'),
(17, 5, 'EXAMENEN TRIMESTRAL', '0.015'),
(18, 5, 'PC3', '0.015'),
(19, 5, 'PC4', '0.015'),
(20, 5, 'EXAMEN FINAL', '0.010'),
(21, 6, 'PC1', '0.015'),
(22, 6, 'PC2', '0.015'),
(23, 6, 'EXAMENEN TRIMESTRAL', '0.015'),
(24, 6, 'PC3', '0.015'),
(25, 6, 'PC4', '0.015'),
(26, 6, 'EXAMEN FINAL', '0.025'),
(27, 7, 'PC1', '0.015'),
(28, 7, 'PC2', '0.015'),
(29, 7, 'EXAMENEN TRIMESTRAL', '0.015'),
(30, 7, 'PC3', '0.015'),
(31, 7, 'PC4', '0.015'),
(32, 7, 'EXAMEN FINAL', '0.025'),
(33, 8, 'PC1', '0.015'),
(34, 8, 'PC2', '0.015'),
(35, 8, 'EXAMENEN TRIMESTRAL', '0.015'),
(36, 8, 'PC3', '0.015'),
(37, 8, 'PC4', '0.015'),
(38, 8, 'EXAMEN FINAL', '0.025'),
(39, 5, 'LECTURA', '0.005'),
(40, 5, 'CALIGRAFIA', '0.01'),
(41, 4, 'PC2', '0.015'),
(42, 4, 'EXAMENEN TRIMESTRAL', '0.015'),
(43, 4, 'PC3', '0.015'),
(44, 4, 'PC4', '0.015'),
(45, 4, 'EXAMEN FINAL', '0.025'),
(46, 9, 'PC1', '0.015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_curso`
--

CREATE TABLE `inscripcion_curso` (
  `ID_Incripcion_Curso` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_Seccion_Aula` int(11) NOT NULL,
  `Fecha_Creacion_inscripcion` varchar(100) NOT NULL,
  `Estado_inscripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inscripcion_curso`
--

INSERT INTO `inscripcion_curso` (`ID_Incripcion_Curso`, `ID_ALUMNO`, `ID_Seccion_Aula`, `Fecha_Creacion_inscripcion`, `Estado_inscripcion`) VALUES
(1, 252353, 3, '2022-11-06', 'ACTIVO'),
(3, 19102982, 3, '2022-11-09', 'ACTIVO'),
(4, 32232, 9, '2022-11-17', 'ACTIVO'),
(5, 31231, 11, '2022-11-26', 'ACTIVO'),
(6, 312312, 11, '2022-11-26', 'ACTIVO'),
(7, 31231, 12, '2022-11-26', 'ACTIVO'),
(8, 312312, 12, '2022-11-26', 'ACTIVO'),
(9, 31231, 13, '2022-11-26', 'ACTIVO'),
(10, 312312, 13, '2022-11-26', 'ACTIVO'),
(11, 31231, 14, '2022-11-26', 'ACTIVO'),
(12, 312312, 14, '2022-11-26', 'ACTIVO'),
(13, 31231, 15, '2022-11-26', 'ACTIVO'),
(14, 312312, 15, '2022-11-26', 'ACTIVO'),
(15, 3213, 16, '2022-11-26', 'ACTIVO'),
(16, 31231, 16, '2022-11-26', 'ACTIVO'),
(17, 312312, 16, '2022-11-27', 'ACTIVO'),
(18, 2630142, 11, '2022-11-30', 'ACTIVO'),
(19, 5370432, 11, '2022-11-30', 'ACTIVO'),
(20, 15866316, 11, '2022-11-30', 'ACTIVO'),
(21, 27965130, 11, '2022-11-30', 'ACTIVO'),
(22, 33671494, 11, '2022-11-30', 'ACTIVO'),
(23, 2630142, 12, '2022-11-30', 'ACTIVO'),
(24, 5370432, 12, '2022-11-30', 'ACTIVO'),
(25, 15866316, 12, '2022-11-30', 'ACTIVO'),
(26, 27965130, 12, '2022-11-30', 'ACTIVO'),
(27, 33671494, 12, '2022-11-30', 'ACTIVO'),
(28, 2630142, 13, '2022-11-30', 'ACTIVO'),
(29, 5370432, 13, '2022-11-30', 'ACTIVO'),
(30, 15866316, 13, '2022-11-30', 'ACTIVO'),
(31, 27965130, 13, '2022-11-30', 'ACTIVO'),
(32, 33671494, 13, '2022-11-30', 'ACTIVO'),
(33, 2630142, 14, '2022-11-30', 'ACTIVO'),
(34, 5370432, 14, '2022-11-30', 'ACTIVO'),
(35, 15866316, 14, '2022-11-30', 'ACTIVO'),
(36, 27965130, 14, '2022-11-30', 'ACTIVO'),
(37, 33671494, 14, '2022-11-30', 'ACTIVO'),
(38, 33671494, 14, '2022-11-30', 'ACTIVO'),
(39, 2630142, 15, '2022-11-30', 'ACTIVO'),
(40, 5370432, 15, '2022-11-30', 'ACTIVO'),
(41, 15866316, 15, '2022-11-30', 'ACTIVO'),
(42, 27965130, 15, '2022-11-30', 'ACTIVO'),
(43, 33671494, 15, '2022-11-30', 'ACTIVO'),
(44, 423523, 15, '2022-12-03', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `ID_Nota` int(11) NOT NULL,
  `ID_Seccion_Aula` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_evalucion` int(11) NOT NULL,
  `Nota` double NOT NULL,
  `Fecha_nota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`ID_Nota`, `ID_Seccion_Aula`, `ID_ALUMNO`, `ID_evalucion`, `Nota`, `Fecha_nota`) VALUES
(3, 3, 19102982, 10, 17, '2022-11-18'),
(9, 3, 252353, 10, 20, '2022-11-18'),
(10, 3, 252353, 10, 11, '2022-11-18'),
(11, 11, 31231, 33, 20, '2022-11-26'),
(12, 11, 312312, 33, 16, '2022-11-26'),
(13, 12, 312312, 27, 16, '2022-11-26'),
(14, 12, 31231, 27, 15, '2022-11-26'),
(15, 13, 31231, 21, 12, '2022-11-26'),
(16, 13, 312312, 21, 15, '2022-11-26'),
(17, 14, 31231, 15, 17, '2022-11-26'),
(18, 14, 312312, 15, 15, '2022-11-26'),
(19, 15, 31231, 10, 17, '2022-11-26'),
(20, 15, 312312, 10, 19, '2022-11-26'),
(21, 16, 3213, 46, 19, '2022-11-26'),
(22, 11, 312312, 34, 16, '2022-11-27'),
(23, 11, 31231, 34, 14, '2022-11-27'),
(24, 11, 312312, 35, 20, '2022-11-27'),
(25, 11, 31231, 35, 12, '2022-11-27'),
(26, 11, 31231, 36, 16, '2022-11-27'),
(27, 11, 312312, 36, 17, '2022-11-27'),
(29, 11, 312312, 37, 15, '2022-11-27'),
(30, 11, 31231, 37, 14, '2022-11-27'),
(31, 11, 31231, 38, 18, '2022-11-27'),
(32, 11, 312312, 38, 20, '2022-11-27'),
(34, 12, 31231, 28, 15, '2022-11-27'),
(35, 12, 31231, 29, 11, '2022-11-27'),
(36, 12, 31231, 30, 20, '2022-11-27'),
(37, 12, 31231, 31, 16, '2022-11-27'),
(38, 12, 31231, 32, 17, '2022-11-27'),
(39, 12, 312312, 27, 15, '2022-11-27'),
(40, 12, 312312, 28, 11, '2022-11-27'),
(41, 12, 312312, 29, 12, '2022-11-27'),
(42, 12, 312312, 30, 12, '2022-11-27'),
(43, 12, 312312, 31, 20, '2022-11-27'),
(44, 12, 312312, 32, 20, '2022-11-27'),
(45, 13, 31231, 22, 11, '2022-11-27'),
(46, 13, 31231, 23, 12, '2022-11-27'),
(47, 13, 31231, 24, 12, '2022-11-27'),
(48, 13, 31231, 25, 20, '2022-11-27'),
(49, 13, 31231, 26, 20, '2022-11-27'),
(50, 13, 312312, 22, 12, '2022-11-27'),
(51, 13, 312312, 23, 12, '2022-11-27'),
(52, 13, 312312, 24, 17, '2022-11-27'),
(53, 13, 312312, 25, 20, '2022-11-27'),
(54, 13, 312312, 26, 12, '2022-11-27'),
(55, 14, 31231, 16, 11, '2022-11-27'),
(56, 14, 31231, 17, 12, '2022-11-27'),
(57, 14, 31231, 18, 12, '2022-11-27'),
(58, 14, 31231, 19, 20, '2022-11-27'),
(59, 14, 31231, 20, 20, '2022-11-27'),
(60, 14, 31231, 39, 12, '2022-11-27'),
(61, 14, 31231, 40, 20, '2022-11-27'),
(62, 14, 312312, 16, 12, '2022-11-27'),
(63, 14, 312312, 17, 12, '2022-11-27'),
(64, 14, 312312, 18, 17, '2022-11-27'),
(65, 14, 312312, 19, 20, '2022-11-27'),
(66, 14, 312312, 20, 12, '2022-11-27'),
(67, 14, 312312, 39, 17, '2022-11-27'),
(68, 14, 312312, 40, 20, '2022-11-27'),
(69, 15, 31231, 41, 15, '2022-11-27'),
(70, 15, 31231, 42, 13, '2022-11-27'),
(71, 15, 31231, 43, 12, '2022-11-27'),
(72, 15, 31231, 44, 14, '2022-11-27'),
(73, 15, 31231, 45, 20, '2022-11-27'),
(74, 15, 312312, 41, 17, '2022-11-27'),
(75, 15, 312312, 42, 13, '2022-11-27'),
(76, 15, 312312, 43, 17, '2022-11-27'),
(77, 15, 312312, 44, 15, '2022-11-27'),
(78, 15, 312312, 45, 12, '2022-11-27'),
(79, 11, 2630142, 33, 2, '2022-11-30'),
(80, 11, 5370432, 33, 12, '2022-11-30'),
(81, 11, 15866316, 33, 4, '2022-11-30'),
(82, 11, 27965130, 33, 14, '2022-11-30'),
(83, 11, 33671494, 33, 6, '2022-11-30'),
(84, 11, 31231, 33, 13, '2022-11-30'),
(85, 11, 312312, 33, 8, '2022-11-30'),
(86, 11, 2630142, 34, 3, '2022-11-30'),
(87, 11, 5370432, 34, 13, '2022-11-30'),
(88, 11, 15866316, 34, 5, '2022-11-30'),
(89, 11, 27965130, 34, 15, '2022-11-30'),
(90, 11, 33671494, 34, 7, '2022-11-30'),
(91, 11, 2630142, 35, 2, '2022-11-30'),
(92, 11, 5370432, 35, 10, '2022-11-30'),
(93, 11, 15866316, 35, 4, '2022-11-30'),
(94, 11, 27965130, 35, 16, '2022-11-30'),
(95, 11, 33671494, 35, 6, '2022-11-30'),
(96, 11, 2630142, 36, 3, '2022-11-30'),
(97, 11, 5370432, 36, 5, '2022-11-30'),
(98, 11, 15866316, 36, 7, '2022-11-30'),
(99, 11, 27965130, 36, 16, '2022-11-30'),
(100, 11, 33671494, 36, 12, '2022-11-30'),
(101, 11, 2630142, 37, 4, '2022-11-30'),
(102, 11, 5370432, 37, 7, '2022-11-30'),
(103, 11, 15866316, 37, 12, '2022-11-30'),
(104, 11, 27965130, 37, 10, '2022-11-30'),
(105, 11, 33671494, 37, 14, '2022-11-30'),
(106, 11, 2630142, 38, 20, '2022-11-30'),
(107, 11, 5370432, 38, 19, '2022-11-30'),
(108, 11, 15866316, 38, 10, '2022-11-30'),
(109, 11, 27965130, 38, 3, '2022-11-30'),
(110, 11, 33671494, 38, 15, '2022-11-30'),
(111, 12, 2630142, 27, 14, '2022-11-30'),
(112, 12, 5370432, 27, 11, '2022-11-30'),
(113, 12, 15866316, 27, 20, '2022-11-30'),
(114, 12, 27965130, 27, 7, '2022-11-30'),
(115, 12, 33671494, 27, 4, '2022-11-30'),
(116, 12, 2630142, 28, 6, '2022-11-30'),
(117, 12, 5370432, 28, 3, '2022-11-30'),
(118, 12, 15866316, 28, 14, '2022-11-30'),
(119, 12, 27965130, 28, 6, '2022-11-30'),
(120, 12, 33671494, 28, 20, '2022-11-30'),
(121, 12, 2630142, 29, 5, '2022-11-30'),
(122, 12, 5370432, 29, 8, '2022-11-30'),
(123, 12, 15866316, 29, 12, '2022-11-30'),
(124, 12, 27965130, 29, 19, '2022-11-30'),
(125, 12, 33671494, 29, 13, '2022-11-30'),
(126, 12, 2630142, 30, 15, '2022-11-30'),
(127, 12, 5370432, 30, 12, '2022-11-30'),
(128, 12, 15866316, 30, 6, '2022-11-30'),
(129, 12, 27965130, 30, 18, '2022-11-30'),
(130, 12, 33671494, 30, 20, '2022-11-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obeservaciones`
--

CREATE TABLE `obeservaciones` (
  `ID_obser` int(11) NOT NULL,
  `ID_Seccion_Aula` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ASUNTO` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `DESCARGO` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `NIVEL` varchar(100) NOT NULL,
  `Fecha_observacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obeservaciones`
--

INSERT INTO `obeservaciones` (`ID_obser`, `ID_Seccion_Aula`, `ID_ALUMNO`, `ASUNTO`, `DESCARGO`, `NIVEL`, `Fecha_observacion`) VALUES
(6, 11, 31231, 'Inasistencia Injustificada', 'La joven Isis ha acumulado en 2 curso el 40% de faltas, por favor acercarse hablar con el tutor', 'Muy Grave', '2022-12-02'),
(7, 15, 31231, 'Tardanza en el Curso de Programacion I', 'La Joven no llega a tiempo al Aula, por favor conversar con su Hija.', 'Grave', '2022-12-02'),
(8, 11, 312312, 'PELEA EN EL AULA', 'El joven se peleo con Su companero', 'Muy Grave', '2022-12-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(11) NOT NULL,
  `Nombre_rol` varchar(255) NOT NULL,
  `Descripcion_rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `Nombre_rol`, `Descripcion_rol`) VALUES
(1, 'ADMINISTRADOR', 'ADMINISTRA EL SISTEMA'),
(2, 'DOCENTE', 'DOCENTE DE LA INSTITUCION'),
(3, 'ESTUDIANTE', 'ESTUDIANTE DE LA INSTITUCION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_aula`
--

CREATE TABLE `seccion_aula` (
  `ID_Seccion_Aula` int(11) NOT NULL,
  `ID_DOCENTE` int(11) NOT NULL,
  `ID_ASIGNATURA` int(11) NOT NULL,
  `Fecha_Creacion_seccion` date NOT NULL,
  `Estado_seccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion_aula`
--

INSERT INTO `seccion_aula` (`ID_Seccion_Aula`, `ID_DOCENTE`, `ID_ASIGNATURA`, `Fecha_Creacion_seccion`, `Estado_seccion`) VALUES
(3, 25253, 4, '2022-11-08', 'ACTIVO'),
(9, 25253, 3, '2022-11-05', 'ACTIVO'),
(10, 702111, 4, '2022-11-06', 'ACTIVO'),
(11, 9798770, 8, '2022-11-26', 'ACTIVO'),
(12, 9798770, 7, '2022-11-26', 'ACTIVO'),
(13, 9798770, 6, '2022-11-26', 'ACTIVO'),
(14, 9798770, 5, '2022-11-26', 'ACTIVO'),
(15, 9798770, 4, '2022-11-26', 'ACTIVO'),
(16, 3123, 9, '2022-11-26', 'ACTIVO'),
(17, 3123, 10, '2022-12-03', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userr`
--

CREATE TABLE `userr` (
  `ID_USER` int(11) NOT NULL,
  `ID_Rol` int(11) NOT NULL,
  `Nombre_user` varchar(255) NOT NULL,
  `Correo_user` varchar(2550) NOT NULL,
  `Contrasena_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `userr`
--

INSERT INTO `userr` (`ID_USER`, `ID_Rol`, `Nombre_user`, `Correo_user`, `Contrasena_user`) VALUES
(70426014, 1, 'Enrique Sandoval', 'U19102982@utp.edu.pe', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID_ALUMNO`),
  ADD KEY `ID_Rol` (`ID_Rol`),
  ADD KEY `ID_grado` (`ID_grado`);

--
-- Indices de la tabla `asignaciongrade`
--
ALTER TABLE `asignaciongrade`
  ADD PRIMARY KEY (`ID_grado`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`ID_ASIGNATURA`),
  ADD KEY `ID_grado` (`ID_grado`);

--
-- Indices de la tabla `asistecia`
--
ALTER TABLE `asistecia`
  ADD PRIMARY KEY (`ID_asistencia`),
  ADD KEY `dasds` (`ID_ALUMNO`),
  ADD KEY `fsefwe` (`ID_Seccion_Aula`);

--
-- Indices de la tabla `caracteristica_perfil`
--
ALTER TABLE `caracteristica_perfil`
  ADD PRIMARY KEY (`ID_CaractPerfil`),
  ADD KEY `ID_ALUMNO` (`ID_ALUMNO`);

--
-- Indices de la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  ADD PRIMARY KEY (`ID_DATOS_ALU`),
  ADD KEY `ID_ALUMNO` (`ID_ALUMNO`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`ID_DOCENTE`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`ID_evalucion`),
  ADD KEY `ID_ASIGNATURA` (`ID_ASIGNATURA`);

--
-- Indices de la tabla `inscripcion_curso`
--
ALTER TABLE `inscripcion_curso`
  ADD PRIMARY KEY (`ID_Incripcion_Curso`),
  ADD KEY `ID_ALUMNO` (`ID_ALUMNO`),
  ADD KEY `ID_Seccion_Aula` (`ID_Seccion_Aula`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`ID_Nota`),
  ADD KEY `ID_Seccion_Aula` (`ID_Seccion_Aula`),
  ADD KEY `ID_evalucion` (`ID_evalucion`),
  ADD KEY `notas_ibfk_3` (`ID_ALUMNO`);

--
-- Indices de la tabla `obeservaciones`
--
ALTER TABLE `obeservaciones`
  ADD PRIMARY KEY (`ID_obser`),
  ADD KEY `dwxas` (`ID_ALUMNO`),
  ADD KEY `dsda` (`ID_Seccion_Aula`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `seccion_aula`
--
ALTER TABLE `seccion_aula`
  ADD PRIMARY KEY (`ID_Seccion_Aula`),
  ADD KEY `ID_DOCENTE` (`ID_DOCENTE`),
  ADD KEY `ID_ASIGNATURA` (`ID_ASIGNATURA`);

--
-- Indices de la tabla `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciongrade`
--
ALTER TABLE `asignaciongrade`
  MODIFY `ID_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `ID_ASIGNATURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `asistecia`
--
ALTER TABLE `asistecia`
  MODIFY `ID_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT de la tabla `caracteristica_perfil`
--
ALTER TABLE `caracteristica_perfil`
  MODIFY `ID_CaractPerfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  MODIFY `ID_DATOS_ALU` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `ID_evalucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `inscripcion_curso`
--
ALTER TABLE `inscripcion_curso`
  MODIFY `ID_Incripcion_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `ID_Nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `obeservaciones`
--
ALTER TABLE `obeservaciones`
  MODIFY `ID_obser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `seccion_aula`
--
ALTER TABLE `seccion_aula`
  MODIFY `ID_Seccion_Aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`ID_grado`) REFERENCES `asignaciongrade` (`ID_grado`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`ID_grado`) REFERENCES `asignaciongrade` (`ID_grado`);

--
-- Filtros para la tabla `asistecia`
--
ALTER TABLE `asistecia`
  ADD CONSTRAINT `dasds` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`),
  ADD CONSTRAINT `fsefwe` FOREIGN KEY (`ID_Seccion_Aula`) REFERENCES `seccion_aula` (`ID_Seccion_Aula`);

--
-- Filtros para la tabla `caracteristica_perfil`
--
ALTER TABLE `caracteristica_perfil`
  ADD CONSTRAINT `caracteristica_perfil_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`);

--
-- Filtros para la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  ADD CONSTRAINT `datos_alumno_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);

--
-- Filtros para la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_ibfk_1` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`);

--
-- Filtros para la tabla `inscripcion_curso`
--
ALTER TABLE `inscripcion_curso`
  ADD CONSTRAINT `inscripcion_curso_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`),
  ADD CONSTRAINT `inscripcion_curso_ibfk_2` FOREIGN KEY (`ID_Seccion_Aula`) REFERENCES `seccion_aula` (`ID_Seccion_Aula`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`ID_Seccion_Aula`) REFERENCES `seccion_aula` (`ID_Seccion_Aula`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`ID_evalucion`) REFERENCES `evaluaciones` (`ID_evalucion`),
  ADD CONSTRAINT `notas_ibfk_3` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`);

--
-- Filtros para la tabla `obeservaciones`
--
ALTER TABLE `obeservaciones`
  ADD CONSTRAINT `dsda` FOREIGN KEY (`ID_Seccion_Aula`) REFERENCES `seccion_aula` (`ID_Seccion_Aula`),
  ADD CONSTRAINT `dwxas` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`);

--
-- Filtros para la tabla `seccion_aula`
--
ALTER TABLE `seccion_aula`
  ADD CONSTRAINT `seccion_aula_ibfk_1` FOREIGN KEY (`ID_DOCENTE`) REFERENCES `docente` (`ID_DOCENTE`),
  ADD CONSTRAINT `seccion_aula_ibfk_2` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`);

--
-- Filtros para la tabla `userr`
--
ALTER TABLE `userr`
  ADD CONSTRAINT `userr_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
