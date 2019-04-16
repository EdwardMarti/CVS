-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2019 a las 05:36:37
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `talento_humano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_empresa`
--

CREATE TABLE `area_empresa` (
  `idarea_emp` int(11) NOT NULL,
  `nom_area` varchar(100) NOT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area_empresa`
--

INSERT INTO `area_empresa` (`idarea_emp`, `nom_area`, `empresa_idempresa`, `estado`) VALUES
(2, 'OPERACION555', 1, 0),
(3, 'PRODUCCION', 2, 1),
(4, 'ADMINISTRATIVO', 2, 1),
(5, 'OPERACIONES2', 1, 0),
(6, 'ADMINITRADOresa', 1, 0),
(7, 'asdasdsadsad', 1, 1),
(8, 'ADMINITRADOres', 1, 1),
(9, 'ADMINITRADOresSDFSD', 1, 1),
(10, 'ASDASDASDASDASDASD', 1, 1),
(11, 'ASDASDASDASDASDASD', 1, 1),
(12, 'ASDASDASDASDASDASD', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `idbanco` int(11) NOT NULL,
  `banco_nombre` varchar(45) NOT NULL,
  `numero_cuenta` varchar(45) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`idbanco`, `banco_nombre`, `numero_cuenta`, `persona_id`) VALUES
(2, '1', '36985784752', 7),
(5, '1', '36985784752', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `area_empresa_idarea_emp` int(11) NOT NULL,
  `cargo_empreso_idcargo` int(11) NOT NULL,
  `puesto_idpuesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `fecha_ingreso`, `empresa_idempresa`, `area_empresa_idarea_emp`, `cargo_empreso_idcargo`, `puesto_idpuesto`) VALUES
(6, '0000-00-00 00:00:00', 2, 4, 21, NULL),
(9, '0000-00-00 00:00:00', 2, 4, 21, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_empreso`
--

CREATE TABLE `cargo_empreso` (
  `idcargo` int(11) NOT NULL,
  `nom_cargo` varchar(100) NOT NULL,
  `area_empresa_idarea_emp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargo_empreso`
--

INSERT INTO `cargo_empreso` (`idcargo`, `nom_cargo`, `area_empresa_idarea_emp`) VALUES
(14, 'SUPERVISOR', 5),
(15, 'GUARDA', 5),
(16, 'ESCOLTA', 5),
(17, 'MENSAJERO', 5),
(18, 'AUXILIAR CONTABLE', 2),
(19, 'CONTADOR', 2),
(20, 'AUXILIAR CONTABLE', 4),
(21, 'CONTADOR', 4),
(22, 'TALENTO HUMANO', 2),
(23, 'TALENTO HUMANO', 4),
(24, 'COMPRAS', 2),
(25, 'COMPRAS', 4),
(26, 'COMERCIAL', 2),
(28, 'SUPERVISOR', 2),
(29, 'SUPERVISOR', 2),
(30, 'diego', 5),
(31, 'ponchis', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carnet_supervigilancia`
--

CREATE TABLE `carnet_supervigilancia` (
  `idcarne` int(11) NOT NULL,
  `carnet_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carnet_supervigilancia`
--

INSERT INTO `carnet_supervigilancia` (`idcarne`, `carnet_nombre`) VALUES
(1, 'carnet de la patria'),
(2, 'seguro'),
(3, 'strokes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celular`
--

CREATE TABLE `celular` (
  `id` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `celular`
--

INSERT INTO `celular` (`id`, `numero`) VALUES
(1, '311445458'),
(2, '632552');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cooperativismo`
--

CREATE TABLE `cooperativismo` (
  `idcooperativismo` int(10) UNSIGNED NOT NULL,
  `coop_nombre` varchar(10) DEFAULT NULL,
  `coop_fecha` date DEFAULT NULL,
  `coop_nit` varchar(45) DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cooperativismo`
--

INSERT INTO `cooperativismo` (`idcooperativismo`, `coop_nombre`, `coop_fecha`, `coop_nit`, `persona_id`) VALUES
(1, 'jlkjijslkd', '2019-02-13', '326598858', 7),
(2, 'jlkjijslkd', '2019-02-13', '326598858', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `barrio` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id`, `direccion`, `barrio`, `persona_id`) VALUES
(2, 'mz5 lt 40 urb panamericana', 0, 7),
(5, 'mz5 lt 40 urb panamericana', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `nombre_empresa` varchar(45) NOT NULL,
  `nit_empresa` varchar(45) NOT NULL,
  `direccion_empresa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombre_empresa`, `nit_empresa`, `direccion_empresa`) VALUES
(1, 'CVS', '11', 'cc'),
(2, 'TIGERS', '113', 'cc'),
(3, 'asdsa', 'sadsadd', 'asdasdsad'),
(4, 'cootranscucuta', 'cootranscucuta', 'av 3 25 65 brr san mateoasd'),
(5, 'asda', 'dasd', 'asd'),
(6, 'Sasa', 'SasA', 'SasAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `nivel_academico` int(11) NOT NULL,
  `nivel_vigilancia` int(11) NOT NULL,
  `fecha_curso` date NOT NULL,
  `nit_escuela` int(45) NOT NULL,
  `id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`nivel_academico`, `nivel_vigilancia`, `fecha_curso`, `nit_escuela`, `id`, `persona_id`) VALUES
(1, 4, '2019-03-01', 0, 2, 7),
(1, 4, '0000-00-00', 0, 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar`
--

CREATE TABLE `familiar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `parentesco` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `familiar`
--

INSERT INTO `familiar` (`id`, `nombre`, `apellido`, `parentesco`, `persona_id`) VALUES
(1, 'fresa', 'ders', 4, 7),
(2, 'uilo', 'dsfsd', 5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar_has_celular`
--

CREATE TABLE `familiar_has_celular` (
  `familiar_id` int(11) NOT NULL,
  `celular_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `familiar_has_celular`
--

INSERT INTO `familiar_has_celular` (`familiar_id`, `celular_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas_particulares`
--

CREATE TABLE `fechas_particulares` (
  `estudio_seguridad` date NOT NULL,
  `examen_medico` date NOT NULL,
  `prueba_psicotecnica` date NOT NULL,
  `id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fechas_particulares`
--

INSERT INTO `fechas_particulares` (`estudio_seguridad`, `examen_medico`, `prueba_psicotecnica`, `id`, `persona_id`) VALUES
('2019-02-15', '2019-02-19', '2019-02-01', 2, 7),
('2019-02-15', '2019-02-19', '2019-02-01', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_vigilancia`
--

CREATE TABLE `nivel_vigilancia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel_vigilancia`
--

INSERT INTO `nivel_vigilancia` (`id`, `nombre`) VALUES
(4, 'junior'),
(5, 'MEDIANO'),
(6, 'ALTISIMO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `cedula` varchar(15) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `cedula_lugar_expedicion` int(11) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `lugar_nacimiento` int(11) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `grupo_sanguineo` int(11) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `nivel_vigilancia_id` int(11) DEFAULT NULL,
  `tipo_vigilancia_id` int(11) DEFAULT NULL,
  `libreta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `cedula`, `nacionalidad`, `cedula_lugar_expedicion`, `nombres`, `apellidos`, `fechaNacimiento`, `lugar_nacimiento`, `sexo`, `grupo_sanguineo`, `estado_civil`, `correo`, `estado`, `cargo_id`, `nivel_vigilancia_id`, `tipo_vigilancia_id`, `libreta`) VALUES
(7, '32435', 1, 0, 'ewfew', 'fwefwe', '0000-00-00', 0, 1, 5, 1, 'wefewf@df.com', 1, 6, 6, 3, 11),
(10, '19875222', 1, 0, 'ewfew', 'fwefwe', '0000-00-00', 0, 1, 1, 1, 'wefewf@df.com', 1, 9, 6, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_has_celular`
--

CREATE TABLE `persona_has_celular` (
  `persona_id` int(11) NOT NULL,
  `celular_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona_has_celular`
--

INSERT INTO `persona_has_celular` (`persona_id`, `celular_id`) VALUES
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idpuesto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roll`
--

CREATE TABLE `roll` (
  `idroll` int(11) NOT NULL,
  `roll_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roll`
--

INSERT INTO `roll` (`idroll`, `roll_nombre`) VALUES
(1, 'administrador'),
(2, 'invitado'),
(3, 'vip');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud_pension`
--

CREATE TABLE `salud_pension` (
  `id` int(11) NOT NULL,
  `salud` int(11) NOT NULL,
  `pension` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salud_pension`
--

INSERT INTO `salud_pension` (`id`, `salud`, `pension`, `persona_id`) VALUES
(1, 1, 1, 7),
(2, 1, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vigilancia`
--

CREATE TABLE `tipo_vigilancia` (
  `id` int(11) NOT NULL,
  `tipo_vigilancia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_vigilancia`
--

INSERT INTO `tipo_vigilancia` (`id`, `tipo_vigilancia`) VALUES
(1, 'costeño'),
(2, 'promocion'),
(3, 'SENA');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_view` (
`id` int(11)
,`cedula` varchar(15)
,`nacionalidad` int(11)
,`cedula_lugar_expedicion` int(11)
,`nombres` varchar(100)
,`apellidos` varchar(100)
,`fechaNacimiento` date
,`lugar_nacimiento` int(11)
,`sexo` int(11)
,`grupo_sanguineo` int(11)
,`estado_civil` int(11)
,`correo` varchar(100)
,`cargo_id` int(11)
,`nivel_vigilancia_id` int(11)
,`tipo_vigilancia_id` int(11)
,`libreta` int(11)
,`direccion` text
,`barrio` int(11)
,`estudio_seguridad` date
,`examen_medico` date
,`prueba_psicotecnica` date
,`nivel_academico` int(11)
,`nivel_vigilancia` int(11)
,`fecha_curso` date
,`nit_escuela` int(45)
,`salud` int(11)
,`pension` int(11)
,`banco_nombre` varchar(45)
,`numero_cuenta` varchar(45)
,`coop_nombre` varchar(10)
,`coop_fecha` date
,`coop_nit` varchar(45)
,`cnsc` varchar(45)
,`fecha_acre_super` date
,`acta_consejo` varchar(100)
,`fecha_aceptacion` date
,`psicofisico` varchar(50)
,`fecha_examen_psicofisico` varchar(45)
,`carnet_supervigilancia_idcarne` int(11)
,`persona_id` int(11)
,`id_cargo` int(11)
,`fecha_ingreso` datetime
,`empresa_idempresa` int(11)
,`area_empresa_idarea_emp` int(11)
,`cargo_empreso_idcargo` int(11)
,`puesto_idpuesto` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `usuario_nombre` varchar(250) DEFAULT NULL,
  `usuario_correo` varchar(250) DEFAULT NULL,
  `usuario_pass` varchar(400) DEFAULT NULL,
  `cargo_empreso_idcargo` int(11) DEFAULT NULL,
  `user_activation_code` varchar(400) DEFAULT NULL,
  `user_email_status` enum('NO VERIFICADO','VERIFICADO') DEFAULT NULL,
  `roll_idroll` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `cedula`, `usuario_nombre`, `usuario_correo`, `usuario_pass`, `cargo_empreso_idcargo`, `user_activation_code`, `user_email_status`, `roll_idroll`, `estado`) VALUES
(1, '', 'Edward Martinez', 'edward22069@gmail.com', '123456', 18, 'e22897af5a1aff076216e790e07692fb', 'NO VERIFICADO', 1, 1),
(2, '88255', 'Edward Martinez', 'edward22069@gmail.com', '', 19, 'd20f11ac00fe480dde5b02bc77575fdd', 'NO VERIFICADO', 1, 1),
(3, '', 'Edward Martinez', 'edward22069@gmail.com', 'c8db0979bd866d9bb822ce3ae7c7da33', 18, 'e6fc0d8b66834a6e8a87ef7a211eb45a', 'NO VERIFICADO', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varios_empresa`
--

CREATE TABLE `varios_empresa` (
  `idvarios_empresa` int(11) NOT NULL,
  `cnsc` varchar(45) DEFAULT NULL,
  `fecha_acre_super` date DEFAULT NULL,
  `acta_consejo` varchar(100) DEFAULT NULL,
  `fecha_aceptacion` date DEFAULT NULL,
  `psicofisico` varchar(50) DEFAULT NULL,
  `fecha_examen_psicofisico` varchar(45) DEFAULT NULL,
  `carnet_supervigilancia_idcarne` int(11) DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `varios_empresa`
--

INSERT INTO `varios_empresa` (`idvarios_empresa`, `cnsc`, `fecha_acre_super`, `acta_consejo`, `fecha_aceptacion`, `psicofisico`, `fecha_examen_psicofisico`, `carnet_supervigilancia_idcarne`, `persona_id`) VALUES
(1, '02125', '2019-02-13', '454', '2019-03-01', '4545', '2019-02-20', 1, 7),
(2, '02125', '2019-02-13', '454', '0000-00-00', '4545', '2019-02-20', 1, 10);

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_view`
--
DROP TABLE IF EXISTS `todo_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_view`  AS  select `per`.`id` AS `id`,`per`.`cedula` AS `cedula`,`per`.`nacionalidad` AS `nacionalidad`,`per`.`cedula_lugar_expedicion` AS `cedula_lugar_expedicion`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`fechaNacimiento` AS `fechaNacimiento`,`per`.`lugar_nacimiento` AS `lugar_nacimiento`,`per`.`sexo` AS `sexo`,`per`.`grupo_sanguineo` AS `grupo_sanguineo`,`per`.`estado_civil` AS `estado_civil`,`per`.`correo` AS `correo`,`per`.`cargo_id` AS `cargo_id`,`per`.`nivel_vigilancia_id` AS `nivel_vigilancia_id`,`per`.`tipo_vigilancia_id` AS `tipo_vigilancia_id`,`per`.`libreta` AS `libreta`,`dom`.`direccion` AS `direccion`,`dom`.`barrio` AS `barrio`,`fe_p`.`estudio_seguridad` AS `estudio_seguridad`,`fe_p`.`examen_medico` AS `examen_medico`,`fe_p`.`prueba_psicotecnica` AS `prueba_psicotecnica`,`est`.`nivel_academico` AS `nivel_academico`,`est`.`nivel_vigilancia` AS `nivel_vigilancia`,`est`.`fecha_curso` AS `fecha_curso`,`est`.`nit_escuela` AS `nit_escuela`,`pens`.`salud` AS `salud`,`pens`.`pension` AS `pension`,`ban`.`banco_nombre` AS `banco_nombre`,`ban`.`numero_cuenta` AS `numero_cuenta`,`cop`.`coop_nombre` AS `coop_nombre`,`cop`.`coop_fecha` AS `coop_fecha`,`cop`.`coop_nit` AS `coop_nit`,`var`.`cnsc` AS `cnsc`,`var`.`fecha_acre_super` AS `fecha_acre_super`,`var`.`acta_consejo` AS `acta_consejo`,`var`.`fecha_aceptacion` AS `fecha_aceptacion`,`var`.`psicofisico` AS `psicofisico`,`var`.`fecha_examen_psicofisico` AS `fecha_examen_psicofisico`,`var`.`carnet_supervigilancia_idcarne` AS `carnet_supervigilancia_idcarne`,`var`.`persona_id` AS `persona_id`,`carg`.`id` AS `id_cargo`,`carg`.`fecha_ingreso` AS `fecha_ingreso`,`carg`.`empresa_idempresa` AS `empresa_idempresa`,`carg`.`area_empresa_idarea_emp` AS `area_empresa_idarea_emp`,`carg`.`cargo_empreso_idcargo` AS `cargo_empreso_idcargo`,`carg`.`puesto_idpuesto` AS `puesto_idpuesto` from ((((((((`persona` `per` join `domicilio` `dom` on((`dom`.`persona_id` = `per`.`id`))) join `fechas_particulares` `fe_p` on((`fe_p`.`persona_id` = `per`.`id`))) join `estudio` `est` on((`est`.`persona_id` = `per`.`id`))) join `salud_pension` `pens` on((`pens`.`persona_id` = `per`.`id`))) join `banco` `ban` on((`ban`.`persona_id` = `per`.`id`))) join `cooperativismo` `cop` on((`cop`.`persona_id` = `per`.`id`))) join `varios_empresa` `var` on((`var`.`persona_id` = `per`.`id`))) join `cargo` `carg` on((`carg`.`id` = `per`.`cargo_id`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_empresa`
--
ALTER TABLE `area_empresa`
  ADD PRIMARY KEY (`idarea_emp`),
  ADD KEY `fk_area_empresa_empresa1_idx` (`empresa_idempresa`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`idbanco`),
  ADD KEY `fk_banco_persona_idx` (`persona_id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cargo_empresa1_idx` (`empresa_idempresa`),
  ADD KEY `fk_cargo_area_empresa1_idx` (`area_empresa_idarea_emp`),
  ADD KEY `fk_cargo_cargo_empreso1_idx` (`cargo_empreso_idcargo`),
  ADD KEY `fk_cargo_puesto1_idx` (`puesto_idpuesto`);

--
-- Indices de la tabla `cargo_empreso`
--
ALTER TABLE `cargo_empreso`
  ADD PRIMARY KEY (`idcargo`),
  ADD KEY `fk_cargo_empreso_area_empresa1_idx` (`area_empresa_idarea_emp`);

--
-- Indices de la tabla `carnet_supervigilancia`
--
ALTER TABLE `carnet_supervigilancia`
  ADD PRIMARY KEY (`idcarne`);

--
-- Indices de la tabla `celular`
--
ALTER TABLE `celular`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cooperativismo`
--
ALTER TABLE `cooperativismo`
  ADD PRIMARY KEY (`idcooperativismo`),
  ADD KEY `fk_cooperativismo_persona_idx` (`persona_id`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_domicilio_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudio_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_familiar_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `familiar_has_celular`
--
ALTER TABLE `familiar_has_celular`
  ADD PRIMARY KEY (`familiar_id`,`celular_id`),
  ADD KEY `fk_familiar_has_celular_celular1_idx` (`celular_id`),
  ADD KEY `fk_familiar_has_celular_familiar1_idx` (`familiar_id`);

--
-- Indices de la tabla `fechas_particulares`
--
ALTER TABLE `fechas_particulares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fechas_particulares_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `nivel_vigilancia`
--
ALTER TABLE `nivel_vigilancia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_persona_cargo1_idx` (`cargo_id`),
  ADD KEY `fk_persona_nivel_vigilancia1_idx` (`nivel_vigilancia_id`),
  ADD KEY `fk_persona_tipo_vigilancia1_idx` (`tipo_vigilancia_id`);

--
-- Indices de la tabla `persona_has_celular`
--
ALTER TABLE `persona_has_celular`
  ADD PRIMARY KEY (`persona_id`,`celular_id`),
  ADD KEY `fk_persona_has_celular_celular1_idx` (`celular_id`),
  ADD KEY `fk_persona_has_celular_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idpuesto`);

--
-- Indices de la tabla `roll`
--
ALTER TABLE `roll`
  ADD PRIMARY KEY (`idroll`);

--
-- Indices de la tabla `salud_pension`
--
ALTER TABLE `salud_pension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_salud_pension_persona1_idx` (`persona_id`);

--
-- Indices de la tabla `tipo_vigilancia`
--
ALTER TABLE `tipo_vigilancia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_usuario_roll1_idx` (`roll_idroll`),
  ADD KEY `fk_usuario_cargo_empreso1_idx` (`cargo_empreso_idcargo`);

--
-- Indices de la tabla `varios_empresa`
--
ALTER TABLE `varios_empresa`
  ADD PRIMARY KEY (`idvarios_empresa`),
  ADD KEY `fk_varios_empresa_carnet_supervigilancia1_idx` (`carnet_supervigilancia_idcarne`),
  ADD KEY `fk_varios_empresa_persona1_idx` (`persona_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_empresa`
--
ALTER TABLE `area_empresa`
  MODIFY `idarea_emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `idbanco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cargo_empreso`
--
ALTER TABLE `cargo_empreso`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `carnet_supervigilancia`
--
ALTER TABLE `carnet_supervigilancia`
  MODIFY `idcarne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `celular`
--
ALTER TABLE `celular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cooperativismo`
--
ALTER TABLE `cooperativismo`
  MODIFY `idcooperativismo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `familiar`
--
ALTER TABLE `familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fechas_particulares`
--
ALTER TABLE `fechas_particulares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `nivel_vigilancia`
--
ALTER TABLE `nivel_vigilancia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idpuesto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roll`
--
ALTER TABLE `roll`
  MODIFY `idroll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `salud_pension`
--
ALTER TABLE `salud_pension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_vigilancia`
--
ALTER TABLE `tipo_vigilancia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `varios_empresa`
--
ALTER TABLE `varios_empresa`
  MODIFY `idvarios_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area_empresa`
--
ALTER TABLE `area_empresa`
  ADD CONSTRAINT `fk_area_empresa_empresa1` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `banco`
--
ALTER TABLE `banco`
  ADD CONSTRAINT `fk_banco_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD CONSTRAINT `fk_cargo_area_empresa1` FOREIGN KEY (`area_empresa_idarea_emp`) REFERENCES `area_empresa` (`idarea_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cargo_cargo_empreso1` FOREIGN KEY (`cargo_empreso_idcargo`) REFERENCES `cargo_empreso` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cargo_empresa1` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cargo_puesto1` FOREIGN KEY (`puesto_idpuesto`) REFERENCES `puesto` (`idpuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cargo_empreso`
--
ALTER TABLE `cargo_empreso`
  ADD CONSTRAINT `fk_cargo_empreso_area_empresa1` FOREIGN KEY (`area_empresa_idarea_emp`) REFERENCES `area_empresa` (`idarea_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cooperativismo`
--
ALTER TABLE `cooperativismo`
  ADD CONSTRAINT `fk_cooperativismo_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `fk_domicilio_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD CONSTRAINT `fk_estudio_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD CONSTRAINT `fk_familiar_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `familiar_has_celular`
--
ALTER TABLE `familiar_has_celular`
  ADD CONSTRAINT `fk_familiar_has_celular_celular1` FOREIGN KEY (`celular_id`) REFERENCES `celular` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_familiar_has_celular_familiar1` FOREIGN KEY (`familiar_id`) REFERENCES `familiar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fechas_particulares`
--
ALTER TABLE `fechas_particulares`
  ADD CONSTRAINT `fk_fechas_particulares_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_cargo1` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persona_nivel_vigilancia1` FOREIGN KEY (`nivel_vigilancia_id`) REFERENCES `nivel_vigilancia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persona_tipo_vigilancia1` FOREIGN KEY (`tipo_vigilancia_id`) REFERENCES `tipo_vigilancia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona_has_celular`
--
ALTER TABLE `persona_has_celular`
  ADD CONSTRAINT `fk_persona_has_celular_celular1` FOREIGN KEY (`celular_id`) REFERENCES `celular` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persona_has_celular_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `salud_pension`
--
ALTER TABLE `salud_pension`
  ADD CONSTRAINT `fk_salud_pension_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_cargo_empreso1` FOREIGN KEY (`cargo_empreso_idcargo`) REFERENCES `cargo_empreso` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_roll1` FOREIGN KEY (`roll_idroll`) REFERENCES `roll` (`idroll`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `varios_empresa`
--
ALTER TABLE `varios_empresa`
  ADD CONSTRAINT `fk_varios_empresa_carnet_supervigilancia1` FOREIGN KEY (`carnet_supervigilancia_idcarne`) REFERENCES `carnet_supervigilancia` (`idcarne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_varios_empresa_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
