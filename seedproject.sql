-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 11:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seedproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_07_29_060350_create_students_table', 1),
(3, '2023_07_29_080053_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_age` int(11) NOT NULL,
  `s_email` varchar(40) DEFAULT NULL,
  `s_addres` varchar(255) NOT NULL,
  `s_city` varchar(255) NOT NULL,
  `s_phone` varchar(255) NOT NULL,
  `s_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `s_name`, `s_age`, `s_email`, `s_addres`, `s_city`, `s_phone`, `s_password`, `created_at`, `updated_at`) VALUES
(1, 'Oscar Schmitt', 18, 'vandervort.duncan@tremblay.com', '47711 Howell Inlet Apt. 498\nLake Ubaldo, IN 34678-3900', 'Vivianeville', '425-856-0577', 'vesL2rG?4!mr', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(2, 'Raven Senger', 22, 'thompson.amber@hotmail.com', '308 Javon Wall Suite 612\nWest Maria, MI 67740', 'Wolfchester', '+1.563.994.6991', '.YUwQT&9W', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(3, 'Jasper Oberbrunner', 16, 'wilbert.bergnaum@gmail.com', '242 Brigitte Roads\nEast Berniece, SD 39576', 'Port Macieburgh', '+1.484.584.7734', 'RT6!a.^=M!tPC', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(4, 'Addison Braun', 17, 'ahill@hotmail.com', '97050 Wisozk Drives\nPort Claudie, RI 99000-5756', 'Lake Duane', '986.961.6811', 'nh9J8Ef9d^:y~FI%%fb', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(5, 'Nickolas Baumbach', 17, 'mmorissette@moen.com', '61937 Dean Path Suite 681\nSouth Eriberto, WA 66264', 'Zionhaven', '906.663.4228', 'YTNuk+n00)+&/{rh!', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(6, 'Mia Pagac', 17, 'zachariah.sauer@olson.info', '1180 Samson Islands\nKarianeton, KY 61645', 'Rebastad', '1-503-495-4611', '`5\\\"gz`\"YUBcY', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(7, 'Claud Olson', 18, 'sarai.botsford@yahoo.com', '5305 Josiane Lane\nGerholdburgh, MD 81816', 'Danielhaven', '+1-901-879-8018', 'g3b!)SaRjxV', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(8, 'Bud Collins', 18, 'bogisich.trycia@hansen.com', '327 Hazle Court\nKiehnmouth, VA 68460', 'North Markus', '+1-307-686-1606', 'SUHreV`', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(9, 'Lavada McGlynn', 22, 'pheaney@hotmail.com', '924 Lesch Pines\nRuthbury, CT 70944', 'South Anderson', '(763) 428-4930', 'UdD#T)DNX.bqclZL', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(10, 'Prof. Travon Windler Jr.', 20, 'laverna.oberbrunner@dach.com', '309 Coby Camp Suite 894\nSouth Ignacioville, KY 86617-7898', 'New Gunner', '1-620-822-1098', 'hIU?M^Zd<m:3Tc', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(11, 'Hanna Zemlak', 24, 'candelario22@hotmail.com', '7462 Luettgen Villages Suite 432\nNew Loyhaven, AL 31115', 'South Devin', '(484) 229-6122', '7DMG-H0w^e/', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(12, 'Mr. Roger Ward IV', 20, 'rasheed54@kuvalis.net', '8416 Elody Underpass Apt. 265\nRogahnview, OK 43165-1181', 'Mauriciotown', '334-876-3242', '\'Ug]Pgb4~1Jr', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(13, 'Dr. Herminia Will IV', 23, 'shanahan.name@yahoo.com', '1517 Cristina Fort Apt. 918\nAstridberg, AR 40516', 'Ciarastad', '+19253390172', '5x-S.)j3$', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(14, 'Dr. Ceasar Bartoletti Sr.', 25, 'hudson.bret@gmail.com', '825 Considine Manor Apt. 273\nHagenestown, NV 49961', 'Ferryview', '+1-463-654-8046', ']Nn`u|PUV', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(15, 'Miss Dasia Bernhard', 19, 'alvena.ryan@grimes.com', '5395 Kertzmann Loaf Apt. 340\nSouth Gagemouth, NE 09396', 'Kulasstad', '+18622281330', '}AB=pNe', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(16, 'Monserrate Turner', 16, 'yost.arnoldo@hotmail.com', '54120 Bins Brooks\nOsvaldostad, AL 05512', 'Port Karen', '385-618-5154', 'o1J!3ZIUp5Eu6{y{s9', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(17, 'Sheldon Rowe', 21, 'pmueller@gmail.com', '3218 Glenda Springs Suite 861\nSammieshire, TX 66186-6658', 'Sawaynville', '361-992-1507', '\'$zT,b9yrd1kpe]:', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(18, 'Sierra Streich', 23, 'shields.jacques@yahoo.com', '4819 Elisa Estate\nBoganchester, FL 68463-3665', 'Uniquefort', '1-804-294-3502', '450f36#8FQYrf@I{~fr', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(19, 'Dr. George Strosin IV', 17, 'kassandra.pacocha@hotmail.com', '655 Lindsay Coves Suite 290\nNew Raeganburgh, DC 31908', 'East Arliefurt', '+1-941-309-9182', ')XGTi.&XvW\'9u', '2023-07-29 02:38:20', '2023-07-29 02:38:20'),
(20, 'Emilie Tromp', 25, 'vwindler@wiegand.com', '3653 Jenifer Turnpike Apt. 124\nSchaeferhaven, DC 67021-8119', 'Port Jaysonburgh', '+1.667.435.4359', 'a_#LH8<DX)C27/uGA),', '2023-07-29 02:38:20', '2023-07-29 02:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `email`, `city`, `created_at`, `updated_at`) VALUES
(1, 'salman', 20, 'salman@gmail.com', 'lahore', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(2, 'kamran', 18, 'kamran@gmail.com', 'karachi', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(3, 'noman2', 20, 'noman123@gmail.com', 'lahore', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(4, 'hassan', 25, 'hassan@gmail.com', 'multan', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(5, 'jamal', 24, 'jamal@gmail.com', 'Islamabad', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(6, 'atif', 30, 'atif@gmail.com', 'hydarabad', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(7, 'faisal', 29, 'faisal@gmail.com', 'Quetta', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(8, 'kashif', 28, 'kashif@gmail.com', 'faisalabad', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(9, 'hamad', 32, 'hamad@gmail.com', 'lahore', '2023-07-29 03:19:55', '2023-07-29 03:19:55'),
(11, 'amir', 25, 'amir@gmail.com', 'karachi', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `students_s_email_unique` (`s_email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
