-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 20:40:46
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

/*Ejercicio 3 - Integrador - Mauro Poloni*/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

CREATE DATABASE veterinaria;

USE veterinaria;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Telefono` varchar(80) NOT NULL,
  `Direccion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(25789456, 'Lucia', 'Suarez', '2634587412', 'San Martin de los Andes'),
(30916470, 'Julieta', 'Tello', '2655228761', 'Sarmiento 77'),
(38741258, 'Maria', 'Lopez', '2610963852', 'Calle 856 Sur'),
(40123456, 'Juan', 'Perez', '2610887456', 'calle 123'),
(42947852, 'Martin', 'Rodriguez', '2638987426', 'Belgrano 12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int(11) NOT NULL,
  `Descripcion` varchar(120) NOT NULL,
  `Monto` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(1, '2019-02-05', 1, 'Dolor de panza', 2500.00),
(2, '2018-12-20', 2, 'patita quebrada', 2000.00),
(3, '2021-04-02', 3, 'desmayo', 1500.00),
(4, '2021-01-21', 4, 'operacion de castracion', 4500.00),
(5, '2021-05-24', 5, 'patita quebrada', 2500.00),
(6, '2019-04-10', 2, 'Operacion tumor', 9500.00),
(7, '2021-10-12', 4, 'patita quebrada', 2500.00),
(8, '2021-10-20', 3, 'infeccion urinaria', 7000.00),
(9, '2022-02-10', 5, 'operacion de castracion', 4750.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(50) NOT NULL,
  `DNI_dueno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1, 'Pepito', '2018-09-02', 'Masculino', 40123456),
(2, 'Luli', '2018-11-10', 'Femenino', 30916470),
(3, 'Sasha', '2019-01-15', 'Femenino', 42947852),
(4, 'Koko', '2020-07-08', 'Masculino', 25789456),
(5, 'Teo', '2020-10-30', 'Masculino', 38741258);

/*Ejercicio 3 - Integrador - Mauro Poloni*/

SELECT * FROM `historial` ORDER BY `historial`.`Fecha` ASC;

DELETE FROM `perro` WHERE `perro`.`ID_Perro` = 1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `Perro` (`Perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`ID_Perro`),
  ADD KEY `DNI_dueno` (`DNI_dueno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `ID_Historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `perro`
--
ALTER TABLE `perro`
  MODIFY `ID_Perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
