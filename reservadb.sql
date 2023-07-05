-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 21:35:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_reserva` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `asiento` varchar(100) NOT NULL,
  `vuelo` int(11) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `codigo`, `nombre`, `apellido`, `fecha_reserva`, `fecha_salida`, `asiento`, `vuelo`, `telefono`, `email`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1688582715653', 'Augu', 'Chaves Fiore', '2023-07-08 20:45:00', '2023-07-07 20:45:00', '1', 15, '1', 'augustochavesfiore@gmail.com', 1, '2023-07-05 18:45:15', '2023-07-05 19:17:57', NULL),
(2, '1688582716949', 'Augusto', 'Chaves Fiore', '2023-07-08 20:45:00', '2023-07-07 20:45:00', '1', 1, '1', 'augustochavesfiore@gmail.com', 0, '2023-07-05 18:45:16', '2023-07-05 18:56:49', NULL),
(3, '1688584829589', 'Augusssss', 'Chaves Fiore', '2023-08-07 20:45:00', '2023-07-07 20:45:00', '1', 15, '1', 'augustochavesfiore@gmail.com', 1, '2023-07-05 19:20:29', '2023-07-05 19:25:16', NULL),
(4, '1688584927869', 'proband', 'proba', '2023-07-06 15:23:00', '2003-03-12 15:23:00', '1', 1245, '1234', 'corre@correo.com', 1, '2023-07-05 19:22:07', '2023-07-05 19:22:07', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
