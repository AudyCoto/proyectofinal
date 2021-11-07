-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2021 a las 01:37:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_finaldw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabbotmaestro`
--

CREATE TABLE `tabbotmaestro` (
  `idBotMaestro` int(10) NOT NULL,
  `UsuarioMaestro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabbotmaestro`
--

INSERT INTO `tabbotmaestro` (`idBotMaestro`, `UsuarioMaestro`) VALUES
(900, 'cotoaudi@miumg.edu.gt'),
(100, 'ronalss'),
(901, 'rsalgueroh@miumg.edu.gt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbalumnos`
--

CREATE TABLE `tbalumnos` (
  `IdAlumnos` varchar(13) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `NombreUsuarioAlumno` varchar(100) DEFAULT NULL,
  `Correo` varchar(150) NOT NULL,
  `Ultima_Conecxion` date NOT NULL DEFAULT current_timestamp(),
  `Estado` varchar(10) NOT NULL,
  `Catedra` varchar(100) NOT NULL,
  `clave` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbalumnos`
--

INSERT INTO `tbalumnos` (`IdAlumnos`, `Apellidos`, `Nombres`, `NombreUsuarioAlumno`, `Correo`, `Ultima_Conecxion`, `Estado`, `Catedra`, `clave`) VALUES
('13-8155', 'Barrera Galvez', 'Miguel Angel', NULL, 'mbarrerag@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('14-6755', 'Cardona Lopez', 'Fredy Vinicio', NULL, 'fcardonal@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-11439', 'Castillo Garcia', 'Jorge Gabriel', NULL, 'jcastillog10@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-14261', 'Flores Garcia', 'Manolo Geovany', NULL, 'mfloresg9@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-1441', 'Chacon Contreras', 'Tiffany Alejandrina', '1728186153', 'tchaconc@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', '44846'),
('16-1537', 'Aguirre Duarte', 'Marvin Goseth', NULL, 'maguirred1@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-4554', 'Jacinto Cifuente', 'Oscar Daniel', NULL, 'ojaciontoc@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-6123', 'Amezquita Gonzalez', 'Leidy Fabiola', NULL, 'lamezquitag@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('16-6194', 'Garcia Coto', 'Eduardo Audy', '1116494564', 'egarciac29@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', '81133'),
('16-7152', 'Henriquez Cabrejo', 'Jennifer Elizabeth', NULL, 'jhenriquez@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('17-16043', 'Argueta Escobar', 'Ricardo Adolfo', NULL, 'rarguetae@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('17-4851', 'Itzep Ixcoy', 'Kevin Gersson', NULL, 'kitzepi@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-10991', 'Garcia Leiva', 'Josue Manrique', NULL, 'jgarcial26@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-12085', 'Corado Corado', 'Jenifer Elizabeth', NULL, 'jcoradoc5@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-13528', 'Barrera Arias', 'Jose Federico', NULL, 'jbarreraa3@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-1696', 'Gomez Solis', 'Dafne Zanelly', NULL, 'dgomezs1@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-1748', 'Delgado Fernandez', 'Orvin Manfredo', NULL, 'odelgadof@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-4416', 'Guardado Argueta', 'Elizabeth De Maria', NULL, 'eguardadoa@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL),
('18-5592', 'Garcia Sanabria', 'Emanuel Antonio', NULL, 'egarcias8@miumg.edu.gt', '2021-11-06', 'Activo', 'Desarrollo Web', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbbot`
--

CREATE TABLE `tbbot` (
  `IdUserBot` int(10) NOT NULL,
  `EstadoBot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbbot`
--

INSERT INTO `tbbot` (`IdUserBot`, `EstadoBot`) VALUES
(101, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbcatedra`
--

CREATE TABLE `tbcatedra` (
  `idCatedra` int(10) NOT NULL,
  `Nombrecatedra` varchar(100) NOT NULL,
  `SiglasClase` varchar(5) NOT NULL,
  `Seccion` varchar(3) NOT NULL,
  `IdMaestro` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbcatedra`
--

INSERT INTO `tbcatedra` (`idCatedra`, `Nombrecatedra`, `SiglasClase`, `Seccion`, `IdMaestro`) VALUES
(101, 'Desarrollo Web', 'DW', 'A', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbmaestros`
--

CREATE TABLE `tbmaestros` (
  `IdMaestro` int(10) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `UsuarioBot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbmaestros`
--

INSERT INTO `tbmaestros` (`IdMaestro`, `Apellidos`, `Nombres`, `UsuarioBot`) VALUES
(400, 'Coto', 'Audi', 'cotoaudi@miumg.edu.gt'),
(401, 'Salguero', 'Ronal', 'rsalgueroh@miumg.edu.gt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbseccion`
--

CREATE TABLE `tbseccion` (
  `idSeccion` int(10) NOT NULL,
  `Seccion` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbseccion`
--

INSERT INTO `tbseccion` (`idSeccion`, `Seccion`) VALUES
(1, 'A'),
(2, 'B');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabbotmaestro`
--
ALTER TABLE `tabbotmaestro`
  ADD PRIMARY KEY (`idBotMaestro`),
  ADD UNIQUE KEY `UsuarioMaestro` (`UsuarioMaestro`);

--
-- Indices de la tabla `tbalumnos`
--
ALTER TABLE `tbalumnos`
  ADD PRIMARY KEY (`IdAlumnos`),
  ADD KEY `FkBot` (`Estado`),
  ADD KEY `fkClases` (`Catedra`);

--
-- Indices de la tabla `tbbot`
--
ALTER TABLE `tbbot`
  ADD PRIMARY KEY (`IdUserBot`),
  ADD UNIQUE KEY `EstadoBot` (`EstadoBot`);

--
-- Indices de la tabla `tbcatedra`
--
ALTER TABLE `tbcatedra`
  ADD PRIMARY KEY (`idCatedra`),
  ADD UNIQUE KEY `Nombrecatedra` (`Nombrecatedra`),
  ADD KEY `fkSeccion` (`Seccion`),
  ADD KEY `fkMaestro` (`IdMaestro`);

--
-- Indices de la tabla `tbmaestros`
--
ALTER TABLE `tbmaestros`
  ADD PRIMARY KEY (`IdMaestro`),
  ADD KEY `Fkusuariobot` (`UsuarioBot`);

--
-- Indices de la tabla `tbseccion`
--
ALTER TABLE `tbseccion`
  ADD PRIMARY KEY (`idSeccion`),
  ADD UNIQUE KEY `Seccion` (`Seccion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbalumnos`
--
ALTER TABLE `tbalumnos`
  ADD CONSTRAINT `FkBot` FOREIGN KEY (`Estado`) REFERENCES `tbbot` (`EstadoBot`),
  ADD CONSTRAINT `fkClases` FOREIGN KEY (`Catedra`) REFERENCES `tbcatedra` (`Nombrecatedra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbcatedra`
--
ALTER TABLE `tbcatedra`
  ADD CONSTRAINT `fkMaestro` FOREIGN KEY (`IdMaestro`) REFERENCES `tbmaestros` (`IdMaestro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkSeccion` FOREIGN KEY (`Seccion`) REFERENCES `tbseccion` (`Seccion`);

--
-- Filtros para la tabla `tbmaestros`
--
ALTER TABLE `tbmaestros`
  ADD CONSTRAINT `Fkusuariobot` FOREIGN KEY (`UsuarioBot`) REFERENCES `tabbotmaestro` (`UsuarioMaestro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
