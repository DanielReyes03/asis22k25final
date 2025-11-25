-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2025 a las 16:54:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hoteleria_examen_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_activosfijos`
--

CREATE TABLE `tbl_activosfijos` (
  `Pk_Activo_ID` int(11) NOT NULL,
  `Cmp_Nombre_Activo` varchar(100) NOT NULL,
  `Cmp_Descripcion` varchar(200) DEFAULT NULL,
  `Cmp_Grupo_Activo` varchar(50) NOT NULL DEFAULT 'Otros',
  `Cmp_Fecha_Adquisicion` date NOT NULL,
  `Cmp_Costo_Adquisicion` decimal(15,2) NOT NULL,
  `Cmp_Valor_Residual` decimal(15,2) NOT NULL,
  `Cmp_Vida_Util` int(11) NOT NULL,
  `Cmp_Estado` bit(1) NOT NULL DEFAULT b'1',
  `Cmp_CtaActivo` varchar(20) DEFAULT NULL,
  `Cmp_CtaDepreciacion` varchar(20) DEFAULT NULL,
  `Cmp_CtaGastoDepreciacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_almacen`
--

CREATE TABLE `tbl_almacen` (
  `Cmp_Id_Almacen` int(11) NOT NULL,
  `Cmp_Nombre_Almacen` varchar(100) DEFAULT NULL,
  `Cmp_Ubicacion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_anticipos`
--

CREATE TABLE `tbl_anticipos` (
  `Cmp_iId_Anticipo` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_deMonto_Anticipo` decimal(10,2) DEFAULT NULL,
  `Cmp_dFecha_Anticipo` datetime DEFAULT NULL,
  `Cmp_sMotivo_Anticipo` varchar(255) DEFAULT NULL,
  `Cmp_deSaldoPendiente_Anticipo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aplicacion`
--

CREATE TABLE `tbl_aplicacion` (
  `Pk_Id_Aplicacion` int(11) NOT NULL,
  `Fk_Id_Reporte_Aplicacion` int(11) DEFAULT NULL,
  `Cmp_Nombre_Aplicacion` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Aplicacion` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Aplicacion` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_aplicacion`
--

INSERT INTO `tbl_aplicacion` (`Pk_Id_Aplicacion`, `Fk_Id_Reporte_Aplicacion`, `Cmp_Nombre_Aplicacion`, `Cmp_Descripcion_Aplicacion`, `Cmp_Estado_Aplicacion`) VALUES
(1, NULL, 'Registros', 'Registro de acciones en el sistema', b'1'),
(301, NULL, 'Empleados', 'Control de empleados de la hoteleria', b'1'),
(302, NULL, 'Usuarios', 'Control de usuarios de empleados', b'1'),
(303, NULL, 'Perfiles', 'Perfiles que se asignan a usuarios', b'1'),
(304, NULL, 'Modulos', 'Mantenimiento de modulos', b'1'),
(305, NULL, 'Aplicacion', 'Mantenimiento de aplicaciones', b'1'),
(306, NULL, 'Asig Aplicacion Usuario', 'Asigna permisos a usuarios', b'1'),
(307, NULL, 'Asig aplicacion Perfil', 'Asigna permisos a perfiles', b'1'),
(308, NULL, 'Asig Perfiles', 'Asigna los perfiles a usuarios', b'1'),
(309, NULL, 'Bitacora', 'Da acceso a bitacora', b'1'),
(401, NULL, 'Puestos', 'Puestos', b'1'),
(402, NULL, 'Departamentos', 'Departamentos', b'1'),
(403, NULL, 'Conceptos de nomina', 'Conceptos de nomina', b'1'),
(404, NULL, 'Empleados Nominas', 'Empleados Nominas', b'1'),
(405, NULL, 'Asistencia', 'Asistencia', b'1'),
(406, NULL, 'Vacaciones', 'Vacaciones', b'1'),
(407, NULL, 'Horas Extra', 'Horas Extra', b'1'),
(408, NULL, 'Anticipos', 'Anticipos', b'1'),
(409, NULL, 'Ingreso de percepciones', 'Ingreso de percepciones', b'1'),
(410, NULL, 'Ingreso de deducciones', 'Ingreso de deducciones', b'1'),
(411, NULL, 'Ingreso de polizas', 'Ingreso de polizas', b'1'),
(412, NULL, 'Generación de nominas', 'Generación de nominas', b'1'),
(413, NULL, 'Reporteria', 'Reporteria', b'1'),
(1401, NULL, 'Mantenimientos', 'Mantenimientos', b'1'),
(1402, NULL, 'Movimiento Bancario', 'Movimiento Bancario', b'1'),
(1403, NULL, 'Conciliación Bancaria', 'Conciliación Bancaria', b'1'),
(1404, NULL, 'Polizas/Enlace Contabilidad', 'Polizas/Enlace Contabilidad', b'1'),
(1405, NULL, 'Cierre bancario', 'Cierre bancario', b'1'),
(1406, NULL, 'Disponibilidad diaria y tipo de cambio', 'Disponibilidad diaria y tipo de cambio', b'1'),
(1407, NULL, 'Proceso de autorización de órdenes de compra', 'Proceso de autorización de órdenes de compra', b'1'),
(1408, NULL, 'Proceso de generación de cheques para plantilla', 'Proceso de generación de cheques para plantilla', b'1'),
(1409, NULL, 'Reportes Bancarios', 'Reportes Bancarios', b'1'),
(2401, NULL, 'Polizas Locales', 'Polizas locales', b'1'),
(2402, NULL, 'actualizar saldos', 'actualizar saldos', b'1'),
(2403, NULL, 'cierre mes', 'cierre mes', b'1'),
(2404, NULL, 'cierre año', 'cierre año', b'1'),
(2405, NULL, 'Presupuesto', 'Presupuesto', b'1'),
(2406, NULL, 'Activos Fijos', 'Activos Fijos', b'1'),
(2407, NULL, 'Cierre contable', 'Cierre contable', b'1'),
(2408, NULL, 'Estado de resultados', 'Estado de resultados', b'1'),
(2409, NULL, 'Balance de saldos', 'Balance de saldos', b'1'),
(2410, NULL, 'Balance general', 'Balance general', b'1'),
(2411, NULL, 'Flujo de efectivo', 'Flujo de efectivo', b'1'),
(2412, NULL, 'estado de financieros', 'estado de financieros', b'1'),
(2413, NULL, 'Catalogos de cuenta', 'Catalogos de cuenta', b'1'),
(2414, NULL, 'Gestion Fianciero', 'Gestion Fianciero', b'1'),
(2415, NULL, 'Procesos', 'Procesos', b'1'),
(3401, NULL, 'Huespedes', 'Huespedes', b'1'),
(3402, NULL, 'Check In', 'Check In', b'1'),
(3403, NULL, 'Check Out', 'Check Out', b'1'),
(3404, NULL, 'Area', 'Area', b'1'),
(3405, NULL, 'Detalle Folio', 'Detalle Folio', b'1'),
(3406, NULL, 'Tipo Habitaciones', 'Tipo Habitaciones', b'1'),
(3407, NULL, 'Habitaciones', 'Habitaciones', b'1'),
(3408, NULL, 'Servicios Habitacionales', 'Servicios Habitacionales', b'1'),
(3409, NULL, 'Estadia', 'Estadia', b'1'),
(3410, NULL, 'Asignacion Servicios Cuartos', 'Asignacion Servicios Cuartos', b'1'),
(3411, NULL, 'Tipo de Habitacion', 'Tipo de Habitacion', b'1'),
(3412, NULL, 'Promociones', 'Promociones', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_area`
--

CREATE TABLE `tbl_area` (
  `Pk_Id_Area` int(11) NOT NULL,
  `Fk_Id_Folio` int(11) DEFAULT NULL,
  `Cmp_Nombre_Area` varchar(100) DEFAULT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Tipo_Movimiento` enum('Cargo','Abono') DEFAULT NULL,
  `Cmp_Monto` decimal(10,2) DEFAULT NULL,
  `Cmp_Fecha_Movimiento` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacion_habitacion_servicio`
--

CREATE TABLE `tbl_asignacion_habitacion_servicio` (
  `Fk_ID_Habitacion` int(11) NOT NULL,
  `Fk_Id_Servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacion_modulo_aplicacion`
--

CREATE TABLE `tbl_asignacion_modulo_aplicacion` (
  `Fk_Id_Modulo` int(11) NOT NULL,
  `Fk_Id_Aplicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_asignacion_modulo_aplicacion`
--

INSERT INTO `tbl_asignacion_modulo_aplicacion` (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) VALUES
(4, 301),
(4, 302),
(4, 303),
(4, 304),
(4, 305),
(4, 306),
(4, 307),
(4, 308),
(4, 309),
(5, 401),
(5, 402),
(5, 403),
(5, 404),
(5, 405),
(5, 406),
(5, 407),
(5, 408),
(5, 409),
(5, 410),
(5, 411),
(5, 412),
(5, 413),
(6, 1401),
(6, 1402),
(6, 1403),
(6, 1404),
(6, 1405),
(6, 1406),
(6, 1407),
(6, 1408),
(6, 1409),
(7, 2401),
(7, 2402),
(7, 2403),
(7, 2404),
(7, 2405),
(7, 2406),
(7, 2407),
(7, 2408),
(7, 2409),
(7, 2410),
(7, 2411),
(7, 2412),
(7, 2413),
(7, 2414),
(7, 2415),
(8, 3401),
(8, 3402),
(8, 3403),
(8, 3404),
(8, 3405),
(8, 3406),
(8, 3407),
(8, 3408),
(8, 3409),
(8, 3410),
(8, 3411),
(8, 3412);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignar_perfil_cliente`
--

CREATE TABLE `tbl_asignar_perfil_cliente` (
  `Fk_Id_Perfil` int(11) NOT NULL,
  `Fk_Id_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asistencias`
--

CREATE TABLE `tbl_asistencias` (
  `Cmp_iId_Asistencia` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_dFecha_Asistencia` datetime DEFAULT NULL,
  `Cmp_tHoraEntrada_Asistencia` time DEFAULT NULL,
  `Cmp_tHoraSalida_Asistencia` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ausenciaspermisos`
--

CREATE TABLE `tbl_ausenciaspermisos` (
  `Cmp_iId_AusenciaPermiso` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_dFecha_AusenciaPermiso` datetime DEFAULT NULL,
  `Cmp_sTipo_AusenciaPermiso` varchar(50) DEFAULT NULL,
  `Cmp_bJustificada_AusenciaPermiso` bit(1) DEFAULT NULL,
  `Cmp_sMotivo_AusenciaPermiso` varchar(255) DEFAULT NULL,
  `Cmp_sObservacion_AusenciaPermiso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bancos`
--

CREATE TABLE `tbl_bancos` (
  `Pk_Id_Banco` int(11) NOT NULL,
  `Cmp_CodigoBanco` varchar(10) NOT NULL,
  `Cmp_NombreBanco` varchar(100) NOT NULL,
  `Cmp_Direccion` varchar(255) DEFAULT NULL,
  `Cmp_Telefono` varchar(20) DEFAULT NULL,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_bancos`
--

INSERT INTO `tbl_bancos` (`Pk_Id_Banco`, `Cmp_CodigoBanco`, `Cmp_NombreBanco`, `Cmp_Direccion`, `Cmp_Telefono`, `Cmp_Estado`) VALUES
(1, 'B01', 'Banco Industrial', NULL, NULL, 1),
(2, 'B02', 'Banco G&T Continental', NULL, NULL, 1),
(3, 'B03', 'Banco Reformador', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE `tbl_bitacora` (
  `Pk_Id_Bitacora` int(11) NOT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Fk_Id_Aplicacion` int(11) DEFAULT NULL,
  `Cmp_Fecha` datetime DEFAULT NULL,
  `Cmp_Accion` varchar(255) DEFAULT NULL,
  `Cmp_Ip` varchar(50) DEFAULT NULL,
  `Cmp_Nombre_Pc` varchar(50) DEFAULT NULL,
  `Cmp_Login_Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_bitacora`
--

INSERT INTO `tbl_bitacora` (`Pk_Id_Bitacora`, `Fk_Id_Usuario`, `Fk_Id_Aplicacion`, `Cmp_Fecha`, `Cmp_Accion`, `Cmp_Ip`, `Cmp_Nombre_Pc`, `Cmp_Login_Estado`) VALUES
(1, 23, NULL, '2025-11-12 18:52:37', 'Ingreso', '192.168.137.1', 'COMPU_CESAR', b'1'),
(2, 23, 1, '2025-11-12 18:56:57', 'Guardó el módulo: Contabilidad', '192.168.137.1', 'COMPU_CESAR', b'1'),
(3, 23, 1, '2025-11-12 18:57:24', 'Guardó el módulo: Nominas', '192.168.137.1', 'COMPU_CESAR', b'1'),
(4, 23, 1, '2025-11-12 18:57:44', 'Guardó el módulo: Bancos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(5, 23, 1, '2025-11-12 18:58:29', 'Guardó el módulo: Hoteleria', '192.168.137.1', 'COMPU_CESAR', b'1'),
(6, 23, 1, '2025-11-12 18:59:02', 'Guardó el módulo: Comercial', '192.168.137.1', 'COMPU_CESAR', b'1'),
(7, 23, 1, '2025-11-12 19:09:05', 'Guardó aplicación: Polizas Locales', '192.168.137.1', 'COMPU_CESAR', b'1'),
(8, 23, 1, '2025-11-12 19:12:20', 'Guardó aplicación: actualizar saldos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(9, 23, 1, '2025-11-12 19:12:43', 'Guardó aplicación: cierre mes', '192.168.137.1', 'COMPU_CESAR', b'1'),
(10, 23, 1, '2025-11-12 19:13:03', 'Guardó aplicación: cierre año', '192.168.137.1', 'COMPU_CESAR', b'1'),
(11, 23, 1, '2025-11-12 19:13:56', 'Guardó aplicación: Presupuesto', '192.168.137.1', 'COMPU_CESAR', b'1'),
(12, 23, 1, '2025-11-12 19:14:23', 'Guardó aplicación: Activos Fijos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(13, 23, 1, '2025-11-12 19:14:54', 'Guardó aplicación: Cierre contable', '192.168.137.1', 'COMPU_CESAR', b'1'),
(14, 23, 1, '2025-11-12 19:15:15', 'Guardó aplicación: Estado de resultados', '192.168.137.1', 'COMPU_CESAR', b'1'),
(15, 23, 1, '2025-11-12 19:15:37', 'Guardó aplicación: Balance de saldos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(16, 23, 1, '2025-11-12 19:16:01', 'Guardó aplicación: Balance general', '192.168.137.1', 'COMPU_CESAR', b'1'),
(17, 23, 1, '2025-11-12 19:16:59', 'Guardó aplicación: Flujo de efectivo', '192.168.137.1', 'COMPU_CESAR', b'1'),
(18, 23, 1, '2025-11-12 19:17:35', 'Guardó aplicación: estado de financieros', '192.168.137.1', 'COMPU_CESAR', b'1'),
(19, 23, 1, '2025-11-12 19:18:01', 'Guardó aplicación: Catalogos de cuenta', '192.168.137.1', 'COMPU_CESAR', b'1'),
(20, 23, 1, '2025-11-12 19:18:32', 'Guardó aplicación: Gestion Fianciero', '192.168.137.1', 'COMPU_CESAR', b'1'),
(21, 23, 1, '2025-11-12 19:20:15', 'Guardó aplicación: Procesos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(22, 23, 1, '2025-11-12 19:21:39', 'Guardó aplicación: Huespedes', '192.168.137.1', 'COMPU_CESAR', b'1'),
(23, 23, 1, '2025-11-12 19:22:04', 'Guardó aplicación: Check In', '192.168.137.1', 'COMPU_CESAR', b'1'),
(24, 23, 1, '2025-11-12 19:22:30', 'Guardó aplicación: Check Out', '192.168.137.1', 'COMPU_CESAR', b'1'),
(25, 23, 1, '2025-11-12 19:22:48', 'Guardó aplicación: Area', '192.168.137.1', 'COMPU_CESAR', b'1'),
(26, 23, 1, '2025-11-12 19:23:20', 'Guardó aplicación: Detalle Folio', '192.168.137.1', 'COMPU_CESAR', b'1'),
(27, 23, 1, '2025-11-12 19:34:22', 'Guardó aplicación: Tipo Habitaciones', '192.168.137.1', 'COMPU_CESAR', b'1'),
(28, 23, 1, '2025-11-12 19:34:46', 'Guardó aplicación: Habitaciones ', '192.168.137.1', 'COMPU_CESAR', b'1'),
(29, 23, 1, '2025-11-12 19:35:07', 'Guardó aplicación: Servicios Habitacionales', '192.168.137.1', 'COMPU_CESAR', b'1'),
(30, 23, 1, '2025-11-12 19:35:24', 'Guardó aplicación: Estadia', '192.168.137.1', 'COMPU_CESAR', b'1'),
(31, 23, 1, '2025-11-12 19:38:38', 'Guardó aplicación: Tipo de Habitacion', '192.168.137.1', 'COMPU_CESAR', b'1'),
(32, 23, 1, '2025-11-12 19:38:57', 'Guardó aplicación: Promociones', '192.168.137.1', 'COMPU_CESAR', b'1'),
(33, 23, 1, '2025-11-12 19:41:44', 'Guardó aplicación: Asignacion Servicios Cuartos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(34, 23, 1, '2025-11-12 19:42:13', 'Guardó aplicación: Mantenimientos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(35, 23, 1, '2025-11-12 19:42:28', 'Guardó aplicación: Movimiento Bancario', '192.168.137.1', 'COMPU_CESAR', b'1'),
(36, 23, 1, '2025-11-12 19:42:48', 'Guardó aplicación: Conciliación Bancaria', '192.168.137.1', 'COMPU_CESAR', b'1'),
(37, 23, 1, '2025-11-12 19:43:15', 'Guardó aplicación: Polizas/Enlace Contabilidad', '192.168.137.1', 'COMPU_CESAR', b'1'),
(38, 23, 1, '2025-11-12 19:43:31', 'Guardó aplicación: Cierre bancario', '192.168.137.1', 'COMPU_CESAR', b'1'),
(39, 23, 1, '2025-11-12 19:44:55', 'Guardó aplicación: Disponibilidad diaria y tipo de cambio', '192.168.137.1', 'COMPU_CESAR', b'1'),
(40, 23, 1, '2025-11-12 19:45:15', 'Guardó aplicación: Proceso de autorización de órdenes de compra', '192.168.137.1', 'COMPU_CESAR', b'1'),
(41, 23, 1, '2025-11-12 19:45:41', 'Guardó aplicación: Proceso de generación de cheques para plantilla', '192.168.137.1', 'COMPU_CESAR', b'1'),
(42, 23, 1, '2025-11-12 19:46:57', 'Guardó aplicación: Puestos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(43, 23, 1, '2025-11-12 19:47:10', 'Guardó aplicación: Departamentos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(44, 23, 1, '2025-11-12 19:47:31', 'Guardó aplicación: Conceptos de nomina', '192.168.137.1', 'COMPU_CESAR', b'1'),
(45, 23, 1, '2025-11-12 19:48:44', 'Guardó aplicación: Reportes Bancarios', '192.168.137.1', 'COMPU_CESAR', b'1'),
(46, 23, 1, '2025-11-12 19:50:24', 'Guardó aplicación: Empleados Nominas', '192.168.137.1', 'COMPU_CESAR', b'1'),
(47, 23, 1, '2025-11-12 19:51:33', 'Guardó aplicación: Asistencia', '192.168.137.1', 'COMPU_CESAR', b'1'),
(48, 23, 1, '2025-11-12 19:51:47', 'Guardó aplicación: Vacaciones', '192.168.137.1', 'COMPU_CESAR', b'1'),
(49, 23, 1, '2025-11-12 19:52:05', 'Guardó aplicación: Horas Extra', '192.168.137.1', 'COMPU_CESAR', b'1'),
(50, 23, 1, '2025-11-12 19:52:53', 'Guardó aplicación: Anticipos', '192.168.137.1', 'COMPU_CESAR', b'1'),
(51, 23, 1, '2025-11-12 19:53:09', 'Guardó aplicación: Ingreso de percepciones', '192.168.137.1', 'COMPU_CESAR', b'1'),
(52, 23, 1, '2025-11-12 19:53:26', 'Guardó aplicación:  Ingreso de deducciones', '192.168.137.1', 'COMPU_CESAR', b'1'),
(53, 23, 1, '2025-11-12 19:53:42', 'Guardó aplicación: Ingreso de polizas', '192.168.137.1', 'COMPU_CESAR', b'1'),
(54, 23, 1, '2025-11-12 19:53:56', 'Guardó aplicación: Generación de nominas', '192.168.137.1', 'COMPU_CESAR', b'1'),
(55, 23, 1, '2025-11-12 19:54:14', 'Guardó aplicación: Reporteria', '192.168.137.1', 'COMPU_CESAR', b'1'),
(56, 23, 1401, '2025-11-12 19:58:21', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Mantenimientos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(57, 23, 1402, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Movimiento Bancario\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(58, 23, 1403, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Conciliación Bancaria\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(59, 23, 1404, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Polizas/Enlace Contabilidad\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(60, 23, 1405, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Cierre bancario\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(61, 23, 1406, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Disponibilidad diaria y tipo de cambio\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(62, 23, 1407, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Proceso de autorización de órdenes de compra\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(63, 23, 1408, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Proceso de generación de cheques para plantilla\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(64, 23, 1409, '2025-11-12 19:58:22', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Reportes Bancarios\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(65, 23, 2401, '2025-11-12 20:02:30', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Polizas Locales\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(66, 23, 2402, '2025-11-12 20:02:30', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'actualizar saldos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(67, 23, 2403, '2025-11-12 20:02:30', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'cierre mes\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(68, 23, 2404, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'cierre año\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(69, 23, 2405, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Presupuesto\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(70, 23, 2406, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Activos Fijos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(71, 23, 2407, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Cierre contable\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(72, 23, 2408, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Estado de resultados\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(73, 23, 2409, '2025-11-12 20:02:31', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Balance de saldos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(74, 23, 2410, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Balance general\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(75, 23, 2411, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Flujo de efectivo\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(76, 23, 2412, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'estado de financieros\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(77, 23, 2413, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Catalogos de cuenta\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(78, 23, 2414, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Gestion Fianciero\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(79, 23, 2415, '2025-11-12 20:02:32', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Procesos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(80, 23, 401, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Puestos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(81, 23, 402, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Departamentos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(82, 23, 403, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Conceptos de nomina\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(83, 23, 404, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Empleados Nominas\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(84, 23, 405, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Asistencia\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(85, 23, 406, '2025-11-12 20:09:50', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Vacaciones\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(86, 23, 407, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Horas Extra\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(87, 23, 408, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Anticipos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(88, 23, 409, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Ingreso de percepciones\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(89, 23, 410, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Ingreso de deducciones\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(90, 23, 411, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Ingreso de polizas\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(91, 23, 412, '2025-11-12 20:09:51', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Generación de nominas\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(92, 23, 413, '2025-11-12 20:09:52', 'Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Reporteria\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.137.1', 'COMPU_CESAR', b'1'),
(93, 23, NULL, '2025-11-12 20:10:02', 'Cierre de sesión', '192.168.137.1', 'COMPU_CESAR', b'0'),
(94, 23, NULL, '2025-11-12 20:10:04', 'Cierre de sesión', '192.168.137.1', 'COMPU_CESAR', b'0'),
(95, 23, NULL, '2025-11-24 23:18:59', 'Ingreso', '192.168.1.23', 'DESKTOP-SMGJLAQ', b'1'),
(96, 23, NULL, '2025-11-24 23:31:29', 'Ingreso', '192.168.1.23', 'DESKTOP-SMGJLAQ', b'1'),
(97, 23, NULL, '2025-11-24 23:33:01', 'Cierre de sesión', '192.168.1.23', 'DESKTOP-SMGJLAQ', b'0'),
(98, 23, NULL, '2025-11-25 08:30:45', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(99, 23, NULL, '2025-11-25 09:20:49', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(100, 23, 401, '2025-11-25 09:21:27', 'Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 1', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(101, 23, NULL, '2025-11-25 09:25:50', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(102, 23, NULL, '2025-11-25 09:27:37', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(103, 23, NULL, '2025-11-25 09:30:12', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(104, 23, 1, '2025-11-25 09:31:21', 'Guardó empleado/a: Fredy', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(105, 23, 1, '2025-11-25 09:31:40', 'Insertó un nuevo usuario: usuariofinal', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(106, 23, 401, '2025-11-25 09:32:02', 'Al usuario \'\'usuariofinal\'\' se le asignaron permisos en la aplicación \'\'Puestos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(107, 23, 1, '2025-11-25 09:32:39', 'Se asignó el perfil \'Administrador\' al usuario \'usuariofinal\'', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(108, 63, NULL, '2025-11-25 09:32:59', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(109, 23, NULL, '2025-11-25 09:33:12', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(110, 23, 305, '2025-11-25 09:35:03', 'Al usuario \'\'usuariofinal\'\' se le asignaron permisos en la aplicación \'\'Aplicacion\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(111, 23, 309, '2025-11-25 09:35:03', 'Al usuario \'\'usuariofinal\'\' se le asignaron permisos en la aplicación \'\'Bitacora\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(112, 23, 403, '2025-11-25 09:35:03', 'Al usuario \'\'usuariofinal\'\' se le asignaron permisos en la aplicación \'\'Conceptos de nomina\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(113, 63, NULL, '2025-11-25 09:35:57', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(114, 63, NULL, '2025-11-25 09:37:53', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(115, 63, 401, '2025-11-25 09:38:21', 'Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 2', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(116, 63, NULL, '2025-11-25 09:42:36', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(117, 63, 401, '2025-11-25 09:43:13', 'Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 3', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(118, 63, 401, '2025-11-25 09:43:34', 'Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 4', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(119, 63, 401, '2025-11-25 09:43:56', 'Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 5', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(120, 63, 401, '2025-11-25 09:44:27', 'Actualizo un registro en la tabla \'tbl_paciente\' Con la llave \'1\' ', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(121, 63, 401, '2025-11-25 09:44:45', 'Eliminó un registro en la tabla \'tbl_paciente\' Con la llave \'5\' ', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1'),
(122, 23, NULL, '2025-11-25 09:45:10', 'Ingreso', '192.168.142.164', 'DESKTOP-SMGJLAQ', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bloqueo_usuario`
--

CREATE TABLE `tbl_bloqueo_usuario` (
  `Pk_Id_Bloqueo` int(11) NOT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Fk_Id_Bitacora` int(11) DEFAULT NULL,
  `Cmp_Fecha_Inicio_Bloqueo_Usuario` datetime DEFAULT NULL,
  `Cmp_Fecha_Fin_Bloqueo_Usuario` datetime DEFAULT NULL,
  `Cmp_Motivo__Bloqueo_Usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_buffet`
--

CREATE TABLE `tbl_buffet` (
  `Pk_Id_Buffet` int(11) NOT NULL,
  `Cmp_Tipo_Buffet` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Incluido_En_Reserva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caja_egreso`
--

CREATE TABLE `tbl_caja_egreso` (
  `Cmp_Id_Caja_Egreso` int(11) NOT NULL,
  `Cmp_Id_Pago_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Fecha_Egreso` date DEFAULT NULL,
  `Cmp_Monto_Egreso` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caja_ingreso`
--

CREATE TABLE `tbl_caja_ingreso` (
  `Cmp_Id_Caja_Ingreso` int(11) NOT NULL,
  `Cmp_Id_Recibo` int(11) DEFAULT NULL,
  `Cmp_Fecha_Ingreso` date DEFAULT NULL,
  `Cmp_Monto_Ingreso` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_catalogo_cuentas`
--

CREATE TABLE `tbl_catalogo_cuentas` (
  `Pk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_CtaNombre` varchar(100) NOT NULL,
  `Cmp_CtaMadre` varchar(20) DEFAULT NULL,
  `Cmp_CtaSaldoInicial` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaCargoMes` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaAbonoMes` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaSaldoActual` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaCargoActual` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaAbonoActual` decimal(15,2) DEFAULT 0.00,
  `Cmp_CtaTipo` bit(1) NOT NULL,
  `Cmp_CtaNaturaleza` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_catalogo_cuentas`
--

INSERT INTO `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`, `Cmp_CtaNombre`, `Cmp_CtaMadre`, `Cmp_CtaSaldoInicial`, `Cmp_CtaCargoMes`, `Cmp_CtaAbonoMes`, `Cmp_CtaSaldoActual`, `Cmp_CtaCargoActual`, `Cmp_CtaAbonoActual`, `Cmp_CtaTipo`, `Cmp_CtaNaturaleza`) VALUES
('1', 'ACTIVO', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.1', 'Activo disponible', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.1.1', 'Caja general', '1.1', 0.00, 0.00, 0.00, 600.00, 0.00, 0.00, b'1', b'1'),
('1.1.2', 'Caja chica', '1.1', 0.00, 0.00, 0.00, 400.00, 0.00, 0.00, b'1', b'1'),
('1.2', 'Bancos', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.2.1', 'Banco G&T', '1.2', 0.00, 0.00, 0.00, 700.00, 0.00, 0.00, b'1', b'1'),
('1.2.2', 'Banco BI', '1.2', 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, b'1', b'1'),
('1.3', 'Cuentas por cobrar', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.3.1', 'Clientes nacionales', '1.3', 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, b'1', b'1'),
('1.3.2', 'Clientes extranjeros', '1.3', 0.00, 0.00, 0.00, 800.00, 0.00, 0.00, b'1', b'1'),
('1.4', 'Inventarios', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.4.1', 'Mercadería', '1.4', 0.00, 0.00, 0.00, 3000.00, 0.00, 0.00, b'1', b'1'),
('1.4.2', 'Materia prima', '1.4', 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, b'1', b'1'),
('1.5', 'Activos fijos', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('1.5.1', 'Mobiliario y equipo', '1.5', 0.00, 0.00, 0.00, 4000.00, 0.00, 0.00, b'1', b'1'),
('1.5.2', 'Equipo de cómputo', '1.5', 0.00, 0.00, 0.00, 2500.00, 0.00, 0.00, b'1', b'1'),
('1.5.3', 'Vehículos', '1.5', 0.00, 0.00, 0.00, 3500.00, 0.00, 0.00, b'1', b'1'),
('1.6', 'Depreciaciones acumuladas', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('1.6.1', 'Dep. acumulada mobiliario y equipo', '1.6', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('1.6.2', 'Dep. acumulada equipo de cómputo', '1.6', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('1.6.3', 'Dep. acumulada vehículos', '1.6', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('1110', 'BANCOS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'1'),
('1111', 'BANCO INDUSTRIAL', '1110', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'1'),
('1112', 'BANCO G&T', '1110', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'1'),
('2', 'PASIVO', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('2.1', 'Cuentas por pagar', '2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('2.1.1', 'Proveedores locales', '2.1', 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, b'1', b'0'),
('2.1.2', 'Proveedores extranjeros', '2.1', 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, b'1', b'0'),
('2.2', 'Obligaciones bancarias', '2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('2.2.1', 'Préstamo Banco G&T', '2.2', 0.00, 0.00, 0.00, 2000.00, 0.00, 0.00, b'1', b'0'),
('2.2.2', 'Préstamo Banco BI', '2.2', 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, b'1', b'0'),
('2.3', 'Impuestos por pagar', '2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('2.3.1', 'IVA por pagar', '2.3', 0.00, 0.00, 0.00, 800.00, 0.00, 0.00, b'1', b'0'),
('2.3.2', 'ISR por pagar', '2.3', 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, b'1', b'0'),
('2.3.3', 'Retenciones por pagar', '2.3', 0.00, 0.00, 0.00, 300.00, 0.00, 0.00, b'1', b'0'),
('2.3.4', 'IGSS por pagar', '2.3', 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, b'1', b'0'),
('2.4', 'Otras obligaciones', '2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('2.4.1', 'Acreedores varios', '2.4', 0.00, 0.00, 0.00, 400.00, 0.00, 0.00, b'1', b'0'),
('2110', 'SUELDOS POR PAGAR', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('3', 'CAPITAL', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('3.1', 'Capital social', '3', 0.00, 0.00, 0.00, 3000.00, 0.00, 0.00, b'1', b'0'),
('3.2', 'Utilidades retenidas', '3', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('3.2.1', 'Ejercicio anterior', '3.2', 0.00, 0.00, 0.00, 2000.00, 0.00, 0.00, b'1', b'0'),
('3.2.2', 'Ejercicio actual', '3.2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('4', 'INGRESOS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('4.1', 'Ventas', '4', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('4.1.1', 'Ventas nacionales', '4.1', 0.00, 0.00, 0.00, 25000.00, 0.00, 0.00, b'1', b'0'),
('4.1.2', 'Ventas exportación', '4.1', 0.00, 0.00, 0.00, 8000.00, 0.00, 0.00, b'1', b'0'),
('4.2', 'Otros ingresos', '4', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'0'),
('4.2.1', 'Descuentos obtenidos', '4.2', 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, b'1', b'0'),
('4.2.2', 'Intereses ganados', '4.2', 0.00, 0.00, 0.00, 300.00, 0.00, 0.00, b'1', b'0'),
('4.3', 'Devoluciones sobre compras', '4', 0.00, 0.00, 0.00, 200.00, 0.00, 0.00, b'1', b'0'),
('4110', 'INGRESOS POR VENTAS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'0'),
('5', 'COSTOS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('5.1', 'Costos operativos', '5', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('5.1.1', 'Costo de ventas', '5.1', 0.00, 0.00, 0.00, 18000.00, 0.00, 0.00, b'1', b'1'),
('5.1.2', 'Transporte de mercadería', '5.1', 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, b'1', b'1'),
('5.2', 'Costos de producción', '5', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('5.2.1', 'Materia prima consumida', '5.2', 0.00, 0.00, 0.00, 2800.00, 0.00, 0.00, b'1', b'1'),
('5.2.2', 'Mano de obra directa', '5.2', 0.00, 0.00, 0.00, 4000.00, 0.00, 0.00, b'1', b'1'),
('5110', 'GASTOS ADMINISTRATIVOS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'1'),
('6', 'GASTOS', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('6.1', 'Gastos operativos', '6', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('6.1.1', 'Sueldos administrativos', '6.1', 0.00, 0.00, 0.00, 3000.00, 0.00, 0.00, b'1', b'1'),
('6.1.2', 'Energía eléctrica', '6.1', 0.00, 0.00, 0.00, 900.00, 0.00, 0.00, b'1', b'1'),
('6.1.3', 'Papelería y útiles', '6.1', 0.00, 0.00, 0.00, 600.00, 0.00, 0.00, b'1', b'1'),
('6.1.4', 'Publicidad', '6.1', 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, b'1', b'1'),
('6.1.5', 'Gastos de depreciacion', '6.1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'1', b'1'),
('6.2', 'Gastos financieros', '6', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, b'0', b'1'),
('6.2.1', 'Intereses bancarios', '6.2', 0.00, 0.00, 0.00, 800.00, 0.00, 0.00, b'1', b'1'),
('6.3', 'Gasto por impuesto ISR', '6', 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, b'1', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria_producto`
--

CREATE TABLE `tbl_categoria_producto` (
  `Cmp_Id_Categoria_Producto` int(11) NOT NULL,
  `Cmp_Nombre_Categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_check_in`
--

CREATE TABLE `tbl_check_in` (
  `Pk_Id_Check_in` int(11) NOT NULL,
  `Fk_Id_Huesped` int(11) DEFAULT NULL,
  `Fk_Id_Reserva` int(11) DEFAULT NULL,
  `Cmp_Fecha_Check_In` date DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_check_out`
--

CREATE TABLE `tbl_check_out` (
  `Pk_Id_Check_out` int(11) NOT NULL,
  `Fk_Id_Check_In` int(11) DEFAULT NULL,
  `Cmp_Fecha_Check_Out` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cierrebancario`
--

CREATE TABLE `tbl_cierrebancario` (
  `Pk_Id_Cierre` int(11) NOT NULL,
  `Fk_Id_CuentaBancaria` int(11) NOT NULL,
  `Cmp_AnioCierre` int(11) NOT NULL,
  `Cmp_MesCierre` int(11) NOT NULL,
  `Cmp_SaldoInicial` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Cmp_SaldoFinal` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Cmp_SaldoConciliado` decimal(18,2) DEFAULT 0.00,
  `Cmp_Estado` varchar(20) DEFAULT 'PENDIENTE',
  `Cmp_FechaCierre` date DEFAULT NULL,
  `Cmp_Observaciones` varchar(500) DEFAULT NULL,
  `Cmp_UsuarioRegistro` varchar(50) DEFAULT NULL,
  `Cmp_FechaRegistro` datetime DEFAULT current_timestamp(),
  `Cmp_UsuarioModifico` varchar(50) DEFAULT NULL,
  `Cmp_FechaModificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cierre_diario`
--

CREATE TABLE `tbl_cierre_diario` (
  `Pk_Id_Cierre` int(11) NOT NULL,
  `Cmp_Fecha_Corte` datetime NOT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Total_Ingresos` decimal(12,2) DEFAULT 0.00,
  `Cmp_Total_Egresos` decimal(12,2) DEFAULT 0.00,
  `Cmp_Saldo_Final` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cierre_inventario`
--

CREATE TABLE `tbl_cierre_inventario` (
  `Cmp_Id_Cierre` int(11) NOT NULL,
  `Cmp_Fecha_Cierre` date DEFAULT NULL,
  `Cmp_Id_Almacen` int(11) DEFAULT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `Pk_Id_Cliente` int(11) NOT NULL,
  `Cmp_Nombres_Cliente` varchar(50) DEFAULT NULL,
  `Cmp_Apellidos_Cliente` varchar(50) DEFAULT NULL,
  `Cmp_Dni_Cliente` bigint(20) DEFAULT NULL,
  `Cmp_Fecha_Registro_Cliente` datetime DEFAULT NULL,
  `Cmp_Estado_Cliente` bit(1) DEFAULT NULL,
  `Cmp_Nacionalidad_Cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`Pk_Id_Cliente`, `Cmp_Nombres_Cliente`, `Cmp_Apellidos_Cliente`, `Cmp_Dni_Cliente`, `Cmp_Fecha_Registro_Cliente`, `Cmp_Estado_Cliente`, `Cmp_Nacionalidad_Cliente`) VALUES
(1, 'Cliente', 'Prueba', 9876543210101, '2025-09-21 23:00:51', b'1', 'Guatemalteco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conceptosnomina`
--

CREATE TABLE `tbl_conceptosnomina` (
  `Cmp_iId_ConceptoNomina` int(11) NOT NULL,
  `Cmp_sNombre_ConceptoNomina` varchar(50) NOT NULL,
  `Cmp_sDescripcion_ConceptoNomina` varchar(255) DEFAULT NULL,
  `Cmp_sTipo_ConceptoNomina` varchar(50) DEFAULT NULL,
  `Cmp_sTipoCalculo_ConceptoNomina` varchar(50) DEFAULT 'MULT',
  `Cmp_deValor_ConceptoNomina` decimal(10,4) DEFAULT NULL,
  `Cmp_bAplicaAutomatico_ConceptoNomina` bit(1) DEFAULT b'0',
  `Fk_Codigo_Cuenta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_conceptosnomina`
--

INSERT INTO `tbl_conceptosnomina` (`Cmp_iId_ConceptoNomina`, `Cmp_sNombre_ConceptoNomina`, `Cmp_sDescripcion_ConceptoNomina`, `Cmp_sTipo_ConceptoNomina`, `Cmp_sTipoCalculo_ConceptoNomina`, `Cmp_deValor_ConceptoNomina`, `Cmp_bAplicaAutomatico_ConceptoNomina`, `Fk_Codigo_Cuenta`) VALUES
(1, 'Bono Trimestral', 'Bono Trimestral', 'PERCEPCION', 'FIJO', 550.0000, b'0', '1'),
(2, 'Horas Extra', 'Monto de horas extra', 'PERCEPCION', 'MULTIPLICACION', 0.0000, b'1', '1.1.1'),
(3, 'Ausencias', 'Monto de ausencias', 'DEDUCCION', 'MULTIPLICACION', 0.0000, b'1', '1.3.2'),
(4, 'Anticipos', 'Monto de anticipos', 'DEDUCCION', 'FIJO', 0.0000, b'1', '1.3'),
(5, 'Vacaciones', 'Monto de vacaciones', 'PERCEPCION', 'MULTIPLICACION', 0.0000, b'1', '1.4'),
(6, 'Comisiones', 'Monto de comisiones', 'PERCEPCION', 'FIJO', 0.0000, b'0', '1.2.1'),
(7, 'Sueldo Base', 'Pago base mensual del empleado', 'PERCEPCION', 'FIJO', 0.0000, b'1', '1.2.1'),
(8, 'IGSS', 'Aporte laboral al IGSS', 'DEDUCCION', 'MULTIPLICACION', 0.0483, b'1', '1.5'),
(9, 'ISR', 'Retención de impuesto sobre la renta', 'DEDUCCION', 'MULTIPLICACION', 0.0500, b'1', '1.2.2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conciliacionbancaria`
--

CREATE TABLE `tbl_conciliacionbancaria` (
  `Pk_Id_Conciliacion` int(11) NOT NULL,
  `Cmp_AnioConciliacion` int(11) NOT NULL,
  `Cmp_MesConciliacion` int(11) NOT NULL,
  `Cmp_FechaConciliacion` date NOT NULL,
  `Fk_Id_CuentaBancaria` int(11) NOT NULL,
  `Cmp_SaldoBanco` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Cmp_SaldoSistema` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Cmp_Diferencia` decimal(18,2) GENERATED ALWAYS AS (`Cmp_SaldoBanco` - `Cmp_SaldoSistema`) STORED,
  `Cmp_Observaciones` varchar(500) DEFAULT NULL,
  `Cmp_EstadoConciliacion` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_condicion_pago`
--

CREATE TABLE `tbl_condicion_pago` (
  `Cmp_Id_Condicion_Pago` int(11) NOT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_correo_cliente`
--

CREATE TABLE `tbl_correo_cliente` (
  `Pk_Id_Correo` int(11) NOT NULL,
  `Fk_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Correo_Cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuentasbancarias`
--

CREATE TABLE `tbl_cuentasbancarias` (
  `Pk_Id_CuentaBancaria` int(11) NOT NULL,
  `Fk_Id_Banco` int(11) NOT NULL,
  `Cmp_NumeroCuenta` varchar(50) NOT NULL,
  `Cmp_TipoCuenta` varchar(50) DEFAULT NULL,
  `Cmp_Moneda` varchar(10) DEFAULT 'GTQ',
  `Cmp_SaldoDisponible` decimal(18,2) DEFAULT 0.00,
  `Cmp_SaldoContable` decimal(18,2) DEFAULT 0.00,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_cuentasbancarias`
--

INSERT INTO `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`, `Fk_Id_Banco`, `Cmp_NumeroCuenta`, `Cmp_TipoCuenta`, `Cmp_Moneda`, `Cmp_SaldoDisponible`, `Cmp_SaldoContable`, `Cmp_Estado`) VALUES
(1, 1, '123456789', 'CORRIENTE', 'GTQ', 50000.00, 50000.00, 1),
(2, 2, '987654321', 'AHORRO', 'GTQ', 25000.00, 25000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cxc_documento`
--

CREATE TABLE `tbl_cxc_documento` (
  `Cmp_Id_CxC_Documento` int(11) NOT NULL,
  `Cmp_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Tipo_Documento` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Emision` date DEFAULT NULL,
  `Cmp_Fecha_Vencimiento` date DEFAULT NULL,
  `Cmp_Total_Documento` decimal(14,2) DEFAULT NULL,
  `Cmp_Saldo_Pendiente` decimal(14,2) DEFAULT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cxp_documento`
--

CREATE TABLE `tbl_cxp_documento` (
  `Cmp_Id_CxP_Documento` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) NOT NULL,
  `Cmp_Serie` varchar(20) NOT NULL,
  `Cmp_Numero` varchar(30) NOT NULL,
  `Cmp_Tipo_Documento` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Emision` date NOT NULL,
  `Cmp_Fecha_Vencimiento` date NOT NULL,
  `Cmp_Total_Documento` decimal(14,2) NOT NULL,
  `Cmp_Saldo_Pendiente` decimal(14,2) NOT NULL,
  `Cmp_Estado` enum('Pendiente','Parcial','Pagado') NOT NULL DEFAULT 'Pendiente',
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario_Creacion` int(11) NOT NULL,
  `Cmp_Fecha_Creacion` datetime NOT NULL DEFAULT current_timestamp()
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamentos`
--

CREATE TABLE `tbl_departamentos` (
  `Cmp_iId_Departamento` int(11) NOT NULL,
  `Cmp_sNombre_Departamento` varchar(50) NOT NULL,
  `Cmp_sDescripcion_Departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_departamentos`
--

INSERT INTO `tbl_departamentos` (`Cmp_iId_Departamento`, `Cmp_sNombre_Departamento`, `Cmp_sDescripcion_Departamento`) VALUES
(1, 'Contabilidad', 'Departamento de contabilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_depreciacionactivos`
--

CREATE TABLE `tbl_depreciacionactivos` (
  `Pk_Depreciacion_ID` int(11) NOT NULL,
  `Fk_Activo_ID` int(11) NOT NULL,
  `Cmp_Anio` int(11) NOT NULL,
  `Cmp_Valor_En_Libros` decimal(15,2) NOT NULL,
  `Cmp_Depreciacion_Anual` decimal(15,2) NOT NULL,
  `Cmp_Depreciacion_Acumulada` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallelotecheques`
--

CREATE TABLE `tbl_detallelotecheques` (
  `Pk_Id_Detalle` int(11) NOT NULL,
  `Fk_Id_Lote` int(11) NOT NULL,
  `Cmp_NumeroCheque` varchar(50) NOT NULL,
  `Cmp_NombreEmpleado` varchar(100) NOT NULL,
  `Cmp_Monto` decimal(18,2) NOT NULL,
  `Cmp_Banco` int(11) DEFAULT NULL,
  `Cmp_Estado` tinyint(4) DEFAULT NULL,
  `Cmp_FechaRegistro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallepoliza`
--

CREATE TABLE `tbl_detallepoliza` (
  `PkFk_EncCodigo_Poliza` int(11) NOT NULL,
  `PkFk_Fecha_Poliza` date NOT NULL,
  `PkFk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Tipo_Poliza` tinyint(1) NOT NULL,
  `Cmp_Valor_Poliza` decimal(15,2) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallesnomina`
--

CREATE TABLE `tbl_detallesnomina` (
  `Cmp_iId_DetalleNomina` int(11) NOT NULL,
  `Cmp_iId_Nomina` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_iAusencias_DetalleNomina` int(11) DEFAULT NULL,
  `Cmp_iDiasLaborados_DetalleNomina` int(11) DEFAULT NULL,
  `Cmp_dePercepciones_DetalleNomina` decimal(10,2) DEFAULT NULL,
  `Cmp_deDeducciones_DetalleNomina` decimal(10,2) DEFAULT NULL,
  `Cmp_deSueldoLiquido_DetalleNomina` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_cierre_diario`
--

CREATE TABLE `tbl_detalle_cierre_diario` (
  `Pk_Id_Detalle` int(11) NOT NULL,
  `Fk_Id_Cierre` int(11) DEFAULT NULL,
  `Fk_Id_Folio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_cierre_salones`
--

CREATE TABLE `tbl_detalle_cierre_salones` (
  `Pk_Id_Detalle_Salon` int(11) NOT NULL,
  `Fk_Id_Cierre` int(11) DEFAULT NULL,
  `Fk_Id_Folio_Salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_folio`
--

CREATE TABLE `tbl_detalle_folio` (
  `Pk_Id_Detalle_Folio` int(11) NOT NULL,
  `Fk_Id_Folio` int(11) DEFAULT NULL,
  `Fk_Id_Area` int(11) DEFAULT NULL,
  `Cmp_Descripciones` varchar(150) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_ordenes_menu`
--

CREATE TABLE `tbl_detalle_ordenes_menu` (
  `Pk_Id_Detalle_Orden` int(11) NOT NULL,
  `Fk_Id_Orden_Produccion` int(11) DEFAULT NULL,
  `Fk_Id_Menu` int(11) DEFAULT NULL,
  `Cmp_Cantidad_Platillos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_ordenes_mobiliario`
--

CREATE TABLE `tbl_detalle_ordenes_mobiliario` (
  `Pk_Id_Detalle_Orden_Mobiliario` int(11) NOT NULL,
  `Fk_Id_Orden_Produccion` int(11) DEFAULT NULL,
  `Fk_Id_Mobiliario` int(11) DEFAULT NULL,
  `Cmp_Cantidad_Mobiliario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devolucion_proveedor`
--

CREATE TABLE `tbl_devolucion_proveedor` (
  `Cmp_Id_Devolucion_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Factura_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Tipo_Devolucion` enum('Devolucion Total','Devolucion Parcial') NOT NULL,
  `Cmp_Fecha_Devolucion` date NOT NULL,
  `Cmp_Motivo` varchar(255) DEFAULT NULL,
  `Cmp_Monto_Devuelto` decimal(14,2) NOT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devolucion_proveedor_det`
--

CREATE TABLE `tbl_devolucion_proveedor_det` (
  `Cmp_Id_Devolucion_Proveedor_Det` int(11) NOT NULL,
  `Cmp_Id_Devolucion_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Producto` int(11) NOT NULL,
  `Cmp_Cantidad_Devuelta` decimal(12,4) NOT NULL,
  `Cmp_Precio_Unitario` decimal(14,2) NOT NULL,
  `Cmp_Subtotal` decimal(14,2) GENERATED ALWAYS AS (`Cmp_Cantidad_Devuelta` * `Cmp_Precio_Unitario`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_disponibilidad_diaria`
--

CREATE TABLE `tbl_disponibilidad_diaria` (
  `Pk_Id_Disponibilidad` int(11) NOT NULL,
  `Fk_Id_CuentaBancaria` int(11) NOT NULL,
  `Cmp_Fecha_Disponibilidad` date NOT NULL,
  `Cmp_Saldo_Inicial_Disponibilidad` decimal(12,2) DEFAULT 0.00,
  `Cmp_Ingresos_Disponibilidad` decimal(12,2) DEFAULT 0.00,
  `Cmp_Egresos_Disponibilidad` decimal(12,2) DEFAULT 0.00,
  `Cmp_Saldo_Final_Disponibilidad` decimal(12,2) DEFAULT 0.00,
  `Cmp_Estado_Disponibilidad` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_documento_cmp_estado_hist`
--

CREATE TABLE `tbl_documento_cmp_estado_hist` (
  `Cmp_Id_Cmp_Estado_Hist` int(11) NOT NULL,
  `Cmp_Id_Documento` int(11) DEFAULT NULL,
  `Cmp_Estado` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Cambio` datetime DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE `tbl_empleado` (
  `Pk_Id_Empleado` int(11) NOT NULL,
  `Cmp_Nombres_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Apellidos_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Dpi_Empleado` bigint(20) DEFAULT NULL,
  `Cmp_Nit_Empleado` bigint(20) DEFAULT NULL,
  `Cmp_Correo_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Telefono_Empleado` varchar(15) DEFAULT NULL,
  `Cmp_Genero_Empleado` bit(1) DEFAULT NULL,
  `Cmp_Fecha_Nacimiento_Empleado` date DEFAULT NULL,
  `Cmp_Fecha_Contratacion__Empleado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`Pk_Id_Empleado`, `Cmp_Nombres_Empleado`, `Cmp_Apellidos_Empleado`, `Cmp_Dpi_Empleado`, `Cmp_Nit_Empleado`, `Cmp_Correo_Empleado`, `Cmp_Telefono_Empleado`, `Cmp_Genero_Empleado`, `Cmp_Fecha_Nacimiento_Empleado`, `Cmp_Fecha_Contratacion__Empleado`) VALUES
(2, 'Juan', 'Pérez López', 1234567890101, 9876542, 'juan.perez@example.com', '5555-1234', b'1', '1995-08-20', '2025-09-21'),
(3, 'Juan', 'pruebas', 1234, 123, '@pruebas', '1234', b'1', '2025-09-26', '2025-09-26'),
(7, 'Fredy', 'Reyes', 1234567890123, 123456789, 'fredy@miumg.edu.gt', '09321222', b'1', '2001-07-01', '2025-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_sNombre_Empleado` varchar(50) NOT NULL,
  `Cmp_sApellido_Empleado` varchar(50) NOT NULL,
  `Cmp_sDpi_Empleado` varchar(20) DEFAULT NULL,
  `Cmp_iNit_Empleado` int(11) DEFAULT NULL,
  `Cmp_sCorreo_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_sTelefono_Empleado` varchar(15) DEFAULT NULL,
  `Cmp_bGenero_Empleado` bit(1) DEFAULT NULL,
  `Cmp_dFechaNacimiento_Empleado` date DEFAULT NULL,
  `Cmp_dFechaIngreso_Empleado` datetime DEFAULT NULL,
  `Cmp_deSalario_Empleado` decimal(10,2) DEFAULT NULL,
  `Cmp_iId_Puesto` int(11) NOT NULL,
  `Cmp_bEstado_Empleado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`Cmp_iId_Empleado`, `Cmp_sNombre_Empleado`, `Cmp_sApellido_Empleado`, `Cmp_sDpi_Empleado`, `Cmp_iNit_Empleado`, `Cmp_sCorreo_Empleado`, `Cmp_sTelefono_Empleado`, `Cmp_bGenero_Empleado`, `Cmp_dFechaNacimiento_Empleado`, `Cmp_dFechaIngreso_Empleado`, `Cmp_deSalario_Empleado`, `Cmp_iId_Puesto`, `Cmp_bEstado_Empleado`) VALUES
(1, 'Fredy', 'Reyes', '1234567890123', 88732112, 'fredy@miumg.edu.gt', '98328822', b'1', '2003-11-11', '2025-10-23 22:12:28', 3500.00, 1, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado_autorizado`
--

CREATE TABLE `tbl_empleado_autorizado` (
  `Pk_Id_Empleado` int(11) NOT NULL,
  `Cmp_Nombre_Empleado` varchar(100) DEFAULT NULL,
  `Cmp_Puesto` varchar(100) DEFAULT NULL,
  `Cmp_Departamento` varchar(100) DEFAULT NULL,
  `Cmp_Correo` varchar(100) DEFAULT NULL,
  `Cmp_Estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_empleado_autorizado`
--

INSERT INTO `tbl_empleado_autorizado` (`Pk_Id_Empleado`, `Cmp_Nombre_Empleado`, `Cmp_Puesto`, `Cmp_Departamento`, `Cmp_Correo`, `Cmp_Estado`) VALUES
(1, 'María Morales', 'Encargada de Compras', 'Finanzas', 'mmorales@empresa.com', NULL),
(2, 'Kevin Natareno', 'Jefe de Compras', 'Comercial', 'knatareno@empresa.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_encabezadopoliza`
--

CREATE TABLE `tbl_encabezadopoliza` (
  `Pk_EncCodigo_Poliza` int(11) NOT NULL,
  `Pk_Fecha_Poliza` date NOT NULL,
  `Cmp_Concepto_Poliza` varchar(200) NOT NULL,
  `Cmp_Valor_Poliza` decimal(15,2) DEFAULT 0.00,
  `Cmp_Estado_Poliza` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estadia`
--

CREATE TABLE `tbl_estadia` (
  `Pk_Id_Estadia` int(11) NOT NULL,
  `Fk_Id_Habitaciones` int(11) DEFAULT NULL,
  `Fk_Id_Huesped_Checkin` int(11) DEFAULT NULL,
  `Cmp_Num_Huespedes` int(11) DEFAULT NULL,
  `Cmp_Fecha_Check_In` date DEFAULT NULL,
  `Cmp_Fecha_Check_Out` date DEFAULT NULL,
  `Cmp_Tiene_Reservacion` tinyint(1) DEFAULT NULL,
  `Cmp_Monto_Total_Pago` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_autorizacion`
--

CREATE TABLE `tbl_estado_autorizacion` (
  `Pk_Id_Estado_Autorizacion` int(11) NOT NULL,
  `Cmp_Nombre_Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_estado_autorizacion`
--

INSERT INTO `tbl_estado_autorizacion` (`Pk_Id_Estado_Autorizacion`, `Cmp_Nombre_Estado`) VALUES
(1, 'Pendiente'),
(2, 'Aprobada'),
(3, 'Rechazada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_existencia`
--

CREATE TABLE `tbl_existencia` (
  `Cmp_Id_Existencia` int(11) NOT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Id_Almacen` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_Cantidad_Minima` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `Cmp_Cantidad_Maxima` decimal(12,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_export_contable`
--

CREATE TABLE `tbl_export_contable` (
  `Cmp_Id_Export_Contable` int(11) NOT NULL,
  `Cmp_Nombre_Cmp_Modulo` varchar(50) DEFAULT NULL,
  `Cmp_Id_Documento` int(11) DEFAULT NULL,
  `Cmp_Estado_Exportacion` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Exportacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

CREATE TABLE `tbl_factura` (
  `Pk_Id_Factura` int(11) NOT NULL,
  `Fk_Id_Reserva` int(11) NOT NULL,
  `Cmp_Fecha_Emision` date DEFAULT NULL,
  `Cmp_Total_Factura` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_proveedor`
--

CREATE TABLE `tbl_factura_proveedor` (
  `Cmp_Id_Factura_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Fecha_Factura` date DEFAULT NULL,
  `Cmp_Numero_Factura` varchar(30) DEFAULT NULL,
  `Cmp_Total_Factura` decimal(14,2) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_proveedor_det`
--

CREATE TABLE `tbl_factura_proveedor_det` (
  `Cmp_Id_Factura_Proveedor_Det` int(11) NOT NULL,
  `Cmp_Id_Factura_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_Precio_Unitario` decimal(14,2) DEFAULT NULL,
  `Cmp_Total_Linea` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_folio`
--

CREATE TABLE `tbl_folio` (
  `Pk_Id_Folio` int(11) NOT NULL,
  `Fk_Id_Check_In` int(11) DEFAULT NULL,
  `Fk_Id_Check_Out` int(11) DEFAULT NULL,
  `Fk_Id_Habitacion` int(11) DEFAULT NULL,
  `Cmp_Fecha_Creacion` datetime DEFAULT current_timestamp(),
  `Cmp_Fecha_Cierre` datetime DEFAULT NULL,
  `Cmp_Total_Cargos` decimal(10,2) DEFAULT 0.00,
  `Cmp_Total_Abonos` decimal(10,2) DEFAULT 0.00,
  `Cmp_Saldo_Final` decimal(10,2) DEFAULT 0.00,
  `Cmp_Estado` varchar(50) DEFAULT 'Abierto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_folio_salones`
--

CREATE TABLE `tbl_folio_salones` (
  `Pk_Id_Folio_Salones` int(11) NOT NULL,
  `Fk_Id_Reserva_Salon` int(11) DEFAULT NULL,
  `Cmp_Fecha_Pago` datetime DEFAULT NULL,
  `Cmp_Pago_Total` decimal(10,2) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL,
  `Cmp_Metodo_Pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_habitaciones`
--

CREATE TABLE `tbl_habitaciones` (
  `PK_ID_Habitaciones` int(11) NOT NULL,
  `FK_ID_Tipo_Habitaciones` int(11) DEFAULT NULL,
  `Cmp_Piso_Habitacion` int(11) DEFAULT NULL,
  `Cmp_Descripcion_Habitacion` varchar(100) DEFAULT NULL,
  `Cmp_Tamaño_Habitacion_m2` varchar(75) DEFAULT NULL,
  `Cmp_Capacidad_Habitacion` int(11) DEFAULT NULL,
  `Cmp_Estado_Habitacion` tinyint(1) DEFAULT NULL,
  `Cmp_Tarifa_Noche` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_habitaciones`
--

INSERT INTO `tbl_habitaciones` (`PK_ID_Habitaciones`, `FK_ID_Tipo_Habitaciones`, `Cmp_Piso_Habitacion`, `Cmp_Descripcion_Habitacion`, `Cmp_Tamaño_Habitacion_m2`, `Cmp_Capacidad_Habitacion`, `Cmp_Estado_Habitacion`, `Cmp_Tarifa_Noche`) VALUES
(5, 3, 3, 'Habitación Familiar #301', '60', 4, 1, 1250),
(6, 3, 3, 'Habitación Familiar con balcón #302', '62', 5, 0, 1300),
(7, 4, 4, 'Habitación Presidencial #401', '80', 4, 0, 2000),
(8, 4, 4, 'Suite Panorámica con terraza #402', '75', 3, 1, 1800),
(9, 5, 5, 'Habitación Matrimonial Romántica #501', '35', 2, 0, 950),
(10, 5, 5, 'Habitación Doble Premium #502', '40', 3, 1, 1100),
(11, 1, 1, 'Habitación Económica #103', '20', 1, 0, 350),
(12, 1, 1, 'Habitación Económica Doble #104', '22', 2, 1, 400),
(13, 2, 2, 'Suite Junior con escritorio #203', '38', 2, 0, 800),
(14, 3, 3, 'Habitación Familiar Deluxe #303', '65', 6, 0, 1400),
(15, 4, 4, 'Suite Ejecutiva con vista al mar #403', '70', 3, 0, 1600),
(16, 5, 5, 'Habitación Familiar Premium #504', '68', 5, 1, 1500),
(17, 2, 2, 'Suite Ejecutiva Doble #204', '48', 3, 0, 1150),
(18, 3, 3, 'Habitación Familiar Estándar #305', '58', 4, 0, 1100),
(19, 1, 1, 'Habitación Sencilla #105', '28', 1, 1, 500),
(20, 4, 4, 'Suite Real con piscina privada #405', '95', 5, 0, 2500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historial_autorizacion`
--

CREATE TABLE `tbl_historial_autorizacion` (
  `Pk_Id_Historial` int(11) NOT NULL,
  `Fk_Id_Autorizacion` int(11) NOT NULL,
  `Cmp_Fecha_Cambio` datetime NOT NULL DEFAULT current_timestamp(),
  `Cmp_Accion` varchar(50) NOT NULL,
  `Cmp_Detalle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historico_catalogo_cuentas`
--

CREATE TABLE `tbl_historico_catalogo_cuentas` (
  `Cmp_Anio` int(11) NOT NULL,
  `Cmp_Mes` tinyint(4) NOT NULL,
  `Pk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_CtaNombre` varchar(100) NOT NULL,
  `Cmp_CtaMadre` varchar(20) DEFAULT NULL,
  `Cmp_CtaSaldoInicial` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaCargoMes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaAbonoMes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaSaldoActual` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaCargoActual` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaAbonoActual` decimal(15,2) NOT NULL DEFAULT 0.00,
  `Cmp_CtaTipo` bit(1) NOT NULL,
  `Cmp_CtaNaturaleza` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_horasextra`
--

CREATE TABLE `tbl_horasextra` (
  `Cmp_iId_HoraExtra` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_dFecha_HoraExtra` datetime DEFAULT NULL,
  `Cmp_iCantidad_HoraExtra` int(11) DEFAULT NULL,
  `Cmp_sMotivo_HoraExtra` varchar(255) DEFAULT NULL,
  `Cmp_bAprobado_HoraExtra` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_huesped`
--

CREATE TABLE `tbl_huesped` (
  `Pk_Id_Huesped` int(11) NOT NULL,
  `Cmp_Nombre` varchar(50) NOT NULL,
  `Cmp_Apellido` varchar(50) NOT NULL,
  `Cmp_Email` varchar(100) DEFAULT NULL,
  `Cmp_Telefono` varchar(15) DEFAULT NULL,
  `Cmp_Pais` varchar(50) DEFAULT NULL,
  `Cmp_Viaja_Por_Trabajo` tinyint(1) DEFAULT NULL,
  `Cmp_Nombre_Empresa` varchar(100) DEFAULT NULL,
  `Cmp_Numero_Documento` varchar(25) DEFAULT NULL,
  `Cmp_Tipo_Documento` enum('DPI','Pasaporte') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lotescheques`
--

CREATE TABLE `tbl_lotescheques` (
  `Pk_Id_Lote` int(11) NOT NULL,
  `Cmp_FechaCreacion` datetime NOT NULL DEFAULT current_timestamp(),
  `Cmp_UsuarioCrea` varchar(50) NOT NULL,
  `Cmp_TotalCheques` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Cmp_Estado` varchar(20) NOT NULL DEFAULT 'Pendiente',
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_FechaModificacion` datetime DEFAULT NULL,
  `Cmp_UsuarioModifico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mantenimiento`
--

CREATE TABLE `tbl_mantenimiento` (
  `Pk_Id_Mantenimiento` int(11) NOT NULL,
  `Fk_Id_Salon` int(11) DEFAULT NULL,
  `Fk_Id_Habitacion` int(11) DEFAULT NULL,
  `Fk_Id_Empleado` int(11) DEFAULT NULL,
  `Cmp_Tipo_Mantenimiento` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Mantenimiento` varchar(100) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Inicio_Mantenimiento` date DEFAULT NULL,
  `Cmp_Fecha_Fin_Mantenimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_materia_prima`
--

CREATE TABLE `tbl_materia_prima` (
  `Pk_Id_Materia_Prima` int(11) NOT NULL,
  `Cmp_Materia_Prima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `Pk_Id_Menu` int(11) NOT NULL,
  `Cmp_Nombre_Platillo` varchar(50) NOT NULL,
  `Cmp_Descripcion_Platillo` varchar(250) DEFAULT NULL,
  `Cmp_Precio` decimal(10,2) NOT NULL,
  `Fk_Id_Tipo_Menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_metodo_pago`
--

CREATE TABLE `tbl_metodo_pago` (
  `Cmp_Id_Metodo_Pago` int(11) NOT NULL,
  `Cmp_Nombre_Metodo_Pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mobiliario`
--

CREATE TABLE `tbl_mobiliario` (
  `Pk_Id_Mobiliario` int(11) NOT NULL,
  `Cmp_Mobiliario` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulo`
--

CREATE TABLE `tbl_modulo` (
  `Pk_Id_Modulo` int(11) NOT NULL,
  `Cmp_Nombre_Modulo` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Modulo` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Modulo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_modulo`
--

INSERT INTO `tbl_modulo` (`Pk_Id_Modulo`, `Cmp_Nombre_Modulo`, `Cmp_Descripcion_Modulo`, `Cmp_Estado_Modulo`) VALUES
(4, 'Seguridad', 'Modulo de seguridad de la hoteleria', b'1'),
(5, 'Nominas', 'Modulo de nominas', b'0'),
(6, 'Bancos', 'Modulo de bancos', b'0'),
(7, 'Contabilidad', 'Modulo de contabilidad', b'1'),
(8, 'Hoteleria', 'Modulo de Hoteleria', b'0'),
(9, 'Comercial', 'Modulo de Comercial', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_monedas`
--

CREATE TABLE `tbl_monedas` (
  `Pk_Id_Moneda` int(11) NOT NULL,
  `Cmp_CodigoMoneda` varchar(5) NOT NULL,
  `Cmp_NombreMoneda` varchar(50) NOT NULL,
  `Cmp_Simbolo` varchar(5) DEFAULT NULL,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_monedas`
--

INSERT INTO `tbl_monedas` (`Pk_Id_Moneda`, `Cmp_CodigoMoneda`, `Cmp_NombreMoneda`, `Cmp_Simbolo`, `Cmp_Estado`) VALUES
(1, 'GTQ', 'Quetzal', 'Q', 1),
(2, 'USD', 'Dólar Americano', '$', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimientobancariodetalle`
--

CREATE TABLE `tbl_movimientobancariodetalle` (
  `Fk_Id_Movimiento` int(11) NOT NULL,
  `Fk_Id_CuentaOrigen` int(11) NOT NULL,
  `Fk_Id_Operacion` int(11) NOT NULL,
  `Pk_Id_Detalle` int(11) NOT NULL,
  `Fk_Id_CuentaContable` varchar(20) NOT NULL,
  `Cmp_TipoOperacion` enum('D','C') NOT NULL,
  `Cmp_Valor` decimal(18,2) NOT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_OrdenDetalle` int(11) NOT NULL DEFAULT 1,
  `Cmp_UsuarioRegistro` varchar(50) DEFAULT NULL,
  `Cmp_FechaRegistro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimientobancarioencabezado`
--

CREATE TABLE `tbl_movimientobancarioencabezado` (
  `Pk_Id_Movimiento` int(11) NOT NULL,
  `Fk_Id_CuentaOrigen` int(11) NOT NULL,
  `Fk_Id_Operacion` int(11) NOT NULL,
  `Cmp_NumeroDocumento` varchar(50) NOT NULL,
  `Cmp_Fecha` date NOT NULL,
  `Cmp_Concepto` varchar(255) DEFAULT NULL,
  `Cmp_MontoTotal` decimal(18,2) NOT NULL,
  `Fk_Id_TipoPago` int(11) DEFAULT NULL,
  `Fk_Id_CuentaDestino` int(11) DEFAULT NULL,
  `Cmp_Beneficiario` varchar(255) DEFAULT NULL,
  `Cmp_Estado` varchar(20) DEFAULT 'ACTIVO',
  `Cmp_Conciliado` int(11) DEFAULT 0,
  `Cmp_UsuarioRegistro` varchar(50) DEFAULT NULL,
  `Cmp_FechaRegistro` datetime DEFAULT current_timestamp(),
  `Cmp_UsuarioModifico` varchar(50) DEFAULT NULL,
  `Cmp_FechaModificacion` datetime DEFAULT NULL,
  `Fk_Id_Moneda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimientosnomina`
--

CREATE TABLE `tbl_movimientosnomina` (
  `Cmp_iId_MovimientoNomina` int(11) NOT NULL,
  `Cmp_iId_Nomina` int(11) NOT NULL,
  `Cmp_iId_ConceptoNomina` int(11) NOT NULL,
  `Cmp_deMonto_MovimientoNomina` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_inv`
--

CREATE TABLE `tbl_mov_inv` (
  `Cmp_Id_Mov_Inv` int(11) NOT NULL,
  `Cmp_Fecha_Movimiento` date DEFAULT NULL,
  `Cmp_Id_Tipo_Movimiento_Inv` int(11) DEFAULT NULL,
  `Cmp_Referencia` varchar(50) DEFAULT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_inv_det`
--

CREATE TABLE `tbl_mov_inv_det` (
  `Cmp_Id_Mov_Inv_Det` int(11) NOT NULL,
  `Cmp_Id_Mov_Inv` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Id_Almacen` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nit_cliente`
--

CREATE TABLE `tbl_nit_cliente` (
  `Pk_Id_Nit` int(11) NOT NULL,
  `Fk_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Nit_Cliente` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_nit_cliente`
--

INSERT INTO `tbl_nit_cliente` (`Pk_Id_Nit`, `Fk_Id_Cliente`, `Cmp_Nit_Cliente`) VALUES
(1, 1, '0901-22-2929');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nomina`
--

CREATE TABLE `tbl_nomina` (
  `Cmp_iId_Nomina` int(11) NOT NULL,
  `Cmp_dPeriodoInicio_Nomina` datetime DEFAULT NULL,
  `Cmp_dPeriodoFin_Nomina` datetime DEFAULT NULL,
  `Cmp_dFechaGeneracion_Nomina` datetime DEFAULT NULL,
  `Cmp_sTipo_Nomina` varchar(50) DEFAULT NULL,
  `Cmp_sEstado_Nomina` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nota_credito_cliente`
--

CREATE TABLE `tbl_nota_credito_cliente` (
  `Cmp_Id_Nota_Credito_Cliente` int(11) NOT NULL,
  `Cmp_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Fecha_Nota` date DEFAULT NULL,
  `Cmp_Numero_Nota` varchar(30) DEFAULT NULL,
  `Cmp_Monto` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nota_credito_proveedor`
--

CREATE TABLE `tbl_nota_credito_proveedor` (
  `Cmp_Id_Nota_Credito_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Fecha_Nota` date DEFAULT NULL,
  `Cmp_Numero_Nota` varchar(30) DEFAULT NULL,
  `Cmp_Monto` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nota_debito_cliente`
--

CREATE TABLE `tbl_nota_debito_cliente` (
  `Cmp_Id_Nota_Debito_Cliente` int(11) NOT NULL,
  `Cmp_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Fecha_Nota` date DEFAULT NULL,
  `Cmp_Numero_Nota` varchar(30) DEFAULT NULL,
  `Cmp_Monto` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nota_debito_proveedor`
--

CREATE TABLE `tbl_nota_debito_proveedor` (
  `Cmp_Id_Nota_Debito_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Fecha_Nota` date DEFAULT NULL,
  `Cmp_Numero_Nota` varchar(30) DEFAULT NULL,
  `Cmp_Monto` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_numero_cliente`
--

CREATE TABLE `tbl_numero_cliente` (
  `Pk_Id_Numero` int(11) NOT NULL,
  `Fk_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Telefono_Cliente` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objetos_perdidos`
--

CREATE TABLE `tbl_objetos_perdidos` (
  `Pk_Id_Objeto` int(11) NOT NULL,
  `Fk_Id_Mantenimiento` int(11) DEFAULT NULL,
  `Fk_Id_Folio` int(11) DEFAULT NULL,
  `Fk_Id_Folio_Salon` int(11) DEFAULT NULL,
  `Fk_Id_Huesped` int(11) DEFAULT NULL,
  `Cmp_Nombre_Objeto` varchar(100) NOT NULL,
  `Cmp_Descripcion_Objeto` varchar(255) DEFAULT NULL,
  `Cmp_Tipo_Objeto` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Encontrado` date NOT NULL,
  `Cmp_Entregado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_oc`
--

CREATE TABLE `tbl_oc` (
  `Cmp_Id_OC` int(11) NOT NULL,
  `Cmp_Fecha_OC` date DEFAULT NULL,
  `Cmp_Id_Proveedor` int(11) DEFAULT NULL,
  `Cmp_Id_Condicion_Pago` int(11) DEFAULT NULL,
  `Cmp_Total_OC` decimal(14,2) DEFAULT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_oc_det`
--

CREATE TABLE `tbl_oc_det` (
  `Cmp_Id_OC_Det` int(11) NOT NULL,
  `Cmp_Id_OC` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_Precio_Unitario` decimal(14,2) DEFAULT NULL,
  `Cmp_Total_Linea` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ordenes_produccion`
--

CREATE TABLE `tbl_ordenes_produccion` (
  `Pk_Id_Orden_Produccion` int(11) NOT NULL,
  `Cmp_Fecha_Solicitud` date DEFAULT NULL,
  `Cmp_Fecha_Registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_orden_compra`
--

CREATE TABLE `tbl_orden_compra` (
  `Pk_Id_Orden_Compra` int(11) NOT NULL,
  `Cmp_Descripcion_Orden_Compra` varchar(255) NOT NULL,
  `Cmp_Monto_Solicitado` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_orden_compra`
--

INSERT INTO `tbl_orden_compra` (`Pk_Id_Orden_Compra`, `Cmp_Descripcion_Orden_Compra`, `Cmp_Monto_Solicitado`) VALUES
(1, 'Compra de escritorio', 1250.00),
(2, 'Compra Grande', 70000.00),
(3, 'Compra de sillas', 3000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_orden_compra_autorizada`
--

CREATE TABLE `tbl_orden_compra_autorizada` (
  `Pk_Id_Autorizacion` int(11) NOT NULL,
  `Fk_Id_Orden_Compra` int(11) NOT NULL,
  `Fk_Id_Banco` int(11) NOT NULL,
  `Fk_Id_Empleado` int(11) DEFAULT NULL,
  `Cmp_Fecha_Autorizacion` datetime NOT NULL DEFAULT current_timestamp(),
  `Cmp_Monto_Autorizado` decimal(12,2) NOT NULL COMMENT 'Se llena automáticamente con el monto solicitado de la orden',
  `Fk_Id_Estado_Autorizacion` int(11) NOT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paciente`
--

CREATE TABLE `tbl_paciente` (
  `pk_idPaciente` int(11) NOT NULL,
  `nombrePaciente` varchar(50) DEFAULT NULL,
  `apellidoPaciente` varchar(50) DEFAULT NULL,
  `fechaNacimientoPaciente` date DEFAULT NULL,
  `sexoPaciente` varchar(15) DEFAULT NULL,
  `direccionPaciente` varchar(30) DEFAULT NULL,
  `telefonoPaciente` varchar(20) DEFAULT NULL,
  `estadoPaciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_paciente`
--

INSERT INTO `tbl_paciente` (`pk_idPaciente`, `nombrePaciente`, `apellidoPaciente`, `fechaNacimientoPaciente`, `sexoPaciente`, `direccionPaciente`, `telefonoPaciente`, `estadoPaciente`) VALUES
(1, 'Pablo', 'Reyes', '2025-11-25', 'M', 'Ciudad', '09127633', 1),
(2, 'Juanito', 'Perez', '2001-11-25', 'M', 'Ciudad', '98123444', 1),
(3, 'Pedro', 'Motoa', '2003-11-01', 'M', 'Ciudad', '09127766', 1),
(4, 'Paula', 'Dabila', '2000-11-25', 'F', 'Ciudad', '09128766', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago`
--

CREATE TABLE `tbl_pago` (
  `Pk_Id_Pago` int(11) NOT NULL,
  `Fk_Id_Folio` int(11) NOT NULL,
  `Cmp_Metodo_Pago` enum('Tarjeta','Efectivo','Transferencia','Cheque') NOT NULL,
  `Cmp_Fecha_Pago` datetime DEFAULT current_timestamp(),
  `Cmp_Monto_Total` decimal(10,2) NOT NULL,
  `Cmp_Estado_Pago` enum('Pagado','Pendiente','Cancelado') DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_cheque`
--

CREATE TABLE `tbl_pago_cheque` (
  `Fk_Id_Pago` int(11) NOT NULL,
  `Cmp_Numero_Cheque` varchar(30) NOT NULL,
  `Cmp_Banco_Emisor` varchar(50) DEFAULT NULL,
  `Cmp_Nombre_Titular` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Emision` date DEFAULT NULL,
  `Cmp_Fecha_Cobro` date DEFAULT NULL,
  `Cmp_Estado_Cheque` enum('Emitido','Cobrado','Devuelto') DEFAULT 'Emitido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_efectivo`
--

CREATE TABLE `tbl_pago_efectivo` (
  `Fk_Id_Pago` int(11) NOT NULL,
  `Cmp_Numero_Recibo` varchar(20) DEFAULT NULL,
  `Cmp_Observaciones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_proveedor`
--

CREATE TABLE `tbl_pago_proveedor` (
  `Cmp_Id_Pago_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Proveedor` int(11) NOT NULL,
  `Cmp_Fecha_Pago` date NOT NULL,
  `Cmp_Total_Pago` decimal(14,2) NOT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) NOT NULL,
  `Cmp_Fecha_Creacion` datetime NOT NULL DEFAULT current_timestamp()
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_proveedor_aplicacion`
--

CREATE TABLE `tbl_pago_proveedor_aplicacion` (
  `Cmp_Id_Pago_Proveedor_Aplicacion` int(11) NOT NULL,
  `Cmp_Id_Pago_Proveedor` int(11) NOT NULL,
  `Cmp_Id_CxP_Documento` int(11) NOT NULL,
  `Cmp_Monto_Aplicado` decimal(14,2) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_proveedor_det`
--

CREATE TABLE `tbl_pago_proveedor_det` (
  `Cmp_Id_Pago_Proveedor_Det` int(11) NOT NULL,
  `Cmp_Id_Pago_Proveedor` int(11) NOT NULL,
  `Cmp_Id_Metodo_Pago` int(11) NOT NULL,
  `Cmp_Monto` decimal(14,2) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_tarjeta`
--

CREATE TABLE `tbl_pago_tarjeta` (
  `Fk_Id_Pago` int(11) NOT NULL,
  `Cmp_Nombre_Titular` varchar(50) DEFAULT NULL,
  `Cmp_Numero_Tarjeta` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Vencimiento` date DEFAULT NULL,
  `Cmp_CVC` int(11) DEFAULT NULL,
  `Cmp_Codigo_Postal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pago_transferencia`
--

CREATE TABLE `tbl_pago_transferencia` (
  `Fk_Id_Pago` int(11) NOT NULL,
  `Cmp_Numero_Transferencia` varchar(30) DEFAULT NULL,
  `Cmp_Banco_Origen` varchar(50) DEFAULT NULL,
  `Cmp_Cuenta_Origen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametroscheques`
--

CREATE TABLE `tbl_parametroscheques` (
  `Pk_Id_Parametro` int(11) NOT NULL,
  `Cmp_Parametro` varchar(50) NOT NULL,
  `Cmp_Valor` varchar(100) NOT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Modulo` varchar(50) DEFAULT 'BANCOS',
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_parametroscheques`
--

INSERT INTO `tbl_parametroscheques` (`Pk_Id_Parametro`, `Cmp_Parametro`, `Cmp_Valor`, `Cmp_Descripcion`, `Cmp_Modulo`, `Cmp_Estado`) VALUES
(1, 'TRANSACCION CHEQUES', '2', 'Código de transacción para cheques por nómina', 'BANCOS', 1),
(2, 'CUENTA SUELDOS PAGAR', '2110', 'Cuenta contable para sueldos por pagar', 'BANCOS', 1),
(3, 'CUENTA BANCO PRINCIPAL', '1110', 'Cuenta contable del banco principal', 'BANCOS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedidos_menu`
--

CREATE TABLE `tbl_pedidos_menu` (
  `Pk_Id_Pedido_Menu` int(11) NOT NULL,
  `Fk_Id_Reserva_Salon` int(11) DEFAULT NULL,
  `Fk_Id_Menu` int(11) DEFAULT NULL,
  `Cmp_Cantidad_Platillos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfil`
--

CREATE TABLE `tbl_perfil` (
  `Pk_Id_Perfil` int(11) NOT NULL,
  `Cmp_Puesto_Perfil` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Perfil` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Perfil` bit(1) NOT NULL,
  `Cmp_Tipo_Perfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_perfil`
--

INSERT INTO `tbl_perfil` (`Pk_Id_Perfil`, `Cmp_Puesto_Perfil`, `Cmp_Descripcion_Perfil`, `Cmp_Estado_Perfil`, `Cmp_Tipo_Perfil`) VALUES
(1, 'Administrador', 'Perfil con todos los permisos', b'1', 1),
(12, 'Probador', 'Persona que prueba codigo', b'1', 1),
(22, 'Pruebadef', 'pufa', b'1', 1),
(33, 'tester', 'provee', b'1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_periodoscontables`
--

CREATE TABLE `tbl_periodoscontables` (
  `Pk_Id_Periodo` int(11) NOT NULL,
  `Cmp_Anio` int(11) NOT NULL,
  `Cmp_Mes` tinyint(4) DEFAULT NULL,
  `Cmp_FechaInicio` date NOT NULL,
  `Cmp_FechaFin` date NOT NULL,
  `Cmp_Estado` tinyint(1) NOT NULL DEFAULT 1,
  `Cmp_ModoActualizacion` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_periodoscontables`
--

INSERT INTO `tbl_periodoscontables` (`Pk_Id_Periodo`, `Cmp_Anio`, `Cmp_Mes`, `Cmp_FechaInicio`, `Cmp_FechaFin`, `Cmp_Estado`, `Cmp_ModoActualizacion`) VALUES
(1, 2025, 7, '2025-07-01', '2025-07-31', 0, 0),
(2, 2025, 8, '2025-08-01', '2025-08-31', 0, 1),
(3, 2025, 9, '2025-09-01', '2025-09-30', 0, 0),
(4, 2025, 10, '2025-10-01', '2025-10-31', 0, 1),
(5, 2025, 11, '2025-11-01', '2025-11-30', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permiso_perfil_aplicacion`
--

CREATE TABLE `tbl_permiso_perfil_aplicacion` (
  `Fk_Id_Perfil` int(11) NOT NULL,
  `Fk_Id_Modulo` int(11) NOT NULL,
  `Fk_Id_Aplicacion` int(11) NOT NULL,
  `Cmp_Ingresar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Consultar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Modificar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Eliminar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Imprimir_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_permiso_perfil_aplicacion`
--

INSERT INTO `tbl_permiso_perfil_aplicacion` (`Fk_Id_Perfil`, `Fk_Id_Modulo`, `Fk_Id_Aplicacion`, `Cmp_Ingresar_Permisos_Aplicacion_Perfil`, `Cmp_Consultar_Permisos_Aplicacion_Perfil`, `Cmp_Modificar_Permisos_Aplicacion_Perfil`, `Cmp_Eliminar_Permisos_Aplicacion_Perfil`, `Cmp_Imprimir_Permisos_Aplicacion_Perfil`) VALUES
(12, 4, 303, b'1', b'0', b'1', b'0', b'0'),
(12, 4, 306, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 301, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 302, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 303, b'0', b'0', b'1', b'0', b'0'),
(22, 4, 304, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 305, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 306, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 307, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 308, b'0', b'0', b'0', b'0', b'0'),
(22, 4, 309, b'0', b'0', b'0', b'0', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permiso_usuario_aplicacion`
--

CREATE TABLE `tbl_permiso_usuario_aplicacion` (
  `Fk_Id_Usuario` int(11) NOT NULL,
  `Fk_Id_Modulo` int(11) NOT NULL,
  `Fk_Id_Aplicacion` int(11) NOT NULL,
  `Cmp_Ingresar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Consultar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Modificar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Eliminar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Imprimir_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_permiso_usuario_aplicacion`
--

INSERT INTO `tbl_permiso_usuario_aplicacion` (`Fk_Id_Usuario`, `Fk_Id_Modulo`, `Fk_Id_Aplicacion`, `Cmp_Ingresar_Permiso_Aplicacion_Usuario`, `Cmp_Consultar_Permiso_Aplicacion_Usuario`, `Cmp_Modificar_Permiso_Aplicacion_Usuario`, `Cmp_Eliminar_Permiso_Aplicacion_Usuario`, `Cmp_Imprimir_Permiso_Aplicacion_Usuario`) VALUES
(4, 4, 301, b'1', b'1', b'1', b'1', b'1'),
(4, 4, 302, b'1', b'1', b'1', b'1', b'1'),
(4, 4, 303, b'1', b'0', b'1', b'0', b'0'),
(4, 4, 304, b'1', b'1', b'0', b'0', b'0'),
(4, 4, 305, b'1', b'1', b'1', b'1', b'1'),
(4, 4, 306, b'1', b'1', b'1', b'1', b'1'),
(4, 4, 307, b'1', b'1', b'1', b'1', b'1'),
(4, 4, 308, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 301, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 302, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 303, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 304, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 305, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 306, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 307, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 308, b'1', b'1', b'1', b'1', b'1'),
(23, 4, 309, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 401, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 402, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 403, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 404, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 405, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 406, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 407, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 408, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 409, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 410, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 411, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 412, b'1', b'1', b'1', b'1', b'1'),
(23, 5, 413, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1401, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1402, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1403, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1404, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1405, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1406, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1407, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1408, b'1', b'1', b'1', b'1', b'1'),
(23, 6, 1409, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2401, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2402, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2403, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2404, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2405, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2406, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2407, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2408, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2409, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2410, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2411, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2412, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2413, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2414, b'1', b'1', b'1', b'1', b'1'),
(23, 7, 2415, b'1', b'1', b'1', b'1', b'1'),
(63, 4, 305, b'1', b'1', b'1', b'1', b'1'),
(63, 4, 309, b'1', b'1', b'1', b'1', b'1'),
(63, 5, 401, b'1', b'1', b'1', b'1', b'1'),
(63, 5, 403, b'1', b'1', b'1', b'1', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_prestamos`
--

CREATE TABLE `tbl_prestamos` (
  `Cmp_iId_Prestamo` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_deMonto_Prestamo` decimal(10,2) DEFAULT NULL,
  `Cmp_dFecha_Prestamo` datetime DEFAULT NULL,
  `Cmp_deSaldoPendiente_Prestamo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `Cmp_Id_Producto` int(11) NOT NULL,
  `Cmp_Codigo_Producto` varchar(20) NOT NULL,
  `Cmp_Nombre_Producto` varchar(100) NOT NULL,
  `Cmp_Marca` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Fecha_Vencimiento` date DEFAULT NULL,
  `Cmp_Id_Categoria_Producto` int(11) NOT NULL,
  `Cmp_Id_Unidad_Base` int(11) NOT NULL,
  `Cmp_Activo` tinyint(4) NOT NULL DEFAULT 1,
  `Cmp_PrecioUnitario` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto_um`
--

CREATE TABLE `tbl_producto_um` (
  `Cmp_Id_Producto_UM` int(11) NOT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Id_Unidad_Medida` int(11) DEFAULT NULL,
  `Cmp_Factor_Conversion` decimal(10,4) DEFAULT NULL,
  `Cmp_Tipo_Uso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_promociones`
--

CREATE TABLE `tbl_promociones` (
  `Pk_Id_Promociones` int(11) NOT NULL,
  `Cmp_Nombre_Promocion` varchar(50) NOT NULL,
  `Cmp_Descripcion` varchar(50) DEFAULT NULL,
  `Cmp_Porcentaje_Descuento` decimal(10,2) NOT NULL,
  `Cmp_Fecha_Inicio` date DEFAULT NULL,
  `Cmp_Fecha_Final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

CREATE TABLE `tbl_proveedor` (
  `Cmp_Id_Proveedor` int(11) NOT NULL,
  `Cmp_Nombre_Proveedor` varchar(100) DEFAULT NULL,
  `Cmp_NIT_Proveedor` varchar(20) DEFAULT NULL,
  `Cmp_Direccion` varchar(150) DEFAULT NULL,
  `Cmp_Telefono` varchar(15) DEFAULT NULL,
  `Cmp_Correo_Electronico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_puestos`
--

CREATE TABLE `tbl_puestos` (
  `Cmp_iId_Puesto` int(11) NOT NULL,
  `Cmp_sNombre_Puesto` varchar(50) NOT NULL,
  `Cmp_sDescripcion_Puesto` varchar(255) DEFAULT NULL,
  `Cmp_iId_Departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_puestos`
--

INSERT INTO `tbl_puestos` (`Cmp_iId_Puesto`, `Cmp_sNombre_Puesto`, `Cmp_sDescripcion_Puesto`, `Cmp_iId_Departamento`) VALUES
(1, 'Contador General', 'contador general de la empresa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_puntos_huesped`
--

CREATE TABLE `tbl_puntos_huesped` (
  `Pk_Id_Puntos_Huesped` int(11) NOT NULL,
  `Fk_Id_Huesped` int(11) NOT NULL,
  `Cmp_Puntos_Acumulados` int(11) DEFAULT 0,
  `Cmp_Puntos_Obtenidos` int(11) DEFAULT 0,
  `Cmp_Puntos_Canjeados` int(11) DEFAULT 0,
  `Cmp_Fecha_Ultima_Actualizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recepcion_compra`
--

CREATE TABLE `tbl_recepcion_compra` (
  `Cmp_Id_Recepcion_Compra` int(11) NOT NULL,
  `Cmp_Id_OC` int(11) DEFAULT NULL,
  `Cmp_Fecha_Recepcion` date DEFAULT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recepcion_compra_det`
--

CREATE TABLE `tbl_recepcion_compra_det` (
  `Cmp_Id_Recepcion_Compra_Det` int(11) NOT NULL,
  `Cmp_Id_Recepcion_Compra` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Cantidad_Recibida` decimal(12,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_receta`
--

CREATE TABLE `tbl_receta` (
  `Pk_Id_Receta` int(11) NOT NULL,
  `Fk_Id_Menu` int(11) DEFAULT NULL,
  `Fk_Id_Materia_Prima` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(10,2) NOT NULL,
  `Cmp_Unidad_Medida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recibo`
--

CREATE TABLE `tbl_recibo` (
  `Cmp_Id_Recibo` int(11) NOT NULL,
  `Cmp_Fecha_Recibo` date DEFAULT NULL,
  `Cmp_Id_Cliente` int(11) DEFAULT NULL,
  `Cmp_Total_Recibo` decimal(14,2) DEFAULT NULL,
  `Cmp_Observaciones` varchar(255) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recibo_aplicacion`
--

CREATE TABLE `tbl_recibo_aplicacion` (
  `Cmp_Id_Recibo_Aplicacion` int(11) NOT NULL,
  `Cmp_Id_Recibo` int(11) DEFAULT NULL,
  `Cmp_Id_CxC_Documento` int(11) DEFAULT NULL,
  `Cmp_Monto_Aplicado` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recibo_det`
--

CREATE TABLE `tbl_recibo_det` (
  `Cmp_Id_Recibo_Det` int(11) NOT NULL,
  `Cmp_Id_Recibo` int(11) DEFAULT NULL,
  `Cmp_Id_Metodo_Pago` int(11) DEFAULT NULL,
  `Cmp_Monto_Pago` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reportes`
--

CREATE TABLE `tbl_reportes` (
  `Pk_Id_Reporte` int(11) NOT NULL,
  `Cmp_Titulo_Reporte` varchar(50) DEFAULT NULL,
  `Cmp_Ruta_Reporte` varchar(500) DEFAULT NULL,
  `Cmp_Fecha_Reporte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_reportes`
--

INSERT INTO `tbl_reportes` (`Pk_Id_Reporte`, `Cmp_Titulo_Reporte`, `Cmp_Ruta_Reporte`, `Cmp_Fecha_Reporte`) VALUES
(1, 'Reporte Inicial', 'ruta/reporte.pdf', '2025-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reporte_balance_general`
--

CREATE TABLE `tbl_reporte_balance_general` (
  `Pk_Id_Reporte` int(11) NOT NULL,
  `Fk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Nombre_Cuenta` varchar(100) NOT NULL,
  `Cmp_Tipo_Cuenta` varchar(50) NOT NULL,
  `Cmp_Valor` decimal(15,2) DEFAULT 0.00,
  `Cmp_Periodo` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Reporte` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reporte_balance_saldos`
--

CREATE TABLE `tbl_reporte_balance_saldos` (
  `Pk_Id_Reporte` int(11) NOT NULL,
  `Fk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Nombre_Cuenta` varchar(100) NOT NULL,
  `Cmp_Debe` decimal(15,2) DEFAULT 0.00,
  `Cmp_Haber` decimal(15,2) DEFAULT 0.00,
  `Cmp_Saldo` decimal(15,2) DEFAULT 0.00,
  `Cmp_Periodo` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Reporte` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reporte_estado_resultados`
--

CREATE TABLE `tbl_reporte_estado_resultados` (
  `Pk_Id_Reporte` int(11) NOT NULL,
  `Fk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Nombre_Cuenta` varchar(100) NOT NULL,
  `Cmp_Tipo_Cuenta` varchar(50) NOT NULL,
  `Cmp_Valor` decimal(15,2) DEFAULT 0.00,
  `Cmp_Periodo` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Reporte` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reporte_flujo_efectivo`
--

CREATE TABLE `tbl_reporte_flujo_efectivo` (
  `Pk_Id_Reporte` int(11) NOT NULL,
  `Fk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Nombre_Cuenta` varchar(100) NOT NULL,
  `Cmp_Tipo_Actividad` varchar(50) NOT NULL,
  `Cmp_Entrada` decimal(15,2) DEFAULT 0.00,
  `Cmp_Salida` decimal(15,2) DEFAULT 0.00,
  `Cmp_Periodo` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Reporte` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE `tbl_reserva` (
  `Pk_Id_Reserva` int(11) NOT NULL,
  `Fk_Id_Huesped` int(11) NOT NULL,
  `Fk_Id_Habitacion` int(11) DEFAULT NULL,
  `Fk_Id_Promociones` int(11) DEFAULT NULL,
  `Fk_Id_Buffet` int(11) DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Fecha_Entrada` date DEFAULT NULL,
  `Cmp_Fecha_Salida` date DEFAULT NULL,
  `Cmp_Num_Huespedes` int(11) DEFAULT NULL,
  `Cmp_Peticiones_Especiales` varchar(255) DEFAULT NULL,
  `Cmp_Estado_Reserva` enum('Pendiente','Confirmada','Cancelada','Finalizada') NOT NULL,
  `Cmp_Total_Reserva` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reservas_alacarta`
--

CREATE TABLE `tbl_reservas_alacarta` (
  `PK_Id_Reserva` int(11) NOT NULL,
  `Fk_Id_Huesped` int(11) DEFAULT NULL,
  `Fk_Id_Habitacion` int(11) DEFAULT NULL,
  `Fk_Id_Salon` int(11) DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Hora_reserva` time DEFAULT NULL,
  `Cmp_Numero_Comensales` int(11) DEFAULT NULL,
  `Cmp_Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reservas_salones`
--

CREATE TABLE `tbl_reservas_salones` (
  `Pk_Id_Reserva_Salon` int(11) NOT NULL,
  `Fk_Id_Huesped` int(11) DEFAULT NULL,
  `Fk_Id_Salon` int(11) DEFAULT NULL,
  `Fk_Id_Promociones` int(11) DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Hora_Inicio` time DEFAULT NULL,
  `Cmp_Hora_Fin` time DEFAULT NULL,
  `Cmp_Cantidad_Personas` int(11) DEFAULT NULL,
  `Cmp_Monto_Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_room_service`
--

CREATE TABLE `tbl_room_service` (
  `Pk_Id_Room` int(11) NOT NULL,
  `FK_Id_Huesped` int(11) DEFAULT NULL,
  `Fk_Id_Habitacion` int(11) DEFAULT NULL,
  `Cmp_Fecha_Orden` datetime DEFAULT NULL,
  `Cmp_Estado` varchar(20) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_room_service_detalle`
--

CREATE TABLE `tbl_room_service_detalle` (
  `Pk_Id_Detalle` int(11) NOT NULL,
  `FK_Id_Room` int(11) DEFAULT NULL,
  `FK_Id_Menu` int(11) DEFAULT NULL,
  `Cmp_Cantidad` int(11) DEFAULT NULL,
  `Cmp_Precio_Unitario` decimal(10,2) DEFAULT NULL,
  `Cmp_Subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_salario_empleado`
--

CREATE TABLE `tbl_salario_empleado` (
  `Pk_Id_Salario` int(11) NOT NULL,
  `Fk_Id_Empleado` int(11) DEFAULT NULL,
  `Cmp_Monto_Salario_Empleado` float DEFAULT NULL,
  `Cmp_Fecha_Inicio_Salario_Empleado` datetime DEFAULT NULL,
  `Cmp_Fecha_Fin_Salario_Empleado` datetime DEFAULT NULL,
  `Cmp_Estado_Salario_Empleado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_salones`
--

CREATE TABLE `tbl_salones` (
  `Pk_Id_Salon` int(11) NOT NULL,
  `Cmp_Nombre_Salon` varchar(50) NOT NULL,
  `Cmp_Ubicacion` varchar(50) DEFAULT NULL,
  `Cmp_Capacidad` int(11) DEFAULT NULL,
  `Cmp_Disponibilidad` tinyint(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_secuencia`
--

CREATE TABLE `tbl_secuencia` (
  `Cmp_Id_Secuencia` int(11) NOT NULL,
  `Cmp_Nombre_Documento` varchar(50) DEFAULT NULL,
  `Cmp_Ultimo_Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios_habitacion`
--

CREATE TABLE `tbl_servicios_habitacion` (
  `PK_ID_Servicio_habitacion` int(11) NOT NULL,
  `Cmp_Nombre_Servicio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicio_adicional`
--

CREATE TABLE `tbl_servicio_adicional` (
  `Pk_Id_Servicio` int(11) NOT NULL,
  `Pk_Id_Reserva` int(11) DEFAULT NULL,
  `Cmp_Tipo_Servicio` varchar(75) DEFAULT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Costo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tiposcambio`
--

CREATE TABLE `tbl_tiposcambio` (
  `Pk_Id_TipoCambio` int(11) NOT NULL,
  `Fk_Id_Moneda` int(11) NOT NULL,
  `Cmp_Fecha` date NOT NULL,
  `Cmp_ValorCompra` decimal(10,4) NOT NULL,
  `Cmp_ValorVenta` decimal(10,4) NOT NULL,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipospago`
--

CREATE TABLE `tbl_tipospago` (
  `Pk_Id_TipoPago` int(11) NOT NULL,
  `Cmp_CodigoTipoPago` varchar(10) NOT NULL,
  `Cmp_NombreTipoPago` varchar(100) NOT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipospago`
--

INSERT INTO `tbl_tipospago` (`Pk_Id_TipoPago`, `Cmp_CodigoTipoPago`, `Cmp_NombreTipoPago`, `Cmp_Descripcion`, `Cmp_Estado`) VALUES
(1, 'EFECT', 'Efectivo', NULL, 1),
(2, 'CHEQ', 'Cheque', NULL, 1),
(3, 'TRANS', 'Transferencia', NULL, 1),
(4, 'TARJ', 'Tarjeta', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_habitacion`
--

CREATE TABLE `tbl_tipo_habitacion` (
  `Pk_ID_Tipo_Habitaciones` int(11) NOT NULL,
  `Cmp_Tipo_Habitacion` varchar(50) NOT NULL,
  `Cmp_Descripcion_Tipo_Habitacion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_menu`
--

CREATE TABLE `tbl_tipo_menu` (
  `Pk_Id_Tipo_Menu` int(11) NOT NULL,
  `Cmp_Tipo_Menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_movimiento_inv`
--

CREATE TABLE `tbl_tipo_movimiento_inv` (
  `Cmp_Id_Tipo_Movimiento_Inv` int(11) NOT NULL,
  `Cmp_Nombre_Tipo` varchar(50) DEFAULT NULL,
  `Cmp_Afecta_Existencia` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_token_restaurarcontrasena`
--

CREATE TABLE `tbl_token_restaurarcontrasena` (
  `Pk_Id_Token` int(11) NOT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Cmp_Token` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Creacion_Restaurar_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Expiracion_Restaurar_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Utilizado_Restaurar_Contrasenea` bit(1) DEFAULT NULL,
  `Cmp_Fecha_Uso_Restaurar_Contrasenea` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_token_restaurarcontrasena`
--

INSERT INTO `tbl_token_restaurarcontrasena` (`Pk_Id_Token`, `Fk_Id_Usuario`, `Cmp_Token`, `Cmp_Fecha_Creacion_Restaurar_Contrasenea`, `Cmp_Expiracion_Restaurar_Contrasenea`, `Cmp_Utilizado_Restaurar_Contrasenea`, `Cmp_Fecha_Uso_Restaurar_Contrasenea`) VALUES
(23, 4, 'B07EF449', '2025-10-18 12:07:34', '2025-10-18 12:12:34', b'1', '2025-10-18 12:08:27'),
(24, 4, '0C76A696', '2025-10-18 17:08:53', '2025-10-18 17:13:53', b'1', '2025-10-18 17:09:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_toma_fisica`
--

CREATE TABLE `tbl_toma_fisica` (
  `Cmp_Id_Toma_Fisica` int(11) NOT NULL,
  `Cmp_Fecha_Toma` date DEFAULT NULL,
  `Cmp_Id_Almacen` int(11) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_toma_fisica_det`
--

CREATE TABLE `tbl_toma_fisica_det` (
  `Cmp_Id_Toma_Fisica_Det` int(11) NOT NULL,
  `Cmp_Id_Toma_Fisica` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Cantidad_Contada` decimal(12,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_transaccionesbancarias`
--

CREATE TABLE `tbl_transaccionesbancarias` (
  `Pk_Id_Transaccion` int(11) NOT NULL,
  `Cmp_NombreTransaccion` varchar(100) NOT NULL,
  `Cmp_Efecto` enum('POSITIVO','NEGATIVO') NOT NULL,
  `Cmp_Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_transaccionesbancarias`
--

INSERT INTO `tbl_transaccionesbancarias` (`Pk_Id_Transaccion`, `Cmp_NombreTransaccion`, `Cmp_Efecto`, `Cmp_Estado`) VALUES
(1, 'DEPÓSITO', 'POSITIVO', 1),
(2, 'CHEQUE', 'NEGATIVO', 1),
(3, 'NOTA_CRÉDITO', 'POSITIVO', 1),
(4, 'NOTA_DÉBITO', 'NEGATIVO', 1),
(5, 'TRANSFERENCIA ENVIADA', 'NEGATIVO', 1),
(6, 'TRANSFERENCIA RECIBIDA', 'POSITIVO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_unidad_medida`
--

CREATE TABLE `tbl_unidad_medida` (
  `Cmp_Id_Unidad_Medida` int(11) NOT NULL,
  `Cmp_Nombre_Unidad` varchar(50) DEFAULT NULL,
  `Cmp_Abreviatura` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `Pk_Id_Usuario` int(11) NOT NULL,
  `Fk_Id_Empleado` int(11) DEFAULT NULL,
  `Cmp_Nombre_Usuario` varchar(50) DEFAULT NULL,
  `Cmp_Contrasena_Usuario` varchar(65) DEFAULT NULL,
  `Cmp_Intentos_Fallidos_Usuario` int(11) DEFAULT NULL,
  `Cmp_Estado_Usuario` bit(1) DEFAULT NULL,
  `Cmp_FechaCreacion_Usuario` datetime DEFAULT NULL,
  `Cmp_Ultimo_Cambio_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Pidio_Cambio_Contrasenea` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`Pk_Id_Usuario`, `Fk_Id_Empleado`, `Cmp_Nombre_Usuario`, `Cmp_Contrasena_Usuario`, `Cmp_Intentos_Fallidos_Usuario`, `Cmp_Estado_Usuario`, `Cmp_FechaCreacion_Usuario`, `Cmp_Ultimo_Cambio_Contrasenea`, `Cmp_Pidio_Cambio_Contrasenea`) VALUES
(4, 2, 'brandon', '45297c633d331e6ac35169ebaaf75bc7fafd206ebb59ba4efd80566936e46eb0', 0, b'1', '2025-09-21 20:49:54', '2025-10-18 17:09:11', b'0'),
(23, 3, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 0, b'1', '2025-09-26 20:45:53', '2025-09-26 20:45:53', b'0'),
(63, 7, 'usuariofinal', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 0, b'1', '2025-11-25 09:31:40', '2025-11-25 09:31:40', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario_perfil`
--

CREATE TABLE `tbl_usuario_perfil` (
  `Fk_Id_Usuario` int(11) NOT NULL,
  `Fk_Id_Perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuario_perfil`
--

INSERT INTO `tbl_usuario_perfil` (`Fk_Id_Usuario`, `Fk_Id_Perfil`) VALUES
(4, 1),
(63, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vacaciones`
--

CREATE TABLE `tbl_vacaciones` (
  `Cmp_iId_Vacacion` int(11) NOT NULL,
  `Cmp_iId_Empleado` int(11) NOT NULL,
  `Cmp_dFechaInicio_Vacacion` datetime DEFAULT NULL,
  `Cmp_dFechaFin_Vacacion` datetime DEFAULT NULL,
  `Cmp_iDias_Vacacion` int(11) DEFAULT NULL,
  `Cmp_bAprobada_Vacacion` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `Cmp_IdVenta` int(11) NOT NULL,
  `Cmp_Fecha` datetime DEFAULT NULL,
  `Cmp_Total` decimal(12,2) DEFAULT NULL,
  `Cmp_Efectivo` decimal(12,2) DEFAULT NULL,
  `Cmp_Devolucion` decimal(12,2) DEFAULT NULL,
  `Cmp_Id_Usuario` int(11) DEFAULT NULL,
  `Cmp_Id_Metodo_Pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventadet`
--

CREATE TABLE `tbl_ventadet` (
  `Cmp_IdVentaDet` int(11) NOT NULL,
  `Cmp_IdVenta` int(11) DEFAULT NULL,
  `Cmp_Id_Producto` int(11) DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_PrecioUnitario` decimal(12,2) DEFAULT NULL,
  `Cmp_Total` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_activosfijos`
--
ALTER TABLE `tbl_activosfijos`
  ADD PRIMARY KEY (`Pk_Activo_ID`),
  ADD KEY `Cmp_CtaActivo` (`Cmp_CtaActivo`),
  ADD KEY `Cmp_CtaDepreciacion` (`Cmp_CtaDepreciacion`),
  ADD KEY `Cmp_CtaGastoDepreciacion` (`Cmp_CtaGastoDepreciacion`);

--
-- Indices de la tabla `tbl_almacen`
--
ALTER TABLE `tbl_almacen`
  ADD PRIMARY KEY (`Cmp_Id_Almacen`);

--
-- Indices de la tabla `tbl_anticipos`
--
ALTER TABLE `tbl_anticipos`
  ADD PRIMARY KEY (`Cmp_iId_Anticipo`),
  ADD KEY `Ix_Anticipos_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_aplicacion`
--
ALTER TABLE `tbl_aplicacion`
  ADD PRIMARY KEY (`Pk_Id_Aplicacion`),
  ADD KEY `Fk_Aplicacion_Reporte` (`Fk_Id_Reporte_Aplicacion`);

--
-- Indices de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`Pk_Id_Area`),
  ADD KEY `Fk_Id_Folio` (`Fk_Id_Folio`);

--
-- Indices de la tabla `tbl_asignacion_habitacion_servicio`
--
ALTER TABLE `tbl_asignacion_habitacion_servicio`
  ADD PRIMARY KEY (`Fk_ID_Habitacion`,`Fk_Id_Servicio`),
  ADD KEY `Fk_Id_Servicio` (`Fk_Id_Servicio`);

--
-- Indices de la tabla `tbl_asignacion_modulo_aplicacion`
--
ALTER TABLE `tbl_asignacion_modulo_aplicacion`
  ADD PRIMARY KEY (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  ADD KEY `Fk_AsigAplicacion` (`Fk_Id_Aplicacion`);

--
-- Indices de la tabla `tbl_asignar_perfil_cliente`
--
ALTER TABLE `tbl_asignar_perfil_cliente`
  ADD PRIMARY KEY (`Fk_Id_Perfil`,`Fk_Id_Cliente`),
  ADD KEY `Fk_AsigCliente` (`Fk_Id_Cliente`);

--
-- Indices de la tabla `tbl_asistencias`
--
ALTER TABLE `tbl_asistencias`
  ADD PRIMARY KEY (`Cmp_iId_Asistencia`),
  ADD KEY `Ix_Asistencias_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_ausenciaspermisos`
--
ALTER TABLE `tbl_ausenciaspermisos`
  ADD PRIMARY KEY (`Cmp_iId_AusenciaPermiso`),
  ADD KEY `Ix_AusenciasPermisos_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_bancos`
--
ALTER TABLE `tbl_bancos`
  ADD PRIMARY KEY (`Pk_Id_Banco`);

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD PRIMARY KEY (`Pk_Id_Bitacora`),
  ADD KEY `Fk_Bitacora_Usuario` (`Fk_Id_Usuario`),
  ADD KEY `Fk_Bitacora_Aplicacion` (`Fk_Id_Aplicacion`);

--
-- Indices de la tabla `tbl_bloqueo_usuario`
--
ALTER TABLE `tbl_bloqueo_usuario`
  ADD PRIMARY KEY (`Pk_Id_Bloqueo`),
  ADD KEY `Fk_Bloqueo_Usuario` (`Fk_Id_Usuario`),
  ADD KEY `Fk_Bloqueo_Bitacora` (`Fk_Id_Bitacora`);

--
-- Indices de la tabla `tbl_buffet`
--
ALTER TABLE `tbl_buffet`
  ADD PRIMARY KEY (`Pk_Id_Buffet`);

--
-- Indices de la tabla `tbl_caja_egreso`
--
ALTER TABLE `tbl_caja_egreso`
  ADD PRIMARY KEY (`Cmp_Id_Caja_Egreso`),
  ADD KEY `Cmp_Id_Pago_Proveedor` (`Cmp_Id_Pago_Proveedor`);

--
-- Indices de la tabla `tbl_caja_ingreso`
--
ALTER TABLE `tbl_caja_ingreso`
  ADD PRIMARY KEY (`Cmp_Id_Caja_Ingreso`),
  ADD KEY `Cmp_Id_Recibo` (`Cmp_Id_Recibo`);

--
-- Indices de la tabla `tbl_catalogo_cuentas`
--
ALTER TABLE `tbl_catalogo_cuentas`
  ADD PRIMARY KEY (`Pk_Codigo_Cuenta`),
  ADD KEY `Fk_CtaMadre` (`Cmp_CtaMadre`);

--
-- Indices de la tabla `tbl_categoria_producto`
--
ALTER TABLE `tbl_categoria_producto`
  ADD PRIMARY KEY (`Cmp_Id_Categoria_Producto`);

--
-- Indices de la tabla `tbl_check_in`
--
ALTER TABLE `tbl_check_in`
  ADD PRIMARY KEY (`Pk_Id_Check_in`),
  ADD KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  ADD KEY `Fk_Id_Reserva` (`Fk_Id_Reserva`);

--
-- Indices de la tabla `tbl_check_out`
--
ALTER TABLE `tbl_check_out`
  ADD PRIMARY KEY (`Pk_Id_Check_out`),
  ADD KEY `Fk_Id_Check_In` (`Fk_Id_Check_In`);

--
-- Indices de la tabla `tbl_cierrebancario`
--
ALTER TABLE `tbl_cierrebancario`
  ADD PRIMARY KEY (`Pk_Id_Cierre`),
  ADD KEY `Fk_Id_CuentaBancaria` (`Fk_Id_CuentaBancaria`);

--
-- Indices de la tabla `tbl_cierre_diario`
--
ALTER TABLE `tbl_cierre_diario`
  ADD PRIMARY KEY (`Pk_Id_Cierre`);

--
-- Indices de la tabla `tbl_cierre_inventario`
--
ALTER TABLE `tbl_cierre_inventario`
  ADD PRIMARY KEY (`Cmp_Id_Cierre`),
  ADD KEY `Cmp_Id_Almacen` (`Cmp_Id_Almacen`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`Pk_Id_Cliente`);

--
-- Indices de la tabla `tbl_conceptosnomina`
--
ALTER TABLE `tbl_conceptosnomina`
  ADD PRIMARY KEY (`Cmp_iId_ConceptoNomina`),
  ADD KEY `Fk_ConceptosNomina_Cuenta` (`Fk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_conciliacionbancaria`
--
ALTER TABLE `tbl_conciliacionbancaria`
  ADD PRIMARY KEY (`Pk_Id_Conciliacion`),
  ADD KEY `Fk_Id_CuentaBancaria` (`Fk_Id_CuentaBancaria`);

--
-- Indices de la tabla `tbl_condicion_pago`
--
ALTER TABLE `tbl_condicion_pago`
  ADD PRIMARY KEY (`Cmp_Id_Condicion_Pago`);

--
-- Indices de la tabla `tbl_correo_cliente`
--
ALTER TABLE `tbl_correo_cliente`
  ADD PRIMARY KEY (`Pk_Id_Correo`),
  ADD KEY `Fk_Correo_Cliente` (`Fk_Id_Cliente`);

--
-- Indices de la tabla `tbl_cuentasbancarias`
--
ALTER TABLE `tbl_cuentasbancarias`
  ADD PRIMARY KEY (`Pk_Id_CuentaBancaria`),
  ADD KEY `Fk_Id_Banco` (`Fk_Id_Banco`);

--
-- Indices de la tabla `tbl_cxc_documento`
--
ALTER TABLE `tbl_cxc_documento`
  ADD PRIMARY KEY (`Cmp_Id_CxC_Documento`);

--
-- Indices de la tabla `tbl_cxp_documento`
--
ALTER TABLE `tbl_cxp_documento`
  ADD PRIMARY KEY (`Cmp_Id_CxP_Documento`),
  ADD UNIQUE KEY `UK_CxP_Doc_SerieNumeroProveedor` (`Cmp_Serie`,`Cmp_Numero`,`Cmp_Id_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  ADD PRIMARY KEY (`Cmp_iId_Departamento`),
  ADD UNIQUE KEY `Cmp_sNombre_Departamento` (`Cmp_sNombre_Departamento`);

--
-- Indices de la tabla `tbl_depreciacionactivos`
--
ALTER TABLE `tbl_depreciacionactivos`
  ADD PRIMARY KEY (`Pk_Depreciacion_ID`),
  ADD KEY `Fk_Activo_ID` (`Fk_Activo_ID`);

--
-- Indices de la tabla `tbl_detallelotecheques`
--
ALTER TABLE `tbl_detallelotecheques`
  ADD PRIMARY KEY (`Pk_Id_Detalle`),
  ADD KEY `Fk_Id_Lote` (`Fk_Id_Lote`);

--
-- Indices de la tabla `tbl_detallepoliza`
--
ALTER TABLE `tbl_detallepoliza`
  ADD PRIMARY KEY (`PkFk_EncCodigo_Poliza`,`PkFk_Fecha_Poliza`,`PkFk_Codigo_Cuenta`),
  ADD KEY `fk_detalle_poliza_cuenta` (`PkFk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_detallesnomina`
--
ALTER TABLE `tbl_detallesnomina`
  ADD PRIMARY KEY (`Cmp_iId_DetalleNomina`),
  ADD KEY `Fk_DetallesNomina_Nomina` (`Cmp_iId_Nomina`),
  ADD KEY `Ix_DetallesNomina_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_detalle_cierre_diario`
--
ALTER TABLE `tbl_detalle_cierre_diario`
  ADD PRIMARY KEY (`Pk_Id_Detalle`),
  ADD KEY `Fk_Id_Cierre` (`Fk_Id_Cierre`),
  ADD KEY `Fk_Id_Folio` (`Fk_Id_Folio`);

--
-- Indices de la tabla `tbl_detalle_cierre_salones`
--
ALTER TABLE `tbl_detalle_cierre_salones`
  ADD PRIMARY KEY (`Pk_Id_Detalle_Salon`),
  ADD KEY `Fk_Id_Cierre` (`Fk_Id_Cierre`),
  ADD KEY `Fk_Id_Folio_Salon` (`Fk_Id_Folio_Salon`);

--
-- Indices de la tabla `tbl_detalle_folio`
--
ALTER TABLE `tbl_detalle_folio`
  ADD PRIMARY KEY (`Pk_Id_Detalle_Folio`),
  ADD KEY `Fk_Id_Folio` (`Fk_Id_Folio`),
  ADD KEY `Fk_Id_Area` (`Fk_Id_Area`);

--
-- Indices de la tabla `tbl_detalle_ordenes_menu`
--
ALTER TABLE `tbl_detalle_ordenes_menu`
  ADD PRIMARY KEY (`Pk_Id_Detalle_Orden`),
  ADD KEY `Fk_Id_Orden_Produccion` (`Fk_Id_Orden_Produccion`),
  ADD KEY `Fk_Id_Menu` (`Fk_Id_Menu`);

--
-- Indices de la tabla `tbl_detalle_ordenes_mobiliario`
--
ALTER TABLE `tbl_detalle_ordenes_mobiliario`
  ADD PRIMARY KEY (`Pk_Id_Detalle_Orden_Mobiliario`),
  ADD KEY `Fk_Id_Orden_Produccion` (`Fk_Id_Orden_Produccion`),
  ADD KEY `Fk_Id_Mobiliario` (`Fk_Id_Mobiliario`);

--
-- Indices de la tabla `tbl_devolucion_proveedor`
--
ALTER TABLE `tbl_devolucion_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Devolucion_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`),
  ADD KEY `Cmp_Id_Factura_Proveedor` (`Cmp_Id_Factura_Proveedor`);

--
-- Indices de la tabla `tbl_devolucion_proveedor_det`
--
ALTER TABLE `tbl_devolucion_proveedor_det`
  ADD PRIMARY KEY (`Cmp_Id_Devolucion_Proveedor_Det`),
  ADD KEY `Cmp_Id_Devolucion_Proveedor` (`Cmp_Id_Devolucion_Proveedor`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- Indices de la tabla `tbl_disponibilidad_diaria`
--
ALTER TABLE `tbl_disponibilidad_diaria`
  ADD PRIMARY KEY (`Pk_Id_Disponibilidad`),
  ADD KEY `Fk_Disponibilidad_Cuenta` (`Fk_Id_CuentaBancaria`);

--
-- Indices de la tabla `tbl_documento_cmp_estado_hist`
--
ALTER TABLE `tbl_documento_cmp_estado_hist`
  ADD PRIMARY KEY (`Cmp_Id_Cmp_Estado_Hist`);

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD PRIMARY KEY (`Pk_Id_Empleado`);

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`Cmp_iId_Empleado`),
  ADD UNIQUE KEY `Cmp_sDpi_Empleado` (`Cmp_sDpi_Empleado`),
  ADD KEY `Ix_Empleados_IdPuesto` (`Cmp_iId_Puesto`);

--
-- Indices de la tabla `tbl_empleado_autorizado`
--
ALTER TABLE `tbl_empleado_autorizado`
  ADD PRIMARY KEY (`Pk_Id_Empleado`);

--
-- Indices de la tabla `tbl_encabezadopoliza`
--
ALTER TABLE `tbl_encabezadopoliza`
  ADD PRIMARY KEY (`Pk_EncCodigo_Poliza`,`Pk_Fecha_Poliza`);

--
-- Indices de la tabla `tbl_estadia`
--
ALTER TABLE `tbl_estadia`
  ADD PRIMARY KEY (`Pk_Id_Estadia`),
  ADD KEY `Fk_Id_Habitaciones` (`Fk_Id_Habitaciones`),
  ADD KEY `Fk_Id_Huesped_Checkin` (`Fk_Id_Huesped_Checkin`);

--
-- Indices de la tabla `tbl_estado_autorizacion`
--
ALTER TABLE `tbl_estado_autorizacion`
  ADD PRIMARY KEY (`Pk_Id_Estado_Autorizacion`);

--
-- Indices de la tabla `tbl_existencia`
--
ALTER TABLE `tbl_existencia`
  ADD PRIMARY KEY (`Cmp_Id_Existencia`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`),
  ADD KEY `Cmp_Id_Almacen` (`Cmp_Id_Almacen`);

--
-- Indices de la tabla `tbl_export_contable`
--
ALTER TABLE `tbl_export_contable`
  ADD PRIMARY KEY (`Cmp_Id_Export_Contable`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`Pk_Id_Factura`),
  ADD KEY `Fk_Id_Reserva` (`Fk_Id_Reserva`);

--
-- Indices de la tabla `tbl_factura_proveedor`
--
ALTER TABLE `tbl_factura_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Factura_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_factura_proveedor_det`
--
ALTER TABLE `tbl_factura_proveedor_det`
  ADD PRIMARY KEY (`Cmp_Id_Factura_Proveedor_Det`),
  ADD KEY `Cmp_Id_Factura_Proveedor` (`Cmp_Id_Factura_Proveedor`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- Indices de la tabla `tbl_folio`
--
ALTER TABLE `tbl_folio`
  ADD PRIMARY KEY (`Pk_Id_Folio`),
  ADD KEY `Fk_Id_Check_In` (`Fk_Id_Check_In`),
  ADD KEY `Fk_Id_Check_Out` (`Fk_Id_Check_Out`),
  ADD KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`);

--
-- Indices de la tabla `tbl_folio_salones`
--
ALTER TABLE `tbl_folio_salones`
  ADD PRIMARY KEY (`Pk_Id_Folio_Salones`),
  ADD KEY `Fk_Id_Reserva_Salon` (`Fk_Id_Reserva_Salon`);

--
-- Indices de la tabla `tbl_habitaciones`
--
ALTER TABLE `tbl_habitaciones`
  ADD PRIMARY KEY (`PK_ID_Habitaciones`),
  ADD KEY `FK_ID_Tipo_Habitaciones` (`FK_ID_Tipo_Habitaciones`);

--
-- Indices de la tabla `tbl_historial_autorizacion`
--
ALTER TABLE `tbl_historial_autorizacion`
  ADD PRIMARY KEY (`Pk_Id_Historial`),
  ADD KEY `FK_Historial_Autorizacion` (`Fk_Id_Autorizacion`);

--
-- Indices de la tabla `tbl_historico_catalogo_cuentas`
--
ALTER TABLE `tbl_historico_catalogo_cuentas`
  ADD PRIMARY KEY (`Cmp_Anio`,`Cmp_Mes`,`Pk_Codigo_Cuenta`) USING BTREE,
  ADD KEY `Idx_Historico_Cuenta` (`Pk_Codigo_Cuenta`) USING BTREE;

--
-- Indices de la tabla `tbl_horasextra`
--
ALTER TABLE `tbl_horasextra`
  ADD PRIMARY KEY (`Cmp_iId_HoraExtra`),
  ADD KEY `Ix_HorasExtra_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_huesped`
--
ALTER TABLE `tbl_huesped`
  ADD PRIMARY KEY (`Pk_Id_Huesped`),
  ADD UNIQUE KEY `Cmp_Numero_Documento` (`Cmp_Numero_Documento`);

--
-- Indices de la tabla `tbl_lotescheques`
--
ALTER TABLE `tbl_lotescheques`
  ADD PRIMARY KEY (`Pk_Id_Lote`);

--
-- Indices de la tabla `tbl_mantenimiento`
--
ALTER TABLE `tbl_mantenimiento`
  ADD PRIMARY KEY (`Pk_Id_Mantenimiento`),
  ADD KEY `Fk_Id_Salon` (`Fk_Id_Salon`),
  ADD KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  ADD KEY `Fk_Id_Empleado` (`Fk_Id_Empleado`);

--
-- Indices de la tabla `tbl_materia_prima`
--
ALTER TABLE `tbl_materia_prima`
  ADD PRIMARY KEY (`Pk_Id_Materia_Prima`);

--
-- Indices de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`Pk_Id_Menu`),
  ADD KEY `Fk_Id_Tipo_Menu` (`Fk_Id_Tipo_Menu`);

--
-- Indices de la tabla `tbl_metodo_pago`
--
ALTER TABLE `tbl_metodo_pago`
  ADD PRIMARY KEY (`Cmp_Id_Metodo_Pago`);

--
-- Indices de la tabla `tbl_mobiliario`
--
ALTER TABLE `tbl_mobiliario`
  ADD PRIMARY KEY (`Pk_Id_Mobiliario`);

--
-- Indices de la tabla `tbl_modulo`
--
ALTER TABLE `tbl_modulo`
  ADD PRIMARY KEY (`Pk_Id_Modulo`);

--
-- Indices de la tabla `tbl_monedas`
--
ALTER TABLE `tbl_monedas`
  ADD PRIMARY KEY (`Pk_Id_Moneda`);

--
-- Indices de la tabla `tbl_movimientobancariodetalle`
--
ALTER TABLE `tbl_movimientobancariodetalle`
  ADD PRIMARY KEY (`Fk_Id_Movimiento`,`Fk_Id_CuentaOrigen`,`Fk_Id_Operacion`,`Pk_Id_Detalle`),
  ADD KEY `idx_fk_cta` (`Fk_Id_CuentaContable`);

--
-- Indices de la tabla `tbl_movimientobancarioencabezado`
--
ALTER TABLE `tbl_movimientobancarioencabezado`
  ADD PRIMARY KEY (`Pk_Id_Movimiento`,`Fk_Id_CuentaOrigen`,`Fk_Id_Operacion`),
  ADD KEY `Fk_Id_CuentaOrigen` (`Fk_Id_CuentaOrigen`),
  ADD KEY `Fk_Id_Operacion` (`Fk_Id_Operacion`),
  ADD KEY `Fk_Id_TipoPago` (`Fk_Id_TipoPago`),
  ADD KEY `Fk_Id_CuentaDestino` (`Fk_Id_CuentaDestino`),
  ADD KEY `Fk_Id_Moneda` (`Fk_Id_Moneda`);

--
-- Indices de la tabla `tbl_movimientosnomina`
--
ALTER TABLE `tbl_movimientosnomina`
  ADD PRIMARY KEY (`Cmp_iId_MovimientoNomina`),
  ADD KEY `Fk_MovimientosNomina_Conceptos` (`Cmp_iId_ConceptoNomina`),
  ADD KEY `Ix_MovimientosNomina_IdNomina` (`Cmp_iId_Nomina`);

--
-- Indices de la tabla `tbl_mov_inv`
--
ALTER TABLE `tbl_mov_inv`
  ADD PRIMARY KEY (`Cmp_Id_Mov_Inv`),
  ADD KEY `Cmp_Id_Tipo_Movimiento_Inv` (`Cmp_Id_Tipo_Movimiento_Inv`);

--
-- Indices de la tabla `tbl_mov_inv_det`
--
ALTER TABLE `tbl_mov_inv_det`
  ADD PRIMARY KEY (`Cmp_Id_Mov_Inv_Det`),
  ADD KEY `Cmp_Id_Mov_Inv` (`Cmp_Id_Mov_Inv`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`),
  ADD KEY `Cmp_Id_Almacen` (`Cmp_Id_Almacen`);

--
-- Indices de la tabla `tbl_nit_cliente`
--
ALTER TABLE `tbl_nit_cliente`
  ADD PRIMARY KEY (`Pk_Id_Nit`),
  ADD KEY `Fk_Nit_Cliente` (`Fk_Id_Cliente`);

--
-- Indices de la tabla `tbl_nomina`
--
ALTER TABLE `tbl_nomina`
  ADD PRIMARY KEY (`Cmp_iId_Nomina`);

--
-- Indices de la tabla `tbl_nota_credito_cliente`
--
ALTER TABLE `tbl_nota_credito_cliente`
  ADD PRIMARY KEY (`Cmp_Id_Nota_Credito_Cliente`);

--
-- Indices de la tabla `tbl_nota_credito_proveedor`
--
ALTER TABLE `tbl_nota_credito_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Nota_Credito_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_nota_debito_cliente`
--
ALTER TABLE `tbl_nota_debito_cliente`
  ADD PRIMARY KEY (`Cmp_Id_Nota_Debito_Cliente`);

--
-- Indices de la tabla `tbl_nota_debito_proveedor`
--
ALTER TABLE `tbl_nota_debito_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Nota_Debito_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_numero_cliente`
--
ALTER TABLE `tbl_numero_cliente`
  ADD PRIMARY KEY (`Pk_Id_Numero`),
  ADD KEY `Fk_Numero_Cliente` (`Fk_Id_Cliente`);

--
-- Indices de la tabla `tbl_objetos_perdidos`
--
ALTER TABLE `tbl_objetos_perdidos`
  ADD PRIMARY KEY (`Pk_Id_Objeto`),
  ADD KEY `Fk_OP_Mantenimiento` (`Fk_Id_Mantenimiento`),
  ADD KEY `Fk_OP_Folio` (`Fk_Id_Folio`),
  ADD KEY `Fk_OP_Folio_Salon` (`Fk_Id_Folio_Salon`),
  ADD KEY `Fk_OP_Huesped` (`Fk_Id_Huesped`);

--
-- Indices de la tabla `tbl_oc`
--
ALTER TABLE `tbl_oc`
  ADD PRIMARY KEY (`Cmp_Id_OC`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`),
  ADD KEY `Cmp_Id_Condicion_Pago` (`Cmp_Id_Condicion_Pago`);

--
-- Indices de la tabla `tbl_oc_det`
--
ALTER TABLE `tbl_oc_det`
  ADD PRIMARY KEY (`Cmp_Id_OC_Det`),
  ADD KEY `Cmp_Id_OC` (`Cmp_Id_OC`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- Indices de la tabla `tbl_ordenes_produccion`
--
ALTER TABLE `tbl_ordenes_produccion`
  ADD PRIMARY KEY (`Pk_Id_Orden_Produccion`);

--
-- Indices de la tabla `tbl_orden_compra`
--
ALTER TABLE `tbl_orden_compra`
  ADD PRIMARY KEY (`Pk_Id_Orden_Compra`);

--
-- Indices de la tabla `tbl_orden_compra_autorizada`
--
ALTER TABLE `tbl_orden_compra_autorizada`
  ADD PRIMARY KEY (`Pk_Id_Autorizacion`),
  ADD KEY `FK_Autorizada_Orden` (`Fk_Id_Orden_Compra`),
  ADD KEY `FK_Autorizada_Banco` (`Fk_Id_Banco`),
  ADD KEY `FK_Autorizada_Empleado` (`Fk_Id_Empleado`),
  ADD KEY `FK_Autorizada_Estado` (`Fk_Id_Estado_Autorizacion`);

--
-- Indices de la tabla `tbl_pago`
--
ALTER TABLE `tbl_pago`
  ADD PRIMARY KEY (`Pk_Id_Pago`),
  ADD KEY `Fk_Id_Folio` (`Fk_Id_Folio`);

--
-- Indices de la tabla `tbl_pago_cheque`
--
ALTER TABLE `tbl_pago_cheque`
  ADD PRIMARY KEY (`Fk_Id_Pago`);

--
-- Indices de la tabla `tbl_pago_efectivo`
--
ALTER TABLE `tbl_pago_efectivo`
  ADD PRIMARY KEY (`Fk_Id_Pago`);

--
-- Indices de la tabla `tbl_pago_proveedor`
--
ALTER TABLE `tbl_pago_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Pago_Proveedor`),
  ADD KEY `Cmp_Id_Proveedor` (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_pago_proveedor_aplicacion`
--
ALTER TABLE `tbl_pago_proveedor_aplicacion`
  ADD PRIMARY KEY (`Cmp_Id_Pago_Proveedor_Aplicacion`),
  ADD KEY `Cmp_Id_Pago_Proveedor` (`Cmp_Id_Pago_Proveedor`),
  ADD KEY `Cmp_Id_CxP_Documento` (`Cmp_Id_CxP_Documento`);

--
-- Indices de la tabla `tbl_pago_proveedor_det`
--
ALTER TABLE `tbl_pago_proveedor_det`
  ADD PRIMARY KEY (`Cmp_Id_Pago_Proveedor_Det`),
  ADD KEY `Cmp_Id_Pago_Proveedor` (`Cmp_Id_Pago_Proveedor`),
  ADD KEY `Cmp_Id_Metodo_Pago` (`Cmp_Id_Metodo_Pago`);

--
-- Indices de la tabla `tbl_pago_tarjeta`
--
ALTER TABLE `tbl_pago_tarjeta`
  ADD PRIMARY KEY (`Fk_Id_Pago`);

--
-- Indices de la tabla `tbl_pago_transferencia`
--
ALTER TABLE `tbl_pago_transferencia`
  ADD PRIMARY KEY (`Fk_Id_Pago`);

--
-- Indices de la tabla `tbl_parametroscheques`
--
ALTER TABLE `tbl_parametroscheques`
  ADD PRIMARY KEY (`Pk_Id_Parametro`);

--
-- Indices de la tabla `tbl_pedidos_menu`
--
ALTER TABLE `tbl_pedidos_menu`
  ADD PRIMARY KEY (`Pk_Id_Pedido_Menu`),
  ADD KEY `Fk_Id_Reserva_Salon` (`Fk_Id_Reserva_Salon`),
  ADD KEY `Fk_Id_Menu` (`Fk_Id_Menu`);

--
-- Indices de la tabla `tbl_perfil`
--
ALTER TABLE `tbl_perfil`
  ADD PRIMARY KEY (`Pk_Id_Perfil`);

--
-- Indices de la tabla `tbl_periodoscontables`
--
ALTER TABLE `tbl_periodoscontables`
  ADD PRIMARY KEY (`Pk_Id_Periodo`),
  ADD UNIQUE KEY `Uk_Periodo` (`Cmp_Anio`,`Cmp_Mes`);

--
-- Indices de la tabla `tbl_permiso_perfil_aplicacion`
--
ALTER TABLE `tbl_permiso_perfil_aplicacion`
  ADD PRIMARY KEY (`Fk_Id_Perfil`,`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  ADD KEY `Fk_PermisoPerfil_ModuloAplicacion` (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`);

--
-- Indices de la tabla `tbl_permiso_usuario_aplicacion`
--
ALTER TABLE `tbl_permiso_usuario_aplicacion`
  ADD PRIMARY KEY (`Fk_Id_Usuario`,`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  ADD KEY `Fk_Permiso_Modulo_Aplicacion` (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`);

--
-- Indices de la tabla `tbl_prestamos`
--
ALTER TABLE `tbl_prestamos`
  ADD PRIMARY KEY (`Cmp_iId_Prestamo`),
  ADD KEY `Ix_Prestamos_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`Cmp_Id_Producto`),
  ADD UNIQUE KEY `Cmp_Codigo_Producto` (`Cmp_Codigo_Producto`),
  ADD KEY `Cmp_Id_Categoria_Producto` (`Cmp_Id_Categoria_Producto`),
  ADD KEY `Cmp_Id_Unidad_Base` (`Cmp_Id_Unidad_Base`);

--
-- Indices de la tabla `tbl_producto_um`
--
ALTER TABLE `tbl_producto_um`
  ADD PRIMARY KEY (`Cmp_Id_Producto_UM`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`),
  ADD KEY `Cmp_Id_Unidad_Medida` (`Cmp_Id_Unidad_Medida`);

--
-- Indices de la tabla `tbl_promociones`
--
ALTER TABLE `tbl_promociones`
  ADD PRIMARY KEY (`Pk_Id_Promociones`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD PRIMARY KEY (`Cmp_Id_Proveedor`);

--
-- Indices de la tabla `tbl_puestos`
--
ALTER TABLE `tbl_puestos`
  ADD PRIMARY KEY (`Cmp_iId_Puesto`),
  ADD KEY `Ix_Puestos_IdDepartamento` (`Cmp_iId_Departamento`);

--
-- Indices de la tabla `tbl_puntos_huesped`
--
ALTER TABLE `tbl_puntos_huesped`
  ADD PRIMARY KEY (`Pk_Id_Puntos_Huesped`),
  ADD KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`);

--
-- Indices de la tabla `tbl_recepcion_compra`
--
ALTER TABLE `tbl_recepcion_compra`
  ADD PRIMARY KEY (`Cmp_Id_Recepcion_Compra`),
  ADD KEY `Cmp_Id_OC` (`Cmp_Id_OC`);

--
-- Indices de la tabla `tbl_recepcion_compra_det`
--
ALTER TABLE `tbl_recepcion_compra_det`
  ADD PRIMARY KEY (`Cmp_Id_Recepcion_Compra_Det`),
  ADD KEY `Cmp_Id_Recepcion_Compra` (`Cmp_Id_Recepcion_Compra`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- Indices de la tabla `tbl_receta`
--
ALTER TABLE `tbl_receta`
  ADD PRIMARY KEY (`Pk_Id_Receta`),
  ADD KEY `Fk_Id_Menu` (`Fk_Id_Menu`),
  ADD KEY `Fk_Id_Materia_Prima` (`Fk_Id_Materia_Prima`);

--
-- Indices de la tabla `tbl_recibo`
--
ALTER TABLE `tbl_recibo`
  ADD PRIMARY KEY (`Cmp_Id_Recibo`);

--
-- Indices de la tabla `tbl_recibo_aplicacion`
--
ALTER TABLE `tbl_recibo_aplicacion`
  ADD PRIMARY KEY (`Cmp_Id_Recibo_Aplicacion`),
  ADD KEY `Cmp_Id_Recibo` (`Cmp_Id_Recibo`),
  ADD KEY `Cmp_Id_CxC_Documento` (`Cmp_Id_CxC_Documento`);

--
-- Indices de la tabla `tbl_recibo_det`
--
ALTER TABLE `tbl_recibo_det`
  ADD PRIMARY KEY (`Cmp_Id_Recibo_Det`),
  ADD KEY `Cmp_Id_Recibo` (`Cmp_Id_Recibo`),
  ADD KEY `Cmp_Id_Metodo_Pago` (`Cmp_Id_Metodo_Pago`);

--
-- Indices de la tabla `tbl_reportes`
--
ALTER TABLE `tbl_reportes`
  ADD PRIMARY KEY (`Pk_Id_Reporte`);

--
-- Indices de la tabla `tbl_reporte_balance_general`
--
ALTER TABLE `tbl_reporte_balance_general`
  ADD PRIMARY KEY (`Pk_Id_Reporte`),
  ADD KEY `Fk_Codigo_Cuenta` (`Fk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_reporte_balance_saldos`
--
ALTER TABLE `tbl_reporte_balance_saldos`
  ADD PRIMARY KEY (`Pk_Id_Reporte`),
  ADD KEY `Fk_Codigo_Cuenta` (`Fk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_reporte_estado_resultados`
--
ALTER TABLE `tbl_reporte_estado_resultados`
  ADD PRIMARY KEY (`Pk_Id_Reporte`),
  ADD KEY `Fk_Codigo_Cuenta` (`Fk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_reporte_flujo_efectivo`
--
ALTER TABLE `tbl_reporte_flujo_efectivo`
  ADD PRIMARY KEY (`Pk_Id_Reporte`),
  ADD KEY `Fk_Codigo_Cuenta` (`Fk_Codigo_Cuenta`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD PRIMARY KEY (`Pk_Id_Reserva`),
  ADD KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  ADD KEY `Fk_Id_Buffet` (`Fk_Id_Buffet`),
  ADD KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  ADD KEY `Fk_Id_Promociones` (`Fk_Id_Promociones`);

--
-- Indices de la tabla `tbl_reservas_alacarta`
--
ALTER TABLE `tbl_reservas_alacarta`
  ADD PRIMARY KEY (`PK_Id_Reserva`),
  ADD KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  ADD KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  ADD KEY `Fk_Id_Salon` (`Fk_Id_Salon`);

--
-- Indices de la tabla `tbl_reservas_salones`
--
ALTER TABLE `tbl_reservas_salones`
  ADD PRIMARY KEY (`Pk_Id_Reserva_Salon`),
  ADD KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  ADD KEY `Fk_Id_Salon` (`Fk_Id_Salon`),
  ADD KEY `Fk_Id_Promociones` (`Fk_Id_Promociones`);

--
-- Indices de la tabla `tbl_room_service`
--
ALTER TABLE `tbl_room_service`
  ADD PRIMARY KEY (`Pk_Id_Room`),
  ADD KEY `FK_Id_Huesped` (`FK_Id_Huesped`),
  ADD KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`);

--
-- Indices de la tabla `tbl_room_service_detalle`
--
ALTER TABLE `tbl_room_service_detalle`
  ADD PRIMARY KEY (`Pk_Id_Detalle`),
  ADD KEY `FK_Id_Room` (`FK_Id_Room`),
  ADD KEY `FK_Id_Menu` (`FK_Id_Menu`);

--
-- Indices de la tabla `tbl_salario_empleado`
--
ALTER TABLE `tbl_salario_empleado`
  ADD PRIMARY KEY (`Pk_Id_Salario`),
  ADD KEY `Fk_Salario_Empleado` (`Fk_Id_Empleado`);

--
-- Indices de la tabla `tbl_salones`
--
ALTER TABLE `tbl_salones`
  ADD PRIMARY KEY (`Pk_Id_Salon`);

--
-- Indices de la tabla `tbl_secuencia`
--
ALTER TABLE `tbl_secuencia`
  ADD PRIMARY KEY (`Cmp_Id_Secuencia`);

--
-- Indices de la tabla `tbl_servicios_habitacion`
--
ALTER TABLE `tbl_servicios_habitacion`
  ADD PRIMARY KEY (`PK_ID_Servicio_habitacion`);

--
-- Indices de la tabla `tbl_servicio_adicional`
--
ALTER TABLE `tbl_servicio_adicional`
  ADD PRIMARY KEY (`Pk_Id_Servicio`);

--
-- Indices de la tabla `tbl_tiposcambio`
--
ALTER TABLE `tbl_tiposcambio`
  ADD PRIMARY KEY (`Pk_Id_TipoCambio`),
  ADD KEY `Fk_Id_Moneda` (`Fk_Id_Moneda`);

--
-- Indices de la tabla `tbl_tipospago`
--
ALTER TABLE `tbl_tipospago`
  ADD PRIMARY KEY (`Pk_Id_TipoPago`);

--
-- Indices de la tabla `tbl_tipo_habitacion`
--
ALTER TABLE `tbl_tipo_habitacion`
  ADD PRIMARY KEY (`Pk_ID_Tipo_Habitaciones`);

--
-- Indices de la tabla `tbl_tipo_menu`
--
ALTER TABLE `tbl_tipo_menu`
  ADD PRIMARY KEY (`Pk_Id_Tipo_Menu`);

--
-- Indices de la tabla `tbl_tipo_movimiento_inv`
--
ALTER TABLE `tbl_tipo_movimiento_inv`
  ADD PRIMARY KEY (`Cmp_Id_Tipo_Movimiento_Inv`);

--
-- Indices de la tabla `tbl_token_restaurarcontrasena`
--
ALTER TABLE `tbl_token_restaurarcontrasena`
  ADD PRIMARY KEY (`Pk_Id_Token`),
  ADD KEY `Fk_Token_Usuario` (`Fk_Id_Usuario`);

--
-- Indices de la tabla `tbl_toma_fisica`
--
ALTER TABLE `tbl_toma_fisica`
  ADD PRIMARY KEY (`Cmp_Id_Toma_Fisica`),
  ADD KEY `Cmp_Id_Almacen` (`Cmp_Id_Almacen`);

--
-- Indices de la tabla `tbl_toma_fisica_det`
--
ALTER TABLE `tbl_toma_fisica_det`
  ADD PRIMARY KEY (`Cmp_Id_Toma_Fisica_Det`),
  ADD KEY `Cmp_Id_Toma_Fisica` (`Cmp_Id_Toma_Fisica`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- Indices de la tabla `tbl_transaccionesbancarias`
--
ALTER TABLE `tbl_transaccionesbancarias`
  ADD PRIMARY KEY (`Pk_Id_Transaccion`);

--
-- Indices de la tabla `tbl_unidad_medida`
--
ALTER TABLE `tbl_unidad_medida`
  ADD PRIMARY KEY (`Cmp_Id_Unidad_Medida`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`Pk_Id_Usuario`),
  ADD KEY `Fk_Usuario_Empleado` (`Fk_Id_Empleado`);

--
-- Indices de la tabla `tbl_usuario_perfil`
--
ALTER TABLE `tbl_usuario_perfil`
  ADD PRIMARY KEY (`Fk_Id_Usuario`,`Fk_Id_Perfil`),
  ADD KEY `Fk_UsuarioPerfil_Perfil` (`Fk_Id_Perfil`);

--
-- Indices de la tabla `tbl_vacaciones`
--
ALTER TABLE `tbl_vacaciones`
  ADD PRIMARY KEY (`Cmp_iId_Vacacion`),
  ADD KEY `Ix_Vacaciones_IdEmpleado` (`Cmp_iId_Empleado`);

--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`Cmp_IdVenta`),
  ADD KEY `Cmp_Id_Metodo_Pago` (`Cmp_Id_Metodo_Pago`);

--
-- Indices de la tabla `tbl_ventadet`
--
ALTER TABLE `tbl_ventadet`
  ADD PRIMARY KEY (`Cmp_IdVentaDet`),
  ADD KEY `Cmp_IdVenta` (`Cmp_IdVenta`),
  ADD KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_activosfijos`
--
ALTER TABLE `tbl_activosfijos`
  MODIFY `Pk_Activo_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_almacen`
--
ALTER TABLE `tbl_almacen`
  MODIFY `Cmp_Id_Almacen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_anticipos`
--
ALTER TABLE `tbl_anticipos`
  MODIFY `Cmp_iId_Anticipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `Pk_Id_Area` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_asistencias`
--
ALTER TABLE `tbl_asistencias`
  MODIFY `Cmp_iId_Asistencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ausenciaspermisos`
--
ALTER TABLE `tbl_ausenciaspermisos`
  MODIFY `Cmp_iId_AusenciaPermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bancos`
--
ALTER TABLE `tbl_bancos`
  MODIFY `Pk_Id_Banco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  MODIFY `Pk_Id_Bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `tbl_bloqueo_usuario`
--
ALTER TABLE `tbl_bloqueo_usuario`
  MODIFY `Pk_Id_Bloqueo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_buffet`
--
ALTER TABLE `tbl_buffet`
  MODIFY `Pk_Id_Buffet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_caja_egreso`
--
ALTER TABLE `tbl_caja_egreso`
  MODIFY `Cmp_Id_Caja_Egreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_caja_ingreso`
--
ALTER TABLE `tbl_caja_ingreso`
  MODIFY `Cmp_Id_Caja_Ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_categoria_producto`
--
ALTER TABLE `tbl_categoria_producto`
  MODIFY `Cmp_Id_Categoria_Producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_check_in`
--
ALTER TABLE `tbl_check_in`
  MODIFY `Pk_Id_Check_in` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_check_out`
--
ALTER TABLE `tbl_check_out`
  MODIFY `Pk_Id_Check_out` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cierrebancario`
--
ALTER TABLE `tbl_cierrebancario`
  MODIFY `Pk_Id_Cierre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cierre_diario`
--
ALTER TABLE `tbl_cierre_diario`
  MODIFY `Pk_Id_Cierre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cierre_inventario`
--
ALTER TABLE `tbl_cierre_inventario`
  MODIFY `Cmp_Id_Cierre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_conceptosnomina`
--
ALTER TABLE `tbl_conceptosnomina`
  MODIFY `Cmp_iId_ConceptoNomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_conciliacionbancaria`
--
ALTER TABLE `tbl_conciliacionbancaria`
  MODIFY `Pk_Id_Conciliacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_condicion_pago`
--
ALTER TABLE `tbl_condicion_pago`
  MODIFY `Cmp_Id_Condicion_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cuentasbancarias`
--
ALTER TABLE `tbl_cuentasbancarias`
  MODIFY `Pk_Id_CuentaBancaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_cxc_documento`
--
ALTER TABLE `tbl_cxc_documento`
  MODIFY `Cmp_Id_CxC_Documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cxp_documento`
--
ALTER TABLE `tbl_cxp_documento`
  MODIFY `Cmp_Id_CxP_Documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  MODIFY `Cmp_iId_Departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_depreciacionactivos`
--
ALTER TABLE `tbl_depreciacionactivos`
  MODIFY `Pk_Depreciacion_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detallelotecheques`
--
ALTER TABLE `tbl_detallelotecheques`
  MODIFY `Pk_Id_Detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detallesnomina`
--
ALTER TABLE `tbl_detallesnomina`
  MODIFY `Cmp_iId_DetalleNomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_cierre_diario`
--
ALTER TABLE `tbl_detalle_cierre_diario`
  MODIFY `Pk_Id_Detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_cierre_salones`
--
ALTER TABLE `tbl_detalle_cierre_salones`
  MODIFY `Pk_Id_Detalle_Salon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_folio`
--
ALTER TABLE `tbl_detalle_folio`
  MODIFY `Pk_Id_Detalle_Folio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_ordenes_menu`
--
ALTER TABLE `tbl_detalle_ordenes_menu`
  MODIFY `Pk_Id_Detalle_Orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_ordenes_mobiliario`
--
ALTER TABLE `tbl_detalle_ordenes_mobiliario`
  MODIFY `Pk_Id_Detalle_Orden_Mobiliario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devolucion_proveedor`
--
ALTER TABLE `tbl_devolucion_proveedor`
  MODIFY `Cmp_Id_Devolucion_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devolucion_proveedor_det`
--
ALTER TABLE `tbl_devolucion_proveedor_det`
  MODIFY `Cmp_Id_Devolucion_Proveedor_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_disponibilidad_diaria`
--
ALTER TABLE `tbl_disponibilidad_diaria`
  MODIFY `Pk_Id_Disponibilidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_documento_cmp_estado_hist`
--
ALTER TABLE `tbl_documento_cmp_estado_hist`
  MODIFY `Cmp_Id_Cmp_Estado_Hist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `Pk_Id_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5001;

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `Cmp_iId_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado_autorizado`
--
ALTER TABLE `tbl_empleado_autorizado`
  MODIFY `Pk_Id_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_estadia`
--
ALTER TABLE `tbl_estadia`
  MODIFY `Pk_Id_Estadia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_autorizacion`
--
ALTER TABLE `tbl_estado_autorizacion`
  MODIFY `Pk_Id_Estado_Autorizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_existencia`
--
ALTER TABLE `tbl_existencia`
  MODIFY `Cmp_Id_Existencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_export_contable`
--
ALTER TABLE `tbl_export_contable`
  MODIFY `Cmp_Id_Export_Contable` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `Pk_Id_Factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_proveedor`
--
ALTER TABLE `tbl_factura_proveedor`
  MODIFY `Cmp_Id_Factura_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_proveedor_det`
--
ALTER TABLE `tbl_factura_proveedor_det`
  MODIFY `Cmp_Id_Factura_Proveedor_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_folio`
--
ALTER TABLE `tbl_folio`
  MODIFY `Pk_Id_Folio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_folio_salones`
--
ALTER TABLE `tbl_folio_salones`
  MODIFY `Pk_Id_Folio_Salones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_historial_autorizacion`
--
ALTER TABLE `tbl_historial_autorizacion`
  MODIFY `Pk_Id_Historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_horasextra`
--
ALTER TABLE `tbl_horasextra`
  MODIFY `Cmp_iId_HoraExtra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_huesped`
--
ALTER TABLE `tbl_huesped`
  MODIFY `Pk_Id_Huesped` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_lotescheques`
--
ALTER TABLE `tbl_lotescheques`
  MODIFY `Pk_Id_Lote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_mantenimiento`
--
ALTER TABLE `tbl_mantenimiento`
  MODIFY `Pk_Id_Mantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_materia_prima`
--
ALTER TABLE `tbl_materia_prima`
  MODIFY `Pk_Id_Materia_Prima` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `Pk_Id_Menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_metodo_pago`
--
ALTER TABLE `tbl_metodo_pago`
  MODIFY `Cmp_Id_Metodo_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_mobiliario`
--
ALTER TABLE `tbl_mobiliario`
  MODIFY `Pk_Id_Mobiliario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_monedas`
--
ALTER TABLE `tbl_monedas`
  MODIFY `Pk_Id_Moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_movimientosnomina`
--
ALTER TABLE `tbl_movimientosnomina`
  MODIFY `Cmp_iId_MovimientoNomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_mov_inv`
--
ALTER TABLE `tbl_mov_inv`
  MODIFY `Cmp_Id_Mov_Inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_mov_inv_det`
--
ALTER TABLE `tbl_mov_inv_det`
  MODIFY `Cmp_Id_Mov_Inv_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nomina`
--
ALTER TABLE `tbl_nomina`
  MODIFY `Cmp_iId_Nomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nota_credito_cliente`
--
ALTER TABLE `tbl_nota_credito_cliente`
  MODIFY `Cmp_Id_Nota_Credito_Cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nota_credito_proveedor`
--
ALTER TABLE `tbl_nota_credito_proveedor`
  MODIFY `Cmp_Id_Nota_Credito_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nota_debito_cliente`
--
ALTER TABLE `tbl_nota_debito_cliente`
  MODIFY `Cmp_Id_Nota_Debito_Cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nota_debito_proveedor`
--
ALTER TABLE `tbl_nota_debito_proveedor`
  MODIFY `Cmp_Id_Nota_Debito_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_objetos_perdidos`
--
ALTER TABLE `tbl_objetos_perdidos`
  MODIFY `Pk_Id_Objeto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_oc`
--
ALTER TABLE `tbl_oc`
  MODIFY `Cmp_Id_OC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_oc_det`
--
ALTER TABLE `tbl_oc_det`
  MODIFY `Cmp_Id_OC_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ordenes_produccion`
--
ALTER TABLE `tbl_ordenes_produccion`
  MODIFY `Pk_Id_Orden_Produccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_orden_compra`
--
ALTER TABLE `tbl_orden_compra`
  MODIFY `Pk_Id_Orden_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_orden_compra_autorizada`
--
ALTER TABLE `tbl_orden_compra_autorizada`
  MODIFY `Pk_Id_Autorizacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pago`
--
ALTER TABLE `tbl_pago`
  MODIFY `Pk_Id_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pago_proveedor`
--
ALTER TABLE `tbl_pago_proveedor`
  MODIFY `Cmp_Id_Pago_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pago_proveedor_aplicacion`
--
ALTER TABLE `tbl_pago_proveedor_aplicacion`
  MODIFY `Cmp_Id_Pago_Proveedor_Aplicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pago_proveedor_det`
--
ALTER TABLE `tbl_pago_proveedor_det`
  MODIFY `Cmp_Id_Pago_Proveedor_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_parametroscheques`
--
ALTER TABLE `tbl_parametroscheques`
  MODIFY `Pk_Id_Parametro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_pedidos_menu`
--
ALTER TABLE `tbl_pedidos_menu`
  MODIFY `Pk_Id_Pedido_Menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_perfil`
--
ALTER TABLE `tbl_perfil`
  MODIFY `Pk_Id_Perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tbl_periodoscontables`
--
ALTER TABLE `tbl_periodoscontables`
  MODIFY `Pk_Id_Periodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_prestamos`
--
ALTER TABLE `tbl_prestamos`
  MODIFY `Cmp_iId_Prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `Cmp_Id_Producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_producto_um`
--
ALTER TABLE `tbl_producto_um`
  MODIFY `Cmp_Id_Producto_UM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_promociones`
--
ALTER TABLE `tbl_promociones`
  MODIFY `Pk_Id_Promociones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  MODIFY `Cmp_Id_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_puestos`
--
ALTER TABLE `tbl_puestos`
  MODIFY `Cmp_iId_Puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_puntos_huesped`
--
ALTER TABLE `tbl_puntos_huesped`
  MODIFY `Pk_Id_Puntos_Huesped` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_recepcion_compra`
--
ALTER TABLE `tbl_recepcion_compra`
  MODIFY `Cmp_Id_Recepcion_Compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_recepcion_compra_det`
--
ALTER TABLE `tbl_recepcion_compra_det`
  MODIFY `Cmp_Id_Recepcion_Compra_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_receta`
--
ALTER TABLE `tbl_receta`
  MODIFY `Pk_Id_Receta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_recibo`
--
ALTER TABLE `tbl_recibo`
  MODIFY `Cmp_Id_Recibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_recibo_aplicacion`
--
ALTER TABLE `tbl_recibo_aplicacion`
  MODIFY `Cmp_Id_Recibo_Aplicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_recibo_det`
--
ALTER TABLE `tbl_recibo_det`
  MODIFY `Cmp_Id_Recibo_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reportes`
--
ALTER TABLE `tbl_reportes`
  MODIFY `Pk_Id_Reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_reporte_balance_general`
--
ALTER TABLE `tbl_reporte_balance_general`
  MODIFY `Pk_Id_Reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reporte_balance_saldos`
--
ALTER TABLE `tbl_reporte_balance_saldos`
  MODIFY `Pk_Id_Reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reporte_estado_resultados`
--
ALTER TABLE `tbl_reporte_estado_resultados`
  MODIFY `Pk_Id_Reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reporte_flujo_efectivo`
--
ALTER TABLE `tbl_reporte_flujo_efectivo`
  MODIFY `Pk_Id_Reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  MODIFY `Pk_Id_Reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reservas_alacarta`
--
ALTER TABLE `tbl_reservas_alacarta`
  MODIFY `PK_Id_Reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reservas_salones`
--
ALTER TABLE `tbl_reservas_salones`
  MODIFY `Pk_Id_Reserva_Salon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_room_service`
--
ALTER TABLE `tbl_room_service`
  MODIFY `Pk_Id_Room` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_room_service_detalle`
--
ALTER TABLE `tbl_room_service_detalle`
  MODIFY `Pk_Id_Detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_salones`
--
ALTER TABLE `tbl_salones`
  MODIFY `Pk_Id_Salon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_secuencia`
--
ALTER TABLE `tbl_secuencia`
  MODIFY `Cmp_Id_Secuencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_servicios_habitacion`
--
ALTER TABLE `tbl_servicios_habitacion`
  MODIFY `PK_ID_Servicio_habitacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_servicio_adicional`
--
ALTER TABLE `tbl_servicio_adicional`
  MODIFY `Pk_Id_Servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tiposcambio`
--
ALTER TABLE `tbl_tiposcambio`
  MODIFY `Pk_Id_TipoCambio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipospago`
--
ALTER TABLE `tbl_tipospago`
  MODIFY `Pk_Id_TipoPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_habitacion`
--
ALTER TABLE `tbl_tipo_habitacion`
  MODIFY `Pk_ID_Tipo_Habitaciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_menu`
--
ALTER TABLE `tbl_tipo_menu`
  MODIFY `Pk_Id_Tipo_Menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_movimiento_inv`
--
ALTER TABLE `tbl_tipo_movimiento_inv`
  MODIFY `Cmp_Id_Tipo_Movimiento_Inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_token_restaurarcontrasena`
--
ALTER TABLE `tbl_token_restaurarcontrasena`
  MODIFY `Pk_Id_Token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tbl_toma_fisica`
--
ALTER TABLE `tbl_toma_fisica`
  MODIFY `Cmp_Id_Toma_Fisica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_toma_fisica_det`
--
ALTER TABLE `tbl_toma_fisica_det`
  MODIFY `Cmp_Id_Toma_Fisica_Det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_unidad_medida`
--
ALTER TABLE `tbl_unidad_medida`
  MODIFY `Cmp_Id_Unidad_Medida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `Pk_Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `tbl_vacaciones`
--
ALTER TABLE `tbl_vacaciones`
  MODIFY `Cmp_iId_Vacacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `Cmp_IdVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ventadet`
--
ALTER TABLE `tbl_ventadet`
  MODIFY `Cmp_IdVentaDet` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_activosfijos`
--
ALTER TABLE `tbl_activosfijos`
  ADD CONSTRAINT `tbl_activosfijos_ibfk_1` FOREIGN KEY (`Cmp_CtaActivo`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`),
  ADD CONSTRAINT `tbl_activosfijos_ibfk_2` FOREIGN KEY (`Cmp_CtaDepreciacion`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`),
  ADD CONSTRAINT `tbl_activosfijos_ibfk_3` FOREIGN KEY (`Cmp_CtaGastoDepreciacion`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`);

--
-- Filtros para la tabla `tbl_anticipos`
--
ALTER TABLE `tbl_anticipos`
  ADD CONSTRAINT `Fk_Anticipos_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_aplicacion`
--
ALTER TABLE `tbl_aplicacion`
  ADD CONSTRAINT `Fk_Aplicacion_Reporte` FOREIGN KEY (`Fk_Id_Reporte_Aplicacion`) REFERENCES `tbl_reportes` (`Pk_Id_Reporte`);

--
-- Filtros para la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD CONSTRAINT `tbl_area_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`);

--
-- Filtros para la tabla `tbl_asignacion_habitacion_servicio`
--
ALTER TABLE `tbl_asignacion_habitacion_servicio`
  ADD CONSTRAINT `tbl_asignacion_habitacion_servicio_ibfk_1` FOREIGN KEY (`Fk_ID_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  ADD CONSTRAINT `tbl_asignacion_habitacion_servicio_ibfk_2` FOREIGN KEY (`Fk_Id_Servicio`) REFERENCES `tbl_servicios_habitacion` (`PK_ID_Servicio_habitacion`);

--
-- Filtros para la tabla `tbl_asignacion_modulo_aplicacion`
--
ALTER TABLE `tbl_asignacion_modulo_aplicacion`
  ADD CONSTRAINT `Fk_AsigAplicacion` FOREIGN KEY (`Fk_Id_Aplicacion`) REFERENCES `tbl_aplicacion` (`Pk_Id_Aplicacion`),
  ADD CONSTRAINT `Fk_AsigModulo` FOREIGN KEY (`Fk_Id_Modulo`) REFERENCES `tbl_modulo` (`Pk_Id_Modulo`);

--
-- Filtros para la tabla `tbl_asignar_perfil_cliente`
--
ALTER TABLE `tbl_asignar_perfil_cliente`
  ADD CONSTRAINT `Fk_AsigCliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`),
  ADD CONSTRAINT `Fk_AsigPerfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`);

--
-- Filtros para la tabla `tbl_asistencias`
--
ALTER TABLE `tbl_asistencias`
  ADD CONSTRAINT `Fk_Asistencias_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_ausenciaspermisos`
--
ALTER TABLE `tbl_ausenciaspermisos`
  ADD CONSTRAINT `Fk_AusenciasPermisos_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD CONSTRAINT `Fk_Bitacora_Aplicacion` FOREIGN KEY (`Fk_Id_Aplicacion`) REFERENCES `tbl_aplicacion` (`Pk_Id_Aplicacion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Bitacora_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`);

--
-- Filtros para la tabla `tbl_bloqueo_usuario`
--
ALTER TABLE `tbl_bloqueo_usuario`
  ADD CONSTRAINT `Fk_Bloqueo_Bitacora` FOREIGN KEY (`Fk_Id_Bitacora`) REFERENCES `tbl_bitacora` (`Pk_Id_Bitacora`),
  ADD CONSTRAINT `Fk_Bloqueo_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`);

--
-- Filtros para la tabla `tbl_caja_egreso`
--
ALTER TABLE `tbl_caja_egreso`
  ADD CONSTRAINT `tbl_caja_egreso_ibfk_1` FOREIGN KEY (`Cmp_Id_Pago_Proveedor`) REFERENCES `tbl_pago_proveedor` (`Cmp_Id_Pago_Proveedor`);

--
-- Filtros para la tabla `tbl_caja_ingreso`
--
ALTER TABLE `tbl_caja_ingreso`
  ADD CONSTRAINT `tbl_caja_ingreso_ibfk_1` FOREIGN KEY (`Cmp_Id_Recibo`) REFERENCES `tbl_recibo` (`Cmp_Id_Recibo`);

--
-- Filtros para la tabla `tbl_catalogo_cuentas`
--
ALTER TABLE `tbl_catalogo_cuentas`
  ADD CONSTRAINT `Fk_CtaMadre` FOREIGN KEY (`Cmp_CtaMadre`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_check_in`
--
ALTER TABLE `tbl_check_in`
  ADD CONSTRAINT `tbl_check_in_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  ADD CONSTRAINT `tbl_check_in_ibfk_2` FOREIGN KEY (`Fk_Id_Reserva`) REFERENCES `tbl_reserva` (`Pk_Id_Reserva`);

--
-- Filtros para la tabla `tbl_check_out`
--
ALTER TABLE `tbl_check_out`
  ADD CONSTRAINT `tbl_check_out_ibfk_1` FOREIGN KEY (`Fk_Id_Check_In`) REFERENCES `tbl_check_in` (`Pk_Id_Check_in`);

--
-- Filtros para la tabla `tbl_cierrebancario`
--
ALTER TABLE `tbl_cierrebancario`
  ADD CONSTRAINT `tbl_cierrebancario_ibfk_1` FOREIGN KEY (`Fk_Id_CuentaBancaria`) REFERENCES `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_cierre_inventario`
--
ALTER TABLE `tbl_cierre_inventario`
  ADD CONSTRAINT `tbl_cierre_inventario_ibfk_1` FOREIGN KEY (`Cmp_Id_Almacen`) REFERENCES `tbl_almacen` (`Cmp_Id_Almacen`);

--
-- Filtros para la tabla `tbl_conceptosnomina`
--
ALTER TABLE `tbl_conceptosnomina`
  ADD CONSTRAINT `Fk_ConceptosNomina_Cuenta` FOREIGN KEY (`Fk_Codigo_Cuenta`) REFERENCES `bd_hoteleria`.`tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`);

--
-- Filtros para la tabla `tbl_conciliacionbancaria`
--
ALTER TABLE `tbl_conciliacionbancaria`
  ADD CONSTRAINT `tbl_conciliacionbancaria_ibfk_1` FOREIGN KEY (`Fk_Id_CuentaBancaria`) REFERENCES `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`);

--
-- Filtros para la tabla `tbl_correo_cliente`
--
ALTER TABLE `tbl_correo_cliente`
  ADD CONSTRAINT `Fk_Correo_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`);

--
-- Filtros para la tabla `tbl_cuentasbancarias`
--
ALTER TABLE `tbl_cuentasbancarias`
  ADD CONSTRAINT `tbl_cuentasbancarias_ibfk_1` FOREIGN KEY (`Fk_Id_Banco`) REFERENCES `tbl_bancos` (`Pk_Id_Banco`);

--
-- Filtros para la tabla `tbl_cxp_documento`
--
ALTER TABLE `tbl_cxp_documento`
  ADD CONSTRAINT `tbl_cxp_documento_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_depreciacionactivos`
--
ALTER TABLE `tbl_depreciacionactivos`
  ADD CONSTRAINT `tbl_depreciacionactivos_ibfk_1` FOREIGN KEY (`Fk_Activo_ID`) REFERENCES `tbl_activosfijos` (`Pk_Activo_ID`);

--
-- Filtros para la tabla `tbl_detallelotecheques`
--
ALTER TABLE `tbl_detallelotecheques`
  ADD CONSTRAINT `tbl_detallelotecheques_ibfk_1` FOREIGN KEY (`Fk_Id_Lote`) REFERENCES `tbl_lotescheques` (`Pk_Id_Lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detallepoliza`
--
ALTER TABLE `tbl_detallepoliza`
  ADD CONSTRAINT `fk_detalle_poliza_cuenta` FOREIGN KEY (`PkFk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_poliza_encabezado` FOREIGN KEY (`PkFk_EncCodigo_Poliza`,`PkFk_Fecha_Poliza`) REFERENCES `tbl_encabezadopoliza` (`Pk_EncCodigo_Poliza`, `Pk_Fecha_Poliza`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detallesnomina`
--
ALTER TABLE `tbl_detallesnomina`
  ADD CONSTRAINT `Fk_DetallesNomina_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`),
  ADD CONSTRAINT `Fk_DetallesNomina_Nomina` FOREIGN KEY (`Cmp_iId_Nomina`) REFERENCES `tbl_nomina` (`Cmp_iId_Nomina`);

--
-- Filtros para la tabla `tbl_detalle_cierre_diario`
--
ALTER TABLE `tbl_detalle_cierre_diario`
  ADD CONSTRAINT `tbl_detalle_cierre_diario_ibfk_1` FOREIGN KEY (`Fk_Id_Cierre`) REFERENCES `tbl_cierre_diario` (`Pk_Id_Cierre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detalle_cierre_diario_ibfk_2` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detalle_cierre_salones`
--
ALTER TABLE `tbl_detalle_cierre_salones`
  ADD CONSTRAINT `tbl_detalle_cierre_salones_ibfk_1` FOREIGN KEY (`Fk_Id_Cierre`) REFERENCES `tbl_cierre_diario` (`Pk_Id_Cierre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detalle_cierre_salones_ibfk_2` FOREIGN KEY (`Fk_Id_Folio_Salon`) REFERENCES `tbl_folio_salones` (`Pk_Id_Folio_Salones`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detalle_folio`
--
ALTER TABLE `tbl_detalle_folio`
  ADD CONSTRAINT `Tbl_Detalle_Folio_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`),
  ADD CONSTRAINT `Tbl_Detalle_Folio_ibfk_2` FOREIGN KEY (`Fk_Id_Area`) REFERENCES `tbl_area` (`Pk_Id_Area`);

--
-- Filtros para la tabla `tbl_detalle_ordenes_menu`
--
ALTER TABLE `tbl_detalle_ordenes_menu`
  ADD CONSTRAINT `tbl_detalle_ordenes_menu_ibfk_1` FOREIGN KEY (`Fk_Id_Orden_Produccion`) REFERENCES `tbl_ordenes_produccion` (`Pk_Id_Orden_Produccion`),
  ADD CONSTRAINT `tbl_detalle_ordenes_menu_ibfk_2` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`);

--
-- Filtros para la tabla `tbl_detalle_ordenes_mobiliario`
--
ALTER TABLE `tbl_detalle_ordenes_mobiliario`
  ADD CONSTRAINT `tbl_detalle_ordenes_mobiliario_ibfk_1` FOREIGN KEY (`Fk_Id_Orden_Produccion`) REFERENCES `tbl_ordenes_produccion` (`Pk_Id_Orden_Produccion`),
  ADD CONSTRAINT `tbl_detalle_ordenes_mobiliario_ibfk_2` FOREIGN KEY (`Fk_Id_Mobiliario`) REFERENCES `tbl_mobiliario` (`Pk_Id_Mobiliario`);

--
-- Filtros para la tabla `tbl_devolucion_proveedor`
--
ALTER TABLE `tbl_devolucion_proveedor`
  ADD CONSTRAINT `tbl_devolucion_proveedor_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`),
  ADD CONSTRAINT `tbl_devolucion_proveedor_ibfk_2` FOREIGN KEY (`Cmp_Id_Factura_Proveedor`) REFERENCES `tbl_factura_proveedor` (`Cmp_Id_Factura_Proveedor`);

--
-- Filtros para la tabla `tbl_devolucion_proveedor_det`
--
ALTER TABLE `tbl_devolucion_proveedor_det`
  ADD CONSTRAINT `tbl_devolucion_proveedor_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Devolucion_Proveedor`) REFERENCES `tbl_devolucion_proveedor` (`Cmp_Id_Devolucion_Proveedor`),
  ADD CONSTRAINT `tbl_devolucion_proveedor_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);

--
-- Filtros para la tabla `tbl_disponibilidad_diaria`
--
ALTER TABLE `tbl_disponibilidad_diaria`
  ADD CONSTRAINT `Fk_Disponibilidad_Cuenta` FOREIGN KEY (`Fk_Id_CuentaBancaria`) REFERENCES `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD CONSTRAINT `Fk_Empleados_Puestos` FOREIGN KEY (`Cmp_iId_Puesto`) REFERENCES `tbl_puestos` (`Cmp_iId_Puesto`);

--
-- Filtros para la tabla `tbl_estadia`
--
ALTER TABLE `tbl_estadia`
  ADD CONSTRAINT `tbl_estadia_ibfk_1` FOREIGN KEY (`Fk_Id_Habitaciones`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  ADD CONSTRAINT `tbl_estadia_ibfk_2` FOREIGN KEY (`Fk_Id_Huesped_Checkin`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`);

--
-- Filtros para la tabla `tbl_existencia`
--
ALTER TABLE `tbl_existencia`
  ADD CONSTRAINT `tbl_existencia_ibfk_1` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`),
  ADD CONSTRAINT `tbl_existencia_ibfk_2` FOREIGN KEY (`Cmp_Id_Almacen`) REFERENCES `tbl_almacen` (`Cmp_Id_Almacen`);

--
-- Filtros para la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD CONSTRAINT `tbl_factura_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva`) REFERENCES `tbl_reserva` (`Pk_Id_Reserva`);

--
-- Filtros para la tabla `tbl_factura_proveedor`
--
ALTER TABLE `tbl_factura_proveedor`
  ADD CONSTRAINT `tbl_factura_proveedor_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`);

--
-- Filtros para la tabla `tbl_factura_proveedor_det`
--
ALTER TABLE `tbl_factura_proveedor_det`
  ADD CONSTRAINT `tbl_factura_proveedor_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Factura_Proveedor`) REFERENCES `tbl_factura_proveedor` (`Cmp_Id_Factura_Proveedor`),
  ADD CONSTRAINT `tbl_factura_proveedor_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);

--
-- Filtros para la tabla `tbl_folio`
--
ALTER TABLE `tbl_folio`
  ADD CONSTRAINT `tbl_folio_ibfk_1` FOREIGN KEY (`Fk_Id_Check_In`) REFERENCES `tbl_check_in` (`Pk_Id_Check_in`),
  ADD CONSTRAINT `tbl_folio_ibfk_2` FOREIGN KEY (`Fk_Id_Check_Out`) REFERENCES `tbl_check_out` (`Pk_Id_Check_out`),
  ADD CONSTRAINT `tbl_folio_ibfk_3` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`);

--
-- Filtros para la tabla `tbl_folio_salones`
--
ALTER TABLE `tbl_folio_salones`
  ADD CONSTRAINT `tbl_folio_salones_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva_Salon`) REFERENCES `tbl_reservas_salones` (`Pk_Id_Reserva_Salon`);

--
-- Filtros para la tabla `tbl_habitaciones`
--
ALTER TABLE `tbl_habitaciones`
  ADD CONSTRAINT `tbl_habitaciones_ibfk_1` FOREIGN KEY (`FK_ID_Tipo_Habitaciones`) REFERENCES `tbl_tipo_habitacion` (`Pk_ID_Tipo_Habitaciones`);

--
-- Filtros para la tabla `tbl_historial_autorizacion`
--
ALTER TABLE `tbl_historial_autorizacion`
  ADD CONSTRAINT `FK_Historial_Autorizacion` FOREIGN KEY (`Fk_Id_Autorizacion`) REFERENCES `tbl_orden_compra_autorizada` (`Pk_Id_Autorizacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_historico_catalogo_cuentas`
--
ALTER TABLE `tbl_historico_catalogo_cuentas`
  ADD CONSTRAINT `Fk_Historico_Cuenta` FOREIGN KEY (`Pk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Historico_Periodo` FOREIGN KEY (`Cmp_Anio`,`Cmp_Mes`) REFERENCES `tbl_periodoscontables` (`Cmp_Anio`, `Cmp_Mes`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_horasextra`
--
ALTER TABLE `tbl_horasextra`
  ADD CONSTRAINT `Fk_HorasExtra_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_mantenimiento`
--
ALTER TABLE `tbl_mantenimiento`
  ADD CONSTRAINT `tbl_mantenimiento_ibfk_1` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`),
  ADD CONSTRAINT `tbl_mantenimiento_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  ADD CONSTRAINT `tbl_mantenimiento_ibfk_3` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`);

--
-- Filtros para la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`Fk_Id_Tipo_Menu`) REFERENCES `tbl_tipo_menu` (`Pk_Id_Tipo_Menu`);

--
-- Filtros para la tabla `tbl_movimientobancariodetalle`
--
ALTER TABLE `tbl_movimientobancariodetalle`
  ADD CONSTRAINT `fk_det_cta` FOREIGN KEY (`Fk_Id_CuentaContable`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`),
  ADD CONSTRAINT `fk_det_enc` FOREIGN KEY (`Fk_Id_Movimiento`,`Fk_Id_CuentaOrigen`,`Fk_Id_Operacion`) REFERENCES `tbl_movimientobancarioencabezado` (`Pk_Id_Movimiento`, `Fk_Id_CuentaOrigen`, `Fk_Id_Operacion`);

--
-- Filtros para la tabla `tbl_movimientobancarioencabezado`
--
ALTER TABLE `tbl_movimientobancarioencabezado`
  ADD CONSTRAINT `tbl_movimientobancarioencabezado_ibfk_1` FOREIGN KEY (`Fk_Id_CuentaOrigen`) REFERENCES `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`),
  ADD CONSTRAINT `tbl_movimientobancarioencabezado_ibfk_2` FOREIGN KEY (`Fk_Id_Operacion`) REFERENCES `tbl_transaccionesbancarias` (`Pk_Id_Transaccion`),
  ADD CONSTRAINT `tbl_movimientobancarioencabezado_ibfk_3` FOREIGN KEY (`Fk_Id_TipoPago`) REFERENCES `tbl_tipospago` (`Pk_Id_TipoPago`),
  ADD CONSTRAINT `tbl_movimientobancarioencabezado_ibfk_4` FOREIGN KEY (`Fk_Id_CuentaDestino`) REFERENCES `tbl_cuentasbancarias` (`Pk_Id_CuentaBancaria`),
  ADD CONSTRAINT `tbl_movimientobancarioencabezado_ibfk_5` FOREIGN KEY (`Fk_Id_Moneda`) REFERENCES `tbl_monedas` (`Pk_Id_Moneda`);

--
-- Filtros para la tabla `tbl_movimientosnomina`
--
ALTER TABLE `tbl_movimientosnomina`
  ADD CONSTRAINT `Fk_MovimientosNomina_Conceptos` FOREIGN KEY (`Cmp_iId_ConceptoNomina`) REFERENCES `tbl_conceptosnomina` (`Cmp_iId_ConceptoNomina`),
  ADD CONSTRAINT `Fk_MovimientosNomina_Nomina` FOREIGN KEY (`Cmp_iId_Nomina`) REFERENCES `tbl_nomina` (`Cmp_iId_Nomina`);

--
-- Filtros para la tabla `tbl_mov_inv`
--
ALTER TABLE `tbl_mov_inv`
  ADD CONSTRAINT `tbl_mov_inv_ibfk_1` FOREIGN KEY (`Cmp_Id_Tipo_Movimiento_Inv`) REFERENCES `tbl_tipo_movimiento_inv` (`Cmp_Id_Tipo_Movimiento_Inv`);

--
-- Filtros para la tabla `tbl_mov_inv_det`
--
ALTER TABLE `tbl_mov_inv_det`
  ADD CONSTRAINT `tbl_mov_inv_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Mov_Inv`) REFERENCES `tbl_mov_inv` (`Cmp_Id_Mov_Inv`),
  ADD CONSTRAINT `tbl_mov_inv_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`),
  ADD CONSTRAINT `tbl_mov_inv_det_ibfk_3` FOREIGN KEY (`Cmp_Id_Almacen`) REFERENCES `tbl_almacen` (`Cmp_Id_Almacen`);

--
-- Filtros para la tabla `tbl_nit_cliente`
--
ALTER TABLE `tbl_nit_cliente`
  ADD CONSTRAINT `Fk_Nit_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`);

--
-- Filtros para la tabla `tbl_nota_credito_proveedor`
--
ALTER TABLE `tbl_nota_credito_proveedor`
  ADD CONSTRAINT `tbl_nota_credito_proveedor_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`);

--
-- Filtros para la tabla `tbl_nota_debito_proveedor`
--
ALTER TABLE `tbl_nota_debito_proveedor`
  ADD CONSTRAINT `tbl_nota_debito_proveedor_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`);

--
-- Filtros para la tabla `tbl_numero_cliente`
--
ALTER TABLE `tbl_numero_cliente`
  ADD CONSTRAINT `Fk_Numero_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`);

--
-- Filtros para la tabla `tbl_objetos_perdidos`
--
ALTER TABLE `tbl_objetos_perdidos`
  ADD CONSTRAINT `Fk_OP_Folio` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_OP_Folio_Salon` FOREIGN KEY (`Fk_Id_Folio_Salon`) REFERENCES `tbl_folio_salones` (`Pk_Id_Folio_Salones`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_OP_Huesped` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_OP_Mantenimiento` FOREIGN KEY (`Fk_Id_Mantenimiento`) REFERENCES `tbl_mantenimiento` (`Pk_Id_Mantenimiento`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_oc`
--
ALTER TABLE `tbl_oc`
  ADD CONSTRAINT `tbl_oc_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`),
  ADD CONSTRAINT `tbl_oc_ibfk_2` FOREIGN KEY (`Cmp_Id_Condicion_Pago`) REFERENCES `tbl_condicion_pago` (`Cmp_Id_Condicion_Pago`);

--
-- Filtros para la tabla `tbl_oc_det`
--
ALTER TABLE `tbl_oc_det`
  ADD CONSTRAINT `tbl_oc_det_ibfk_1` FOREIGN KEY (`Cmp_Id_OC`) REFERENCES `tbl_oc` (`Cmp_Id_OC`),
  ADD CONSTRAINT `tbl_oc_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);

--
-- Filtros para la tabla `tbl_orden_compra_autorizada`
--
ALTER TABLE `tbl_orden_compra_autorizada`
  ADD CONSTRAINT `FK_Autorizada_Banco` FOREIGN KEY (`Fk_Id_Banco`) REFERENCES `tbl_bancos` (`Pk_Id_Banco`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Autorizada_Empleado` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado_autorizado` (`Pk_Id_Empleado`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Autorizada_Estado` FOREIGN KEY (`Fk_Id_Estado_Autorizacion`) REFERENCES `tbl_estado_autorizacion` (`Pk_Id_Estado_Autorizacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Autorizada_Orden` FOREIGN KEY (`Fk_Id_Orden_Compra`) REFERENCES `tbl_orden_compra` (`Pk_Id_Orden_Compra`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago`
--
ALTER TABLE `tbl_pago`
  ADD CONSTRAINT `tbl_pago_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_cheque`
--
ALTER TABLE `tbl_pago_cheque`
  ADD CONSTRAINT `tbl_pago_cheque_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_efectivo`
--
ALTER TABLE `tbl_pago_efectivo`
  ADD CONSTRAINT `tbl_pago_efectivo_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_proveedor`
--
ALTER TABLE `tbl_pago_proveedor`
  ADD CONSTRAINT `tbl_pago_proveedor_ibfk_1` FOREIGN KEY (`Cmp_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Cmp_Id_Proveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_proveedor_aplicacion`
--
ALTER TABLE `tbl_pago_proveedor_aplicacion`
  ADD CONSTRAINT `tbl_pago_proveedor_aplicacion_ibfk_1` FOREIGN KEY (`Cmp_Id_Pago_Proveedor`) REFERENCES `tbl_pago_proveedor` (`Cmp_Id_Pago_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pago_proveedor_aplicacion_ibfk_2` FOREIGN KEY (`Cmp_Id_CxP_Documento`) REFERENCES `tbl_cxp_documento` (`Cmp_Id_CxP_Documento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_proveedor_det`
--
ALTER TABLE `tbl_pago_proveedor_det`
  ADD CONSTRAINT `tbl_pago_proveedor_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Pago_Proveedor`) REFERENCES `tbl_pago_proveedor` (`Cmp_Id_Pago_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pago_proveedor_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Metodo_Pago`) REFERENCES `tbl_metodo_pago` (`Cmp_Id_Metodo_Pago`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_tarjeta`
--
ALTER TABLE `tbl_pago_tarjeta`
  ADD CONSTRAINT `tbl_pago_tarjeta_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pago_transferencia`
--
ALTER TABLE `tbl_pago_transferencia`
  ADD CONSTRAINT `tbl_pago_transferencia_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pedidos_menu`
--
ALTER TABLE `tbl_pedidos_menu`
  ADD CONSTRAINT `tbl_pedidos_menu_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva_Salon`) REFERENCES `tbl_reservas_salones` (`Pk_Id_Reserva_Salon`),
  ADD CONSTRAINT `tbl_pedidos_menu_ibfk_2` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`);

--
-- Filtros para la tabla `tbl_permiso_perfil_aplicacion`
--
ALTER TABLE `tbl_permiso_perfil_aplicacion`
  ADD CONSTRAINT `Fk_PermisoPerfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_PermisoPerfil_ModuloAplicacion` FOREIGN KEY (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`) REFERENCES `tbl_asignacion_modulo_aplicacion` (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_permiso_usuario_aplicacion`
--
ALTER TABLE `tbl_permiso_usuario_aplicacion`
  ADD CONSTRAINT `Fk_Permiso_Modulo_Aplicacion` FOREIGN KEY (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`) REFERENCES `tbl_asignacion_modulo_aplicacion` (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Permiso_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`);

--
-- Filtros para la tabla `tbl_prestamos`
--
ALTER TABLE `tbl_prestamos`
  ADD CONSTRAINT `Fk_Prestamos_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`Cmp_Id_Categoria_Producto`) REFERENCES `tbl_categoria_producto` (`Cmp_Id_Categoria_Producto`),
  ADD CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`Cmp_Id_Unidad_Base`) REFERENCES `tbl_unidad_medida` (`Cmp_Id_Unidad_Medida`);

--
-- Filtros para la tabla `tbl_producto_um`
--
ALTER TABLE `tbl_producto_um`
  ADD CONSTRAINT `tbl_producto_um_ibfk_1` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`),
  ADD CONSTRAINT `tbl_producto_um_ibfk_2` FOREIGN KEY (`Cmp_Id_Unidad_Medida`) REFERENCES `tbl_unidad_medida` (`Cmp_Id_Unidad_Medida`);

--
-- Filtros para la tabla `tbl_puestos`
--
ALTER TABLE `tbl_puestos`
  ADD CONSTRAINT `Fk_Puestos_Departamentos` FOREIGN KEY (`Cmp_iId_Departamento`) REFERENCES `tbl_departamentos` (`Cmp_iId_Departamento`);

--
-- Filtros para la tabla `tbl_puntos_huesped`
--
ALTER TABLE `tbl_puntos_huesped`
  ADD CONSTRAINT `tbl_puntos_huesped_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`);

--
-- Filtros para la tabla `tbl_recepcion_compra`
--
ALTER TABLE `tbl_recepcion_compra`
  ADD CONSTRAINT `tbl_recepcion_compra_ibfk_1` FOREIGN KEY (`Cmp_Id_OC`) REFERENCES `tbl_oc` (`Cmp_Id_OC`);

--
-- Filtros para la tabla `tbl_recepcion_compra_det`
--
ALTER TABLE `tbl_recepcion_compra_det`
  ADD CONSTRAINT `tbl_recepcion_compra_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Recepcion_Compra`) REFERENCES `tbl_recepcion_compra` (`Cmp_Id_Recepcion_Compra`),
  ADD CONSTRAINT `tbl_recepcion_compra_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);

--
-- Filtros para la tabla `tbl_receta`
--
ALTER TABLE `tbl_receta`
  ADD CONSTRAINT `tbl_receta_ibfk_1` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`),
  ADD CONSTRAINT `tbl_receta_ibfk_2` FOREIGN KEY (`Fk_Id_Materia_Prima`) REFERENCES `tbl_materia_prima` (`Pk_Id_Materia_Prima`);

--
-- Filtros para la tabla `tbl_recibo_aplicacion`
--
ALTER TABLE `tbl_recibo_aplicacion`
  ADD CONSTRAINT `tbl_recibo_aplicacion_ibfk_1` FOREIGN KEY (`Cmp_Id_Recibo`) REFERENCES `tbl_recibo` (`Cmp_Id_Recibo`),
  ADD CONSTRAINT `tbl_recibo_aplicacion_ibfk_2` FOREIGN KEY (`Cmp_Id_CxC_Documento`) REFERENCES `tbl_cxc_documento` (`Cmp_Id_CxC_Documento`);

--
-- Filtros para la tabla `tbl_recibo_det`
--
ALTER TABLE `tbl_recibo_det`
  ADD CONSTRAINT `tbl_recibo_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Recibo`) REFERENCES `tbl_recibo` (`Cmp_Id_Recibo`),
  ADD CONSTRAINT `tbl_recibo_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Metodo_Pago`) REFERENCES `tbl_metodo_pago` (`Cmp_Id_Metodo_Pago`);

--
-- Filtros para la tabla `tbl_reporte_balance_general`
--
ALTER TABLE `tbl_reporte_balance_general`
  ADD CONSTRAINT `tbl_reporte_balance_general_ibfk_1` FOREIGN KEY (`Fk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_reporte_balance_saldos`
--
ALTER TABLE `tbl_reporte_balance_saldos`
  ADD CONSTRAINT `tbl_reporte_balance_saldos_ibfk_1` FOREIGN KEY (`Fk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_reporte_estado_resultados`
--
ALTER TABLE `tbl_reporte_estado_resultados`
  ADD CONSTRAINT `tbl_reporte_estado_resultados_ibfk_1` FOREIGN KEY (`Fk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_reporte_flujo_efectivo`
--
ALTER TABLE `tbl_reporte_flujo_efectivo`
  ADD CONSTRAINT `tbl_reporte_flujo_efectivo_ibfk_1` FOREIGN KEY (`Fk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD CONSTRAINT `tbl_reserva_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  ADD CONSTRAINT `tbl_reserva_ibfk_2` FOREIGN KEY (`Fk_Id_Buffet`) REFERENCES `tbl_buffet` (`Pk_Id_Buffet`),
  ADD CONSTRAINT `tbl_reserva_ibfk_3` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  ADD CONSTRAINT `tbl_reserva_ibfk_4` FOREIGN KEY (`Fk_Id_Promociones`) REFERENCES `tbl_promociones` (`Pk_Id_Promociones`);

--
-- Filtros para la tabla `tbl_reservas_alacarta`
--
ALTER TABLE `tbl_reservas_alacarta`
  ADD CONSTRAINT `tbl_reservas_alacarta_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  ADD CONSTRAINT `tbl_reservas_alacarta_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  ADD CONSTRAINT `tbl_reservas_alacarta_ibfk_3` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`);

--
-- Filtros para la tabla `tbl_reservas_salones`
--
ALTER TABLE `tbl_reservas_salones`
  ADD CONSTRAINT `tbl_reservas_salones_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  ADD CONSTRAINT `tbl_reservas_salones_ibfk_2` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`),
  ADD CONSTRAINT `tbl_reservas_salones_ibfk_3` FOREIGN KEY (`Fk_Id_Promociones`) REFERENCES `tbl_promociones` (`Pk_Id_Promociones`);

--
-- Filtros para la tabla `tbl_room_service`
--
ALTER TABLE `tbl_room_service`
  ADD CONSTRAINT `tbl_room_service_ibfk_1` FOREIGN KEY (`FK_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  ADD CONSTRAINT `tbl_room_service_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`);

--
-- Filtros para la tabla `tbl_room_service_detalle`
--
ALTER TABLE `tbl_room_service_detalle`
  ADD CONSTRAINT `tbl_room_service_detalle_ibfk_1` FOREIGN KEY (`FK_Id_Room`) REFERENCES `tbl_room_service` (`Pk_Id_Room`),
  ADD CONSTRAINT `tbl_room_service_detalle_ibfk_2` FOREIGN KEY (`FK_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`);

--
-- Filtros para la tabla `tbl_salario_empleado`
--
ALTER TABLE `tbl_salario_empleado`
  ADD CONSTRAINT `Fk_Salario_Empleado` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`);

--
-- Filtros para la tabla `tbl_tiposcambio`
--
ALTER TABLE `tbl_tiposcambio`
  ADD CONSTRAINT `tbl_tiposcambio_ibfk_1` FOREIGN KEY (`Fk_Id_Moneda`) REFERENCES `tbl_monedas` (`Pk_Id_Moneda`);

--
-- Filtros para la tabla `tbl_token_restaurarcontrasena`
--
ALTER TABLE `tbl_token_restaurarcontrasena`
  ADD CONSTRAINT `Fk_Token_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`);

--
-- Filtros para la tabla `tbl_toma_fisica`
--
ALTER TABLE `tbl_toma_fisica`
  ADD CONSTRAINT `tbl_toma_fisica_ibfk_1` FOREIGN KEY (`Cmp_Id_Almacen`) REFERENCES `tbl_almacen` (`Cmp_Id_Almacen`);

--
-- Filtros para la tabla `tbl_toma_fisica_det`
--
ALTER TABLE `tbl_toma_fisica_det`
  ADD CONSTRAINT `tbl_toma_fisica_det_ibfk_1` FOREIGN KEY (`Cmp_Id_Toma_Fisica`) REFERENCES `tbl_toma_fisica` (`Cmp_Id_Toma_Fisica`),
  ADD CONSTRAINT `tbl_toma_fisica_det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `Fk_Usuario_Empleado` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`);

--
-- Filtros para la tabla `tbl_usuario_perfil`
--
ALTER TABLE `tbl_usuario_perfil`
  ADD CONSTRAINT `Fk_UsuarioPerfil_Perfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`),
  ADD CONSTRAINT `Fk_UsuarioPerfil_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`);

--
-- Filtros para la tabla `tbl_vacaciones`
--
ALTER TABLE `tbl_vacaciones`
  ADD CONSTRAINT `Fk_Vacaciones_Empleados` FOREIGN KEY (`Cmp_iId_Empleado`) REFERENCES `tbl_empleados` (`Cmp_iId_Empleado`);

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`Cmp_Id_Metodo_Pago`) REFERENCES `tbl_metodo_pago` (`Cmp_Id_Metodo_Pago`);

--
-- Filtros para la tabla `tbl_ventadet`
--
ALTER TABLE `tbl_ventadet`
  ADD CONSTRAINT `tbl_ventadet_ibfk_1` FOREIGN KEY (`Cmp_IdVenta`) REFERENCES `tbl_venta` (`Cmp_IdVenta`),
  ADD CONSTRAINT `tbl_ventadet_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
