-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2018 a las 02:41:54
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravelmcds`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `image`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nuevos parlantes lg', 'public/imgs/parlantes.jpg', 'lorem impuls dolor', 3, 1, '2018-03-13 00:27:25', '2018-03-13 00:27:25'),
(2, 'Balon de fut golty', 'public/imgs/balon.jpg', 'Balon de futbol nuevo original golty para el mundial de futbol rusia 2018', 11, 3, '2018-03-13 00:36:01', '2018-03-13 00:36:01'),
(3, 'Falcao', 'public/imgs/falcao.jpg', 'Falcao se recupera para jugar el torneo mas importante de su vida, (El mundial con la selecion colombia).', 51, 2, '2018-03-13 01:48:50', '2018-03-13 01:48:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tecnologia', '2018-03-13 00:04:45', '2018-03-13 00:06:28'),
(2, 'Actualidad', '2018-03-13 00:08:08', '2018-03-13 00:08:08'),
(3, 'Deporte', '2018-03-13 00:08:32', '2018-03-13 00:08:32'),
(4, 'Video Juegos', '2018-03-16 01:22:50', '2018-03-16 01:22:50');

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2018_03_05_195511_create_categories_table', 2),
(34, '2018_03_05_195548_create_articles_table', 3);

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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colortheme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`, `photo`, `colortheme`, `country`, `phonenumber`, `birthdate`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'miller.hilbert', 'Miller', 'Hilbert', 'citlalli.cole@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\c10183541236ad1ef942db119e3a5ab6.jpg', '#000000', 'Italy', '1-394-436-6742 x7068', '2016-10-23', 'sfBStcy6CORB7oRkEbwwY9yTfGaMVxQKtRWwV63cbH6MlVYPuJJvKJ4fvM1k', '2018-02-01 00:11:46', '2018-02-16 01:49:47'),
(2, 'justina.stamm', 'Justina', 'Muller', 'zbreitenberg@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\c265fc7e1116e5b76c9bd6fefbe9404d.jpg', '#ff80ff', 'Tunisia', '8785945', '1997-01-27', 'tXPPWXX4K2zj24PPFleCr6DqSSkvetJhAziw1zOjCZ7KPPGEiYewpAZF0tod', '2018-02-01 00:11:46', '2018-02-16 01:55:44'),
(3, 'wolf.elisa', 'Delphine', 'Harvey', 'prosacco.maritza@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\5949be01de2c821cd56ff921b2891b41.jpg', '#000000', 'Portugal', '+1-(719)-427-1425', '1976-10-20', 'KlqH8qsfSw5h4fFAv5qV005BPmXfrU5Bpac0KqlD2o9wXsM3agk2EHVlzmgX', '2018-02-01 00:11:46', '2018-02-16 01:54:35'),
(4, 'bins.rahul', 'Haven', 'Kub', 'adriel08@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\a52534a6e60c85b7cc7b2869d1713fcf.jpg', 'Gold', 'Fiji', '398.421.3563', '1983-12-10', 'p1CGGP862e', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(5, 'adolfo.nitzsche', 'Wilma', 'Parisian', 'virginie.bahringer@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\d4beea82e3518f99fe98fafa9887fad6.jpg', 'AliceBlue', 'Guyana', '1-538-277-4908', '2006-02-04', 'FWeWsITjyG', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(6, 'santa.roob', 'Charlene', 'Brakus', 'darryl63@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\9e604ebc758fa1d512502ff3a237be40.jpg', 'White', 'Turkmenistan', '(530) 784-9506', '1978-10-13', 'hnGt8y0DaG', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(7, 'hailey.goodwin', 'Morgan', 'Lowe', 'koss.justen@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\19e74c47752ab3fb658e62f279af05c0.jpg', 'Thistle', 'Marshall Islands', '+18658695801', '1976-02-24', 'RRFqxyUKt5', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(8, 'concepcion.okuneva', 'Kellen', 'Murazik', 'iliana37@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\8b64b5c06970b2c19228722fdc264693.jpg', 'Green', 'Aruba', '1-490-622-4804', '1992-04-04', 'vwbTNR98wd', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(9, 'oledner', 'Rupert', 'Welch', 'fay.deshaun@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\c64f1892b6aa550b4a7f75a32e1037a0.jpg', 'LightSlateGray', 'Kiribati', '1-498-314-1518 x444', '1981-03-12', 'VLewJNr0hj', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(10, 'hermiston.shania', 'Nola', 'Mosciski', 'marcelina.hoppe@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\ee669c8152f531336e192f3631b6174c.jpg', 'Bisque', 'Jamaica', '+1 (387) 200-7694', '1996-05-12', 'OJXwQcLqAV', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(11, 'franecki.leslie', 'Letitia', 'Wolff', 'madie08@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\99940e4ebbfed5c3c00fd35a2b941e8a.jpg', 'SpringGreen', 'Nicaragua', '+1-814-835-1465', '2004-02-03', 'lHZKmsUZl2', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(12, 'nraynor', 'Mauricio', 'Kuhlman', 'zdibbert@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\089d95081cdc1b3bba012cf3ccc20762.jpg', 'Gold', 'South Georgia and the South Sandwich Islands', '+1-813-398-7964', '1985-08-30', 'Hmo6V7GvaG', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(13, 'gorczany.erin', 'Adriel', 'Durgan', 'seth91@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\766bddaabe4a69fbe02e62976869c609.jpg', 'MediumPurple', 'Tokelau', '(558) 532-4151 x82453', '1996-03-15', 'NFAv2yA6Xc', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(14, 'ollie.towne', 'Lonnie', 'Feeney', 'egerlach@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\7d3df9ef2ccd7254cbc53ac9f63805e9.jpg', 'PeachPuff', 'Lithuania', '675-760-7747 x2473', '2005-07-12', 'WEmD9JSOi3', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(15, 'quigley.kayleigh', 'Cordia', 'Price', 'rowan.kautzer@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\50dee9ed672c0d77123c08dddbdc906f.jpg', 'PaleTurquoise', 'Brazil', '(339) 473-3450', '2003-12-26', 'H8wUpLQx9Y', '2018-02-01 00:11:46', '2018-02-01 00:11:46'),
(16, 'viola61', 'Alyson', 'Carroll', 'chester.kuhic@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\3d7a63c03372cc6a31a69a0f76824231.jpg', 'AntiqueWhite', 'Uzbekistan', '262-209-5300 x6690', '2014-03-12', 'Cyke7uF9J3', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(17, 'pschulist', 'Erna', 'Kunde', 'cruickshank.vella@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\d03150169b61d2c7c76b87c09428256f.jpg', 'Green', 'Gabon', '809.202.6221 x4887', '1983-06-12', 'adxGqeZltz', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(18, 'walker37', 'Ivory', 'Willms', 'jaylen43@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\e27b4a44d52e2c0f4744bcb4a1bc3054.jpg', 'Gold', 'Swaziland', '+1 (703) 333-2897', '1976-02-22', 'TWyOq4tcjO', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(19, 'braun.jamal', 'Miracle', 'Luettgen', 'scarlett13@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\f498e3f6d9109527a7354fce9d58c20a.jpg', 'SeaGreen', 'Christmas Island', '1-337-373-4866 x5245', '1998-06-25', 'EBzuar0kO7', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(20, 'rogahn.cassandre', 'Keira', 'Hegmann', 'kobe.will@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\4ec659a9d09b8d16a95bd522414ccbe7.jpg', 'LightSteelBlue', 'Macedonia', '+16878149084', '2017-02-19', 'OzSqERp364', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(21, 'vaughn.ullrich', 'Beulah', 'Johnston', 'stehr.joanne@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\7d881126b271b4d37145b84387f86151.jpg', 'Gainsboro', 'Indonesia', '(239) 524-3392 x49274', '1990-09-29', 'qA6z1atHqQ', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(22, 'rmacejkovic', 'Allene', 'Toy', 'lavada93@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\8c4bf41d25a3fc5908157275a97018c4.jpg', 'Violet', 'Bulgaria', '+1-541-267-0154', '1978-10-08', 'RBlpyYJ3xt', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(23, 'qstoltenberg', 'Ian', 'Hettinger', 'johns.mariah@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\a1936661f06279907b269769a0b97a00.jpg', 'PaleVioletRed', 'Hong Kong', '+1-214-512-3374', '1989-01-12', 'LjJ2kJhd2j', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(24, 'ojacobs', 'Neha', 'Cruickshank', 'callie92@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\b027c71b8ed847a1833ab26522d77d2b.jpg', 'LightGoldenRodYellow', 'Nigeria', '1-731-304-0323 x24694', '1990-08-04', 'yrT2CLhDXZ', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(25, 'bashirian.schuyler', 'Jana', 'Murazik', 'collins.joshua@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\b45c4ca78bfd40ca14f27058a06f5dfd.jpg', 'Salmon', 'Nepal', '1-740-322-6427 x6998', '1987-01-24', 'zMcs2iuFDy', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(26, 'leora04', 'Gwendolyn', 'Ullrich', 'bhaley@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\dc87bb6b8c2829b67cb1b89cd50d8af5.jpg', 'DarkBlue', 'Isle of Man', '+1-708-716-7000', '1986-02-07', '9hmMuLAxoL', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(27, 'jfranecki', 'Eliane', 'Pfeffer', 'hassan87@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\958e305585bd2cbffa1483b436f93c7f.jpg', 'Red', 'Monaco', '+1-865-770-4234', '1984-05-15', 'shHNFcUBJk', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(28, 'freddie32', 'Selena', 'Rath', 'dangelo83@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\d68ef8a693e54308250ab43a9b3ccdc1.jpg', 'ForestGreen', 'Luxembourg', '998-617-2606 x9937', '1998-06-22', 'JZ7xpKOsrQ', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(29, 'kira26', 'Icie', 'Shields', 'lebsack.brielle@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\2faa0dfebd63ef67c3a9f3b8b1ca2f39.jpg', 'MediumSpringGreen', 'Senegal', '1-663-593-2772', '1973-04-27', '0hKVO6W4jq', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(30, 'reichert.lemuel', 'Mia', 'Reinger', 'bennie68@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\d8f87b9db71a1c7731d86aceda808e46.jpg', 'Khaki', 'Tonga', '(962) 714-5569 x9454', '2015-06-05', '9ge2SmGifP', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(31, 'xhayes', 'Bernhard', 'Batz', 'morar.reva@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\f75e5d5b9894aab2ac100c4243a58ee0.jpg', 'DarkSlateBlue', 'Myanmar', '+1-392-812-3805', '2004-12-27', 'PUsyWEcWOM', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(32, 'onie.moore', 'Oswald', 'Pagac', 'violet.heaney@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\7662f3428a052313baa5160c45e01fb9.jpg', 'Coral', 'Liechtenstein', '987-783-6254 x236', '1995-01-10', 'VBEMS4v9D6', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(33, 'nparker', 'Merlin', 'Jacobs', 'weber.mavis@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\6c0f227d37cca263c0a66b06c3a9408a.jpg', 'Linen', 'Malawi', '1-938-757-1951', '1978-05-05', 'P5jFdL58Wi', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(34, 'rowland.roberts', 'Claudia', 'Kshlerin', 'schinner.humberto@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\b0c7e9aa7e0107b4098421ce758eeddf.jpg', 'IndianRed', 'United States Minor Outlying Islands', '959.359.9619', '1972-02-20', '1XtosXFxCr', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(35, 'arno72', 'Vito', 'Conn', 'psteuber@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\44aa3ca1487561c75297c5125a022881.jpg', 'MidnightBlue', 'Bangladesh', '1-547-331-0494', '2002-07-30', 'H2reaIkcAr', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(36, 'khilpert', 'Ellis', 'Swift', 'waelchi.leonor@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\518c03544292e042ce113cefdfe1817a.jpg', 'Green', 'Micronesia', '(251) 839-4261 x878', '2001-03-17', 'P1FsGS0opp', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(37, 'tillman.finn', 'Jessy', 'Hessel', 'jerde.milan@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\b3919976d93a6968a764f3142bc6e418.jpg', 'SandyBrown', 'Tonga', '+12987159098', '2006-09-01', '0MPW2cXVcS', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(38, 'dayne.gerlach', 'Joy', 'Heidenreich', 'connie.runte@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\89095d56ffa6a45c5cb5fe95d0f93eda.jpg', 'PaleVioletRed', 'Chad', '(994) 418-1653 x83988', '1978-09-09', 'g9kDjV1qLu', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(39, 'stroman.mozelle', 'Gianni', 'Bergstrom', 'ajacobson@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\33e80cd330d5b2b27d3857e5b0ef43c8.jpg', 'ForestGreen', 'Zimbabwe', '1-696-904-7861 x377', '1984-01-09', 'jr5PIeDsxD', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(40, 'marge.ortiz', 'Sydney', 'Pacocha', 'alene.volkman@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\4cc94c56df213e554079e89c7a305271.jpg', 'Red', 'Togo', '+1-820-653-5018', '1980-05-10', 'ALQmX1hiER', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(42, 'iroob', 'Lydia', 'Thompson', 'marvin.halvorson@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\e3ab23dd5fb34e305d0618c490c6d8db.jpg', 'MidnightBlue', 'Mauritius', '554-210-3243', '2006-03-30', '3gY06tB5xy', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(43, 'ejacobson', 'Carmela', 'Abernathy', 'sophie.kozey@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\a6fe16d428b9d3794a0fb88a52c36362.jpg', 'LightBlue', 'Kuwait', '(263) 872-1660', '1993-06-01', 'v7yNC6DZjw', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(44, 'lewis.prosacco', 'Lila', 'Legros', 'natasha14@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\2967783233943b74d9c6aae2bd578cfd.jpg', 'RosyBrown', 'Ireland', '1-408-543-4288 x23380', '1992-05-17', 'CDBfQiWyzy', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(45, 'reichmann', 'Dannie', 'Gusikowski', 'turcotte.estefania@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Editor', 'public/imgs\\9249ae7f250e5962f3c9804e3e384c8e.jpg', 'RoyalBlue', 'Saint Pierre and Miquelon', '+1 (492) 655-7444', '1975-08-16', 'CXZ4DVBvIL', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(46, 'stroman.rebeca', 'Darren', 'Hayes', 'jaquan48@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\570f79a89774ce935b88f31d9c9bab97.jpg', 'OrangeRed', 'Philippines', '(345) 401-1643 x5842', '1990-09-15', '6WTdEahmO8', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(47, 'earnestine.spencer', 'Evert', 'Rippin', 'quitzon.lilla@example.net', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\856a4fdb358547ae1e19b712e30d3102.jpg', 'DeepPink', 'Saudi Arabia', '(970) 874-1949 x31493', '2010-10-04', 'BEbLDccCLq', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(48, 'jschmitt', 'Kristoffer', 'Jaskolski', 'rbrown@example.org', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\82b7f2ddbb43877e5824b59919befc8e.jpg', 'MistyRose', 'Australia', '+1-614-601-9533', '2002-10-15', 'eD9jnpPnFq', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(49, 'okshlerin', 'Gilda', 'Harris', 'schmitt.hayden@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\eb0f318cc0287149703506d5abbbbe36.jpg', 'SteelBlue', 'Vanuatu', '1-813-981-6681 x79023', '1970-05-30', 'lSuAS0qdaM', '2018-02-01 00:11:47', '2018-02-01 00:11:47'),
(50, 'maeve99', 'Esteban', 'Wilderman', 'tklein@example.com', '$2y$10$j8My2CPO7sZ93BhZVQm3ZuWZuvaKddTapNMEMLq1C/QUv5uwXBgfO', 'Admin', 'public/imgs\\df5d80f25fe45ef094d7304a075aec5a.jpg', 'Lavender', 'Suriname', '+13077347433', '1997-07-06', 'b6RU8XJlff', '2018-02-01 00:11:48', '2018-02-01 00:11:48'),
(51, 'Yojan98', 'Yojan', 'Gutierrez', 'yojan656@hotmail.com', '$2y$10$KTZgyN0PYWJrCFB5h/CdvujA8rwID.0MReNlExGcZOc2giP5hVaZe', 'Editor', 'public/imgs/1518746387.jpeg', '#008000', 'Colombia', '8784545', '1977-10-01', NULL, '2018-02-09 00:23:08', '2018-02-16 01:59:47'),
(52, 'Andees', 'Andres', 'Salazar', 'andews@gmail.com', '$2y$10$GB9Pa308d/rQ11ZgQsCrr.7.8bbfBGDPhyXb46F7t3dLAd74IfrZ.', 'Editor', 'public/imgs/1518746336.jpeg', '#ff0080', 'Peru', '7894561223', '1998-11-04', NULL, '2018-02-09 01:56:03', '2018-02-16 01:58:56'),
(53, 'Yermin', 'Yerry', 'Mina', 'yerry.mina@gmail.com', '$2y$10$jzoEY/j6zrB1ENuZgalLpOKpVoT6BtbA2WF8d4cws3vTWMQOQoYKy', 'Editor', 'public/imgs/1519949826.jpeg', '#00ff80', 'Argentina', '123456789', '1991-10-14', 'suFSbTlHJxb0bQGiQzCoyTKMUBX59IpEDTD35TbfqPomy4fgFdivEuv973kM', '2018-02-09 02:00:27', '2018-03-02 00:17:06'),
(56, 'Elcondor', 'Condor', 'Gutierrez', 'condor@hotmail.es', '$2y$10$sUlusylG.A21yXF.zyh0.OihNE10JH9YLguERPrz.8woWLY0EfuvG', 'Admin', 'public/imgs/1519949793.jpeg', '#80ffff', 'Peru', '3001234567', '1988-12-11', 'lPNjDVeykmSk5Qh7zncInmxWRBCHAmGnVcj0cLcPREshMFcbzZmPm9xBSINQ', '2018-03-02 00:16:34', '2018-03-02 00:16:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_name_unique` (`name`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
