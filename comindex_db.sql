-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-07-2019 a las 00:16:21
-- Versión del servidor: 10.2.24-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comindex_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Descargas', 'banners__portada.jpg', 'descarga', 'aa', NULL, '2018-09-05 20:05:48'),
(2, 'Novedades', 'banners__portada2.jpg', 'novedad', 'aa', NULL, '2018-08-14 20:27:41'),
(3, 'Mi Cotización', 'banners__portada3.jpg', 'presupuesto', 'aa', NULL, '2018-08-14 22:31:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `type`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'direccion', 'Herrera 1663 (C1295ACE),\r\nCiudad de Buenos Aires', NULL, 'aa', NULL, NULL),
(2, 'telefono', '+54-011 4301-5944', NULL, 'bb', NULL, '2018-08-29 15:38:44'),
(3, 'correo', 'comindex@ciudad.com.ar', NULL, 'cc', NULL, NULL),
(4, 'mapa', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3282.340746697607!2d-58.37790018514626!3d-34.646096580448564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccb527247d399%3A0xdc645a11b0ccd314!2sHerrera+1663%2C+Buenos+Aires!5e0!3m2!1ses!2sar!4v1533667445304', NULL, 'ff', NULL, '2018-08-21 15:12:27'),
(5, 'whatsapp', '+54 11-5737-3174 | +54 11 3312-3025', NULL, 'dd', NULL, '2018-09-05 03:51:03'),
(6, 'horario', '4301-5944 • Lu a Vi 9 a 18 hs', NULL, 'ee', NULL, '2018-09-05 03:50:25'),
(7, 'telefono2', '+54-011 3312-3025', NULL, 'bb', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `title`, `image`, `route`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Especificaciones Técnicas', 'descargas__descarga1.jpg', 'descargas__descarga1.jpg', 'aa', '2018-08-14 17:15:56', '2018-08-14 17:15:56'),
(2, 'Catálogo de Repuestos', 'descargas__descarga2.jpg', 'descargas__descarga2.jpg', 'bb', '2018-08-14 17:16:28', '2018-08-14 22:17:25'),
(3, 'Limpieza y Mantenimiento', 'descargas__descarga3.jpg', 'descargas__descarga3.jpg', 'cc', '2018-08-14 17:16:40', '2018-08-14 17:16:40'),
(4, 'Información Adicional', 'no-image.jpg', 'descargas__icono4.png', 'dd', '2018-08-14 17:16:56', '2018-08-14 17:16:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `title`, `subtitle`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'EMPRESA', 'Nuestra Historia', '<p>Nace en el a&ntilde;o 1993 como empresa de servicio orientada a los veh&iacute;culos de tracci&oacute;n el&eacute;ctrica, autoelevadores, apiladores, transportadoras de pallet, etc. Con la experiencia de sus fundadores adquirida por varios a&ntilde;os de labor, poco a poco fue ganando prestigio y participaci&oacute;n en el mercado y es hoy Comindex SRL una de las empresas m&aacute;s antiguas del rubro.</p>\r\n\r\n<p>Brindamos Service y Mantenimiento y el Servicio de Repuestos y venta de productos relacionados con la Electr&oacute;nica de tracci&oacute;n. Contamos con un equipo de trabajo especializado y dedicado a brindar a cada uno de nuestros clientes el servicio que necesita.</p>\r\n\r\n<p>Para dudas o consultas lo invitamos a contactarse con nosotros.</p>', 'empresa__empresa.jpg', NULL, '2019-01-04 15:41:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `title`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Accesorios de Autoelevadores', 'familias__familia1.jpg', 'aa', '2018-08-15 15:03:02', '2018-08-15 15:03:02'),
(2, 'Baterías y Cargadores', 'familias__familia2.jpg', 'bb', '2018-08-15 15:05:21', '2018-08-15 15:05:21'),
(3, 'Contactores, Solenoides, Relay', 'familias__familia3.jpg', 'cc', '2018-08-15 15:05:40', '2018-08-15 15:05:40'),
(4, 'Contactos', 'familias__familia4.jpg', 'dd', '2018-08-15 15:05:52', '2018-08-15 15:05:52'),
(5, 'Controladores', 'familias__familia5.jpg', 'ee', '2018-08-15 15:06:11', '2018-08-15 15:06:11'),
(6, 'Escobillas, resortes', 'familias__TY14512-22501-71.jpg', 'ff', '2018-08-15 15:06:43', '2018-10-22 18:41:25'),
(7, 'Fichas', 'familias__SYE6345G1.jpg', 'gg', '2018-08-15 15:07:05', '2018-10-22 18:40:11'),
(8, 'Fusibles', 'familias__familia8.jpg', 'hh', '2018-08-15 15:07:31', '2018-08-15 15:07:31'),
(9, 'Lámparas', 'familias__familia9.jpg', 'ii', NULL, '2018-08-15 15:12:42'),
(10, 'Cubiertas, ruedas', 'familias__CX5553116.jpg', 'jj', '2018-08-30 16:14:42', '2018-10-22 18:42:50'),
(11, 'Filtros, bombas, mangueras', 'familias__MB32A40-00100.jpg', 'kk', '2018-08-30 16:15:41', '2018-10-22 18:43:53'),
(13, 'Mano de obra', 'no-image.jpg', 'mm', '2018-08-30 16:16:50', '2018-08-30 16:16:50'),
(14, 'Medidor de batería', 'familias__SY802RB12BN.jpg', 'nn', '2018-08-30 16:18:09', '2018-10-22 18:44:35'),
(15, 'Motores', 'familias__SYM99903.jpg', 'oo', '2018-08-30 16:18:53', '2018-10-22 18:47:34'),
(16, 'Potenciometros', 'familias__BR27140-048.jpg', 'pp', '2018-08-30 16:19:29', '2018-10-22 18:48:05'),
(17, 'Reformas', 'no-image.jpg', 'qq', '2018-08-30 16:20:24', '2018-08-30 16:20:24'),
(18, 'Repuestos de autoelevadores', 'no-image.jpg', 'rr', '2018-08-30 16:22:18', '2018-08-30 16:22:18'),
(19, 'Service', 'no-image.jpg', 'ss', '2018-08-30 16:24:14', '2018-08-30 16:24:14'),
(20, 'Switches, pulsadores', 'no-image.jpg', 'tt', '2018-08-30 16:28:55', '2018-08-30 16:29:02'),
(21, 'Tarjetas', 'no-image.jpg', 'uu', '2018-08-30 16:29:29', '2018-08-30 16:29:29'),
(22, 'Tiristor, capacitor', 'no-image.jpg', 'vv', '2018-08-30 16:30:48', '2018-08-30 16:30:48'),
(23, 'Transistor, diodo', 'no-image.jpg', 'ww', '2018-08-30 16:31:35', '2018-08-30 16:31:35'),
(24, 'Zoras hidráulicas', 'no-image.jpg', 'xx', '2018-10-09 17:34:56', '2018-10-09 17:34:56'),
(25, 'Insumos', 'no-image.jpg', 'yy', '2018-10-09 17:39:00', '2018-10-09 17:39:00'),
(26, 'Reparaciones electrónicas', 'no-image.jpg', 'zz', '2018-10-09 17:41:44', '2018-10-09 17:41:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `image`, `order`, `producto_id`, `created_at`, `updated_at`) VALUES
(2, 'galeria__familia1.jpg', 'aa', 1, '2018-08-24 20:50:47', '2018-08-24 21:24:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iconos`
--

CREATE TABLE `iconos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `iconos`
--

INSERT INTO `iconos` (`id`, `title`, `image`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Reparación de todas las máquinas', 'icono__icono1.png', 'home', 'aa', NULL, '2018-08-09 22:45:22'),
(2, 'Reacondicionamiento de maquinaria', 'icono__icono2.png', 'home', 'bb', NULL, '2018-08-09 22:46:01'),
(3, 'Asesoramiento Personalizado', 'icono__icono3.png', 'home', 'cc', NULL, '2018-08-09 22:46:08'),
(4, 'Servicio Oficial Sevcon, Curtis, Albright, GE', 'icono__icono4.png', 'home', 'dd', NULL, '2018-08-09 22:46:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legales`
--

CREATE TABLE `legales` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legales`
--

INSERT INTO `legales` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Términos y condiciones', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores, corporis, laborum. Omnis quidem, temporibus modi fugiat alias, dignissimos odit, laudantium ratione animi accusamus mollitia aspernatur. Libero eaque praesentium, ea maxime! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident accusantium incidunt cumque architecto laborum nihil sint numquam amet eaque, quibusdam neque dolorum mollitia consequuntur. Ipsum enim veniam iste culpa blanditiis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores, corporis, laborum. Omnis quidem, temporibus modi fugiat alias, dignissimos odit, laudantium ratione animi accusamus mollitia aspernatur. Libero eaque praesentium, ea maxime! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident accusantium incidunt cumque architecto laborum nihil sint numquam amet eaque, quibusdam neque dolorum mollitia consequuntur. Ipsum enim veniam iste culpa blanditiis.</p>', NULL, '2018-08-07 21:50:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `name`, `image`, `order`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'logos__comindex logo.png', 'aa', 'header', NULL, '2018-08-29 15:04:45'),
(2, 'Footer', 'logos__logofooter.png', 'aa', 'footer', NULL, '2018-08-07 21:24:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `important` int(11) DEFAULT 1,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `title`, `image`, `important`, `route`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Sevcon', 'marcas__marca1.png', 1, NULL, 'aa', '2018-08-15 18:32:50', '2018-08-15 18:54:08'),
(2, 'Curtis', 'marcas__marca2.png', 1, NULL, 'bb', '2018-08-15 18:40:14', '2018-08-15 18:40:14'),
(3, 'General Electric', 'marcas__marca3.png', 1, NULL, 'cc', '2018-08-15 18:40:36', '2018-08-15 18:40:36'),
(4, 'TVH', 'marcas__marca5.png', 1, NULL, 'ee', '2018-08-15 18:41:00', '2018-08-15 18:41:00'),
(5, 'Zapi', 'marcas__marca4.png', 1, NULL, 'dd', '2018-08-15 18:41:58', '2018-08-15 18:41:58'),
(6, 'Allright', 'marcas__marca6.png', 1, NULL, 'ff', '2018-08-15 18:43:03', '2018-08-28 16:33:50'),
(8, 'DANAHER MOTION', NULL, 1, NULL, 'dm', '2018-09-01 00:57:51', '2018-09-01 00:57:51'),
(9, 'ISKRA/LETRICA', 'marcas__IL.jpg', 1, NULL, 'il', '2018-09-05 17:01:07', '2018-09-05 17:01:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `section`, `keyword`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'home', NULL, NULL, 'aa', NULL, NULL),
(2, 'empresa', NULL, NULL, 'ab', NULL, NULL),
(3, 'producto', NULL, NULL, 'bb', NULL, NULL),
(4, 'descarga', NULL, NULL, 'bc', NULL, NULL),
(5, 'novedad', NULL, NULL, 'cc', NULL, NULL),
(6, 'contacto', NULL, NULL, 'cd', NULL, NULL),
(7, 'solicitud de presupuesto', NULL, NULL, 'dd', NULL, NULL),
(8, 'buscar', NULL, NULL, 'de', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2018_08_07_122255_create_logos_table', 1),
(36, '2018_08_07_122310_create_datos_table', 1),
(37, '2018_08_07_122337_create_metadatos_table', 1),
(38, '2018_08_07_122357_create_sliders_table', 1),
(39, '2018_08_07_122411_create_iconos_table', 1),
(40, '2018_08_07_122428_create_textos_table', 1),
(41, '2018_08_07_122504_create_banners_table', 1),
(42, '2018_08_07_122520_create_marcas_table', 1),
(43, '2018_08_07_122534_create_empresas_table', 1),
(44, '2018_08_07_122549_create_familias_table', 1),
(45, '2018_08_07_122605_create_subfamilias_table', 1),
(46, '2018_08_07_122621_create_productos_table', 1),
(47, '2018_08_07_122635_create_descargas_table', 1),
(48, '2018_08_07_122655_create_novedades_table', 1),
(49, '2018_08_07_145531_create_legals_table', 1),
(50, '2018_08_07_145634_create_galerias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `title`, `subtitle`, `image`, `text`, `date`, `route`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Comindex SRL', 'Tenemos el equipamiento ideal para máquinas de tracción', 'novedades__novedad1.jpg', '<p>Brindamos Service y Mantenimiento y el Servicio de Repuestos y venta de productos relacionados con la Electr&oacute;nica de tracci&oacute;n. Contamos con un equipo de trabajo especializado y dedicado a brindar a cada uno de nuestros clientes el servicio que necesita.</p>\r\n\r\n<p>Comindex SRL cuenta con el Servicio Oficial a marcas como Sevcon, Curtis, Albright, GE.</p>\r\n\r\n<p>Adem&aacute;s, realizamos reparaci&oacute;n en todas las marcas, reacondicionamiento de m&aacute;quinas y mantenimiento y abonos preventivos.</p>', '14/08/2018', NULL, 'aa', '2018-08-14 21:18:37', '2018-08-14 21:18:37'),
(2, 'Boutique del Autoelevador', 'Conocé nuestros serivicios de Repuestos, Service y Mantenimiento', 'novedades__novedad2.jpg', '<p>Brindamos Service y Mantenimiento y el Servicio de Repuestos y venta de productos relacionados con la Electr&oacute;nica de tracci&oacute;n. Contamos con un equipo de trabajo especializado y dedicado a brindar a cada uno de nuestros clientes el servicio que necesita.</p>\r\n\r\n<p>Comindex SRL cuenta con el Servicio Oficial a marcas como Sevcon, Curtis, Albright, GE.</p>\r\n\r\n<p>Adem&aacute;s, realizamos reparaci&oacute;n en todas las marcas, reacondicionamiento de m&aacute;quinas y mantenimiento y abonos preventivos.</p>', '14/08/18', NULL, 'bb', '2018-08-14 21:40:02', '2018-08-14 21:40:02'),
(3, 'Nuevos Productos 2018', 'Presentación de nuevos productos de repuestos y más', 'novedades__novedad3.jpg', '<p>Brindamos Service y Mantenimiento y el Servicio de Repuestos y venta de productos relacionados con la Electr&oacute;nica de tracci&oacute;n. Contamos con un equipo de trabajo especializado y dedicado a brindar a cada uno de nuestros clientes el servicio que necesita.</p>\r\n\r\n<p>Comindex SRL cuenta con el Servicio Oficial a marcas como Sevcon, Curtis, Albright, GE.</p>\r\n\r\n<p>Adem&aacute;s, realizamos reparaci&oacute;n en todas las marcas, reacondicionamiento de m&aacute;quinas y mantenimiento y abonos preventivos.</p>', '14/08/18', NULL, 'cc', '2018-08-14 21:43:03', '2018-08-14 22:06:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `important` int(19) DEFAULT 0,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  `subfamily_id` int(10) UNSIGNED DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `model`, `important`, `pdf`, `keyword`, `route`, `brand_id`, `family_id`, `subfamily_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'CXGS12S', 'ASIENTO AMORTIG CINTURON ', 'CXGS12S.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:26', '2018-11-15 16:46:26'),
(2, 'CXGS12 ', 'ASIENTO CON AMORTIGUADOR ', 'CXGS12.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:26', '2018-11-15 16:46:26'),
(3, 'SY91820', 'ASIENTO CON AMORTIGUADOR ', 'SY91820.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:26', '2018-11-15 16:46:26'),
(4, 'CT91A14-21010', 'ASIENTO CON AMORTIGUADOR, CINTURON,INTERUP.', 'CT91A14-21010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:26', '2018-11-15 16:46:26'),
(5, 'CX55689', 'AGUA DESTILADA 5L', 'CX55689.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:26', '2018-11-15 16:46:26'),
(6, 'STA10302W', 'ALARMA 12-24V/85DB DE RETROCESO', 'STA10302W.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(7, 'STA20302 ', 'ALARMA 12-24V/87DB DE RETROCESO', 'STA20302.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(8, 'STA25502 ', 'ALARMA 12-24V/97DB DE RETROCESO REDONDA', 'STA25502.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(9, 'CX628', 'ALARMA 12-48V/102DB DE RETROCESO ', 'CX628.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(10, 'SY210333 ', 'ALARMA 12-48V/107DB DE RETROCESO ', 'SY210333.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(11, 'STA20504 ', 'ALARMA 12-48V/97DB DE RETROCESO', 'STA20504.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:27', '2018-11-15 16:46:27'),
(12, 'STA20504-PRO ', 'ALARMA 12-48V/97DB DE RETROCESO', 'STA20504-PRO.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:28', '2018-11-15 16:46:28'),
(13, 'STA25504 ', 'ALARMA 12-48V/97DB DE RETROCESO-REDONDA', 'STA25504.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:28', '2018-11-15 16:46:28'),
(14, 'STA20307 ', 'ALARMA 12-80V/87 DB DE RETROCESO ', 'STA20307.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:28', '2018-11-15 16:46:28'),
(15, 'SY361005A-LED', 'BALIZA FLASH 12-110V LED ', 'SY361005A-LED.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:28', '2018-11-15 16:46:28'),
(16, 'SY367000 ', 'BALIZA FLASH 12-72V,CHATA', 'SY367000.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:28', '2018-11-15 16:46:28'),
(17, 'SY360240-A ', 'BALIZA FLASH ML1 240VDC', 'SY360240-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(18, 'SY364004-A ', 'BALIZA FLASH ML4 36/48V', 'SY364004-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(19, 'SY361005-A ', 'BALIZA FLASH ML5,12-110V,ALTA', 'SY361005-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(20, 'SY360073 ', 'BALIZA KIT DE IMAN ', 'SY360073.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(21, 'CX55112', 'BALIZA L12 24 36 48V 15W 85 DB ', 'CX55112.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(22, 'TVH1427140 ', 'BALIZA STROB 12-110V LED ', 'TVH1427140.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(23, 'SY361100-A ', 'BALIZA STROB.ML2/12-110VDC AMAR', 'SY361100-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:29', '2018-11-15 16:46:29'),
(24, 'SY361100-R ', 'BALIZA STROB.ML2/12-72V,ROJA ', 'SY361100-R.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:30', '2018-11-15 16:46:30'),
(25, 'SY360080-A ', 'BALIZA STROB.ML2/12-80V', 'SY360080-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:30', '2018-11-15 16:46:30'),
(26, 'SY537000-A ', 'BALIZA STROB.ML7/12-72V,AMARIL ', 'SY537000-A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:30', '2018-11-15 16:46:30'),
(27, 'SY537000-R ', 'BALIZA STROB.ML7/12-72V,ROJA ', 'SY537000-R.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:30', '2018-11-15 16:46:30'),
(28, 'CX40EK24 ', 'BOCINA 24V ', 'CX40EK24.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:31', '2018-11-15 16:46:31'),
(29, 'SY110', 'BOCINA 36/48V 110DB', 'SY110.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:31', '2018-11-15 16:46:31'),
(30, 'SY119', 'BOCINA 36/48V. ', 'SY119.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:31', '2018-11-15 16:46:31'),
(31, 'SY103', 'BOCINA 48V/120 DB', 'SY103.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:31', '2018-11-15 16:46:31'),
(32, 'SY118', 'BOCINA 72/80V 110 DB ', 'SY118.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:32', '2018-11-15 16:46:32'),
(33, 'SY120', 'BOCINA 72/80V. ', 'SY120.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:32', '2018-11-15 16:46:32'),
(34, 'CX5109-1 ', 'CINTURON DE SEGURIDA RETRACTIL ', 'CX5109-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:32', '2018-11-15 16:46:32'),
(35, 'CXFB543', 'ESPEJO RETROVISOR', 'CXFB543.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:32', '2018-11-15 16:46:32'),
(36, 'SY34384', 'ESPEJO RETROVISOR', 'SY34384.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:32', '2018-11-15 16:46:32'),
(37, 'KO3BA24-71320', 'EXTREMO PUENTE DIRECCION ', 'KO3BA24-71320.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(38, 'KO3BA24-71310', 'EXTREMO PUENTE DIRECCION ', 'KO3BA24-71310.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(39, 'XF250770000', 'FARO BARRA LED TRASERAS 12V', 'XF250770000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(40, 'SY280136 ', 'FARO CON PROTEC.36V/60W', 'SY280136.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(41, 'SY280148 ', 'FARO CON PROTEC.48V/80W', 'SY280148.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(42, 'SY733148 ', 'FARO CUAD12V/35W HALOGENA', 'SY733148.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:33', '2018-11-15 16:46:33'),
(43, 'SY4LWLS', 'FARO DELANTERO LED 12/24V', 'SY4LWLS.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:34', '2018-11-15 16:46:34'),
(44, 'SY600136 ', 'FARO GOMA PROTEC.36V/25W ', 'SY600136.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:34', '2018-11-15 16:46:34'),
(45, 'SY600148 ', 'FARO GOMA PROTEC.48V/25W ', 'SY600148.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:34', '2018-11-15 16:46:34'),
(46, 'CXBA1108N', 'FARO POSICION', 'CXBA1108N.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:34', '2018-11-15 16:46:34'),
(47, 'SY700236 ', 'FARO RECT.36V/35W HALOGENA ', 'SY700236.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:35', '2018-11-15 16:46:35'),
(48, 'SY700248 ', 'FARO RECT.48V/35W HALOGENA ', 'SY700248.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:35', '2018-11-15 16:46:35'),
(49, 'CX3439002873 ', 'FARO REDONDO 96MM AISLADO HALOGENA ', 'CX3439002873.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:35', '2018-11-15 16:46:35'),
(50, 'SY83955', 'FARO SPOTLIGHT BLUE 12-110V LED AZUL ', 'SY83955.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:35', '2018-11-15 16:46:35'),
(51, 'SY83951', 'FARO TRASERO DER TY', 'SY83951.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:35', '2018-11-15 16:46:35'),
(52, 'CXBA634T ', 'FARO TRASERO DOBLE 36V 48V ', 'CXBA634T.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(53, 'CX6156342', 'FARO TRASERO DOBLE BAIMIL', 'CX6156342.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(54, 'KO3EB-5512321', 'FARO TRASERO PLASTICO', 'KO3EB-5512321.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(55, 'TY56620-23000', 'FARO TRASERO TRIPLE 12 24 36 48V ', 'TY56620-23000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(56, 'KO37A-1AE1010', 'FARO TRASERO TRIPLE 25+2X10W 12V ', 'KO37A-1AE1010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(57, 'SY371036 ', 'FARO TRASERO TRIPLE 36V', 'SY371036.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:36', '2018-11-15 16:46:36'),
(58, 'CXBA634TT', 'FARO TRASERO TRIPLE 36V 48V', 'CXBA634TT.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:37', '2018-11-15 16:46:37'),
(59, 'SY371048 ', 'FARO TRASERO TRIPLE 48V', 'SY371048.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:37', '2018-11-15 16:46:37'),
(60, 'TY56640-13300', 'FARO TRASERO TRIPLE 48V', 'TY56640-13300.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:37', '2018-11-15 16:46:37'),
(61, 'SY371010 ', 'FARO TRASERO-PROTECTOR ', 'SY371010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:37', '2018-11-15 16:46:37'),
(62, 'YT580025543', 'FRENO EL.COMPLETO 24V 125 MM ', 'YT580025543.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:38', '2018-11-15 16:46:38'),
(63, 'CX56501', 'FRENO EL.COMPLETO 24V 78 MM 25W', 'CX56501.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:38', '2018-11-15 16:46:38'),
(64, 'CR803897 ', 'FRENO EL.COMPLETO 24V 97 MM', 'CR803897.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:38', '2018-11-15 16:46:38'),
(65, 'CX56502', 'FRENO EL.COMPLETO 24V 97 MM 30W', 'CX56502.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:38', '2018-11-15 16:46:38'),
(66, 'MBRL618638 ', 'FRENO ELECTRICO 48V', 'MBRL618638.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:39', '2018-11-15 16:46:39'),
(67, 'IMPJB-2', 'IMPCO VAPORIZADOR', 'IMPJB-2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:39', '2018-11-15 16:46:39'),
(68, 'JSR11-28 ', 'KIT DE REPARACION VAPORIZADOR GAS', 'JSR11-28.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:39', '2018-11-15 16:46:39'),
(69, 'SY360-AMB', 'LENS AMBER ', 'SY360-AMB.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:39', '2018-11-15 16:46:39'),
(70, 'SY360-BLU', 'LENS AZUL', 'SY360-BLU.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:39', '2018-11-15 16:46:39'),
(71, 'SY360-GRN', 'LENS VERDE ', 'SY360-GRN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(72, 'TVH8431', 'POMO DE PALANCA', 'TVH8431.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(73, 'CT9127308100 ', 'POMO DE PALANCA', 'CT9127308100.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(74, 'CT9127307900 ', 'POMO DE PALANCA', 'CT9127307900.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(75, 'CX55176', 'PUENTE CON TERMINALES PARA BATERIA ', 'CX55176.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(76, 'CT94211-05400', 'RODILLO', 'CT94211-05400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:40', '2018-11-15 16:46:40'),
(77, 'BC213903 ', 'ROTULA DE LA TORRE ', 'BC213903.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:41', '2018-11-15 16:46:41'),
(78, 'CX66676', 'UÑAS JUEGO 1209 MM ', 'CX66676.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:41', '2018-11-15 16:46:41'),
(79, 'CX55770', 'UÑAS PROLONGADOR JUEGO 2500MM', 'CX55770.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-11-15 16:46:41', '2018-11-15 16:46:41'),
(80, 'CX77706', 'BATERIATROJAN 27TMX 12V/105AH', 'CX77706.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:41', '2018-11-15 16:46:41'),
(81, 'CX200596 ', 'BATERIA DEKA 12V/110AH ', 'CX200596.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:41', '2018-11-15 16:46:41'),
(82, 'CX77705', 'BATERIA TRACC.36V/625A,18E125-11 ', 'CX77705.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:42', '2018-11-15 16:46:42'),
(83, 'CX77701', 'BATERIA TRACC.80V/480A,4BGY-450', 'CX77701.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:42', '2018-11-15 16:46:42'),
(84, 'CX77702', 'BATERIA TRACCION 24V/300AH ', 'CX77702.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:42', '2018-11-15 16:46:42'),
(85, 'CX55105', 'BATERIA TROJAN T105 6V/225A', 'CX55105.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:42', '2018-11-15 16:46:42'),
(86, 'CX55516', 'CARGADOR DE BAT 48/100A-380V ', 'CX55516.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:43', '2018-11-15 16:46:43'),
(87, 'CX3630220', 'CARGADOR DE BAT 48V/25A-220V ', 'CX3630220.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:43', '2018-11-15 16:46:43'),
(88, 'HL2901009600 ', 'CARGADOR DE BATERIA 24V/30A HOULOTTE ', 'HL2901009600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:43', '2018-11-15 16:46:43'),
(89, 'CX55802', 'CARGADOR DE BATERIA 36V/1500AHS', 'CX55802.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:43', '2018-11-15 16:46:43'),
(90, 'CX558060 ', 'CARGADOR DE BATERIA 80V/100A DISPLAY ', 'CX558060.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:44', '2018-11-15 16:46:44'),
(91, 'CX88925', 'DENSIMETRO BATERIAS', 'CX88925.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:44', '2018-11-15 16:46:44'),
(92, 'CX55518', 'REP.BATERIA TRACCION 48V ', 'CX55518.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:44', '2018-11-15 16:46:44'),
(93, 'CX55567', 'TERMINAL DE BATERIA CONICO ', 'CX55567.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2018-11-15 16:46:44', '2018-11-15 16:46:44'),
(94, 'CL888856 ', 'CONTACT0(2) TW25 ', 'CL888856.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:45', '2018-11-15 16:46:45'),
(95, 'CL899817 ', 'CONTACTO 22MM. CL8998173 PAR ', 'CL899817.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:45', '2018-11-15 16:46:45'),
(96, 'AAC123-00', 'CONTACTO AASA FIJO ', 'AAC123-00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:45', '2018-11-15 16:46:45'),
(97, 'AAC125-02', 'CONTACTO AASA MOVIL DOBLE', 'AAC125-02.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:46', '2018-11-15 16:46:46'),
(98, 'AAC125-01', 'CONTACTO AASA MOVIL SIMPLE ', 'AAC125-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:46', '2018-11-15 16:46:46'),
(99, 'AAC126-00', 'CONTACTO AASA PUENTE FIJO', 'AAC126-00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:46', '2018-11-15 16:46:46'),
(100, 'SY798204 ', 'CONTACTO FIJO TIPO GE', 'SY798204.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:47', '2018-11-15 16:46:47'),
(101, 'SY798202 ', 'CONTACTO FIJO TIPO GE', 'SY798202.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:47', '2018-11-15 16:46:47'),
(102, 'TVH17486 ', 'CONTACTO JH RECTANGULAR', 'TVH17486.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:47', '2018-11-15 16:46:47'),
(103, 'T138TA6115 ', 'CONTACTO KO 16MM ', 'T138TA6115.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:47', '2018-11-15 16:46:47'),
(104, 'T138TA6116 ', 'CONTACTO KO 16MM ', 'T138TA6116.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:47', '2018-11-15 16:46:47'),
(105, 'T138TA6095 ', 'CONTACTO KO 16MM DOBLE ', 'T138TA6095.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(106, 'KO787023-1030', 'CONTACTO KO FIJO 8 MM', 'KO787023-1030.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(107, 'KO787023-1050', 'CONTACTO KO MOVIL DOBLE 8 MM ', 'KO787023-1050.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(108, 'KO787023-1040', 'CONTACTO KO TORNILLO FIJO 8 MM ', 'KO787023-1040.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(109, 'T108TA5689 ', 'CONTACTO KO,FIJO 10MM', 'T108TA5689.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(110, 'T108TA5677 ', 'CONTACTO KO,MOVIL 10MM ', 'T108TA5677.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(111, 'CL889158 ', 'CONTACTO MOVIL BRAZOTW25 ', 'CL889158.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:48', '2018-11-15 16:46:48'),
(112, 'SY798201 ', 'CONTACTO MOVIL CORTO TIPO GE ', 'SY798201.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:49', '2018-11-15 16:46:49'),
(113, 'SY798205 ', 'CONTACTO MOVIL TIPO GE ', 'SY798205.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:49', '2018-11-15 16:46:49'),
(114, 'T108TA5369 ', 'CONTACTO STILL ', 'T108TA5369.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:49', '2018-11-15 16:46:49'),
(115, 'SY796561 ', 'CONTACTO TY FIJO BASE', 'SY796561.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:49', '2018-11-15 16:46:49'),
(116, 'SY797811 ', 'CONTACTO TY FIJO RECTO ', 'SY797811.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:49', '2018-11-15 16:46:49'),
(117, 'SY797812 ', 'CONTACTO TY FIJO RECTO ', 'SY797812.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(118, 'SY797810 ', 'CONTACTO TY FIJO RECTO ', 'SY797810.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(119, 'SY797828 ', 'CONTACTO TY MOVIL RECT0', 'SY797828.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(120, 'SY798209 ', 'CONTACTO TY MOVIL RECTO', 'SY798209.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(121, 'T138TA6323 ', 'CONTACTO TY MOVIL SIMPLE ', 'T138TA6323.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(122, 'SY798208 ', 'CONTACTO TY MOVIL SIMPLE DOBLE ', 'SY798208.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:50', '2018-11-15 16:46:50'),
(123, 'SY797815 ', 'CONTACTO TY TORNILLO FIJO', 'SY797815.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:51', '2018-11-15 16:46:51'),
(124, 'SY792982 ', 'CONTACTO YT FIJO ', 'SY792982.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:51', '2018-11-15 16:46:51'),
(125, 'SY792715 ', 'CONTACTO YT MOVIL', 'SY792715.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:51', '2018-11-15 16:46:51'),
(126, 'GE194B6365P01', 'CONTACTOR,BASE CONTACTOS EV-1', 'GE194B6365P01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:51', '2018-11-15 16:46:51'),
(127, 'SY105446 ', 'CONTACTOS KIT75A GE', 'SY105446.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:51', '2018-11-15 16:46:51'),
(128, 'CR113989 ', 'CONTACTOS KIT 100A EV100 GE100AH ', 'CR113989.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(129, 'GE104FR', 'CONTACTOS KIT 100A F/R EV100 ', 'GE104FR.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(130, 'T106TA2281 ', 'CONTACTOS KIT 100A HARDELLET 2 BORNES', 'T106TA2281.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(131, 'T106TA2282 ', 'CONTACTOS KIT 100A HARDELLET 4 BORNES', 'T106TA2282.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(132, 'BT135628 ', 'CONTACTOS KIT 100A PRESTOLITE 2 BORNES ', 'BT135628.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(133, 'BT135625 ', 'CONTACTOS KIT 100A PRESTOLITE 4 BORNES ', 'BT135625.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:52', '2018-11-15 16:46:52'),
(134, 'GE801BD', 'CONTACTOS KIT 150A EV-1', 'GE801BD.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(135, 'GE801BE', 'CONTACTOS KIT 150A EV-1', 'GE801BE.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(136, 'CL1811077', 'CONTACTOS KIT 150A EV1 ', 'CL1811077.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(137, 'CL1811042', 'CONTACTOS KIT 150A EV1F', 'CL1811042.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(138, 'CL1811044', 'CONTACTOS KIT 150A EV1R', 'CL1811044.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(139, 'SY913719 ', 'CONTACTOS KIT 150A EV100 ', 'SY913719.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:53', '2018-11-15 16:46:53'),
(140, 'GE150AH', 'CONTACTOS KIT 150A EV100 ', 'GE150AH.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:54', '2018-11-15 16:46:54'),
(141, 'CR113988 ', 'CONTACTOS KIT 150A EV100F/R BUJES', 'CR113988.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:54', '2018-11-15 16:46:54'),
(142, 'CR107111 ', 'CONTACTOS KIT 150A EV100 F/R ', 'CR107111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:54', '2018-11-15 16:46:54'),
(143, 'GE154FR', 'CONTACTOS KIT 150A EV100 F/R ', 'GE154FR.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(144, 'GE158FR-C', 'CONTACTOS KIT 150A EV100 F/R ', 'GE158FR-C.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(145, 'GE158FR', 'CONTACTOS KIT 150A EV100 F/R ', 'GE158FR.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(146, 'CR104650 ', 'CONTACTOS KIT 150A EV100,RESORTE ', 'CR104650.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(147, 'SY86169', 'CONTACTOS KIT 200A CABLEFORM 1300', 'SY86169.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(148, 'SY86177', 'CONTACTOS KIT 200A CAT ', 'SY86177.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:55', '2018-11-15 16:46:55'),
(149, 'CL1811857', 'CONTACTOS KIT 200A EV100 ', 'CL1811857.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(150, 'CT918779 ', 'CONTACTOS KIT 200A PRESTOLITE 2 BORNES ', 'CT918779.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(151, 'CT918780 ', 'CONTACTOS KIT 200A PRESTOLITE 4 BORNES ', 'CT918780.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(152, 'T106TA1961 ', 'CONTACTOS KIT 200A SW89 ALBRIGHT ', 'T106TA1961.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(153, 'CL1811361', 'CONTACTOS KIT 300A EV-1', 'CL1811361.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(154, 'CL1811043', 'CONTACTOS KIT 300A EV-1', 'CL1811043.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:56', '2018-11-15 16:46:56'),
(155, 'GE802BD', 'CONTACTOS KIT 300A EV-1', 'GE802BD.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:57', '2018-11-15 16:46:57'),
(156, 'YT150091003', 'CONTACTOS KIT 300A EV100 ', 'YT150091003.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:57', '2018-11-15 16:46:57'),
(157, 'SY913720 ', 'CONTACTOS KIT 300A EV100 ', 'SY913720.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:57', '2018-11-15 16:46:57'),
(158, 'CX913720 ', 'CONTACTOS KIT 300A EV100 ', 'CX913720.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:57', '2018-11-15 16:46:57'),
(159, 'CL1813006', 'CONTACTOS KIT 300A EV100 ', 'CL1813006.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:57', '2018-11-15 16:46:57'),
(160, 'CL1811951', 'CONTACTOS KIT 300A EV100 F/R ', 'CL1811951.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(161, 'YT150091001', 'CONTACTOS KIT 300A EV100 F/R RESORTE BUJES ', 'YT150091001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(162, 'YT150091002', 'CONTACTOS KIT 300A EV100 RESORTE BUJES ', 'YT150091002.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(163, 'TVH3028631 ', 'CONTACTOS KIT DC182 DOBLE POLO ', 'TVH3028631.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(164, 'TVH3008401 ', 'CONTACTOS KIT DC182 L,R', 'TVH3008401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(165, 'TVH3008399 ', 'CONTACTOS KIT DC88 L/R ', 'TVH3008399.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(166, 'CL907744 ', 'CONTACTOS KIT HB PRESTOLITE 2 BORNES ', 'CL907744.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:58', '2018-11-15 16:46:58'),
(167, 'CL998227 ', 'CONTACTOS KIT HB PRESTOLITE 2 BORNES ', 'CL998227.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:59', '2018-11-15 16:46:59'),
(168, 'CL905574 ', 'CONTACTOS KIT HB PRESTOLITE 4 BORNES ', 'CL905574.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:59', '2018-11-15 16:46:59'),
(169, 'CL907775 ', 'CONTACTOS KIT HB PRESTOLITE 4 BORNES ', 'CL907775.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:59', '2018-11-15 16:46:59'),
(170, 'CL910250 ', 'CONTACTOS KIT HB PRESTOLITE 8 BORNES ', 'CL910250.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:59', '2018-11-15 16:46:59'),
(171, 'SY88300', 'CONTACTOS KIT HB PRESTOLITE 8 BORNES ', 'SY88300.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:46:59', '2018-11-15 16:46:59'),
(172, 'T108TA8019 ', 'CONTACTOS KIT KO F/R 13MM', 'T108TA8019.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(173, 'T122TA7513 ', 'CONTACTOS KIT KO SIMPLE 10X15MM', 'T122TA7513.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(174, 'T115TA5501 ', 'CONTACTOS KIT MAC15D ', 'T115TA5501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(175, 'T111TA3722 ', 'CONTACTOS KIT NYK F/R MS3403 ', 'T111TA3722.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(176, 'CX88911', 'CONTACTOS KIT NYK F/R MS4411MM ', 'CX88911.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(177, 'T133TA7506 ', 'CONTACTOS KIT NYK MS34 9.5MM ', 'T133TA7506.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(178, 'AL2159-100 ', 'CONTACTOS KIT SW102', 'AL2159-100.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:00', '2018-11-15 16:47:00'),
(179, 'AL2180-42', 'CONTACTOS KIT SW180ALSW180KIT', 'AL2180-42.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(180, 'AL2180-42A ', 'CONTACTOS KIT SW180L ', 'AL2180-42A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(181, 'AL2180-43', 'CONTACTOS KIT SW181', 'AL2180-43.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(182, 'AL2180-44', 'CONTACTOS KIT SW182', 'AL2180-44.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(183, 'AL2180-44A ', 'CONTACTOS KIT SW182L ', 'AL2180-44A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(184, 'AL2155-94', 'CONTACTOS KIT SW200', 'AL2155-94.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:01', '2018-11-15 16:47:01'),
(185, 'AL2155-100 ', 'CONTACTOS KIT SW201', 'AL2155-100.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:02', '2018-11-15 16:47:02'),
(186, 'AL2155-136 ', 'CONTACTOS KIT SW202', 'AL2155-136.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:02', '2018-11-15 16:47:02'),
(187, 'AL2070-57', 'CONTACTOS KIT SW80 ', 'AL2070-57.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:02', '2018-11-15 16:47:02'),
(188, 'AL2070-194 ', 'CONTACTOS KIT SW80L', 'AL2070-194.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:02', '2018-11-15 16:47:02'),
(189, 'AL2170-90A ', 'CONTACTOS KIT SW82 ', 'AL2170-90A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:02', '2018-11-15 16:47:02'),
(190, 'AL2070-193 ', 'CONTACTOS KIT SW84 ', 'AL2070-193.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:03', '2018-11-15 16:47:03'),
(191, 'AL2070-151 ', 'CONTACTOS KIT SW88 ', 'AL2070-151.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 4, NULL, NULL, '2018-11-15 16:47:03', '2018-11-15 16:47:03'),
(192, 'T122TA7515 ', 'CONTACTOS KIT TYF/R 13MM ', 'T122TA7515.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:03', '2018-11-15 16:47:03'),
(193, 'T138TA6523 ', 'CONTACTOS KIT TY MEIDENF/R 10.5MM', 'T138TA6523.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:03', '2018-11-15 16:47:03'),
(194, 'T138TA6525 ', 'CONTACTOS KIT TY MEIDENF/R MZ14A ', 'T138TA6525.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(195, 'T123TA1942 ', 'CONTACTOS KIT TY MEIDEN BOMBA ME251 SY82382', 'T123TA1942.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(196, 'T138TA6527 ', 'CONTACTOS KIT TY MEIDEN BOMBA MZ01MA ', 'T138TA6527.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(197, 'T111TA3718 ', 'CONTACTOS KIT TY MEIDEN MA22 BOMBA 150A', 'T111TA3718.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(198, 'GE44B716737G1', 'BOBINA 24/36/48V ', 'GE44B716737G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 3, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(199, 'TVH556706', 'CONTACTOR 24V/ DOBLE CONTACTOS-AM', 'TVH556706.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 3, NULL, NULL, '2018-11-15 16:47:04', '2018-11-15 16:47:04'),
(200, 'CT300A-24B1M2', 'CONTACTOR 300A 24V SIMPLE', 'CT300A-24B1M2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(201, 'CT399707 ', 'CONTACTOR 36V DOBLE POLO ', 'CT399707.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(202, 'CT924667 ', 'CONTACTOR 36V DOBLE POLOS', 'CT924667.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(203, 'CT914051 ', 'CONTACTOR 36V PRESTOLITE SIMPLE', 'CT914051.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(204, 'CX55729', 'CONTACTOR AASA DOBLE 300A 12V/24V', 'CX55729.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(205, 'GE259A8703P1 ', 'CONTACTOR ASIENTO RESORTE EV-1 ', 'GE259A8703P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:05', '2018-11-15 16:47:05'),
(206, 'GE44A297274P2', 'CONTACTOR ASIENTO RESORTE EV100', 'GE44A297274P2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(207, 'GE44A297281G4', 'CONTACTOR ARMATURA EV100 300A', 'GE44A297281G4.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(208, 'GE44A297281G1', 'CONTACTOR ARMATURA EV100 F/R ', 'GE44A297281G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(209, 'GE44A297274P1', 'CONTACTOR BUJE CHICO EV100 ', 'GE44A297274P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(210, 'GE44A297268P1', 'CONTACTOR BUJE EV100 ', 'GE44A297268P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(211, 'GE44A297267P1', 'CONTACTOR BUJE GRANDE EV100', 'GE44A297267P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(212, 'BR39070-001', 'CONTACTOR CABLEFORM 1300 12V,48', 'BR39070-001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:06', '2018-11-15 16:47:06'),
(213, 'SY31808', 'CONTACTOR CABLEFORM 1300 24V,36,48 ', 'SY31808.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(214, 'ALDC182-3', 'CONTACTOR DC182-3 24V ALBRIGHT T106TA1818', 'ALDC182-3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(215, 'ALDC182B-7 ', 'CONTACTOR DC182B-7/48VALBRIGHT ', 'ALDC182B-7.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(216, 'ALDC88B-7', 'CONTACTOR DC8848V DOBLE ALBRIGHT ', 'ALDC88B-7.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(217, 'ALDC88-6 ', 'CONTACTOR DC88-6/36V CO', 'ALDC88-6.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(218, 'ALDC88B-137', 'CONTACTOR DC88B-137/24V DC88116 DC88-102L', 'ALDC88B-137.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:07', '2018-11-15 16:47:07'),
(219, 'CL998686 ', 'CONTACTOR EV1 150A 36/48V FWD', 'CL998686.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(220, 'CL998687 ', 'CONTACTOR EV1 150A 36/48V REV', 'CL998687.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(221, 'GE812BD312X0 ', 'CONTACTOR EV1 300A 72/80VREV ', 'GE812BD312X0.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(222, 'CL998674 ', 'CONTACTOR EV1 36V BOMBA', 'CL998674.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(223, 'GE150AH142XN ', 'CONTACTOR EV100-150A 36/48V', 'GE150AH142XN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(224, 'GE150AH124XN ', 'CONTACTOR EV100-150A/24V ', 'GE150AH124XN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(225, 'GE300AH142XN ', 'CONTACTOR EV100-300A 24/36/48V ', 'GE300AH142XN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:08', '2018-11-15 16:47:08'),
(226, 'GE154FR124XN ', 'CONTACTOR EV100/150A,F/R 24V,DOBLE ', 'GE154FR124XN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(227, 'CR93575', 'CONTACTOR GE 24V ', 'CR93575.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(228, 'LD0039763500 ', 'CONTACTOR HARDELLET 100A4 BORNES DOBLE ', 'LD0039763500.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(229, 'T106TA2296 ', 'CONTACTOR HARDELLET 100A 2 BORNES', 'T106TA2296.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(230, 'T106TA2298 ', 'CONTACTOR HARDELLET 100A 4 BORNES', 'T106TA2298.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(231, 'T107TA1556 ', 'CONTACTOR HARDELLET 200A 2 BORNES', 'T107TA1556.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:09', '2018-11-15 16:47:09'),
(232, 'T107TA1557 ', 'CONTACTOR HARDELLET 200A 4 BORNES', 'T107TA1557.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(233, 'ALED125', 'CONTACTOR INTERUPTOR 125A', 'ALED125.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(234, 'ALSD150A-27', 'CONTACTOR INTERUPTOR 24V 150A', 'ALSD150A-27.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(235, 'ALSD250A-3 ', 'CONTACTOR INTERUPTOR 24V 250A', 'ALSD250A-3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(236, 'ALED250-1', 'CONTACTOR INTERUPTOR 250A', 'ALED250-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(237, 'ZDK31-250', 'CONTACTOR INTERUPTOR 250A', 'ZDK31-250.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:10', '2018-11-15 16:47:10'),
(238, 'ALED252B1', 'CONTACTOR INTERUPTOR 2X250A', 'ALED252B1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(239, 'JH69384970 ', 'CONTACTOR INTERUPTOR EMERG REMA TAPA ', 'JH69384970.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(240, 'JH28528180 ', 'CONTACTOR INTERUPTOR EMERG. REMA 250A', 'JH28528180.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(241, 'T107TA1112 ', 'CONTACTOR INTERUPTOR EMERGEN JH', 'T107TA1112.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(242, 'T108TA4152 ', 'CONTACTOR KO F/R 48V ', 'T108TA4152.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(243, 'SY88609', 'CONTACTOR ME251 BOMBA 36V', 'SY88609.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:11', '2018-11-15 16:47:11'),
(244, 'GE259A3200P01', 'CONTACTOR PLASTICO MOV.EV1 ', 'GE259A3200P01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(245, 'BT135654 ', 'CONTACTOR PRESTOLITE HB111RB24 2 BORNES', 'BT135654.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(246, 'BT135653 ', 'CONTACTOR PRESTOLITE HB117RB24 4 BORNES', 'BT135653.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(247, 'GE259A3238P1 ', 'CONTACTOR RESORTE CHICO ORO EV100 EV1', 'GE259A3238P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(248, 'HY379523 ', 'CONTACTOR RESORTE CONTACTO ', 'HY379523.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(249, 'GE44A297287P1', 'CONTACTOR RESORTE GRANDE EV100 ', 'GE44A297287P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:12', '2018-11-15 16:47:12'),
(250, 'T107TA1278 ', 'CONTACTOR SW180-1/12V', 'T107TA1278.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(251, 'ALSW180-26L', 'CONTACTOR SW180-26L/24V SIMPLE ', 'ALSW180-26L.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(252, 'ALSW180-4', 'CONTACTOR SW180-4/24V-CO ALBRIGHT', 'ALSW180-4.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(253, 'ALSW180B-16', 'CONTACTOR SW180B-16/72-80V-COT3104824', 'ALSW180B-16.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(254, 'ALSW180B-222 ', 'CONTACTOR SW180B-222/24V ALBRIGHT', 'ALSW180B-222.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(255, 'ALSW180B-224 ', 'CONTACTOR SW180B-224/36-48V ALBRIGHT ', 'ALSW180B-224.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(256, 'ALSW180B-226 ', 'CONTACTOR SW180B-226/72-80V ALBRIGHT ', 'ALSW180B-226.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:13', '2018-11-15 16:47:13'),
(257, 'ALSW180B-98L ', 'CONTACTOR SW180B-98L/36-48V CO ALBRIGHT', 'ALSW180B-98L.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:14', '2018-11-15 16:47:14'),
(258, 'ALSW181B-142 ', 'CONTACTOR SW181B-142 PO 48V SW181B-216 ALBRIG', 'ALSW181B-142.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:14', '2018-11-15 16:47:14'),
(259, 'T107TA1296 ', 'CONTACTOR SW182-1/12V', 'T107TA1296.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:14', '2018-11-15 16:47:14'),
(260, 'ALSW182B-103 ', 'CONTACTOR SW182B-103/36-48VSW182B-100L ', 'ALSW182B-103.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:14', '2018-11-15 16:47:14'),
(261, 'ALSW182B-104 ', 'CONTACTOR SW182B-104/72-80V ALBRIGHT ', 'ALSW182B-104.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:14', '2018-11-15 16:47:14'),
(262, 'ALSW182B-234 ', 'CONTACTOR SW182B-234/24V ALBRIGHT', 'ALSW182B-234.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:15', '2018-11-15 16:47:15'),
(263, 'ALSW200-312', 'CONTACTOR SW200-312/48V ALBRIGHT ', 'ALSW200-312.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:15', '2018-11-15 16:47:15'),
(264, 'ALSW200N-359 ', 'CONTACTOR SW200N-359/24V ALBRIGHT', 'ALSW200N-359.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:15', '2018-11-15 16:47:15'),
(265, 'ALSW201-11 ', 'CONTACTOR SW201-11/24V COALBRIGHT', 'ALSW201-11.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:15', '2018-11-15 16:47:15'),
(266, 'ALSW202-136', 'CONTACTOR SW202-136, 24V DOBLE ', 'ALSW202-136.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(267, 'ALSW202-54 ', 'CONTACTOR SW202-54/72-80V', 'ALSW202-54.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(268, 'ALSW215A-8 ', 'CONTACTOR SW215A/48V ALBRIGHT REVERSIBLE ', 'ALSW215A-8.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(269, 'ALSW60-203P', 'CONTACTOR SW60 24V ALBRIGHT', 'ALSW60-203P.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(270, 'ALSW60B-8', 'CONTACTOR SW60 48V CO ALBRIGHT ', 'ALSW60B-8.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(271, 'ALSW80-284 ', 'CONTACTOR SW80-284/24V CO SW80-6 ', 'ALSW80-284.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(272, 'ALSW80-3 ', 'CONTACTOR SW80-3 12V 100AALBRIGHT', 'ALSW80-3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:16', '2018-11-15 16:47:16'),
(273, 'TVH2115809 ', 'CONTACTOR SW80-B39/36-48V/36CO ', 'TVH2115809.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(274, 'ALSW80B-193', 'CONTACTOR SW80B-193/285/36V CO DUST', 'ALSW80B-193.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(275, 'ALSW80B-286', 'CONTACTOR SW80B-286/48V-CO,SW80-10 ', 'ALSW80B-286.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(276, 'ALSW80B-352', 'CONTACTOR SW80B-352/24V CR109748 ', 'ALSW80B-352.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(277, 'TVH2115812 ', 'CONTACTOR SW80B-49/80V ', 'TVH2115812.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(278, 'ALSW82-24', 'CONTACTOR SW82/24 -2 CONTACTOS ', 'ALSW82-24.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:17', '2018-11-15 16:47:17'),
(279, 'ALSW822-3', 'CONTACTOR SW822 24V ALBRIGHT ', 'ALSW822-3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(280, 'ALSW84A21', 'CONTACTOR SW84-48V CO ALBRIGHT ', 'ALSW84A21.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(281, 'ALSW88B-27 ', 'CONTACTOR SW88B-27/24V ', 'ALSW88B-27.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(282, 'GE259A3225P01', 'CONTACTOR TAPA CLAMP EV-1', 'GE259A3225P01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(283, 'GE44B716719P1', 'CONTACTOR TAPA EV100 ', 'GE44B716719P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(284, 'TVH106TA2101 ', 'CONTACTOR,100A/80V-SCHALTBAU ', 'TVH106TA2101.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:18', '2018-11-15 16:47:18'),
(285, 'GE245A8495P02', 'CONTACTOR,ARANDELA COBRE EV-1', 'GE245A8495P02.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:19', '2018-11-15 16:47:19'),
(286, 'GE44B716721P1', 'CONTACTOR,BASE GRANDE EV100', 'GE44B716721P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:19', '2018-11-15 16:47:19'),
(287, 'AL24364872 ', 'CONTACTOR,BOBINA SW80,88,180,182 ', 'AL24364872.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:19', '2018-11-15 16:47:19'),
(288, 'GE259A3200P1A', 'CONTACTOR,BUJE,EV-1', 'GE259A3200P1A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(289, 'GE259A1298P1 ', 'CONTACTOR,CABEZA RESORTE,EV100 ', 'GE259A1298P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(290, 'GE44B716722P1', 'CONTACTOR,CLAMP ALTO EV100 ', 'GE44B716722P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(291, 'GE259A3220P01', 'CONTACTOR,CLAMP EV-1 ', 'GE259A3220P01.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(292, 'GE44B716729P1', 'CONTACTOR,CLAMP EV100', 'GE44B716729P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(293, 'SYED402AL', 'CONTACTOR,INTERUPTOR 400A', 'SYED402AL.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 3, NULL, NULL, '2018-11-15 16:47:20', '2018-11-15 16:47:20'),
(294, 'GE259A3202P1 ', 'CONTACTOR,RESORTE CHICO,ROJO,EV100 ', 'GE259A3202P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:21', '2018-11-15 16:47:21'),
(295, 'GE259A8708P01', 'CONTACTOR,RESORTE GRANDE EV-1', 'GE259A8708P01.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:21', '2018-11-15 16:47:21'),
(296, 'GE259A8702P1 ', 'CONTACTOR,SOPORTE TAPA EV-1', 'GE259A8702P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 3, NULL, NULL, '2018-11-15 16:47:21', '2018-11-15 16:47:21'),
(297, 'CX553648 ', 'DESTELLADOR ELECTR. 48V. ', 'CX553648.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:21', '2018-11-15 16:47:21'),
(298, 'BC312714 ', 'RELAY AUX. ', 'BC312714.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:21', '2018-11-15 16:47:21'),
(299, 'CR84344-2', 'SOLENOIDE 12V VALVULA HIDR ', 'CR84344-2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:22', '2018-11-15 16:47:22'),
(300, 'CL303502 ', 'SOLENOIDE 12V/100A 3 BORNES', 'CL303502.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:22', '2018-11-15 16:47:22');
INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `model`, `important`, `pdf`, `keyword`, `route`, `brand_id`, `family_id`, `subfamily_id`, `order`, `created_at`, `updated_at`) VALUES
(301, 'CL992418 ', 'SOLENOIDE 12V/100A 4 BORNES', 'CL992418.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:22', '2018-11-15 16:47:22'),
(302, 'WH586-105111 ', 'SOLENOIDE 12V/200A 2 BORNES WHITE RODGERS', 'WH586-105111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:22', '2018-11-15 16:47:22'),
(303, 'TVH/111TA3727', 'SOLENOIDE 12V/200A 4 BORNES WHITE RODGERS', 'TVH/111TA3727.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:22', '2018-11-15 16:47:22'),
(304, 'PLSAS-4401 ', 'SOLENOIDE 24V/100A CO', 'PLSAS-4401.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:23', '2018-11-15 16:47:23'),
(305, 'CR84343', 'SOLENOIDE 24V/100A INT ', 'CR84343.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:23', '2018-11-15 16:47:23'),
(306, 'IE11250147 ', 'SOLENOIDE 24V/150A LETRICA ISKRA ', 'IE11250147.jpg', NULL, NULL, 0, NULL, NULL, NULL, 9, 3, NULL, NULL, '2018-11-15 16:47:23', '2018-11-15 16:47:23'),
(307, 'IE11250140 ', 'SOLENOIDE 24V/150A LETRICA ISKRA ', 'IE11250140.jpg', NULL, NULL, 0, NULL, NULL, NULL, 9, 3, NULL, NULL, '2018-11-15 16:47:23', '2018-11-15 16:47:23'),
(308, 'WH586-114111 ', 'SOLENOIDE 24V/200A 2 BORNES WHITE RODGERS', 'WH586-114111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:23', '2018-11-15 16:47:23'),
(309, 'WH586-314111 ', 'SOLENOIDE 24V/200A 4 BORNES WHITE RODGERS', 'WH586-314111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:24', '2018-11-15 16:47:24'),
(310, 'SY102950 ', 'SOLENOIDE 24V/80A LETRICA ISKRA HY2046797', 'SY102950.jpg', NULL, NULL, 0, NULL, NULL, NULL, 9, 3, NULL, NULL, '2018-11-15 16:47:24', '2018-11-15 16:47:24'),
(311, 'PLSAS-5303A', 'SOLENOIDE 36V/100A CO', 'PLSAS-5303A.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:24', '2018-11-15 16:47:24'),
(312, 'WH586-117111 ', 'SOLENOIDE 36V/200A 2 BORNES WHITE RODGERS', 'WH586-117111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:24', '2018-11-15 16:47:24'),
(313, 'WH586-317111 ', 'SOLENOIDE 36V/200A 4 BORNES WHITE RODGERS', 'WH586-317111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:25', '2018-11-15 16:47:25'),
(314, 'WH586120111', 'SOLENOIDE 48V/200A 2 BORNES WHITE RODGERS', 'WH586120111.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:25', '2018-11-15 16:47:25'),
(315, 'WH586-320111B', 'SOLENOIDE 48V/200A 4 BORNES WHITE RODGERS', 'WH586-320111B.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:25', '2018-11-15 16:47:25'),
(316, 'CT91A28-30022', 'SOLENOIDE CON VALVULA TRANSMICION COMPL', 'CT91A28-30022.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:25', '2018-11-15 16:47:25'),
(317, 'YT901462802', 'SOLENOIDE DOBLE VALVULA TRANSMICION', 'YT901462802.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-11-15 16:47:26', '2018-11-15 16:47:26'),
(318, 'CU1220-2201', 'CONTROLADOR40A/24V CURTIS EPS DIRECCION', 'CU1220-2201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:26', '2018-11-15 16:47:26'),
(319, 'CU1208-345 ', 'CONTROLADOR45A/36V TENANT', 'CU1208-345.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:26', '2018-11-15 16:47:26'),
(320, 'CX66645', 'CONTROLADOR45A/48VAC0 EPS F07158 HELI', 'CX66645.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:26', '2018-11-15 16:47:26'),
(321, 'CU1208-2344', 'CONTROLADOR55A/24V CURTIS', 'CU1208-2344.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:27', '2018-11-15 16:47:27'),
(322, 'CU1210-2401', 'CONTROLADOR70A/24V CURTIS', 'CU1210-2401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:27', '2018-11-15 16:47:27'),
(323, 'CU1228-3430', 'CONTROLADOR70A/36V CURTIS', 'CU1228-3430.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:27', '2018-11-15 16:47:27'),
(324, 'CU1212P-2501 ', 'CONTROLADOR90A/24V CURTIS', 'CU1212P-2501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:28', '2018-11-15 16:47:28'),
(325, 'CX72101E ', 'CONTROLADOR 1000A 24-72V CIE KDH ', 'CX72101E.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:28', '2018-11-15 16:47:28'),
(326, 'CU1227-3402', 'CONTROLADOR 100A/48V DIRECCION ', 'CU1227-3402.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:28', '2018-11-15 16:47:28'),
(327, 'TY24710-13401', 'CONTROLADOR 100A/48V DIRECCION ', 'TY24710-13401.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:28', '2018-11-15 16:47:28'),
(328, 'DWD553101', 'CONTROLADOR 100A/48V DIRECCION NSK ', 'DWD553101.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:29', '2018-11-15 16:47:29'),
(329, 'CU1228-2730', 'CONTROLADOR 110A/24V CURTIS', 'CU1228-2730.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:29', '2018-11-15 16:47:29'),
(330, 'ZAFC2086A', 'CONTROLADOR 150+150/24VDOBLE NACO ZAPI ', 'ZAFC2086A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:29', '2018-11-15 16:47:29'),
(331, 'UP065708001', 'CONTROLADOR 180A/24-36V MICROMOS ', 'UP065708001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:30', '2018-11-15 16:47:30'),
(332, 'SC631F50001', 'CONTROLADOR 180A/24-36V SC1118MICROMOS ', 'SC631F50001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:30', '2018-11-15 16:47:30'),
(333, 'YT524164225', 'CONTROLADOR 200+250A/24ZAPI/NACO COMBO ', 'YT524164225.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:30', '2018-11-15 16:47:30'),
(334, 'CU1243-4220', 'CONTROLADOR 200+25A/24-36V CURTIS', 'CU1243-4220.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:30', '2018-11-15 16:47:30'),
(335, 'CU1230-2401', 'CONTROLADOR 200A/24V AC CURTIS ', 'CU1230-2401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:31', '2018-11-15 16:47:31'),
(336, 'CR813096001', 'CONTROLADOR 200A/24V SEM 0 ZAPI FS2058 ', 'CR813096001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:31', '2018-11-15 16:47:31'),
(337, 'ZAFH2120B', 'CONTROLADOR 230A/24V H0 ZAPI A2HO21', 'ZAFH2120B.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:31', '2018-11-15 16:47:31'),
(338, 'CU1510-5201', 'CONTROLADOR 250+25A/48V SEM', 'CU1510-5201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:31', '2018-11-15 16:47:31'),
(339, 'CU1232E-2321 ', 'CONTROLADOR 250A/24V AC CURTIS ', 'CU1232E-2321.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:31', '2018-11-15 16:47:31'),
(340, 'CU1207A-4101 ', 'CONTROLADOR 250A/24V CURTIS', 'CU1207A-4101.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:32', '2018-11-15 16:47:32'),
(341, 'SC632M32113', 'CONTROLADOR 270A/24-36V SEM MICROPAK,TRACCION', 'SC632M32113.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:32', '2018-11-15 16:47:32'),
(342, 'SC631/40061', 'CONTROLADOR 270A/24-48V MOS90B ', 'SC631/40061.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:32', '2018-11-15 16:47:32'),
(343, 'SC631/40115', 'CONTROLADOR 270A/24V MOS90A', 'SC631/40115.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:32', '2018-11-15 16:47:32'),
(344, 'CU1204M-4201 ', 'CONTROLADOR 275A/24-36V', 'CU1204M-4201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:33', '2018-11-15 16:47:33'),
(345, 'CU1204 -004', 'CONTROLADOR 275A/24-36V, 0-5K', 'CU1204 -004.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:33', '2018-11-15 16:47:33'),
(346, 'CU1266-5201', 'CONTROLADOR 275A/36-48SEPEX CURTIS ', 'CU1266-5201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:33', '2018-11-15 16:47:33'),
(347, 'CU1243-4320', 'CONTROLADOR 300+25A/24-36V CURTIS', 'CU1243-4320.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:33', '2018-11-15 16:47:33'),
(348, 'CU1207 -2101 ', 'CONTROLADOR 300A/24V-36V CURTIS', 'CU1207 -2101.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:33', '2018-11-15 16:47:33'),
(349, 'YT524258630', 'CONTROLADOR 350/300A 24V AC ISKRA', 'YT524258630.jpg', NULL, NULL, 0, NULL, NULL, NULL, 9, 5, NULL, NULL, '2018-11-15 16:47:34', '2018-11-15 16:47:34'),
(350, 'CU1297-2411', 'CONTROLADOR 350/35/300A-24V', 'CU1297-2411.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:34', '2018-11-15 16:47:34'),
(351, 'CU1234-2371', 'CONTROLADOR 350A/24V AC CURTIS ', 'CU1234-2371.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:34', '2018-11-15 16:47:34'),
(352, 'CU1205 -202', 'CONTROLADOR 350A/36-48V', 'CU1205 -202.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:34', '2018-11-15 16:47:34'),
(353, 'CU1205X-5301 ', 'CONTROLADOR 350A/36-48V', 'CU1205X-5301.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(354, 'CU1236-5301', 'CONTROLADOR 350A/36-48V AC CURTIS', 'CU1236-5301.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(355, 'ZAHP48350', 'CONTROLADOR 350A/48V BOMBA HP ZAPI ', 'ZAHP48350.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(356, 'KO3BA4771142 ', 'CONTROLADOR 400A 48V AC MEIDEN ', 'KO3BA4771142.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(357, 'CU1205X-1404 ', 'CONTROLADOR 400A/12V CURTIS', 'CU1205X-1404.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(358, 'CU1205 -106', 'CONTROLADOR 400A/24-36,5K-O', 'CU1205 -106.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:35', '2018-11-15 16:47:35'),
(359, 'CU1205X-4401 ', 'CONTROLADOR 400A/24-36V CURTIS ', 'CU1205X-4401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(360, 'CU1204X-4401 ', 'CONTROLADOR 400A/24-36V,0-5K CURTIS', 'CU1204X-4401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(361, 'CU1205 -104', 'CONTROLADOR 400A/24-36V,0-5K CURTIS', 'CU1205 -104.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(362, 'CU1205X-4402 ', 'CONTROLADOR 400A/24-36V,5K-0 CURTIS', 'CU1205X-4402.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(363, 'CU1204X-4402 ', 'CONTROLADOR 400A/24-36V,5K-0 CURTIS', 'CU1204X-4402.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(364, 'CU1209B-6A502', 'CONTROLADOR 400A/48-80V CURTIS ', 'CU1209B-6A502.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:36', '2018-11-15 16:47:36'),
(365, 'CU1209-5501', 'CONTROLADOR 450A/36-48V CURTIS ', 'CU1209-5501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(366, 'SC634A44101', 'CONTROLADOR 450A/48V AC GEN4 ', 'SC634A44101.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(367, 'CU1205X-1601 ', 'CONTROLADOR 500A/12V CURTIS', 'CU1205X-1601.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(368, 'CU1244-4551', 'CONTROLADOR 500A/24-36 SEPEX CURTIS', 'CU1244-4551.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(369, 'CU1236-4501', 'CONTROLADOR 500A/24-36V AC CURTIS', 'CU1236-4501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(370, 'CU1209 -4601 ', 'CONTROLADOR 500A/24-36V CURTIS ', 'CU1209 -4601.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(371, 'CU1215-8301', 'CONTROLADOR 500A/24-36V CURTIS ', 'CU1215-8301.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:37', '2018-11-15 16:47:37'),
(372, 'CU1205M-4601 ', 'CONTROLADOR 500A/24-36V CURTIS ', 'CU1205M-4601.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:38', '2018-11-15 16:47:38'),
(373, 'SC632S45651', 'CONTROLADOR 500A/24-48V SEMJLG PPK SEVCON', 'SC632S45651.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:38', '2018-11-15 16:47:38'),
(374, 'SC632S45650', 'CONTROLADOR 500A/24-48V SEM PPK SEVCON TRAC', 'SC632S45650.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:38', '2018-11-15 16:47:38'),
(375, 'CU1244-5561', 'CONTROLADOR 500A/36-48SEPEX CURTIS ', 'CU1244-5561.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:38', '2018-11-15 16:47:38'),
(376, 'CU1254-5501', 'CONTROLADOR 500A/36-48SEPEX CURTIS PUMP', 'CU1254-5501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:38', '2018-11-15 16:47:38'),
(377, 'CU1215 -8306 ', 'CONTROLADOR 500A/36-48V CU1215-8307 HELI ', 'CU1215 -8306.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(378, 'CU1215 -8302 ', 'CONTROLADOR 500A/36-48V CURTIS ', 'CU1215 -8302.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(379, 'CU1205M-5603 ', 'CONTROLADOR 500A/36-48V CURTIS ', 'CU1205M-5603.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(380, 'CU1221 -6A703', 'CONTROLADOR 500A/48-80V CURTIS ', 'CU1221 -6A703.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(381, 'SC631/10901', 'CONTROLADOR 500A/48-80V P500 PUMP SEVCON ', 'SC631/10901.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(382, 'CT16A7204010 ', 'CONTROLADOR 500A/48V AC CATERPILAR ', 'CT16A7204010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:39', '2018-11-15 16:47:39'),
(383, 'CU1221 -5701 ', 'CONTROLADOR 550A/36-48V CURTIS ', 'CU1221 -5701.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:40', '2018-11-15 16:47:40'),
(384, 'CU1238-6501', 'CONTROLADOR 550A/48-80V AC CURTIS', 'CU1238-6501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:40', '2018-11-15 16:47:40'),
(385, 'CU1215 -8401 ', 'CONTROLADOR 600A/24-36V CURTIS ', 'CU1215 -8401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:40', '2018-11-15 16:47:40'),
(386, 'CU1221 -4801 ', 'CONTROLADOR 600A/24-36V CURTIS ', 'CU1221 -4801.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:40', '2018-11-15 16:47:40'),
(387, 'SC631/40121', 'CONTROLADOR 600A/24-48V MOS90D BOMBA ', 'SC631/40121.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(388, 'SC631/40038', 'CONTROLADOR 600A/24-48V MOS90D JLG ', 'SC631/40038.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(389, 'SC631/40074', 'CONTROLADOR 600A/24-48V MOS90D SEVCON', 'SC631/40074.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(390, 'YT520340860', 'CONTROLADOR 600A/24V SCHAEFF YALE ESC035ZA ', 'YT520340860.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(391, 'CU1244-5651', 'CONTROLADOR 600A/36-48SEPEX CURTIS ', 'CU1244-5651.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(392, 'CU1219-8406', 'CONTROLADOR 600A/36-48V CURTIS HELI', 'CU1219-8406.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:41', '2018-11-15 16:47:41'),
(393, 'CU1254-6601', 'CONTROLADOR 600A/36-80VSEPEX PUMP CURTIS ', 'CU1254-6601.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:42', '2018-11-15 16:47:42'),
(394, 'CU1244-6661', 'CONTROLADOR 600A/48-84VSEPEX CURTIS', 'CU1244-6661.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:42', '2018-11-15 16:47:42'),
(395, 'CU1253-4802', 'CONTROLADOR 600A/48V PUMP CURTIS ', 'CU1253-4802.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:42', '2018-11-15 16:47:42'),
(396, 'CX55771', 'CONTROLADOR 600A/48V ZAPI A4H268 H2B ', 'CX55771.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:43', '2018-11-15 16:47:43'),
(397, 'CU1253-8001', 'CONTROLADOR 600A/72-80V CURTIS PUMP', 'CU1253-8001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:43', '2018-11-15 16:47:43'),
(398, 'SC632P86511', 'CONTROLADOR 600A/72-80V PPK SEVCON PUMP', 'SC632P86511.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:43', '2018-11-15 16:47:43'),
(399, 'SC632T86211', 'CONTROLADOR 600A/72-80V PPK SEVCON TRACCION', 'SC632T86211.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:43', '2018-11-15 16:47:43'),
(400, 'SC632T46221', 'CONTROLADOR 650A/24-48V POWERPAK TRACCION', 'SC632T46221.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:43', '2018-11-15 16:47:43'),
(401, 'SC632P46528', 'CONTROLADOR 650A/24-48V PPK SEVCON PUMP', 'SC632P46528.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:44', '2018-11-15 16:47:44'),
(402, 'CU1238-5601', 'CONTROLADOR 650A/36-48V AC CURTIS', 'CU1238-5601.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:44', '2018-11-15 16:47:44'),
(403, 'CX55611', 'CONTROLADOR 660A/48V ZAPI B1S48660 ', 'CX55611.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:44', '2018-11-15 16:47:44'),
(404, 'CU1203A-201', 'CONTROLADOR 90A/24V CURTIS ', 'CU1203A-201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:45', '2018-11-15 16:47:45'),
(405, 'CT16A70-34010', 'CONTROLADOR AC 600A/48V TRACCION CAT ', 'CT16A70-34010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:45', '2018-11-15 16:47:45'),
(406, 'DH83U03564A', 'CONTROLADOR DANAHER INTERFASIS ', 'DH83U03564A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 5, NULL, NULL, '2018-11-15 16:47:46', '2018-11-15 16:47:46'),
(407, 'YT580014154', 'CONTROLADOR ELM-MODULO YT', 'YT580014154.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-11-15 16:47:46', '2018-11-15 16:47:46'),
(408, 'CR790237 ', 'CONTROLADOR EV-T6 TRACCIONGEIC3645EV61TBHCB', 'CR790237.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:46', '2018-11-15 16:47:46'),
(409, 'CR791122-191 ', 'CONTROLADOR EV-T6,BOMBA GEIC3645EV61PDHEB', 'CR791122-191.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:46', '2018-11-15 16:47:46'),
(410, 'YT580007805', 'CONTROLADOR GEIC3645SR4W606N6 SEM GE ', 'YT580007805.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:47', '2018-11-15 16:47:47'),
(411, 'JL1600238', 'CONTROLADOR MC-1 CURTIS', 'JL1600238.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:47', '2018-11-15 16:47:47'),
(412, 'HL2901001630 ', 'CONTROLADOR ZAPI PUMP HOULOTTE ', 'HL2901001630.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:47', '2018-11-15 16:47:47'),
(413, 'GEIC4486CNV4L', 'CONVERSOR DC/DC 48-12V 22A GRAL.EL.', 'GEIC4486CNV4L.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:47', '2018-11-15 16:47:47'),
(414, 'SC622/11084', 'CONVERSOR DC/DC 48-12V/300W SEVCON ', 'SC622/11084.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:47', '2018-11-15 16:47:47'),
(415, 'SC622/11085', 'CONVERSOR DC/DC 48-24V/300W SEVCON ', 'SC622/11085.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:48', '2018-11-15 16:47:48'),
(416, 'SY1200-HV', 'CONVERSOR DC/DC 72/80-12V/10A GRAL EL', 'SY1200-HV.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:48', '2018-11-15 16:47:48'),
(417, 'GEIC4486CNV4H', 'CONVERSOR DC/DC 72/80-12V/22A GRAL.EL. ', 'GEIC4486CNV4H.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:48', '2018-11-15 16:47:48'),
(418, 'SY1200-25HV', 'CONVERSOR DC/DC 72/80-12V/25A SMH', 'SY1200-25HV.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 5, NULL, NULL, '2018-11-15 16:47:48', '2018-11-15 16:47:48'),
(419, 'SC622/11086', 'CONVERSOR DC/DC 72/80-12V/300W SEVCON', 'SC622/11086.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:48', '2018-11-15 16:47:48'),
(420, 'SC622/11087', 'CONVERSOR DC/DC 72/80-24V/300W SEVCON', 'SC622/11087.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:49', '2018-11-15 16:47:49'),
(421, 'GEIC3645LXHS1', 'PROGRAMADOREV100LXGRAL EL', 'GEIC3645LXHS1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 5, NULL, NULL, '2018-11-15 16:47:49', '2018-11-15 16:47:49'),
(422, 'CU1313K-4401 ', 'PROGRAMADOR CURTIS 1313K-4401', 'CU1313K-4401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:49', '2018-11-15 16:47:49'),
(423, 'SC662/14050', 'PROGRAMADOR GEN4 SEVCON', 'SC662/14050.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:49', '2018-11-15 16:47:49'),
(424, 'CU1314K-9401 ', 'PROGRAMADOR KIT PCUSB V4 1314K-4401', 'CU1314K-9401.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 5, NULL, NULL, '2018-11-15 16:47:49', '2018-11-15 16:47:49'),
(425, 'SC662/14001', 'PROGRAMADOR MOS90 SEVCON ', 'SC662/14001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:50', '2018-11-15 16:47:50'),
(426, 'SC662/14063', 'PROGRAMADOR PPK SUPER SEVCON ', 'SC662/14063.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:50', '2018-11-15 16:47:50'),
(427, 'SC662/14022', 'PROGRAMADOR SC2000 SEVCON', 'SC662/14022.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 5, NULL, NULL, '2018-11-15 16:47:50', '2018-11-15 16:47:50'),
(428, 'ZAFC2009A', 'PROGRAMADOR ZAPI ', 'ZAFC2009A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, NULL, NULL, '2018-11-15 16:47:51', '2018-11-15 16:47:51'),
(429, 'TVH3107668 ', 'ESCOBILLA(1)8X8X22 DIR.BT149773', 'TVH3107668.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:51', '2018-11-15 16:47:51'),
(430, 'TA7010800', 'ESCOBILLA(1)MOTOR TRACCION ', 'TA7010800.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:51', '2018-11-15 16:47:51'),
(431, 'CX88835', 'ESCOBILLA(1) 12,5X10X25', 'CX88835.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:51', '2018-11-15 16:47:51'),
(432, 'LD0009718141 ', 'ESCOBILLA(1) 12.3X8X22 ', 'LD0009718141.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:51', '2018-11-15 16:47:51'),
(433, 'CX88834', 'ESCOBILLA(1) 12.5X8.5X25 DIR KO', 'CX88834.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:52', '2018-11-15 16:47:52'),
(434, 'CX88712', 'ESCOBILLA(1) 13X9X25 ', 'CX88712.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:52', '2018-11-15 16:47:52'),
(435, 'CX88711', 'ESCOBILLA(1) 14X8X23 DIR ', 'CX88711.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:52', '2018-11-15 16:47:52'),
(436, 'BKST344640 ', 'ESCOBILLA(1) 16X10X26', 'BKST344640.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:52', '2018-11-15 16:47:52'),
(437, 'HY1376980', 'ESCOBILLA(1) 16X12,5X37', 'HY1376980.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:53', '2018-11-15 16:47:53'),
(438, 'SY10-2200', 'ESCOBILLA(1) 16X13X35 CL-TW25', 'SY10-2200.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:53', '2018-11-15 16:47:53'),
(439, 'YT518805656', 'ESCOBILLA(1) 16X13X38', 'YT518805656.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:53', '2018-11-15 16:47:53'),
(440, 'HY1376963', 'ESCOBILLA(1) 16X13X38 SENSOR ', 'HY1376963.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:54', '2018-11-15 16:47:54'),
(441, 'CX88813', 'ESCOBILLA(1) 16X8X26 ', 'CX88813.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:54', '2018-11-15 16:47:54'),
(442, 'TY14543-U1090', 'ESCOBILLA(1) 16X9X29 DIR ', 'TY14543-U1090.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:54', '2018-11-15 16:47:54'),
(443, 'CX88833', 'ESCOBILLA(1) 20,7X9.6X26 ', 'CX88833.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:54', '2018-11-15 16:47:54'),
(444, 'CL909819 ', 'ESCOBILLA(1) 20.6X9.5X28 ', 'CL909819.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:55', '2018-11-15 16:47:55'),
(445, 'BC168325 ', 'ESCOBILLA(1) 20X10X32 BOMBA E3 ', 'BC168325.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:55', '2018-11-15 16:47:55'),
(446, 'BC388182 ', 'ESCOBILLA(1) 20X10X32 DIR.E8 ', 'BC388182.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:55', '2018-11-15 16:47:55'),
(447, 'BC168355 ', 'ESCOBILLA(1) 20X10X32 TRAC.M50 ', 'BC168355.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:56', '2018-11-15 16:47:56'),
(448, 'TY14515-11590', 'ESCOBILLA(1) 20X12,5X17 DIR. ', 'TY14515-11590.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:56', '2018-11-15 16:47:56'),
(449, 'CX88812', 'ESCOBILLA(1) 20X12,5X32', 'CX88812.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:56', '2018-11-15 16:47:56'),
(450, 'KO3BB-1924570', 'ESCOBILLA(1) 22,3X7X20 DIR.FB', 'KO3BB-1924570.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:56', '2018-11-15 16:47:56'),
(451, 'CX88832', 'ESCOBILLA(1) 25X10X24 KO ', 'CX88832.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:56', '2018-11-15 16:47:56'),
(452, 'CX88820', 'ESCOBILLA(1) 25X10X25', 'CX88820.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:57', '2018-11-15 16:47:57'),
(453, 'CXST210', 'ESCOBILLA(1) 25X10X40 AASA ', 'CXST210.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:57', '2018-11-15 16:47:57'),
(454, 'LD0009718119 ', 'ESCOBILLA(1) 25X12,5X32', 'LD0009718119.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:57', '2018-11-15 16:47:57'),
(455, 'AC4930038', 'ESCOBILLA(1) 25X16X32', 'AC4930038.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:57', '2018-11-15 16:47:57'),
(456, 'CL915934 ', 'ESCOBILLA(1) 25X16X33,BOMBA-ECS', 'CL915934.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:58', '2018-11-15 16:47:58'),
(457, 'CX251634 ', 'ESCOBILLA(1) 25X16X34 HELLI', 'CX251634.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:58', '2018-11-15 16:47:58'),
(458, 'NI29242-41H10', 'ESCOBILLA(1) 25X9X22 DIR ', 'NI29242-41H10.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:58', '2018-11-15 16:47:58'),
(459, 'CX281635 ', 'ESCOBILLA(1) 28X15.7X35MM TCM', 'CX281635.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:58', '2018-11-15 16:47:58'),
(460, 'TVH1107469 ', 'ESCOBILLA(1) 28X6X30.5 DIR.JH,AM ', 'TVH1107469.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:58', '2018-11-15 16:47:58'),
(461, 'CX66614', 'ESCOBILLA(1) 29,6X14X38', 'CX66614.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(462, 'CX88814', 'ESCOBILLA(1) 30X12X28 TRAC ', 'CX88814.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(463, 'NI29142-L4505', 'ESCOBILLA(1) 30X14X25', 'NI29142-L4505.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(464, 'TY14512-22500', 'ESCOBILLA(1) 30X8X20 ', 'TY14512-22500.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(465, 'TY14512-22501', 'ESCOBILLA(1) 30X8X32 DIR ', 'TY14512-22501.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(466, 'CX88714', 'ESCOBILLA(1) 30X9X25 ', 'CX88714.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:47:59', '2018-11-15 16:47:59'),
(467, 'HY208870 ', 'ESCOBILLA(1) 31.5X12.5X32', 'HY208870.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:00', '2018-11-15 16:48:00'),
(468, 'BT306644000', 'ESCOBILLA(1) 31.5X16X35 TRAC.HMX80 ', 'BT306644000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:00', '2018-11-15 16:48:00'),
(469, 'CX88880', 'ESCOBILLA(1) 31.8X10X35', 'CX88880.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:00', '2018-11-15 16:48:00'),
(470, 'LD0009718124 ', 'ESCOBILLA(1) 32X13X32(48)', 'LD0009718124.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:00', '2018-11-15 16:48:00'),
(471, 'BKST257185 ', 'ESCOBILLA(1) 32X16X32', 'BKST257185.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(472, 'CX66803', 'ESCOBILLA(1) 36X10X35 KOMATSU', 'CX66803.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(473, 'NI29042-L7005', 'ESCOBILLA(1) 36X14X27', 'NI29042-L7005.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(474, 'KFB0517400600', 'ESCOBILLA(1) 40X11X38 KO TRACCION. ', 'KFB0517400600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(475, 'TY14324-21400', 'ESCOBILLA(1) 40X12.5X35', 'TY14324-21400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(476, 'TY14326-31561', 'ESCOBILLA(1) 40X14X25', 'TY14326-31561.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:01', '2018-11-15 16:48:01'),
(477, 'NI29042-L4000', 'ESCOBILLA(1) 40X15X26', 'NI29042-L4000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(478, 'TCABMT4903301', 'ESCOBILLA(1) 40X15X29', 'TCABMT4903301.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(479, 'NI29142-30H05', 'ESCOBILLA(1) 40X15X30', 'NI29142-30H05.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(480, 'NI29142-40H05', 'ESCOBILLA(1) 40X15X35', 'NI29142-40H05.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(481, 'TY14124-21400', 'ESCOBILLA(1) 40X16X35', 'TY14124-21400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(482, 'MBNA057040 ', 'ESCOBILLA(1) 47X12.5X42/3 CABLES/SENSOR', 'MBNA057040.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(483, 'YT902008818', 'ESCOBILLA(1) 48X13X41 3 CABLES ', 'YT902008818.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:02', '2018-11-15 16:48:02'),
(484, 'KFB0517400910', 'ESCOBILLA(1) KO TRACCION ', 'KFB0517400910.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(485, 'CT1058363', 'ESCOBILLA(1PAR) 29X13X36 SENSOR', 'CT1058363.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(486, 'HY366090 ', 'ESCOBILLA(1PAR) 29X13X37 SENSOR', 'HY366090.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(487, 'HY364674 ', 'ESCOBILLA(1PAR) 29X16X44 SENSOR', 'HY364674.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(488, 'YT519745813', 'ESCOBILLAS KIT(1 PAR) 28,3X12,5X36 ', 'YT519745813.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(489, 'HY332780 ', 'ESCOBILLAS KIT(1 PAR) 28,5X12,8X36 ', 'HY332780.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:03', '2018-11-15 16:48:03'),
(490, 'HY332781 ', 'ESCOBILLAS KIT(1 PAR) 29X16X44 ', 'HY332781.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:04', '2018-11-15 16:48:04'),
(491, 'CL1810775', 'ESCOBILLAS KIT(2 PAR) +(4)RES 19X9X17', 'CL1810775.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:04', '2018-11-15 16:48:04'),
(492, 'CX88866', 'ESCOBILLAS KIT(2 PAR) 12,3X7,0X22 TORNILLO ', 'CX88866.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:04', '2018-11-15 16:48:04'),
(493, 'CX99922', 'ESCOBILLAS KIT(2 PAR) 16X12.5X37 TORNILLO', 'CX99922.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:04', '2018-11-15 16:48:04'),
(494, 'CX99923', 'ESCOBILLAS KIT(2 PAR) 16X25X36 TORNILLO MELEX', 'CX99923.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:05', '2018-11-15 16:48:05'),
(495, 'CL878009 ', 'ESCOBILLAS KIT(2 PAR) 19X8X13', 'CL878009.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:05', '2018-11-15 16:48:05'),
(496, 'CR107304 ', 'ESCOBILLAS KIT(2 PAR) 19X9X13', 'CR107304.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:05', '2018-11-15 16:48:05'),
(497, 'SY10-1067', 'ESCOBILLAS KIT(2 PAR) 22X10X25 YT', 'SY10-1067.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:06', '2018-11-15 16:48:06'),
(498, 'YT520399805', 'ESCOBILLAS KIT(2 PAR) 44X10X25 ', 'YT520399805.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:06', '2018-11-15 16:48:06'),
(499, 'YT520399808', 'ESCOBILLAS KIT(2 PAR) 53X12,5X45 ', 'YT520399808.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:06', '2018-11-15 16:48:06'),
(500, 'YT520399813', 'ESCOBILLAS KIT(2) 19X9X24 MPB-040', 'YT520399813.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:06', '2018-11-15 16:48:06'),
(501, 'CL1810648', 'ESCOBILLAS KIT(2PAR+8R)22X7X19 TW', 'CL1810648.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:07', '2018-11-15 16:48:07'),
(502, 'CL883802 ', 'ESCOBILLAS KIT(2PX4) 22X7X19 BOMBA TW25', 'CL883802.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:07', '2018-11-15 16:48:07'),
(503, 'CR790483 ', 'ESCOBILLAS KIT(3+1S) 48X10X44', 'CR790483.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:07', '2018-11-15 16:48:07'),
(504, 'JH28715920 ', 'ESCOBILLAS KIT(4) 13X9X25 ETX-10SP ', 'JH28715920.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:08', '2018-11-15 16:48:08'),
(505, 'SY10-2005', 'ESCOBILLAS KIT(4) 15,5X12.5X35 ', 'SY10-2005.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:08', '2018-11-15 16:48:08'),
(506, 'CL992317 ', 'ESCOBILLAS KIT(4) 18X9X16', 'CL992317.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:08', '2018-11-15 16:48:08'),
(507, 'LD0009718147 ', 'ESCOBILLAS KIT(4) 19X9X14', 'LD0009718147.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:08', '2018-11-15 16:48:08'),
(508, 'YT518264802', 'ESCOBILLAS KIT(4) 20,5X9,4X25 DIR. ', 'YT518264802.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(509, 'CL1811769', 'ESCOBILLAS KIT(4) 20X9X29', 'CL1811769.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(510, 'SY10-1004', 'ESCOBILLAS KIT(4) 25,5X7X29', 'SY10-1004.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(511, 'CL1811952', 'ESCOBILLAS KIT(4) 25,5X9X30 DIR.ECS25', 'CL1811952.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(512, 'CL994613 ', 'ESCOBILLAS KIT(4) 25X10X33 ', 'CL994613.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(513, 'CL991024 ', 'ESCOBILLAS KIT(4) 25X10X35 ', 'CL991024.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:09', '2018-11-15 16:48:09'),
(514, 'SY10-1063', 'ESCOBILLAS KIT(4) 25X10X35 ', 'SY10-1063.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(515, 'T552773', 'ESCOBILLAS KIT(4) 25X12.5X32 BT', 'T552773.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(516, 'YT519616815', 'ESCOBILLAS KIT(4) 26X9X25', 'YT519616815.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(517, 'CX892234 ', 'ESCOBILLAS KIT(4) 31,8X12,5X35 CL-TW25 ', 'CX892234.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(518, 'CR100730 ', 'ESCOBILLAS KIT(4) 32X13X35 ', 'CR100730.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(519, 'CL998642 ', 'ESCOBILLAS KIT(4) 32X13X35 ', 'CL998642.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:10', '2018-11-15 16:48:10'),
(520, 'CR113328 ', 'ESCOBILLAS KIT(4) 32X16X33 ', 'CR113328.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(521, 'CT916033 ', 'ESCOBILLAS KIT(4) 40X12.5X40 ', 'CT916033.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(522, 'SY10-2148', 'ESCOBILLAS KIT(4) 44X10X25 BOMBA YT', 'SY10-2148.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(523, 'YT520399827', 'ESCOBILLAS KIT(4) 63,5X12,5X32 ', 'YT520399827.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(524, 'JH50044648 ', 'ESCOBILLAS KIT(4) DIR.JH PORTA CARBON', 'JH50044648.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(525, 'HY1506838', 'ESCOBILLAS KIT(4)+(4)RES ', 'HY1506838.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(526, 'CL1811039', 'ESCOBILLAS KIT(4)+(8)RES 32X13X35', 'CL1811039.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:11', '2018-11-15 16:48:11'),
(527, 'CL1811733', 'ESCOBILLAS KIT(4)+(8)RES 32X13X35', 'CL1811733.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(528, 'CL1810605', 'ESCOBILLAS KIT(4)+(8)RES/64X16X44,ECS25', 'CL1810605.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(529, 'CR118942 ', 'ESCOBILLAS KIT(8) 24,5X16X33,5MM.TRAC. ', 'CR118942.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(530, 'BT307390000', 'ESCOBILLAS KIT(8) 24,5X16X33,5MM.TRAC.RRX', 'BT307390000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(531, 'CT916183 ', 'ESCOBILLAS KIT(8) 25X12.5X40 SENSOR', 'CT916183.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(532, 'CL993942 ', 'ESCOBILLAS KIT(8) 25X13X35 ', 'CL993942.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:12', '2018-11-15 16:48:12'),
(533, 'SY10-1010', 'ESCOBILLAS KIT(8) 25X14X35 ECS PUMP', 'SY10-1010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(534, 'SY44043', 'ESCOBILLAS KIT(8)+(8)RES 25X12,5X35 DW ', 'SY44043.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(535, 'CL1811712', 'ESCOBILLAS KIT(8)+(8)RES 25X14X35 ECS PUMP ', 'CL1811712.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(536, 'CX55524', 'PORTA ESCOBILLA DE BOMBA ', 'CX55524.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(537, 'CR84548', 'PORTA ESCOBILLA DE DIRECCION ', 'CR84548.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(538, 'CL993335 ', 'PORTA ESCOBILLA DE TRACCION', 'CL993335.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:13', '2018-11-15 16:48:13'),
(539, 'SYM5044', 'PORTA ESCOBILLA DE TRACCION MELEX', 'SYM5044.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(540, 'BT164917 ', 'PORTA ESCOBILLA DIRECCION', 'BT164917.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(541, 'CL1813106', 'PORTA ESCOBILLA TRACCION,RESORTES', 'CL1813106.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(542, 'TA7017600', 'PORTA ESCOBILLAS ASSY', 'TA7017600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(543, 'HY1506792', 'PORTA ESCOBILLAS COMPL.TAPA 1506839', 'HY1506792.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(544, 'CL991226 ', 'RESORTE (1) ESCOBILLA', 'CL991226.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:14', '2018-11-15 16:48:14'),
(545, 'CL990092 ', 'RESORTE (1) ESCOBILLA', 'CL990092.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:15', '2018-11-15 16:48:15'),
(546, 'CL916110 ', 'RESORTE (1) ESCOBILLA', 'CL916110.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:15', '2018-11-15 16:48:15'),
(547, 'HY2310816', 'RESORTE (1) ESCOBILLA', 'HY2310816.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:15', '2018-11-15 16:48:15'),
(548, 'CR100186 ', 'RESORTE (1) ESCOBILLA', 'CR100186.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:16', '2018-11-15 16:48:16'),
(549, 'NI29044-L4000', 'RESORTE (1) ESCOBILLA', 'NI29044-L4000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:16', '2018-11-15 16:48:16'),
(550, 'HY1309378', 'RESORTE (1) ESCOBILLA', 'HY1309378.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:16', '2018-11-15 16:48:16'),
(551, 'YT519616814', 'RESORTE (1) ESCOBILLA', 'YT519616814.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:17', '2018-11-15 16:48:17'),
(552, 'CL909820 ', 'RESORTE (1) ESCOBILLA', 'CL909820.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:17', '2018-11-15 16:48:17'),
(553, 'TY14317-10980', 'RESORTE (1) ESCOBILLA', 'TY14317-10980.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:17', '2018-11-15 16:48:17'),
(554, 'CL897024-1 ', 'RESORTE (1) ESCOBILLA', 'CL897024-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:17', '2018-11-15 16:48:17'),
(555, 'HY1308830', 'RESORTE (1) ESCOBILLA', 'HY1308830.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:17', '2018-11-15 16:48:17'),
(556, 'YT519467001', 'RESORTE (1) ESCOBILLA CHICO', 'YT519467001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:18', '2018-11-15 16:48:18'),
(557, 'SY78771', 'RESORTE (1) ESCOBILLA ESPIRAL DOBLE', 'SY78771.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:18', '2018-11-15 16:48:18'),
(558, 'YT134178102', 'RESORTE (1) ESCOBILLA GRANDE ', 'YT134178102.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:18', '2018-11-15 16:48:18'),
(559, 'HC283E100B03 ', 'RESORTE (1) ESCOBILLA HELLI', 'HC283E100B03.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:18', '2018-11-15 16:48:18'),
(560, 'YT134178101', 'RESORTE (1) ESCOBILLA MEDIANO', 'YT134178101.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:19', '2018-11-15 16:48:19'),
(561, 'SY38561', 'RESORTE (1) ESCOBILLA RULITO GRANDE', 'SY38561.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:19', '2018-11-15 16:48:19'),
(562, 'SY80397', 'RESORTE (1) ESCOBILLA YT RULITO GRANDE ', 'SY80397.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:19', '2018-11-15 16:48:19'),
(563, 'CL980767 ', 'RESORTE (4) KIT DEESCOBILLAS ', 'CL980767.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:19', '2018-11-15 16:48:19'),
(564, 'CR114672 ', 'RESORTE (4) KIT DE ESCOBILLAS', 'CR114672.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:19', '2018-11-15 16:48:19'),
(565, 'SY78782', 'RESORTE (4) KIT DE ESCOBILLAS', 'SY78782.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(566, 'SY39140', 'RESORTE (4) KIT DE ESCOBILLAS DW ', 'SY39140.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(567, 'HY328760 ', 'RESORTE (8) KIT DEESCOBILLAS ', 'HY328760.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(568, 'SY44048', 'RESORTE (8) KIT DE ESCOBILLAS DW ', 'SY44048.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(569, 'GEIC3645TMM4A', 'TARJETANPR ELEVACION Y SOLENOIDES G.E. ', 'GEIC3645TMM4A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 6, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(570, 'GE44A723596G1', 'FICHAKIT PLUG A EV100', 'GE44A723596G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 7, NULL, NULL, '2018-11-15 16:48:20', '2018-11-15 16:48:20'),
(571, 'GE44A723596G2', 'FICHAKIT PLUG B-EV100', 'GE44A723596G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 7, NULL, NULL, '2018-11-15 16:48:21', '2018-11-15 16:48:21'),
(572, 'GE44A723596G8', 'FICHAKIT PLUG Y-EV100', 'GE44A723596G8.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 7, NULL, NULL, '2018-11-15 16:48:21', '2018-11-15 16:48:21'),
(573, 'GE44A723596G3', 'FICHAKIT PLUG Z-EV100', 'GE44A723596G3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 7, NULL, NULL, '2018-11-15 16:48:21', '2018-11-15 16:48:21'),
(574, 'BC332734 ', 'FICHA 200A 80V CONT.AUX', 'BC332734.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:21', '2018-11-15 16:48:21'),
(575, 'TVH1421169 ', 'FICHA 380V EMBRA ', 'TVH1421169.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:21', '2018-11-15 16:48:21'),
(576, 'TVH431816', 'FICHA 380V MACHO ', 'TVH431816.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:22', '2018-11-15 16:48:22'),
(577, 'SY6344 ', 'FICHA AUX KIT CONT.SBX350A ', 'SY6344.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:22', '2018-11-15 16:48:22'),
(578, 'SY6330G2 ', 'FICHA BAT.120A.GRIS', 'SY6330G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:22', '2018-11-15 16:48:22'),
(579, 'SYE6375G2', 'FICHA BAT.160A SBE AZUL', 'SYE6375G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:22', '2018-11-15 16:48:22'),
(580, 'SYE6374G2', 'FICHA BAT.160A SBE GRIS', 'SYE6374G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:22', '2018-11-15 16:48:22'),
(581, 'SYE6379G2', 'FICHA BAT.160A SBE ROJA', 'SYE6379G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(582, 'TVH2753718 ', 'FICHA BAT.160A SBE TRIPLE ROJA ', 'TVH2753718.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(583, 'SYE6391G2', 'FICHA BAT.160A SBE VERDE ', 'SYE6391G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(584, 'SYR75017-01', 'FICHA BAT.160A.REMA EMB 50MM ', 'SYR75017-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(585, 'SYR75044-01', 'FICHA BAT.160A.REMA MACHO 50MM.', 'SYR75044-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(586, 'SY6325G1 ', 'FICHA BAT.175A SB GRIS ', 'SY6325G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(587, 'SY6316 ', 'FICHA BAT.175A.3POL.GRIS ', 'SY6316.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:23', '2018-11-15 16:48:23'),
(588, 'SY6328G1 ', 'FICHA BAT.175A.AMARILLA', 'SY6328G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24'),
(589, 'SY6326G1 ', 'FICHA BAT.175A.AZUL', 'SY6326G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24'),
(590, 'CX55175', 'FICHA BAT.175A.GRIS AJD ARG', 'CX55175.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24'),
(591, 'SY6327G1 ', 'FICHA BAT.175A.ORANG ', 'SY6327G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24'),
(592, 'SY6329G1 ', 'FICHA BAT.175A.ROJA T14941 ', 'SY6329G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24');
INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `model`, `important`, `pdf`, `keyword`, `route`, `brand_id`, `family_id`, `subfamily_id`, `order`, `created_at`, `updated_at`) VALUES
(593, 'SY6370G1 ', 'FICHA BAT.175A.SBX GRIS CON AUX CONTACTOS', 'SY6370G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:24', '2018-11-15 16:48:24'),
(594, 'SP1380 ', 'FICHA BAT.180A AZUL POLO SIMPLE', 'SP1380.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:25', '2018-11-15 16:48:25'),
(595, 'SP1380G1 ', 'FICHA BAT.180A NEGRA POLO SIMPLE ', 'SP1380G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:25', '2018-11-15 16:48:25'),
(596, 'SP1380G3 ', 'FICHA BAT.180A ROJA POLO SIMPLE', 'SP1380G3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:25', '2018-11-15 16:48:25'),
(597, 'TVH1362447 ', 'FICHA BAT.320A SBE NEGRA ', 'TVH1362447.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:25', '2018-11-15 16:48:25'),
(598, 'SYR75601-01', 'FICHA BAT.320A.REMA EMBRA', 'SYR75601-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:25', '2018-11-15 16:48:25'),
(599, 'SYR75500-01', 'FICHA BAT.320A.REMA MACHO', 'SYR75500-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:26', '2018-11-15 16:48:26'),
(600, 'SYE6346G1', 'FICHA BAT.320A.SBE AZUL 2/0', 'SYE6346G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:26', '2018-11-15 16:48:26'),
(601, 'SYE6346G2', 'FICHA BAT.320A.SBE AZUL 4/0', 'SYE6346G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:26', '2018-11-15 16:48:26'),
(602, 'SYE6345G1', 'FICHA BAT.320A.SBE GRIS', 'SYE6345G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:26', '2018-11-15 16:48:26'),
(603, 'SYE6348G1', 'FICHA BAT.320A.SBE VERDE ', 'SYE6348G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:26', '2018-11-15 16:48:26'),
(604, 'SY6320G1 ', 'FICHA BAT.350A SB GRIS 2/0 ADJ ', 'SY6320G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(605, 'SY6320G2 ', 'FICHA BAT.350A SB GRIS 4/0 ', 'SY6320G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(606, 'SY6363G1 ', 'FICHA BAT.350A SBX NEGRA ', 'SY6363G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(607, 'SY6323G2 ', 'FICHA BAT.350A.AMARILLA', 'SY6323G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(608, 'SY6321G1 ', 'FICHA BAT.350A.AZUL', 'SY6321G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(609, 'SY6322G2 ', 'FICHA BAT.350A.ROJA', 'SY6322G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:27', '2018-11-15 16:48:27'),
(610, 'SY6346G1 ', 'FICHA BAT.350A.SBX AZUL', 'SY6346G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(611, 'SY6340G2 ', 'FICHA BAT.350A.SBX GRIS+AUX', 'SY6340G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(612, 'SY6324G2 ', 'FICHA BAT.350A.VERDE ', 'SY6324G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(613, 'SY6319 ', 'FICHA BAT.50A. GRIS', 'SY6319.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(614, 'SY6331G1 ', 'FICHA BAT.50A. ROJA', 'SY6331G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(615, 'SP1300G4 ', 'FICHA BAT.75A NEGRA POLO SIMPLE', 'SP1300G4.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(616, 'SP1300G3 ', 'FICHA BAT.75A ROJA POLO SIMPLE ', 'SP1300G3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:28', '2018-11-15 16:48:28'),
(617, 'SP1300G2 ', 'FICHA BAT.75A VERDE POLO SIMPLE', 'SP1300G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(618, 'SP1300-10', 'FICHA BAT.75A.AZUL,POLO SIMPLE ', 'SP1300-10.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(619, 'T106TA9906 ', 'FICHA BAT.80A. FT EMBRA', 'T106TA9906.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(620, 'T1166142 ', 'FICHA BAT.80A. FT MACHO', 'T1166142.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(621, 'SYR75309-00', 'FICHA BAT.80A. REMA EMBRA 25MM ', 'SYR75309-00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(622, 'SYR75199-00', 'FICHA BAT.80A. REMA MACHO 25MM ', 'SYR75199-00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(623, 'SYL7204', 'FICHA BAT.YC LEXAN 50MM. ', 'SYL7204.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:29', '2018-11-15 16:48:29'),
(624, 'GE194B6385G1 ', 'FICHA EV1 CONECTOR TARJETA L/R ', 'GE194B6385G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(625, 'SY50H', 'FICHA MANIJA 50A ', 'SY50H.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(626, 'CX55641', 'FICHA MOLEX4 PINES ', 'CX55641.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(627, 'CX55706', 'FICHA MOLEX6 PINES ', 'CX55706.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(628, 'CX55642', 'FICHA MOLEX8 PINES ', 'CX55642.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(629, 'CX55705', 'FICHA MOLEX 10 PINES ', 'CX55705.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(630, 'CX55707', 'FICHA MOLEX 12 PINES ', 'CX55707.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:30', '2018-11-15 16:48:30'),
(631, 'CX55643', 'FICHA MOLEX 16 PINES ', 'CX55643.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:31', '2018-11-15 16:48:31'),
(632, 'CX55644', 'FICHA MOLEX 18 PINES ', 'CX55644.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:31', '2018-11-15 16:48:31'),
(633, 'CX55708', 'FICHA MOLEX 24 PINES ', 'CX55708.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:31', '2018-11-15 16:48:31'),
(634, 'GE328A1544AD5', 'FICHA PLUG B EV100 ', 'GE328A1544AD5.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:31', '2018-11-15 16:48:31'),
(635, 'GE328A1544ADP', 'FICHA PLUG Z EV100 ', 'GE328A1544ADP.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:31', '2018-11-15 16:48:31'),
(636, 'CX776164-4 ', 'FICHA TYCO 35 PINES', 'CX776164-4.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(637, 'SY995', 'FICHA-MANIJA GRIS 175-350A ', 'SY995.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(638, 'TVH1334668 ', 'FICHA-MANIJA NEGRA 160A', 'TVH1334668.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(639, 'SYR75066-01', 'FICHA-MANIJA REMA 160/320A ', 'SYR75066-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(640, 'T107TA7665 ', 'FICHA-MANIJA REMA 80A', 'T107TA7665.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(641, 'T107TA7664 ', 'FICHA-MANIJA REMA 80A FT ', 'T107TA7664.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:32', '2018-11-15 16:48:32'),
(642, 'TVH1672507 ', 'FICHA-TAPA 160A TRIPLE ', 'TVH1672507.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2018-11-15 16:48:33', '2018-11-15 16:48:33'),
(643, 'SYBU-ANL35 ', 'FUSIBLE35A RECTANGULAR ', 'SYBU-ANL35.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:33', '2018-11-15 16:48:33'),
(644, 'TVH1106215 ', 'FUSIBLE40ARECTANGULAR', 'TVH1106215.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:33', '2018-11-15 16:48:33'),
(645, 'SYBU-ANL50 ', 'FUSIBLE50ARECTANGULAR', 'SYBU-ANL50.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:33', '2018-11-15 16:48:33'),
(646, 'SYBU-ACK60 ', 'FUSIBLE60A CIL ', 'SYBU-ACK60.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:34', '2018-11-15 16:48:34'),
(647, 'SYBU-ANL80 ', 'FUSIBLE80A RECTANGULAR ', 'SYBU-ANL80.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:34', '2018-11-15 16:48:34'),
(648, 'SYBU-ANN100', 'FUSIBLE 100A RECTANGULAR ', 'SYBU-ANN100.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:34', '2018-11-15 16:48:34'),
(649, 'TVH1106217 ', 'FUSIBLE 125A RECTANGULAR ', 'TVH1106217.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:34', '2018-11-15 16:48:34'),
(650, 'SYBU-ACK150', 'FUSIBLE 150A CIL ', 'SYBU-ACK150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:35', '2018-11-15 16:48:35'),
(651, 'MEGA150', 'FUSIBLE 150A MEGA GEN ROD', 'MEGA150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:35', '2018-11-15 16:48:35'),
(652, 'F4958MIDI150 ', 'FUSIBLE 150A MIDI', 'F4958MIDI150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:35', '2018-11-15 16:48:35'),
(653, 'SYBU-ANL150', 'FUSIBLE 150A RECTANGULAR ', 'SYBU-ANL150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:35', '2018-11-15 16:48:35'),
(654, 'TVH974014', 'FUSIBLE 160A RECTANGULAR ', 'TVH974014.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:36', '2018-11-15 16:48:36'),
(655, 'SYBU-ALS175', 'FUSIBLE 175A CIL ', 'SYBU-ALS175.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:36', '2018-11-15 16:48:36'),
(656, 'TVH1221040 ', 'FUSIBLE 175A RECTANGULAR ', 'TVH1221040.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:36', '2018-11-15 16:48:36'),
(657, 'SYBU-ALS200', 'FUSIBLE 200A CIL ', 'SYBU-ALS200.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:37', '2018-11-15 16:48:37'),
(658, 'SYBU-ANL200', 'FUSIBLE 200A RECTANGULAR ', 'SYBU-ANL200.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:37', '2018-11-15 16:48:37'),
(659, 'SYBU-ALS250', 'FUSIBLE 250A CIL ', 'SYBU-ALS250.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:37', '2018-11-15 16:48:37'),
(660, 'SYBU-ANL250', 'FUSIBLE 250A RECTANGULAR ', 'SYBU-ANL250.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:37', '2018-11-15 16:48:37'),
(661, 'SYBU-ANL275', 'FUSIBLE 275A RECTANGULAR ', 'SYBU-ANL275.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:37', '2018-11-15 16:48:37'),
(662, 'SYBU-ALS300', 'FUSIBLE 300 A CIL', 'SYBU-ALS300.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:38', '2018-11-15 16:48:38'),
(663, 'TVH989092', 'FUSIBLE 300A RECTANGULAR ', 'TVH989092.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:38', '2018-11-15 16:48:38'),
(664, 'SYBU-ANL325', 'FUSIBLE 325A RECTANGULAR ', 'SYBU-ANL325.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:38', '2018-11-15 16:48:38'),
(665, 'SYBU-ALS350', 'FUSIBLE 350A CIL ', 'SYBU-ALS350.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:38', '2018-11-15 16:48:38'),
(666, 'TVH1106224 ', 'FUSIBLE 355A RECTANGULAR ', 'TVH1106224.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:38', '2018-11-15 16:48:38'),
(667, 'SYBU-ANL400', 'FUSIBLE 400A RECTANGULAR,', 'SYBU-ANL400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(668, 'CX55889', 'FUSIBLE 5/7,5/10/15A MINI BAJO PROFIL', 'CX55889.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(669, 'SYBU-ALS500', 'FUSIBLE 500A CIL ', 'SYBU-ALS500.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(670, 'SYBU-ANL500', 'FUSIBLE 500A RECTANGULAR ', 'SYBU-ANL500.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(671, 'SYBU-ANN600', 'FUSIBLE 600A.RECTANGULAR ', 'SYBU-ANN600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(672, 'SYBU-ANN800', 'FUSIBLE 800A.RECTANGULAR ', 'SYBU-ANN800.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(673, 'CX33306', 'FUSIBLE AIREO-BASE ', 'CX33306.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2018-11-15 16:48:39', '2018-11-15 16:48:39'),
(674, 'CX65503', 'ACEITE 15W-40 DIESEL ', 'CX65503.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 25, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(675, 'CX65501', 'ACEITE HIDRAULICO TELLUS 37', 'CX65501.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 25, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(676, 'CX66671', 'AUTOELEVADOR BALKANCAR EV715.45', 'CX66671.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 25, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(677, 'CXHY3005D-3', 'FUENTE LAB.REGULADA TRIPLE 60 V 5A KAYSE ', 'CXHY3005D-3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 25, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(678, 'GE862', 'LAMPARA 12.80V/37.50W HALOGENA ', 'GE862.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(679, 'TVH1940579 ', 'LAMPARA 24V/60W-1P-PAREJO', 'TVH1940579.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(680, 'SY700500 ', 'LAMPARA 24V/70W H3 HALOGENA', 'SY700500.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:40', '2018-11-15 16:48:40'),
(681, 'SY360-4305 ', 'LAMPARA 36/48 FLASH', 'SY360-4305.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:41', '2018-11-15 16:48:41'),
(682, 'SYSP14 ', 'LAMPARA 36V/10W(20) -1P PAREJO ', 'SYSP14.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:41', '2018-11-15 16:48:41'),
(683, 'SY360-6936 ', 'LAMPARA 36V/10W-1P-PAREJO', 'SY360-6936.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:41', '2018-11-15 16:48:41'),
(684, 'SY360-7036 ', 'LAMPARA 36V/25+10W-2P-DESPAREJO', 'SY360-7036.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:41', '2018-11-15 16:48:41'),
(685, 'SY360-6000 ', 'LAMPARA 36V/25W-2P-DESPAREJO ', 'SY360-6000.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:41', '2018-11-15 16:48:41'),
(686, 'SY700200 ', 'LAMPARA 36V/35W H3 HALOGENA', 'SY700200.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(687, 'SY360-1229 ', 'LAMPARA 40V/2P PAREJO,FLASH', 'SY360-1229.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(688, 'SY360-1062 ', 'LAMPARA 40V/36W 2P PAREJO FLASH', 'SY360-1062.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(689, 'SYSP15 ', 'LAMPARA 48V/10W 1P PAREJO', 'SYSP15.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(690, 'SY51909', 'LAMPARA 48V/10W 2P DESPAREJO ', 'SY51909.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(691, 'SYSP6', 'LAMPARA 48V/10W 2P PAREJO', 'SYSP6.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(692, 'SY360-6948 ', 'LAMPARA 48V/10W-1P-PAREJO', 'SY360-6948.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:42', '2018-11-15 16:48:42'),
(693, 'SYSP8', 'LAMPARA 48V/25W 1P-PAREJO', 'SYSP8.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(694, 'SY360-6010 ', 'LAMPARA 48V/25W 2P DESPAREJO,T1949622', 'SY360-6010.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(695, 'SY360-7048 ', 'LAMPARA 48V/25W+10W 2P DESPAREJO ', 'SY360-7048.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(696, 'SY51906', 'LAMPARA 48V/30W B67', 'SY51906.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(697, 'SY700300 ', 'LAMPARA 48V/35W H3 HALOGENA', 'SY700300.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(698, 'SY53201', 'LAMPARA 48V/40W 2P DESPAREJO ', 'SY53201.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:43', '2018-11-15 16:48:43'),
(699, 'TVH1940619 ', 'LAMPARA 48V/45W 1P PAREJO', 'TVH1940619.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(700, 'TVH1940598 ', 'LAMPARA 48V/5W160437 ', 'TVH1940598.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(701, 'EL360-1284 ', 'LAMPARA FLASH \"U\"', 'EL360-1284.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(702, 'SY537010 ', 'LAMPARA FLASH \"U\" ML7,ML1', 'SY537010.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(703, 'SY360-TUBE ', 'LAMPARA FLASH HORIZONTAL ', 'SY360-TUBE.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(704, 'SY361015 ', 'LAMPARA FLASH ML5 VERTICAL ', 'SY361015.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:44', '2018-11-15 16:48:44'),
(705, 'CX88224', 'LAMPARA H1 24V ', 'CX88224.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:45', '2018-11-15 16:48:45'),
(706, 'SY4350 ', 'LAMPARA SELLADA 36V/60W', 'SY4350.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:45', '2018-11-15 16:48:45'),
(707, 'SY4340 ', 'LAMPARA SELLADA 48V/80W', 'SY4340.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 9, NULL, NULL, '2018-11-15 16:48:45', '2018-11-15 16:48:45'),
(708, 'SC631/68007', 'TABLERO SEVCON SC2000/1000A 80V SC2291E', 'SC631/68007.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 9, NULL, NULL, '2018-11-15 16:48:46', '2018-11-15 16:48:46'),
(709, 'CU701QN1248', 'CUENTA HORAS 12-48 ', 'CU701QN1248.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(710, 'YT524137581', 'MEDIDOR BATDISPLAY PANEL YALE', 'YT524137581.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(711, 'CU901RB12BNK ', 'MEDIDOR BAT BLOQUEO 12V CURTIS ', 'CU901RB12BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(712, 'CU901RB24BNK ', 'MEDIDOR BAT BLOQUEO 24V CURTIS ', 'CU901RB24BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(713, 'CU901RB36BNK ', 'MEDIDOR BAT BLOQUEO 36V CURTIS ', 'CU901RB36BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(714, 'CU901RB48BNK ', 'MEDIDOR BAT BLOQUEO 48V CURTIS ', 'CU901RB48BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:47', '2018-11-15 16:48:47'),
(715, 'CU901RB80BNK ', 'MEDIDOR BAT BLOQUEO 80V CURTIS ', 'CU901RB80BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(716, 'SY802RB12BN', 'MEDIDOR BAT CON HOROMETRO 12V CURTIS ', 'SY802RB12BN.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(717, 'CU802RB2436', 'MEDIDOR BAT CON HOROMETRO 24/36V CURTIS', 'CU802RB2436.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(718, 'CU802RB2448', 'MEDIDOR BAT CON HOROMETRO 24/48V CURTIS', 'CU802RB2448.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(719, 'CU802RB3648', 'MEDIDOR BAT CON HOROMETRO 36/48V CURTIS', 'CU802RB3648.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(720, 'LI1263611500 ', 'MEDIDOR BAT DISPLAY 24V LINDE', 'LI1263611500.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:48', '2018-11-15 16:48:48'),
(721, 'YT524267634', 'MEDIDOR BAT DISPLAY CAN 24-80V ', 'YT524267634.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(722, 'GE3645TDDT2C ', 'MEDIDOR BAT DISPLAY FALLAS ', 'GE3645TDDT2C.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(723, 'CU840R15RSNA ', 'MEDIDOR BAT LCD CAN CUENTAHORA CURTIS', 'CU840R15RSNA.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(724, 'CU803RB2436', 'MEDIDOR BLOQ HOROMETRO 24/36V CURTIS ', 'CU803RB2436.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(725, 'CU803RB2448', 'MEDIDOR BLOQ HOROMETRO 24/48V CURTIS ', 'CU803RB2448.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(726, 'CU803RB3648', 'MEDIDOR BLOQ HOROMETRO 36/48V CURTIS ', 'CU803RB3648.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(727, 'CU803RB7280', 'MEDIDOR BLOQ HOROMETRO 72/80V CURTIS ', 'CU803RB7280.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:49', '2018-11-15 16:48:49'),
(728, 'SYHB8850R72', 'MEDIDOR BLOQ HOROMETRO 72/80V ISKRA', 'SYHB8850R72.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(729, 'SY6358 ', 'MEDIDOR DE BAT 12V AGUJA ', 'SY6358.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(730, 'SY6357 ', 'MEDIDOR DE BAT 24V AGUJA ', 'SY6357.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(731, 'SY6359 ', 'MEDIDOR DE BAT 36/48V AGUJA', 'SY6359.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(732, 'CX55011', 'MEDIDOR DE BATERIA 12,24,36,48V CIE', 'CX55011.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(733, 'CU906T12BNM', 'MEDIDOR DE BATERIA 12V CURTIS', 'CU906T12BNM.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(734, 'CU900RB12BNK ', 'MEDIDOR DE BATERIA 12V CURTIS', 'CU900RB12BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:50', '2018-11-15 16:48:50'),
(735, 'CU933/3D ', 'MEDIDOR DE BATERIA 24,36,48V CURTIS', 'CU933/3D.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:51', '2018-11-15 16:48:51'),
(736, 'CU900RB24BNK ', 'MEDIDOR DE BATERIA 24V CURTIS', 'CU900RB24BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:51', '2018-11-15 16:48:51'),
(737, 'CU906T24BNM', 'MEDIDOR DE BATERIA 24V CURTIS', 'CU906T24BNM.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:51', '2018-11-15 16:48:51'),
(738, 'CU900RB36BNK ', 'MEDIDOR DE BATERIA 36V CURTIS', 'CU900RB36BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:51', '2018-11-15 16:48:51'),
(739, 'CU906T36BNM', 'MEDIDOR DE BATERIA 36V CURTIS', 'CU906T36BNM.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:51', '2018-11-15 16:48:51'),
(740, 'CU900RB48BNK ', 'MEDIDOR DE BATERIA 48V CURTIS', 'CU900RB48BNK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(741, 'CU906T48BNM', 'MEDIDOR DE BATERIA 48V CURTIS', 'CU906T48BNM.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(742, 'TVH2539375 ', 'MEDIDOR DE BATERIA 72/80V', 'TVH2539375.jpg', NULL, NULL, 0, NULL, NULL, NULL, 4, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(743, 'CU3200 ', 'MEDIDOR DISPLAY CAN EN GAGE IV ', 'CU3200.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(744, 'SC604/60004', 'MEDIDOR DISPLAY CAN PARAMETROS SEVCON', 'SC604/60004.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(745, 'YT520013601', 'MEDIDOR DISPLAY INSTRUMENT PANEL ', 'YT520013601.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, NULL, NULL, '2018-11-15 16:48:52', '2018-11-15 16:48:52'),
(746, 'TN223360 ', 'ACTUADOR COMPL 0,6/36V 300LB ', 'TN223360.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(747, 'TN390992 ', 'ACTUADOR COMPL 6,5A/36V', 'TN390992.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(748, 'BC150438B', 'COLECTOR MOTOR TRACCION', 'BC150438B.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(749, 'NI4950944H01 ', 'DIRECCION ELECTRICA COMPLETA ', 'NI4950944H01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(750, 'BC171097 ', 'INDUCIDO TRACCION EV666', 'BC171097.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(751, 'BC55539', 'MOTOR DE ARANQUE 12V ', 'BC55539.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:53', '2018-11-15 16:48:53'),
(752, 'HY353221 ', 'MOTOR DE ARANQUE COMPLETO 12V HYSTER ', 'HY353221.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(753, 'HY2049317', 'MOTOR DE TRACCION 12V HYSTER ', 'HY2049317.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(754, 'SYM5040', 'MOTOR EL BOMBA 36/48V', 'SYM5040.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(755, 'BC5173603', 'MOTOR EL BOMBA EC10/7,5/28 ', 'BC5173603.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(756, 'SYM99988 ', 'MOTOR EL DIRECCION 24V ', 'SYM99988.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(757, 'T242162250071', 'MOTOR EL DIRECCION 48V TY', 'T242162250071.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:54', '2018-11-15 16:48:54'),
(758, 'BC336729 ', 'MOTOR EL DIRECCION 80 V', 'BC336729.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:55', '2018-11-15 16:48:55'),
(759, 'YT580043481', 'MOTOR EL DIRECCION AC24-48V ERC035 ', 'YT580043481.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:55', '2018-11-15 16:48:55'),
(760, 'TC2921041H00 ', 'MOTOR EL DIRECCION EPS 48V 550W', 'TC2921041H00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:55', '2018-11-15 16:48:55'),
(761, 'CX55888', 'MOTOR EL DIRECCION GE 36-48V ', 'CX55888.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:55', '2018-11-15 16:48:55'),
(762, 'BC171081R', 'MOTOR EL ET15/86/2500', 'BC171081R.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:56', '2018-11-15 16:48:56'),
(763, 'AVA95-44005B ', 'MOTOR EL TRACCION 36V 512E ', 'AVA95-44005B.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:56', '2018-11-15 16:48:56'),
(764, 'BC150377 ', 'MOTOR EL TRACCION ET9/7,5/12-0 ', 'BC150377.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:56', '2018-11-15 16:48:56'),
(765, 'CR116591 ', 'MOTOR GRUPO BOMBA COMPL.24V', 'CR116591.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:56', '2018-11-15 16:48:56'),
(766, 'BC150438R', 'MOTOR INDUCIDO TRACCION REBOB. ', 'BC150438R.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:57', '2018-11-15 16:48:57'),
(767, 'BRI114271', 'MOTOR LIMPIA UNI ESC 12V ', 'BRI114271.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:57', '2018-11-15 16:48:57'),
(768, 'BC338708 ', 'MOTOR-INDUCIDO DIRECCION ', 'BC338708.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:57', '2018-11-15 16:48:57'),
(769, 'BC150438 ', 'MOTOR-INDUCIDO TRACCION', 'BC150438.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:58', '2018-11-15 16:48:58'),
(770, 'YT730003600', 'MOTOR-TAPA MPB-040-2 ESCOBILLAS', 'YT730003600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:48:58', '2018-11-15 16:48:58'),
(771, 'CX55528', 'REP.INDUCIDO MOTOR ', 'CX55528.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:58', '2018-11-15 16:48:58'),
(772, 'CX55878', 'REP.MOTOR EL DIRECCION AC 1,45 36-48V', 'CX55878.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:58', '2018-11-15 16:48:58'),
(773, 'CX55932', 'REP.MOTOR EL DIRECCION DC 36/48VERC040 ', 'CX55932.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:59', '2018-11-15 16:48:59'),
(774, 'CX55578', 'REP.MOTOR EL.BOMBA HIDRAULICA48 V ERC040 ', 'CX55578.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:59', '2018-11-15 16:48:59'),
(775, 'BC5173603R ', 'REP.MOTOR EL.BOMBA HIDRAULICA 36V', 'BC5173603R.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:59', '2018-11-15 16:48:59'),
(776, 'C51736003R ', 'REP.MOTOR EL.BOMBA HIDRAULICA 48V', 'C51736003R.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:59', '2018-11-15 16:48:59'),
(777, 'CX55543', 'REP.MOTOR EL.DE TRACCION ET9/7,5/12-0', 'CX55543.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:48:59', '2018-11-15 16:48:59'),
(778, 'BC336729R', 'REP.MOTOR EL.DIRECCION80V', 'BC336729R.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:00', '2018-11-15 16:49:00'),
(779, 'CX55710', 'REP.MOTOR EL.TRACCION 24V', 'CX55710.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:00', '2018-11-15 16:49:00'),
(780, 'CX56601', 'REP.MOTOR EL.TRACCION 36-48V ', 'CX56601.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:00', '2018-11-15 16:49:00'),
(781, 'BC150377RD ', 'REP.MOTOR EL.TRACCION 48V', 'BC150377RD.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:01', '2018-11-15 16:49:01'),
(782, 'CX55407', 'REP.MOTOR EL.TRACCION 48V ERC040 ', 'CX55407.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:01', '2018-11-15 16:49:01'),
(783, 'BC150377RI ', 'REP.MOTOR EL.TRACCION 80VET9/7,5/12-0', 'BC150377RI.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:01', '2018-11-15 16:49:01'),
(784, 'CX55404', 'REP.MOTOR EL.TRACCION MPB040 24V ', 'CX55404.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:01', '2018-11-15 16:49:01'),
(785, 'CX55563', 'REP.PLACA PUERTA ESCOB.', 'CX55563.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 14, NULL, '2018-11-15 16:49:01', '2018-11-15 16:49:01'),
(786, 'YT900540857', 'STARTER 12V YT MB', 'YT900540857.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:49:02', '2018-11-15 16:49:02'),
(787, 'MB32A01-01400', 'TORNILLO TAPA CILINDROS', 'MB32A01-01400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, NULL, NULL, '2018-11-15 16:49:02', '2018-11-15 16:49:02'),
(788, 'CX3122131C ', 'ACELERADORCOMESYS 0-5V PEDAL ', 'CX3122131C.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:02', '2018-11-15 16:49:02'),
(789, 'NL1000113002 ', 'ACELERADOR BUJE', 'NL1000113002.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:02', '2018-11-15 16:49:02'),
(790, 'JU50426156 ', 'ACELERADOR CAN AZUL', 'JU50426156.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:03', '2018-11-15 16:49:03'),
(791, 'YT524335823', 'ACELERADOR CAN ZAPI COMPLETO ', 'YT524335823.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:03', '2018-11-15 16:49:03'),
(792, 'LD3093607005 ', 'ACELERADOR CIRCUITO LOGICA ', 'LD3093607005.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:03', '2018-11-15 16:49:03'),
(793, 'T124TA3420 ', 'ACELERADOR CIRCUITO LOGICA 14 PINES', 'T124TA3420.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:03', '2018-11-15 16:49:03'),
(794, 'CX77856', 'ACELERADOR COMPL STILL ', 'CX77856.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:04', '2018-11-15 16:49:04'),
(795, 'CUPB-6 ', 'ACELERADOR CON MICROSWICH', 'CUPB-6.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 16, 10, NULL, '2018-11-15 16:49:04', '2018-11-15 16:49:04'),
(796, 'TVH1424963 ', 'ACELERADOR CON MICROSWICH JH ', 'TVH1424963.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:04', '2018-11-15 16:49:04'),
(797, 'JH50002176 ', 'ACELERADOR CON PERILLA VERDE EJD16 ', 'JH50002176.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:04', '2018-11-15 16:49:04'),
(798, 'TVH1373802 ', 'ACELERADOR CON POT.4-JUNGH.', 'TVH1373802.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:04', '2018-11-15 16:49:04'),
(799, 'CUEFP712 ', 'ACELERADOR ELECTRONICO ', 'CUEFP712.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 16, 10, NULL, '2018-11-15 16:49:05', '2018-11-15 16:49:05'),
(800, 'CUET126', 'ACELERADOR ELECTRONICO CURTIS', 'CUET126.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 16, 10, NULL, '2018-11-15 16:49:05', '2018-11-15 16:49:05'),
(801, 'T18557257', 'ACELERADOR ELECTRONICO PEDAL HELLI ', 'T18557257.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 16, 10, NULL, '2018-11-15 16:49:05', '2018-11-15 16:49:05'),
(802, 'AM1273241', 'ACELERADOR ELECTRONICO-HARDELLET 4P', 'AM1273241.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:05', '2018-11-15 16:49:05'),
(803, 'TVH1273198 ', 'ACELERADOR ELECTRONICO-HARDELLET 5P', 'TVH1273198.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:06', '2018-11-15 16:49:06'),
(804, 'CX55912', 'ACELERADOR FREI AZUL COMPL ', 'CX55912.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:06', '2018-11-15 16:49:06'),
(805, 'GE1A2SA01ACAA', 'ACELERADOR GE CON POT.5K ', 'GE1A2SA01ACAA.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:06', '2018-11-15 16:49:06'),
(806, 'JH50025801 ', 'ACELERADOR MULTIPILOT', 'JH50025801.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:06', '2018-11-15 16:49:06'),
(807, 'YT524138007', 'ACELERADOR PERILLA L NARANJA ', 'YT524138007.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:06', '2018-11-15 16:49:06'),
(808, 'NL1000114004 ', 'ACELERADOR PERILLA PLATEADA L', 'NL1000114004.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:07', '2018-11-15 16:49:07'),
(809, 'NL1000114003 ', 'ACELERADOR PERILLA PLATEADA R', 'NL1000114003.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:07', '2018-11-15 16:49:07'),
(810, 'YT524139008', 'ACELERADOR PERILLA R NARANJA ', 'YT524139008.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:07', '2018-11-15 16:49:07'),
(811, 'JH50006366 ', 'ACELERADOR PERILLA VERDE ', 'JH50006366.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:07', '2018-11-15 16:49:07'),
(812, 'MC060272000', 'ACELERADOR POT4P MIC ', 'MC060272000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:08', '2018-11-15 16:49:08'),
(813, 'JH50007427 ', 'ACELERADOR PULSADOR ELECTRONICO', 'JH50007427.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:08', '2018-11-15 16:49:08'),
(814, 'NL1000131002 ', 'ACELERADOR RESORTE ', 'NL1000131002.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:08', '2018-11-15 16:49:08'),
(815, 'CL2398425', 'ACELERADOR SEVCON 3,5-0V/24-48V', 'CL2398425.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 16, 10, NULL, '2018-11-15 16:49:08', '2018-11-15 16:49:08'),
(816, 'SC656/12019', 'ACELERADOR SEVCON LINMC O-5V ', 'SC656/12019.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 16, 10, NULL, '2018-11-15 16:49:08', '2018-11-15 16:49:08'),
(817, 'SC656/12001', 'ACELERADOR SEVCON LIN BC 0-5V', 'SC656/12001.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 16, 10, NULL, '2018-11-15 16:49:09', '2018-11-15 16:49:09'),
(818, 'SC656/12040', 'ACELERADOR SEVCON YT EMC 3-0V', 'SC656/12040.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 16, 10, NULL, '2018-11-15 16:49:09', '2018-11-15 16:49:09'),
(819, 'TA62-033-00', 'ACELERADOR TAYOR DUNN 6-10V', 'TA62-033-00.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:09', '2018-11-15 16:49:09'),
(820, 'SC962/20002', 'ACELERADOR TIMON COMPLETO', 'SC962/20002.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 16, 10, NULL, '2018-11-15 16:49:10', '2018-11-15 16:49:10'),
(821, 'T115TA2872 ', 'JOYSTICK ', 'T115TA2872.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:10', '2018-11-15 16:49:10'),
(822, 'JL0258459', 'JOYSTICK CONSOLA BOX JLG ', 'JL0258459.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:10', '2018-11-15 16:49:10'),
(823, 'JL1600295', 'JOYSTICK CONTROLERM115 ', 'JL1600295.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:10', '2018-11-15 16:49:10'),
(824, 'GN101174 ', 'JOYSTICK CONTROLER DUAL GENIE', 'GN101174.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:11', '2018-11-15 16:49:11'),
(825, 'SYJS1041 ', 'JOYSTICK CONTROLER GENIE ', 'SYJS1041.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:11', '2018-11-15 16:49:11'),
(826, 'UP065512000', 'JOYSTICK UPRIGHT ', 'UP065512000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 13, NULL, '2018-11-15 16:49:11', '2018-11-15 16:49:11'),
(827, 'YT580011989', 'MANILLAR BASE Y TAPA ', 'YT580011989.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:12', '2018-11-15 16:49:12'),
(828, 'NL1000103003 ', 'MANILLAR CARCASA BASE', 'NL1000103003.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:12', '2018-11-15 16:49:12'),
(829, 'T2449787 ', 'MANILLAR CARCASA MIC ', 'T2449787.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:12', '2018-11-15 16:49:12'),
(830, 'NL1000103001 ', 'MANILLAR CARCASA TAPA', 'NL1000103001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:12', '2018-11-15 16:49:12'),
(831, 'YT507078500', 'POTENCIOMETRO 0-5K-0 2 CABLES', 'YT507078500.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:13', '2018-11-15 16:49:13'),
(832, 'JL7003751', 'POTENCIOMETRO 0.5KJLG', 'JL7003751.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:13', '2018-11-15 16:49:13'),
(833, 'SY85577', 'POTENCIOMETRO 100K 330 GR 4 PATAS', 'SY85577.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:13', '2018-11-15 16:49:13'),
(834, 'SY95652', 'POTENCIOMETRO 10K 3 PATAS 330 GR.', 'SY95652.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:13', '2018-11-15 16:49:13'),
(835, 'RA1-120112004', 'POTENCIOMETRO 10K 3 PATAS 330GR', 'RA1-120112004.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:14', '2018-11-15 16:49:14'),
(836, 'SY38022', 'POTENCIOMETRO 10K 330 GR ', 'SY38022.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:14', '2018-11-15 16:49:14'),
(837, 'CT1050561', 'POTENCIOMETRO 10K 330 GRSIN TOPE DIRECCION ', 'CT1050561.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:14', '2018-11-15 16:49:14'),
(838, 'SY78330', 'POTENCIOMETRO 10K 330 GR 3 PATAS ', 'SY78330.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:15', '2018-11-15 16:49:15'),
(839, 'SY40473', 'POTENCIOMETRO 10K 4 PATAS 330 GR.', 'SY40473.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:15', '2018-11-15 16:49:15'),
(840, 'BR27140-048', 'POTENCIOMETRO 10K 4PATAS 180 GR', 'BR27140-048.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:16', '2018-11-15 16:49:16'),
(841, 'RA1-120-098', 'POTENCIOMETRO 13K 4PATAS ', 'RA1-120-098.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:16', '2018-11-15 16:49:16'),
(842, 'NI29459-2K000', 'POTENCIOMETRO 1K 3 CABLES', 'NI29459-2K000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:17', '2018-11-15 16:49:17'),
(843, 'NI29452-2K000', 'POTENCIOMETRO 1K 4 CABLES', 'NI29452-2K000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:17', '2018-11-15 16:49:17'),
(844, 'CL918550 ', 'POTENCIOMETRO 20K', 'CL918550.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:17', '2018-11-15 16:49:17'),
(845, 'YT752746401', 'POTENCIOMETRO 20K 3 PATAS 40+40 GR ', 'YT752746401.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:17', '2018-11-15 16:49:17'),
(846, 'SY9901701', 'POTENCIOMETRO 20K 30+30GR JOYSTICK JLG ', 'SY9901701.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:18', '2018-11-15 16:49:18'),
(847, 'T5576300 ', 'POTENCIOMETRO 20K 4 PATAS', 'T5576300.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:18', '2018-11-15 16:49:18'),
(848, 'CR79019', 'POTENCIOMETRO 21K 3 PATAS', 'CR79019.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:18', '2018-11-15 16:49:18'),
(849, 'T5262318 ', 'POTENCIOMETRO 23K 4 PATAS', 'T5262318.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:18', '2018-11-15 16:49:18'),
(850, 'T3028341 ', 'POTENCIOMETRO 23K5 4 PATAS ', 'T3028341.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:19', '2018-11-15 16:49:19'),
(851, 'SY78331', 'POTENCIOMETRO 25K 60 GR SIN CORTE EJE 8MM F/R', 'SY78331.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:19', '2018-11-15 16:49:19'),
(852, 'CR83095', 'POTENCIOMETRO 25K EJE LARGO', 'CR83095.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:19', '2018-11-15 16:49:19'),
(853, 'SY85584', 'POTENCIOMETRO 2K 330 GR 3 PATAS', 'SY85584.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:19', '2018-11-15 16:49:19'),
(854, 'KOFBEVCA32331', 'POTENCIOMETRO 2K 330 GR ENGRANAJE', 'KOFBEVCA32331.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:20', '2018-11-15 16:49:20'),
(855, 'TC29502-62251', 'POTENCIOMETRO 2K DEL VOLANTE ', 'TC29502-62251.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:20', '2018-11-15 16:49:20'),
(856, 'SY96546', 'POTENCIOMETRO 2K JOISTICK CR ', 'SY96546.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:20', '2018-11-15 16:49:20'),
(857, 'CX66673', 'POTENCIOMETRO 2K TOPE RESORTE', 'CX66673.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:20', '2018-11-15 16:49:20'),
(858, 'JL260202 ', 'POTENCIOMETRO 2K2', 'JL260202.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:21', '2018-11-15 16:49:21'),
(859, 'T125TA2632 ', 'POTENCIOMETRO 2K490GROM', 'T125TA2632.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:21', '2018-11-15 16:49:21'),
(860, 'HY1454672', 'POTENCIOMETRO 5 K EJE LARGO 90 GR. ', 'HY1454672.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:21', '2018-11-15 16:49:21'),
(861, 'SJ708997 ', 'POTENCIOMETRO 500 OM JOISTICK SKY JACK ', 'SJ708997.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:22', '2018-11-15 16:49:22'),
(862, 'CUWP4505 ', 'POTENCIOMETRO 5K 15+15 GR', 'CUWP4505.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:22', '2018-11-15 16:49:22'),
(863, 'CL2755254', 'POTENCIOMETRO 5K 2 CABLES', 'CL2755254.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:22', '2018-11-15 16:49:22'),
(864, 'BT307644-000 ', 'POTENCIOMETRO 5K 2 CABLES,ENGRANAJE', 'BT307644-000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:23', '2018-11-15 16:49:23'),
(865, 'YT580000849', 'POTENCIOMETRO 5K 3 CABLES', 'YT580000849.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:23', '2018-11-15 16:49:23'),
(866, 'SY85554', 'POTENCIOMETRO 5K 3 CABLES', 'SY85554.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:23', '2018-11-15 16:49:23'),
(867, 'SY83721', 'POTENCIOMETRO 5K 3 PATAS 45 GR ', 'SY83721.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:23', '2018-11-15 16:49:23'),
(868, 'CL2755252', 'POTENCIOMETRO 5K 30 GR 2 CABLES', 'CL2755252.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:24', '2018-11-15 16:49:24'),
(869, 'CU98191', 'POTENCIOMETRO 5K 30GR', 'CU98191.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 16, NULL, NULL, '2018-11-15 16:49:24', '2018-11-15 16:49:24'),
(870, 'GN65179', 'POTENCIOMETRO 5K 30GR EJE LARGO', 'GN65179.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:24', '2018-11-15 16:49:24'),
(871, 'BT137589 ', 'POTENCIOMETRO 5K 30GR. ', 'BT137589.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:25', '2018-11-15 16:49:25'),
(872, 'BT160369 ', 'POTENCIOMETRO 5K 30GR. ', 'BT160369.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:25', '2018-11-15 16:49:25'),
(873, 'CX55559', 'POTENCIOMETRO 5K 330 GR DIRECCION OMG', 'CX55559.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:25', '2018-11-15 16:49:25'),
(874, 'CAZ00206 ', 'POTENCIOMETRO 5K 3P CARER', 'CAZ00206.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:26', '2018-11-15 16:49:26'),
(875, 'YT517085814', 'POTENCIOMETRO 5K5 2 CABLES ', 'YT517085814.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:26', '2018-11-15 16:49:26'),
(876, 'GE245A4376G03', 'POTENCIOMETRO 5K5 2 CABLES 30GR', 'GE245A4376G03.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:26', '2018-11-15 16:49:26'),
(877, 'CL2780760', 'POTENCIOMETRO 5K5 2 CABLES 30GR', 'CL2780760.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:27', '2018-11-15 16:49:27'),
(878, 'CL2822196', 'POTENCIOMETRO 5K5 2 CABLES30GR ', 'CL2822196.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:27', '2018-11-15 16:49:27'),
(879, 'CL2755253', 'POTENCIOMETRO 6K 2 CABLES', 'CL2755253.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:27', '2018-11-15 16:49:27'),
(880, 'YT517085849', 'POTENCIOMETRO 6K-0-6K 90 GR ENGRANAJE', 'YT517085849.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:28', '2018-11-15 16:49:28'),
(881, 'YT505966574', 'POTENCIOMETRO ACELERADOR ', 'YT505966574.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:28', '2018-11-15 16:49:28'),
(882, 'CR813534 ', 'POTENCIOMETRO ACELERADOR ', 'CR813534.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:28', '2018-11-15 16:49:28'),
(883, 'KO3BA-4841110', 'POTENCIOMETRO ACELERADOR TVH1400633', 'KO3BA-4841110.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:29', '2018-11-15 16:49:29'),
(884, 'CR805672 ', 'POTENCIOMETRO ACELERADOR+MICROS', 'CR805672.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:29', '2018-11-15 16:49:29'),
(885, 'BT307425000', 'POTENCIOMETRO BOSCH', 'BT307425000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:30', '2018-11-15 16:49:30'),
(886, 'HY294191 ', 'POTENCIOMETRO BRAZO', 'HY294191.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:30', '2018-11-15 16:49:30'),
(887, 'TCS1090-362', 'POTENCIOMETRO CON AGUJA 1 MM DIR ', 'TCS1090-362.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:30', '2018-11-15 16:49:30'),
(888, 'KO3RA34-62150', 'POTENCIOMETRO CON AGUJA 3 MM 2K', 'KO3RA34-62150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:31', '2018-11-15 16:49:31'),
(889, 'NY3892000550 ', 'POTENCIOMETRO CON AGUJA 3 MM 5K', 'NY3892000550.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:31', '2018-11-15 16:49:31'),
(890, 'LD7916400165 ', 'POTENCIOMETRO CON BRAZO', 'LD7916400165.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:31', '2018-11-15 16:49:31'),
(891, 'LD7916400159 ', 'POTENCIOMETRO CON BRAZO R16', 'LD7916400159.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:31', '2018-11-15 16:49:31');
INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `model`, `important`, `pdf`, `keyword`, `route`, `brand_id`, `family_id`, `subfamily_id`, `order`, `created_at`, `updated_at`) VALUES
(892, 'JH28114270 ', 'POTENCIOMETRO CON RESORTE', 'JH28114270.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:31', '2018-11-15 16:49:31'),
(893, 'NI25511-41H02', 'POTENCIOMETRO DIRECCION (BOLITA) ', 'NI25511-41H02.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:32', '2018-11-15 16:49:32'),
(894, 'KO3BA3442261 ', 'POTENCIOMETRO DIRECCION (BOLITA) ', 'KO3BA3442261.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:32', '2018-11-15 16:49:32'),
(895, 'LD7916400173 ', 'POTENCIOMETRO EJE EMBRA', 'LD7916400173.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:32', '2018-11-15 16:49:32'),
(896, 'CL924783 ', 'POTENCIOMETRO ENGRANAJE', 'CL924783.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:32', '2018-11-15 16:49:32'),
(897, 'BT236905 ', 'POTENCIOMETRO OS ', 'BT236905.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:33', '2018-11-15 16:49:33'),
(898, 'JL4360526', 'POTENCIOMETRO SENSOR DE ANGULO ', 'JL4360526.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:33', '2018-11-15 16:49:33'),
(899, 'RA1-120126001', 'POTENCIOMETRO SENSOR ROTATIVO 30GR0-2V ', 'RA1-120126001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:33', '2018-11-15 16:49:33'),
(900, 'HY1512687', 'POTENCIOMETRO SENSOR ROTATIVO 90 GR 0-5V ', 'HY1512687.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:34', '2018-11-15 16:49:34'),
(901, 'JL7025100002 ', 'SENSOR DE INCLINACION 12-48V-1.5S', 'JL7025100002.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 10, NULL, '2018-11-15 16:49:34', '2018-11-15 16:49:34'),
(902, 'BT304019000', 'TAPA SWICH EMERGENCIA', 'BT304019000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:34', '2018-11-15 16:49:34'),
(903, 'BT171660 ', 'TECLADO NUMERICO MANILLAR', 'BT171660.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, NULL, NULL, '2018-11-15 16:49:35', '2018-11-15 16:49:35'),
(904, 'CX66612', 'ASESORIOS SEGURIDAD CLARK ECG20', 'CX66612.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:35', '2018-11-15 16:49:35'),
(905, 'CX55750', 'REMODELACION SISTEMAELECTRICA YALE ERC040', 'CX55750.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:35', '2018-11-15 16:49:35'),
(906, 'CX55929', 'REP. APILADORABTSWE120 ', 'CX55929.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:35', '2018-11-15 16:49:35'),
(907, 'CX55803', 'REP.APILADORABT REFLEX ', 'CX55803.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:36', '2018-11-15 16:49:36'),
(908, 'CX55804', 'REP.APILADORACROWN WE1,2 ', 'CX55804.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:36', '2018-11-15 16:49:36'),
(909, 'CX55801', 'REP.APILADORAMOVILIFT', 'CX55801.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:36', '2018-11-15 16:49:36'),
(910, 'CX55656', 'REP.APILADORA ALMATEC', 'CX55656.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:37', '2018-11-15 16:49:37'),
(911, 'CX55684', 'REP.APILADORA ARMANNI DELTA', 'CX55684.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:37', '2018-11-15 16:49:37'),
(912, 'CX55891', 'REP.APILADORA ETERNA 24V ', 'CX55891.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:37', '2018-11-15 16:49:37'),
(913, 'CX56811', 'REP.APILADORA HANGCHA 24 V ', 'CX56811.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:37', '2018-11-15 16:49:37'),
(914, 'CX55893', 'REP.APILADORA JUNGHEINRICH ', 'CX55893.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:38', '2018-11-15 16:49:38'),
(915, 'CX55601', 'REP.APILADORA MIC-G12. ', 'CX55601.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:38', '2018-11-15 16:49:38'),
(916, 'CX55657', 'REP.APILADORA NICHIYU', 'CX55657.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:38', '2018-11-15 16:49:38'),
(917, 'CX55899', 'REP.APILADORA SHINKO Y2N3856 48V ', 'CX55899.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:38', '2018-11-15 16:49:38'),
(918, 'CX88867', 'REP.APILADORA SOOSUNG 24V', 'CX88867.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:38', '2018-11-15 16:49:38'),
(919, 'CX55551', 'REP.AUTOELEVADOR BALKANCAR EV666 ', 'CX55551.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(920, 'CX55793', 'REP.AUTOELEVADOR BALKANCAR EV715.45', 'CX55793.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(921, 'CX66635', 'REP.AUTOELEVADOR CARER C2072 72V ', 'CX66635.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(922, 'CX55749', 'REP.AUTOELEVADOR CARMOVIL 24V', 'CX55749.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(923, 'CX88887', 'REP.AUTOELEVADOR CATERPILLAR NOR30P', 'CX88887.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(924, 'CX55639', 'REP.AUTOELEVADOR CESAB 48V ', 'CX55639.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:39', '2018-11-15 16:49:39'),
(925, 'CX66701', 'REP.AUTOELEVADOR CLARK CEM20S', 'CX66701.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:40', '2018-11-15 16:49:40'),
(926, 'CX55645', 'REP.AUTOELEVADOR CLARK NPR20 ', 'CX55645.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:40', '2018-11-15 16:49:40'),
(927, 'CX66693', 'REP.AUTOELEVADOR CLARK TM15', 'CX66693.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:40', '2018-11-15 16:49:40'),
(928, 'CX66622', 'REP.AUTOELEVADOR DAEWOO', 'CX66622.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:40', '2018-11-15 16:49:40'),
(929, 'CX55610', 'REP.AUTOELEVADOR FR18-48V', 'CX55610.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:40', '2018-11-15 16:49:40'),
(930, 'CX66670', 'REP.AUTOELEVADOR HANGCHA 48V CPDS18J ', 'CX66670.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(931, 'CX66631', 'REP.AUTOELEVADOR HELI CPD25 48V', 'CX66631.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(932, 'CX55573', 'REP.AUTOELEVADOR HYSTER48V ', 'CX55573.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(933, 'CX55627', 'REP.AUTOELEVADOR JUNGHEINRICH 48V', 'CX55627.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(934, 'CX66629', 'REP.AUTOELEVADOR KOMATSU FB20', 'CX66629.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(935, 'CX55795', 'REP.AUTOELEVADOR LINDE E16 ', 'CX55795.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:41', '2018-11-15 16:49:41'),
(936, 'CX55785', 'REP.AUTOELEVADOR MITSUBISHI FB18 ', 'CX55785.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:42', '2018-11-15 16:49:42'),
(937, 'CX55538', 'REP.AUTOELEVADOR NICHIYU ', 'CX55538.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:42', '2018-11-15 16:49:42'),
(938, 'CX55532', 'REP.AUTOELEVADOR NISSAN', 'CX55532.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:42', '2018-11-15 16:49:42'),
(939, 'CX55784', 'REP.AUTOELEVADOR OMG ', 'CX55784.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:42', '2018-11-15 16:49:42'),
(940, 'CX55679', 'REP.AUTOELEVADOR ROCLA ', 'CX55679.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(941, 'CX55667', 'REP.AUTOELEVADOR SHINKO', 'CX55667.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(942, 'CX55564', 'REP.AUTOELEVADOR STILL 48V ', 'CX55564.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(943, 'CX55790', 'REP.AUTOELEVADOR SUMITOMO YALE ', 'CX55790.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(944, 'CX55584', 'REP.AUTOELEVADOR TCM ', 'CX55584.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(945, 'CX88849', 'REP.AUTOELEVADOR TOYOTA 7FBCU15', 'CX88849.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(946, 'CX55538A ', 'REP.AUTOELEVADOR TOYOTA BR10 ', 'CX55538A.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(947, 'CX55507', 'REP.AUTOELEVADOR YALE ERC040 ', 'CX55507.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(948, 'CX55653', 'REP.AUTOELEVADOR YALE ERC040 ', 'CX55653.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:43', '2018-11-15 16:49:43'),
(949, 'CX55609', 'REP.AUTOELEVADOR YALE ERP-030-TC ', 'CX55609.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:44', '2018-11-15 16:49:44'),
(950, 'CX55696', 'REP.AUTOELEVADOR YALE NDR', 'CX55696.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:44', '2018-11-15 16:49:44'),
(951, 'CX55624', 'REP.CARRO EL.CUSMAN HAULER 800 ', 'CX55624.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:44', '2018-11-15 16:49:44'),
(952, 'CX55931', 'REP.CARRO EL.MELEX ', 'CX55931.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:44', '2018-11-15 16:49:44'),
(953, 'CX55548', 'REP.CARRO EL.TAYLOR DUNN ', 'CX55548.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:45', '2018-11-15 16:49:45'),
(954, 'CX55648', 'REP.CONTROLADOR SEM 124V/300AZAPI', 'CX55648.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:45', '2018-11-15 16:49:45'),
(955, 'CX55821', 'REP.LAVADORADE PISO FIMAP', 'CX55821.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:45', '2018-11-15 16:49:45'),
(956, 'CX55701', 'REP.LAVADORA DE PISOS TENANT T16 ', 'CX55701.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:45', '2018-11-15 16:49:45'),
(957, 'CX55614', 'REP.NILFISK BR855', 'CX55614.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:46', '2018-11-15 16:49:46'),
(958, 'CX55526', 'REP.PALETERA LINDE-T16 ', 'CX55526.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:46', '2018-11-15 16:49:46'),
(959, 'CX67711', 'REP.PLATAFORMA HOULOTTE COMPACT 10 ', 'CX67711.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:47', '2018-11-15 16:49:47'),
(960, 'CX55401', 'REP.PLATAFORMA SKY JACK KB-40', 'CX55401.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:47', '2018-11-15 16:49:47'),
(961, 'CX55654', 'REP.TARJETA LINDE 3903605018 ', 'CX55654.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:47', '2018-11-15 16:49:47'),
(962, 'CX55911', 'REP.VARIADOR CURTIS 1232E-22XX 200A 24V AC ', 'CX55911.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 17, NULL, NULL, '2018-11-15 16:49:47', '2018-11-15 16:49:47'),
(963, 'CX56621', 'REP.ZORRA EL CROWN 24V ', 'CX56621.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:47', '2018-11-15 16:49:47'),
(964, 'CX55769', 'REP.ZORRA EL. ALMATEC 002051 24V ', 'CX55769.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:48', '2018-11-15 16:49:48'),
(965, 'CX56688', 'REP.ZORRA EL.CLARK EMP20 ', 'CX56688.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:48', '2018-11-15 16:49:48'),
(966, 'CX55730', 'REP.ZORRA EL.EPT 20-20 ', 'CX55730.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:48', '2018-11-15 16:49:48'),
(967, 'CX55580', 'REP.ZORRA EL.ETERNA', 'CX55580.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:48', '2018-11-15 16:49:48'),
(968, 'CX59898', 'REP.ZORRA EL.HELI 24V', 'CX59898.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:48', '2018-11-15 16:49:48'),
(969, 'CX55514', 'REP.ZORRA EL.STARCALV', 'CX55514.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:49', '2018-11-15 16:49:49'),
(970, 'CX55933', 'REP.ZORRA YALE MPB045VGN24 ', 'CX55933.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:49', '2018-11-15 16:49:49'),
(971, 'CX55539', 'REP.ZORRA YALE MPE080LFN24(B890N)', 'CX55539.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, NULL, NULL, '2018-11-15 16:49:49', '2018-11-15 16:49:49'),
(972, 'CX55733', 'REP.ACELERADOR CURTIS ET126', 'CX55733.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:49:49', '2018-11-15 16:49:49'),
(973, 'CX55505', 'REP.ACELERADOR ELECTR ZAPI/REMA', 'CX55505.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:49', '2018-11-15 16:49:49'),
(974, 'CX55799', 'REP.ACELERADOR ELECTRONICO ', 'CX55799.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(975, 'CX55690', 'REP.ACELERADOR ELECTRONICO HARDELLET ', 'CX55690.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(976, 'CX55734', 'REP.ACELERADOR ELECTRONICO MB CT DW', 'CX55734.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(977, 'CX55523', 'REP.ACELERADOR ELECTRONICO SEVCON', 'CX55523.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(978, 'CX55634', 'REP.CONTR. EPS UÑAS DIRECCION BT/TOYOTA', 'CX55634.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(979, 'CX55789', 'REP.CONTROLADOR AC DANAHER 350A/48V BOMBA', 'CX55789.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(980, 'CX55675', 'REP.CONTROLADOR AC DANAHER 450A/24-36-48V', 'CX55675.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(981, 'CX55737', 'REP.CONTROLADOR AC DANAHER 48V 350A', 'CX55737.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:50', '2018-11-15 16:49:50'),
(982, 'CX55621', 'REP.CONTROLADOR AC DANAHER 600A/48V', 'CX55621.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:51', '2018-11-15 16:49:51'),
(983, 'CX55631', 'REP.CONTROLADOR AC DANAHER SUPER DRIVE ', 'CX55631.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:51', '2018-11-15 16:49:51'),
(984, 'CX55682', 'REP.CONTROLADOR AC DANAHER SVC ', 'CX55682.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:51', '2018-11-15 16:49:51'),
(985, 'CX55674', 'REP.CONTROLADOR AC DOBLE DE TOYOTA ', 'CX55674.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:51', '2018-11-15 16:49:51'),
(986, 'CX55698', 'REP.CONTROLADOR AC ISKRA H24V350/300A T/H 5/1', 'CX55698.jpg', NULL, NULL, 0, NULL, NULL, NULL, 9, 26, NULL, NULL, '2018-11-15 16:49:51', '2018-11-15 16:49:51'),
(987, 'CX55767', 'REP.CONTROLADOR AC MEIDEN 400A 48V ', 'CX55767.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(988, 'CX55661', 'REP.CONTROLADOR AC MITSUBISHI PUMP ', 'CX55661.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(989, 'CX55646', 'REP.CONTROLADOR AC MITSUBISHI TRAC ', 'CX55646.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(990, 'CX55613', 'REP.CONTROLADOR AC ZAPI EPS-AC 48V ', 'CX55613.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(991, 'CX55647', 'REP.CONTROLADOR AC-0ZAPI 36V 150A', 'CX55647.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(992, 'CX55721', 'REP.CONTROLADOR AC-2 ZAPI INVERTER ', 'CX55721.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:52', '2018-11-15 16:49:52'),
(993, 'CX55593', 'REP.CONTROLADOR AC-2 ZAPI INVERTER DOBLE ', 'CX55593.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(994, 'CX55791', 'REP.CONTROLADOR AC0 ZAPI COMBI 24V 300A', 'CX55791.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(995, 'CX55720', 'REP.CONTROLADOR AC0 ZAPI COMBI 24V 500A', 'CX55720.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(996, 'CX55788', 'REP.CONTROLADOR AC1 ZAPI COMBI 24V 500A', 'CX55788.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(997, 'CX55782', 'REP.CONTROLADOR ACE0ZAPI 320A/24V TRACCION ', 'CX55782.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(998, 'CX55722', 'REP.CONTROLADOR ACE2 ZAPI 450A/36-48V', 'CX55722.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:53', '2018-11-15 16:49:53'),
(999, 'CX55545', 'REP.CONTROLADOR BOSS80V', 'CX55545.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1000, 'CX55565', 'REP.CONTROLADOR BT-RRX45 BOMBAATLAS COPCO', 'CX55565.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1001, 'CX55544', 'REP.CONTROLADOR BT-RRX45 TRACCION ATLAS COPCO', 'CX55544.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1002, 'CX55517', 'REP.CONTROLADOR CARRER ', 'CX55517.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1003, 'CX55839', 'REP.CONTROLADOR DYNAMIC', 'CX55839.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1004, 'CX77828', 'REP.CONTROLADOR EPS DANAHER 48V BT ', 'CX77828.jpg', NULL, NULL, 0, NULL, NULL, NULL, 8, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1005, 'CX55739', 'REP.CONTROLADOR EPS DIRECCION STILL 80V', 'CX55739.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1006, 'CX55678', 'REP.CONTROLADOR EPS NSK 48V', 'CX55678.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:54', '2018-11-15 16:49:54'),
(1007, 'CX55586', 'REP.CONTROLADOR EV100 GRAL.EL. ', 'CX55586.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1008, 'CX55792', 'REP.CONTROLADOR EVT100 GRAL.EL.TRANSISTORES', 'CX55792.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1009, 'CX55592', 'REP.CONTROLADOR IC3645SR4W606N6 YALE CAT ', 'CX55592.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1010, 'CX55680', 'REP.CONTROLADOR IMC ELECTROSISTEM CARER', 'CX55680.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1011, 'CX55692', 'REP.CONTROLADOR ITALSEA 4 QUADRANT 24V/90A ', 'CX55692.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1012, 'CX55758', 'REP.CONTROLADOR JUNGHEINRICH AC 24 V ', 'CX55758.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:55', '2018-11-15 16:49:55'),
(1013, 'CX55686', 'REP.CONTROLADOR JUNGHEINRICH DIRECCION ', 'CX55686.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1014, 'CX66610', 'REP.CONTROLADOR JUNGJEINRICH ', 'CX66610.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1015, 'CX55515', 'REP.CONTROLADOR LANSING', 'CX55515.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1016, 'CX55649', 'REP.CONTROLADOR LINDE 3903608654 ', 'CX55649.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1017, 'CX55668', 'REP.CONTROLADOR MC-1 JLG CURTIS', 'CX55668.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1018, 'CX55616', 'REP.CONTROLADOR MICROMOS 180A/24-36V ', 'CX55616.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1019, 'CX55635', 'REP.CONTROLADOR OMG 200A/24V ', 'CX55635.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:56', '2018-11-15 16:49:56'),
(1020, 'CX55700', 'REP.CONTROLADOR PGDT I-DRIVE ', 'CX55700.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:57', '2018-11-15 16:49:57'),
(1021, 'CX55694', 'REP.CONTROLADOR PGDT S-DRIVE ', 'CX55694.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:57', '2018-11-15 16:49:57'),
(1022, 'CX55620', 'REP.CONTROLADOR PGDT TRIO', 'CX55620.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:57', '2018-11-15 16:49:57'),
(1023, 'CX55591', 'REP.CONTROLADOR POWERPAK ', 'CX55591.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:49:57', '2018-11-15 16:49:57'),
(1024, 'CX55699', 'REP.CONTROLADOR SCHAEFF 600A ', 'CX55699.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:57', '2018-11-15 16:49:57'),
(1025, 'CX55595', 'REP.CONTROLADOR SEM GE-CTS450', 'CX55595.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1026, 'CX77749', 'REP.CONTROLADOR SEVCON 631/20132 ', 'CX77749.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1027, 'CX55544A ', 'REP.CONTROLADOR TRAC.BT-OS 2.0 ', 'CX55544A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1028, 'CX55501', 'REP.CONTROLADOR ZAPI H2', 'CX55501.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1029, 'CX55607', 'REP.CONTROLADOR ZAPI HO 24-36V/180A', 'CX55607.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1030, 'CX55606', 'REP.CONTROLADOR ZAPI SEM DOBLE CONTACTOR ', 'CX55606.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:58', '2018-11-15 16:49:58'),
(1031, 'CX55582', 'REP.CONTROLADOR ZAPI SEM ZERO B 24-36V/200A', 'CX55582.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1032, 'CX55403', 'REP.CONTROLADOR ZAPI, JLG', 'CX55403.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1033, 'CX66689', 'REP.CONTROLADOR ZAPI/NACO 200+250A/24 COMBO', 'CX66689.jpg', NULL, NULL, 0, NULL, NULL, NULL, 5, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1034, 'CX55574', 'REP.DC/DC CONVERSOR', 'CX55574.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1035, 'CX55844', 'REP.DC/DC CONVERSOR', 'CX55844.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1036, 'CX55704', 'REP.ENCODER BT ', 'CX55704.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1037, 'CX55608', 'REP.JOYSTICK ', 'CX55608.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:49:59', '2018-11-15 16:49:59'),
(1038, 'CX55502', 'REP.MASTER CONTROLER ', 'CX55502.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1039, 'CX66711', 'REP.MEDIDOR DE BATERIA-DISPLEY ', 'CX66711.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1040, 'CX55553', 'REP.MEDIDOR DE BATERIA-DISPLEY YALE', 'CX55553.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1041, 'CX55636', 'REP.MEDIDOR DISPLAY AC ', 'CX55636.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1042, 'CX77795', 'REP.MOD.3903605704/48V PUMP LINDE', 'CX77795.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1043, 'CX77794', 'REP.MOD.3903605716/48V TRAC LINDE', 'CX77794.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1044, 'CX77796', 'REP.MOD.3903605721/80V PUMP LINDE', 'CX77796.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:00', '2018-11-15 16:50:00'),
(1045, 'CX55570', 'REP.MOD.3903605729/80V TRAC LINDE', 'CX55570.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1046, 'CX66609', 'REP.SENSOR ELECTRONICO ', 'CX66609.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1047, 'CX55703', 'REP.SENSOR TACOMETRO ', 'CX55703.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1048, 'CX77829', 'REP.SENSOR TEMPERATURA ', 'CX77829.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1049, 'CX66911', 'REP.TABLERO SEVCON SC2000/1000A-80V', 'CX66911.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1050, 'CX56641', 'REP.TARJETADIRECCION ', 'CX56641.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1051, 'CX77791', 'REP.TARJETAUPRIGHT ', 'CX77791.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:01', '2018-11-15 16:50:01'),
(1052, 'CX55677', 'REP.TARJETA BIMA WILTER', 'CX55677.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1053, 'CX55617', 'REP.TARJETA CONTROL DIRECCION', 'CX55617.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1054, 'CX55510', 'REP.TARJETA CONTROL HIDRAULICA ', 'CX55510.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1055, 'CX77793', 'REP.TARJETA CONTROL MASTER DANAHER ', 'CX77793.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1056, 'CX55597', 'REP.TARJETA DIRECCION BT ', 'CX55597.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1057, 'CX55547', 'REP.TARJETA GRAL.EL.EV-1 ', 'CX55547.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1058, 'CX55623', 'REP.TARJETA GRAL.EL.EV10 ', 'CX55623.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:02', '2018-11-15 16:50:02'),
(1059, 'CX55521', 'REP.TARJETA GRAL.EL.EV100', 'CX55521.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1060, 'CX55630', 'REP.TARJETA HITACHI KOMATSU', 'CX55630.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1061, 'CX55540', 'REP.TARJETA HITACHI NISSAN ', 'CX55540.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1062, 'CX55650', 'REP.TARJETA LINDE 1413605034 ', 'CX55650.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1063, 'CX55625', 'REP.TARJETA LINDE 3903605014 36/48V TRACCION ', 'CX55625.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1064, 'CX55681', 'REP.TARJETA LINDE 3903605025 24V TRACCION', 'CX55681.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:03', '2018-11-15 16:50:03'),
(1065, 'CX55658', 'REP.TARJETA LINDE 3903605034 24V TRACCION', 'CX55658.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1066, 'CX55506', 'REP.TARJETA LINDE 3903605075/80V TRACCION', 'CX55506.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1067, 'CX55549', 'REP.TARJETA LINDE 3903605086 36/48V PUMP ', 'CX55549.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1068, 'CX55626', 'REP.TARJETA LINDE 390360508736/48V TRACCION', 'CX55626.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1069, 'CX55629', 'REP.TARJETA LINDE 3903605304 80V PUMP', 'CX55629.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1070, 'CX55651', 'REP.TARJETA LINDE 3903608801 DIRECCION ', 'CX55651.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:04', '2018-11-15 16:50:04'),
(1071, 'CX55652', 'REP.TARJETA LINDE 3903608812 ', 'CX55652.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1072, 'CX55763', 'REP.TARJETA LOGICA BT', 'CX55763.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1073, 'CX55583', 'REP.TARJETA LOGICA CONECTORES', 'CX55583.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1074, 'CX55618', 'REP.TARJETA LOGICA CONTROL SOLENOIDES NPR', 'CX55618.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1075, 'CX55533', 'REP.TARJETA LOGICA INTERFASIS CAT, BT', 'CX55533.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1076, 'CX55713', 'REP.TARJETA LOGICA JLG ', 'CX55713.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:05', '2018-11-15 16:50:05'),
(1077, 'CX55615', 'REP.TARJETA LOGICA NISSAN', 'CX55615.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1078, 'CX662/17577', 'REP.TARJETA M400 SEVCON', 'CX662/17577.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1079, 'CX662/17625', 'REP.TARJETA M400 SEVCONTROL', 'CX662/17625.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1080, 'CX55688', 'REP.TARJETA MEIDEN-TOYOTA', 'CX55688.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1081, 'CX55602', 'REP.TARJETA MIB', 'CX55602.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1082, 'CX55581', 'REP.TARJETA MP615K JUNGHEINRICH', 'CX55581.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1083, 'SC662T46221R ', 'REP.TARJETA POWERPAK 48V SEVCON TRACCION ', 'SC662T46221R.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1084, 'CX55619', 'REP.TARJETA TASKI 3000 ', 'CX55619.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:06', '2018-11-15 16:50:06'),
(1085, 'CX55537', 'REP.TARJETA TEMPORIZADORA', 'CX55537.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1086, 'CX55697', 'REP.TARJETA TENANT 5700XP', 'CX55697.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1087, 'CX55685', 'REP.TARJETA TENANT T15 ', 'CX55685.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1088, 'CX55577', 'REP.TARJETA ZORRA YALE MPB060', 'CX55577.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1089, 'CX55822', 'REP.VARIADOR AC CURTIS1222-5103 EPS-AC 48V ', 'CX55822.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1090, 'CX55598', 'REP.VARIADOR BOMBA P500 SEVCON ', 'CX55598.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1091, 'CX55589', 'REP.VARIADOR CURTIS 1203A-201', 'CX55589.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1092, 'CX55594', 'REP.VARIADOR CURTIS 1204 ', 'CX55594.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:07', '2018-11-15 16:50:07'),
(1093, 'CX55596', 'REP.VARIADOR CURTIS 1204X', 'CX55596.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1094, 'CX55546A ', 'REP.VARIADOR CURTIS 1205 ', 'CX55546A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1095, 'CX55546', 'REP.VARIADOR CURTIS 1205X', 'CX55546.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1096, 'CX55702', 'REP.VARIADOR CURTIS 1206MX ', 'CX55702.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1097, 'CX55525', 'REP.VARIADOR CURTIS 1207-24/36V', 'CX55525.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1098, 'CX55525A ', 'REP.VARIADOR CURTIS 1207A/24V', 'CX55525A.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:08', '2018-11-15 16:50:08'),
(1099, 'CX55520', 'REP.VARIADOR CURTIS 1208-345 ', 'CX55520.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1100, 'CX55558', 'REP.VARIADOR CURTIS 1209,1221-7401 ', 'CX55558.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1101, 'CX55919', 'REP.VARIADOR CURTIS 1210/24V 70A ', 'CX55919.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1102, 'CX55920', 'REP.VARIADOR CURTIS 1212/24V 70A ', 'CX55920.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1103, 'CX55568', 'REP.VARIADOR CURTIS 1214/1215/1219 ', 'CX55568.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1104, 'CX55938', 'REP.VARIADOR CURTIS 1220/24V 40A EPS ', 'CX55938.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:09', '2018-11-15 16:50:09'),
(1105, 'CX55605', 'REP.VARIADOR CURTIS 1225/1235/1227 ', 'CX55605.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1106, 'CX55603', 'REP.VARIADOR CURTIS 1228/24V-110A', 'CX55603.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1107, 'CX55660', 'REP.VARIADOR CURTIS 1230 AC 200A/24V ', 'CX55660.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1108, 'CX55781', 'REP.VARIADOR CURTIS 1234 24-48V 350A 24V AC', 'CX55781.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1109, 'CX55637', 'REP.VARIADOR CURTIS 1236/3824-48V AC ', 'CX55637.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1110, 'CX55604', 'REP.VARIADOR CURTIS 1243/24-36V-300A SEM ', 'CX55604.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1111, 'CX55655', 'REP.VARIADOR CURTIS 1243C/24-36V200A SEM CAN ', 'CX55655.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1112, 'CX55554', 'REP.VARIADOR CURTIS 1244/24-80V-400A SEM ', 'CX55554.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:10', '2018-11-15 16:50:10'),
(1113, 'CX55628', 'REP.VARIADOR CURTIS 1253 48V 600A BOMBA', 'CX55628.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1114, 'CX55638', 'REP.VARIADOR CURTIS 1254 48-80V 600A BOMBA ', 'CX55638.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1115, 'CX55676', 'REP.VARIADOR CURTIS 1268/36-48V-400A SEM ', 'CX55676.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1116, 'CX55504', 'REP.VARIADOR CURTIS 1297-350A/24V SEM', 'CX55504.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1117, 'CX555590 ', 'REP.VARIADOR CURTIS 1310 ', 'CX555590.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1118, 'CX55695', 'REP.VARIADOR CURTIS 1510-5201/48V-250A SEM ', 'CX55695.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:11', '2018-11-15 16:50:11'),
(1119, 'CX55922', 'REP.VARIADOR CURTIS 25864G09 EZGO', 'CX55922.jpg', NULL, NULL, 0, NULL, NULL, NULL, 2, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1120, 'CX631/10901', 'REP.VARIADOR EL. M400 SEVCON POTENCIA', 'CX631/10901.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1121, 'CX55556', 'REP.VARIADOR EV1OO GRAL.EL.', 'CX55556.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1122, 'CX55527', 'REP.VARIADOR EV6-CROWN,BOMBA ', 'CX55527.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1123, 'CX55542', 'REP.VARIADOR EV6-CROWN,TRACCION', 'CX55542.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1124, 'CX55659', 'REP.VARIADOR ITALSEA 36V ', 'CX55659.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1125, 'CX55683', 'REP.VARIADOR PPK BOMBA SEVCON', 'CX55683.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:12', '2018-11-15 16:50:12'),
(1126, 'CX55622', 'REP.VARIADOR PPK SEM SEVCONTROL', 'CX55622.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1127, 'CX55640', 'REP.VARIADOR PPK TRACCION SEVCON ', 'CX55640.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1128, 'CX55579', 'REP.VARIADOR SEVCONTROL MOS 90D', 'CX55579.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1129, 'CX55511', 'REP.VARIADOR SEVCONTROL MOS90 JLG', 'CX55511.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 26, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1130, 'CX56911', 'REP.VARIAS ', 'CX56911.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1131, 'CL2345332', 'LLAVE DE CONTACTO', 'CL2345332.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1132, 'JH28528240 ', 'LLAVE DE CONTACTO 3 PINES', 'JH28528240.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1133, 'TH50017769 ', 'LLAVE DE CONTACTO JH ', 'TH50017769.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:13', '2018-11-15 16:50:13'),
(1134, 'YT504240838', 'LLAVE DE CONTACTO ORIG.', 'YT504240838.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1135, 'BT148083 ', 'LLAVE INVERSORA', 'BT148083.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1136, 'KO3EB-5643220', 'LLAVE INVERSORA', 'KO3EB-5643220.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1137, 'CX55600', 'LLAVE INVERSORA BT ', 'CX55600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1138, 'BC147750 ', 'LLAVE INVERSORA CONJUNTO ', 'BC147750.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1139, 'DW6R7161 ', 'LLAVE INVERSORA D25S ', 'DW6R7161.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1140, 'CL1789911', 'LLAVE INVERSORA ORIG.', 'CL1789911.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:14', '2018-11-15 16:50:14'),
(1141, 'B350001', 'LLAVE INVERSORA TAILIFT', 'B350001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:15', '2018-11-15 16:50:15'),
(1142, 'CX88899', 'LLAVE PIN CODE ', 'CX88899.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:15', '2018-11-15 16:50:15'),
(1143, 'CXFXK700 ', 'LLAVEINVERSORA DE GIRO ', 'CXFXK700.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:15', '2018-11-15 16:50:15'),
(1144, 'SY88584', 'MICRO SWICH', 'SY88584.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:15', '2018-11-15 16:50:15'),
(1145, 'JH0852535', 'MICRO SWICH HIDRAULICO ', 'JH0852535.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:15', '2018-11-15 16:50:15'),
(1146, 'YT503781200', 'MICRO SWITCH ', 'YT503781200.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1147, 'YT519515301', 'MICRO SWITCH ', 'YT519515301.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1148, 'CR78927', 'MICRO SWITCH ', 'CR78927.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1149, 'CR89362', 'MICRO SWITCH ', 'CR89362.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1150, 'CL908622 ', 'MICRO SWITCH ', 'CL908622.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1151, 'CL991179 ', 'MICRO SWITCH ', 'CL991179.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:16', '2018-11-15 16:50:16'),
(1152, 'CL1304794', 'MICRO SWITCH ', 'CL1304794.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1153, 'CL317983 ', 'MICRO SWITCH ', 'CL317983.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1154, 'CR78879', 'MICRO SWITCH ', 'CR78879.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1155, 'CR73375', 'MICRO SWITCH ', 'CR73375.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1156, 'CL2756080', 'MICRO SWITCH ', 'CL2756080.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1157, 'YT519296800', 'MICRO SWITCH ', 'YT519296800.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:17', '2018-11-15 16:50:17'),
(1158, 'CR73374', 'MICRO SWITCH ', 'CR73374.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1159, 'BT156280 ', 'MICRO SWITCH ', 'BT156280.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1160, 'CR76314', 'MICRO SWITCH ', 'CR76314.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1161, 'TY54600-10330', 'MICRO SWITCH ', 'TY54600-10330.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1162, 'SY31811', 'MICRO SWITCH ', 'SY31811.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1163, 'SY31813', 'MICRO SWITCH ', 'SY31813.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1164, 'SY31824', 'MICRO SWITCH ', 'SY31824.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:18', '2018-11-15 16:50:18'),
(1165, 'RA590-097-01 ', 'MICRO SWITCH 2 POS CON RETORNO ', 'RA590-097-01.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1166, 'TVH260266', 'MICRO SWITCH ALBRIGHT SY24401', 'TVH260266.jpg', NULL, NULL, 0, NULL, NULL, NULL, 6, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1167, 'YT514826101', 'MICRO SWITCH DOBLE ', 'YT514826101.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1168, 'BCKTE150 ', 'MICRO SWITCH S800 BN440340000', 'BCKTE150.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1169, 'RA1-150-418', 'MICRO SWITCH-MINI PULSADOR ', 'RA1-150-418.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1170, 'CL2776124', 'MICRO SWITCH-PULSADOR', 'CL2776124.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1171, 'CR115972-1 ', 'MICRO SWITCH-PULSADOR', 'CR115972-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1172, 'CR115972-2 ', 'MICRO SWITCH-PULSADOR', 'CR115972-2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:19', '2018-11-15 16:50:19'),
(1173, 'BC715PPR-2 ', 'MICROSWICH HIDRAULICO', 'BC715PPR-2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1174, 'BR27350-015', 'PULSADOR ', 'BR27350-015.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1175, 'BR27350-020', 'PULSADOR ', 'BR27350-020.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1176, 'YT524139009', 'PULSADOR BOCINA MANILLAR ', 'YT524139009.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, 12, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1177, 'MT504816168', 'PULSADOR PLASTICO LEVER MIC', 'MT504816168.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1178, 'JH08528280 ', 'PULSADOR ZORRA T1659734', 'JH08528280.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1179, 'BT214259050', 'SENSOR MAGNETICO DESPLAZADOR ', 'BT214259050.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1180, 'YT524228854', 'SENSOR PROXIMIDAD MP0404-ER', 'YT524228854.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:20', '2018-11-15 16:50:20'),
(1181, 'SYSW-2 ', 'SWICH ALARMA ', 'SYSW-2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1182, 'SY1664 ', 'SWICH DE ASIENTO ', 'SY1664.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1183, 'BT145930 ', 'SWICH DE CARRERA ', 'BT145930.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1184, 'TH1820960', 'SWICH DE PRESENCIA ', 'TH1820960.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1185, 'SY39031', 'SWICH DE PRESENCIA DEL ASIENTO ', 'SY39031.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1186, 'CT91A14-21440', 'SWICH DEL ASIENTO', 'CT91A14-21440.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:21', '2018-11-15 16:50:21'),
(1187, 'JL4360548', 'SWICH LIMIT', 'JL4360548.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1188, 'HY2077505', 'SWICH MANILLAR ', 'HY2077505.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1189, 'MT059473000', 'TAPA SWICH DE EMERGENCIA MIC ', 'MT059473000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1190, 'NL1000114002 ', 'TAPA SWICH EMERGENCIA', 'NL1000114002.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1191, 'JH50006362 ', 'TAPA SWICH EMERGENCIA', 'JH50006362.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1192, 'LD3095471400 ', 'TAPA SWICH EMERGENCIA', 'LD3095471400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22');
INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `model`, `important`, `pdf`, `keyword`, `route`, `brand_id`, `family_id`, `subfamily_id`, `order`, `created_at`, `updated_at`) VALUES
(1193, 'YT580011991', 'TAPA SWICH EMERGENCIA', 'YT580011991.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1194, 'GEIC3CPM1RDB2', 'DRIVER 48-84V HI ', 'GEIC3CPM1RDB2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:22', '2018-11-15 16:50:22'),
(1195, 'GE45CPM1TDK3 ', 'DRIVER BOMBA,TEMPORIZADOR', 'GE45CPM1TDK3.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:23', '2018-11-15 16:50:23'),
(1196, 'GE45CPM1RDA2 ', 'DRIVER EV1,EV100 ', 'GE45CPM1RDA2.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:23', '2018-11-15 16:50:23'),
(1197, 'HY314760 ', 'REGULATOR VOLTAGE 12V', 'HY314760.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:23', '2018-11-15 16:50:23'),
(1198, 'YT911389100', 'RELAY TEMPORIZADOR NGK ', 'YT911389100.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:23', '2018-11-15 16:50:23'),
(1199, 'YT901357808', 'SENSOR ELECTRONICO ', 'YT901357808.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:23', '2018-11-15 16:50:23'),
(1200, 'LD3903605032 ', 'TARGETA LOGICA T20 ', 'LD3903605032.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1201, 'GL7020523', 'TARJETA ACELERADOR JLG ', 'GL7020523.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1202, 'CL906839 ', 'TARJETA AUX BOMBA GEIC3641BLCA9', 'CL906839.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1203, 'YT258691900', 'TARJETA CONTROL DIRECCION', 'YT258691900.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1204, 'TN370173 ', 'TARJETA CONTROL TENNANT 7200 ', 'TN370173.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1205, 'CX55550', 'TARJETA EQUALIZADORA P/CARGADOR', 'CX55550.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1206, 'GEIC3645OSC5E', 'TARJETA EV1-5H9', 'GEIC3645OSC5E.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1207, 'GEIC3645EVT1 ', 'TARJETA EV100', 'GEIC3645EVT1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:24', '2018-11-15 16:50:24'),
(1208, 'CX33301', 'TARJETA EV100 REAC.', 'CX33301.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1209, 'GEIC3645LX1MT', 'TARJETA EV100LX CROWN 2 MOTORES', 'GEIC3645LX1MT.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1210, 'GEIC3645LX1TK', 'TARJETA EV100LX ECS CLARK', 'GEIC3645LX1TK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1211, 'GEIC3645LX1ZM', 'TARJETA EV100LX MITSUBISHI ', 'GEIC3645LX1ZM.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1212, 'GEIC3645LX1TT', 'TARJETA EV100LX-BDITT/TX ', 'GEIC3645LX1TT.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1213, 'GEIC3645LX1MK', 'TARJETA EV100LX-TM15-2MOT. ', 'GEIC3645LX1MK.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:25', '2018-11-15 16:50:25'),
(1214, 'GEIC3645LX1JQ', 'TARJETA EVT100 CLARK NPR IGBT', 'GEIC3645LX1JQ.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 21, NULL, NULL, '2018-11-15 16:50:26', '2018-11-15 16:50:26'),
(1215, 'LD3903605022 ', 'TARJETA LOGICA 24V TRACCION', 'LD3903605022.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:26', '2018-11-15 16:50:26'),
(1216, 'LD3903608804 ', 'TARJETA LOGICA DE PULSOS ', 'LD3903608804.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:26', '2018-11-15 16:50:26'),
(1217, 'LD3253650118 ', 'TARJETA LOGICA E16-U200', 'LD3253650118.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:26', '2018-11-15 16:50:26'),
(1218, 'LD3903605062 ', 'TARJETA LOGICA LINDE ', 'LD3903605062.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:26', '2018-11-15 16:50:26'),
(1219, 'NI29310FK114 ', 'TARJETA LOGICA NISSAN F01', 'NI29310FK114.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1220, 'CX55599', 'TARJETA LOGICA SC2000 SEVCON ', 'CX55599.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1221, 'UP065709001', 'TARJETA LOGICA UPRIGHT ', 'UP065709001.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1222, 'SC662/17625', 'TARJETA MC400 SEVCON TRACCION', 'SC662/17625.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1223, 'JH50001269 ', 'TARJETA MP616K 24V ', 'JH50001269.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1224, 'SC662/13064', 'TARJETA P500/24-80V BOMBA SEVCON ', 'SC662/13064.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:27', '2018-11-15 16:50:27'),
(1225, 'SC662T46221', 'TARJETA POWERPAK 48V SEVCON TRACCION ', 'SC662T46221.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:28', '2018-11-15 16:50:28'),
(1226, 'SC662T86211', 'TARJETA POWERPAK 80VSEVCON TRACCION', 'SC662T86211.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:28', '2018-11-15 16:50:28'),
(1227, 'SC662P86511', 'TARJETA POWERPAK 80V SEVCON PUMP ', 'SC662P86511.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:28', '2018-11-15 16:50:28'),
(1228, 'GEIC4484A195 ', 'TARJETA SCR C185 ', 'GEIC4484A195.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:29', '2018-11-15 16:50:29'),
(1229, 'KO3BA4851123 ', 'TARJETA VALVULAS HIDRAULICAS ', 'KO3BA4851123.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, '2018-11-15 16:50:29', '2018-11-15 16:50:29'),
(1230, 'BC103795 ', 'TARLETA AUX EV666', 'BC103795.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 21, NULL, NULL, '2018-11-15 16:50:29', '2018-11-15 16:50:29'),
(1231, 'GE273A2523P9 ', 'AISLACION REC.1 EV100', 'GE273A2523P9.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:29', '2018-11-15 16:50:29'),
(1232, 'GE273A2523P8 ', 'AISLACION REC.3&4 EV100', 'GE273A2523P8.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:29', '2018-11-15 16:50:29'),
(1233, 'YT516915808', 'BASE DIODOS EV100', 'YT516915808.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:30', '2018-11-15 16:50:30'),
(1234, 'CL918755 ', 'CAPACITOR 16000 MF 60V CL ECG EVT100 ', 'CL918755.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:30', '2018-11-15 16:50:30'),
(1235, 'GE259A5523P1 ', 'CAPACITOR EV100', 'GE259A5523P1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:30', '2018-11-15 16:50:30'),
(1236, 'SC821/57022', 'CAPACITOR SEVCON ', 'SC821/57022.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 22, NULL, NULL, '2018-11-15 16:50:31', '2018-11-15 16:50:31'),
(1237, 'SY78109', 'ENCODER RULEMAN 6202 ', 'SY78109.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 11, NULL, '2018-11-15 16:50:31', '2018-11-15 16:50:31'),
(1238, 'SY96612', 'ENCODER RULEMAN 6204 ', 'SY96612.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 11, NULL, '2018-11-15 16:50:31', '2018-11-15 16:50:31'),
(1239, 'YT580047522', 'ENCODER RULEMAN 6206 ', 'YT580047522.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 11, NULL, '2018-11-15 16:50:31', '2018-11-15 16:50:31'),
(1240, 'CT97F2005400 ', 'ENCODER RULEMAN 6208 ', 'CT97F2005400.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 11, NULL, '2018-11-15 16:50:31', '2018-11-15 16:50:31'),
(1241, 'SC932/66048', 'RESISTENCIA', 'SC932/66048.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:32', '2018-11-15 16:50:32'),
(1242, 'YT1180683DB', 'RESISTENCIA 24V', 'YT1180683DB.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:32', '2018-11-15 16:50:32'),
(1243, 'KO7870230941 ', 'SENSOR DE CORRIENTE', 'KO7870230941.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:32', '2018-11-15 16:50:32'),
(1244, 'LD3903505213 ', 'SENSOR DE CORRIENTE', 'LD3903505213.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:32', '2018-11-15 16:50:32'),
(1245, 'GE171B3954G1 ', 'SHUNT EV100', 'GE171B3954G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1246, 'CL910487 ', 'SHUNT EV100 SOPORTE', 'CL910487.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1247, 'GE171B3940G1 ', 'SNUBBER EV100/200', 'GE171B3940G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1248, 'YT1520933', 'SUPRESORERC040GH ', 'YT1520933.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1249, 'CR77728', 'SUPRESOR BOBINA', 'CR77728.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1250, 'GE55-533424G0', 'SUPRESOR BOBINA EV100', 'GE55-533424G0.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:33', '2018-11-15 16:50:33'),
(1251, 'JH28712520 ', 'TACOGENERADOR', 'JH28712520.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 11, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1252, 'GE194B6376G2 ', 'TERMISTOR EV1', 'GE194B6376G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1253, 'GE205A7104G1 ', 'TERMISTOR EV1', 'GE205A7104G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1254, 'GE44A727009G2', 'TERMISTOR EV10 ', 'GE44A727009G2.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1255, 'GE44A723565-G', 'TERMISTOR EV100', 'GE44A723565-G.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1256, 'SC965/44225', 'TIRISTOR AUXILIAR', 'SC965/44225.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1257, 'GE259A2135G1 ', 'TIRISTOR EV 1 REC 250RIA60 ', 'GE259A2135G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1258, 'GE259A2138G1 ', 'TIRISTOR EV 1 REC 5 16RIA40', 'GE259A2138G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1259, 'GE44A727011-G', 'TIRISTOR EV100 REC 1 PRINCIPAL ', 'GE44A727011-G.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1260, 'GE44A717068-1', 'TIRISTOR EV100 REC 2SCR 50A', 'GE44A717068-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1261, 'GE44A717067-1', 'TIRISTOR EV100 REC 5SCR 70A', 'GE44A717067-1.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1262, 'SC965/53428', 'TIRISTOR PRINCIPAL ', 'SC965/53428.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 22, NULL, NULL, '2018-11-15 16:50:34', '2018-11-15 16:50:34'),
(1263, 'CL895902 ', 'TIRISTOR SCR1 C185 ', 'CL895902.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:35', '2018-11-15 16:50:35'),
(1264, 'RA1-130-014', 'TIRISTOR SCR1 REC', 'RA1-130-014.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:35', '2018-11-15 16:50:35'),
(1265, 'GE259A8783G1 ', 'TIRISTOR SCR1 REC EV1', 'GE259A8783G1.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, NULL, NULL, '2018-11-15 16:50:35', '2018-11-15 16:50:35'),
(1266, 'GE157B2744G4 ', 'TRANSFORMADOR GE ', 'GE157B2744G4.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 22, NULL, NULL, '2018-11-15 16:50:35', '2018-11-15 16:50:35'),
(1267, 'SC840/64202', 'DIODO 600V/250A', 'SC840/64202.jpg', NULL, NULL, 0, NULL, NULL, NULL, 1, 23, NULL, NULL, '2018-11-15 16:50:35', '2018-11-15 16:50:35'),
(1268, 'CL917694 ', 'DIODO DOBLE HFA160NJ40C', 'CL917694.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 23, NULL, NULL, '2018-11-15 16:50:36', '2018-11-15 16:50:36'),
(1269, 'LD7919489022 ', 'DIODO DOBLE SKND50E04', 'LD7919489022.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:36', '2018-11-15 16:50:36'),
(1270, 'GE259A9208PXC', 'DIODO REC4 REC7 EV100', 'GE259A9208PXC.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 23, NULL, NULL, '2018-11-15 16:50:36', '2018-11-15 16:50:36'),
(1271, 'CX66658', 'DIODO SHOTKY FES16JTS', 'CX66658.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:36', '2018-11-15 16:50:36'),
(1272, 'CX30S6 ', 'DIODO SR130/150/170L-6R', 'CX30S6.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:36', '2018-11-15 16:50:36'),
(1273, 'TY90892-01022', 'DIODO TOYOTA ', 'TY90892-01022.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1274, 'CX67890', 'INTEGRADO HIP4082IP', 'CX67890.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1275, 'CT974222 ', 'TRANSISTOR 300A/300V ', 'CT974222.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1276, 'CX66659', 'TRANSISTOR DARLINGTON 400A 600V', 'CX66659.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1277, 'KO7870270110 ', 'TRANSISTOR DARLINGTON 500A TRACPUMP', 'KO7870270110.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1278, 'CXET439', 'TRANSISTOR DARLINGTON 600A MAS DOS DIODOS', 'CXET439.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:37', '2018-11-15 16:50:37'),
(1279, 'KO7870-230211', 'TRANSISTOR DARLINGTON 600A PUMP', 'KO7870-230211.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1280, 'KO7870-230221', 'TRANSISTOR DARLINGTON 600A TRAC PUMP KSB13060', 'KO7870-230221.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1281, 'CL924071 ', 'TRANSISTOR IGBT 600A IR', 'CL924071.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1282, 'CM600HA-5F ', 'TRANSISTOR IGBT 600A/250V MB ', 'CM600HA-5F.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1283, 'KO75DY12H-CM ', 'TRANSISTOR IGBT-DIRECCION 100A ', 'KO75DY12H-CM.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1284, 'LD7919491010 ', 'TRANSISTOR MOSFET 200A 100V', 'LD7919491010.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:38', '2018-11-15 16:50:38'),
(1285, 'FM400TU-2A ', 'TRANSISTOR MOSFET 200A 100V MB ', 'FM400TU-2A.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1286, 'TY24560-23130', 'TRANSISTOR MOSFET 600A 100V CON DRIVER ', 'TY24560-23130.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1287, 'FM600TU-07A', 'TRANSISTOR MOSFET 600A 700V KOMATSU', 'FM600TU-07A.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1288, 'CX66722', 'TRANSISTOR MOSFET POWERAPT58M80J ', 'CX66722.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1289, 'CL917695 ', 'TRANSISTORES KIT 2 ', 'CL917695.jpg', NULL, NULL, 0, NULL, NULL, NULL, 3, 23, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1290, 'CXA612 ', 'SILLA ELECTRICA, ELECTRONICA ', 'CXA612.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1291, 'CXPH1600 ', 'ZORRA HIDRAULICA 1600MM', 'CXPH1600.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1292, 'CXLM516', 'ZORRA HIDRAULICA ELEVADORA 500KG-1600MM', 'CXLM516.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2018-11-15 16:50:39', '2018-11-15 16:50:39'),
(1293, 'CXHP2000 ', 'ZORRA HIDRAULICA MANUAL CBY25 2500KG ', 'CXHP2000.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2018-11-15 16:50:40', '2018-11-15 16:50:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'CALIDAD Y EXPERIENCIA', 'Mantenimiento, Repuestos y Service', 'sliders__sliderhome.jpg', 'home', 'aa', '2018-08-07 22:08:30', '2018-08-07 22:08:30'),
(2, 'COMINDEX SRL', 'Al servicio de  nuestros clientes', 'sliders__sliderempresa.jpg', 'empresa', 'aa', '2018-08-07 22:54:47', '2018-08-07 22:54:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `title`, `image`, `order`, `family_id`, `created_at`, `updated_at`) VALUES
(1, 'Asientos', 'subfamilias__subfamilia1.jpg', 'aa', 1, '2018-08-15 15:56:10', '2018-08-15 15:56:10'),
(2, 'Alarmas', 'subfamilias__subfamilia2.jpg', 'bb', 1, '2018-08-15 16:07:48', '2018-08-15 16:07:48'),
(3, 'Balizas', 'subfamilias__subfamilia3.jpg', 'cc', 1, '2018-08-15 16:08:04', '2018-08-15 16:08:04'),
(4, 'Bocinas', 'subfamilias__subfamilia4.jpg', 'dd', 1, '2018-08-15 16:08:20', '2018-08-15 16:08:20'),
(5, 'Cinturón de Seguridad', 'subfamilias__subfamilia5.jpg', 'ee', 1, '2018-08-15 16:08:37', '2018-08-15 16:08:37'),
(6, 'Faros', 'subfamilias__subfamilia6.jpg', 'ff', 1, '2018-08-15 16:08:58', '2018-08-15 16:08:58'),
(7, 'Espejos', 'subfamilias__subfamilia7.jpg', 'gg', 1, '2018-08-15 16:10:03', '2018-08-15 16:10:03'),
(8, 'Pomos', 'subfamilias__subfamilia8.jpg', 'hh', 1, '2018-08-15 16:10:18', '2018-08-15 16:10:18'),
(9, 'Baterías', 'subfamilias__promaster.jpg', 'aa', 2, '2018-08-29 14:25:01', '2018-08-29 14:25:01'),
(10, 'Aceleradores', 'no-image.jpg', 'aa', 16, '2018-08-30 17:09:16', '2018-08-30 17:09:16'),
(11, 'Encoders', 'no-image.jpg', 'bb', 16, '2018-08-30 17:11:38', '2018-08-30 17:11:38'),
(12, 'Aceleradores', 'no-image.jpg', 'aa', 20, '2018-08-30 17:13:05', '2018-08-30 17:13:05'),
(13, 'Joystick', 'no-image.jpg', 'ii', 15, '2018-11-15 15:30:11', '2018-11-15 15:30:11'),
(14, 'Reparaciones Motores Electricos', 'no-image.jpg', 'jj', 15, '2018-11-15 15:32:14', '2018-11-15 15:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE `textos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`id`, `title`, `subtitle`, `image`, `text`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'EXPERIENCIA LÍDER EN EL RUBRO', '25 años de Trayectoria', NULL, '<p>Nace en el a&ntilde;o 1993 como empresa de servicio orientada a los veh&iacute;culos de tracci&oacute;n el&eacute;ctrica, autoelevadores, apiladores, transportadoras de pallet, etc. Brindamos los servicios de mantenimiento, limpieza y venta de repuestos de las siguientes marcas.</p>', 'home', 'aa', NULL, '2018-08-07 22:23:11'),
(2, 'CONSULTAS, PREGUNTAS, COTIZACIONES', 'Formulario de Contacto', NULL, NULL, 'contacto', 'aa', NULL, NULL),
(3, NULL, NULL, NULL, 'Ingresa los siguiente datos para que podamos contestarte la solicitud de cotización. \r\nNuestro equipo se contactará a la brevedad para asesorarlo en lo que necesite.', 'presupuesto', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'franco', 'franco', '$2y$10$TmsrT/3.I1wuLgRl7stCx.MovaQxISIaOKJDOcIRHpgwk2GAydejS', 'IlIxTIWBxQvlVa7MRvktbvxvz0crQYzV0dK8wO9s4cA0xoadwyuZpPaOhyxM', '2018-08-07 21:08:27', '2018-08-07 21:08:27'),
(2, 'Pablo', 'pablo', '$2y$10$qZr16ZC9scr3oelKSAKHB.AJeUGkDWAR1oz1pCKENMLjYSKDMFpf2', 'BykQ6Bel6YfSMvFLEVlUmO61uax1ZQgQ1hsdcDbm6GyccnKKRrmXcxhfyUTZ', '2018-08-27 18:30:46', '2018-08-27 18:30:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `iconos`
--
ALTER TABLE `iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legales`
--
ALTER TABLE `legales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_brand_id_foreign` (`brand_id`),
  ADD KEY `productos_subfamily_id_foreign` (`subfamily_id`),
  ADD KEY `productos_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subfamilias_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `iconos`
--
ALTER TABLE `iconos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `legales`
--
ALTER TABLE `legales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1294;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `textos`
--
ALTER TABLE `textos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
