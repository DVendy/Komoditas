-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 02:41 PM
-- Server version: 5.7.14
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komoditas`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_lahan`
--

CREATE TABLE `asset_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id`, `pengurus_id`, `kecamatan_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Kejiwan ', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(2, 2, 1, 'Wonosobo Barat ', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(3, 3, 1, 'Mlipak ', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(4, 4, 1, 'Sambek ', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(5, 5, 1, 'Tawangsari ', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(6, 6, 1, 'Wonolelo', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(7, 7, 1, 'Jaraksari', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(8, 8, 1, 'Pagerkukuh', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:01'),
(9, 9, 1, 'Jogoyitnan ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(10, 10, 1, 'Kramatan ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(11, 11, 1, 'Pancurwening', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(12, 12, 1, 'Rojoimo', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(13, 13, 1, 'Bumireso ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(14, 14, 1, 'Sariyoso', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(15, 15, 1, 'Tlogojati ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(16, 16, 1, 'Wonosobo Timur', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(17, 17, 1, 'Bomerto ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(18, 18, 1, 'Wonosari ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(19, 19, 1, 'Jlamprang ', NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:02'),
(20, 20, 1, 'Kalianget ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(21, 21, 2, 'Adiwarno ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(22, 22, 2, 'Balekambang ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(23, 23, 2, 'Bumitirto ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(24, 24, 2, 'Candi ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(25, 25, 2, 'Gunungtawang ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(26, 26, 2, 'Kadipaten ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(27, 27, 2, 'Kalierang ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(28, 28, 2, 'Kaliputih ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(29, 29, 2, 'Karangrejo ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(30, 30, 2, 'Kecis ', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:03'),
(31, 31, 2, 'Krasak ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(32, 32, 2, 'Ngadimulyo ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(33, 33, 2, 'Pakuncen ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(34, 34, 2, 'Plobangan', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(35, 35, 2, 'Selomerto ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(36, 36, 2, 'Semayu ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(37, 37, 2, 'Sidorejo ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(38, 38, 2, 'Simbarejo ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(39, 39, 2, 'Sinduagung ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(40, 40, 2, 'Sumberwulan ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(41, 41, 2, 'Tumenggungan ', NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:04'),
(42, 42, 2, 'Wilayu ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(43, 43, 2, 'Wonorejo ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(44, 44, 2, 'Wulungsari', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(45, 45, 3, 'Besani ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(46, 46, 3, 'Durensawit ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(47, 47, 3, 'Jlamprang ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(48, 48, 3, 'Jonggolsari ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(49, 49, 3, 'Kalimendong ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(50, 50, 3, 'Leksono ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(51, 51, 3, 'Lipursari ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(52, 52, 3, 'Manggis ', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:05'),
(53, 53, 3, 'Pacarmulyo ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(54, 54, 3, 'Sawangan ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(55, 55, 3, 'Sojokerto ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(56, 56, 3, 'Timbang ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(57, 57, 3, 'Wonokerto ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(58, 58, 4, 'Garunglor ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(59, 59, 4, 'Gumiwang ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(60, 60, 4, 'Gunungtugel ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(61, 61, 4, 'Jebengplampitan ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(62, 62, 4, 'Kajeksan ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(63, 63, 4, 'Kalibening ', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:06'),
(64, 64, 4, 'Karanganyar ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(65, 65, 4, 'Kupangan ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(66, 66, 4, 'Mergosari ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(67, 67, 4, 'Plodongan ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(68, 68, 4, 'Pucung Wetan ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(69, 69, 4, 'Pulus ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(70, 70, 4, 'Rogojati ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(71, 71, 4, 'Sempol ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(72, 72, 4, 'Sukoharjo ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(73, 73, 4, 'Suroyudan ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(74, 74, 4, 'Tlogo ', NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:07'),
(75, 75, 5, 'Banyukembar ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(76, 76, 5, 'Binangun ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(77, 77, 5, 'Bumiroso ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(78, 78, 5, 'Gondang ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(79, 79, 5, 'Gumawang Kidul ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(80, 80, 5, 'Kalidesel ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(81, 81, 5, 'Krinjing ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(82, 82, 5, 'Kuripan ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(83, 83, 5, 'Limbangan ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(84, 84, 5, 'Lumajang ', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(85, 85, 5, 'Mutisari ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(86, 86, 5, 'Pasuruhan ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(87, 87, 5, 'Watumalang ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(88, 88, 5, 'Wonokampir ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(89, 89, 5, 'Wonoroto ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(90, 90, 5, 'Wonosroyo ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(91, 91, 6, 'Gambaran ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(92, 92, 6, 'Grugu ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(93, 93, 6, 'Kaliwiro ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(94, 94, 6, 'Kauman ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(95, 95, 6, 'Kemiriombo ', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:09'),
(96, 96, 6, 'Lamuk ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(97, 97, 6, 'Lebak ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(98, 98, 6, 'Medono ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(99, 99, 6, 'Ngadisono ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(100, 100, 6, 'Pesodongan ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(101, 101, 6, 'Purwosari ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(102, 102, 6, 'Selomanik ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(103, 103, 6, 'Sukoreno ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(104, 104, 6, 'Tanjunganom ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(105, 105, 6, 'Tracap ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(106, 106, 6, 'Winongsari ', NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:10'),
(107, 107, 7, 'Besuki ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(108, 108, 7, 'Erorejo ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(109, 109, 7, 'Gumelar ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(110, 110, 7, 'Kalidadap ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(111, 111, 7, 'Kaligowong ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(112, 112, 7, 'Karang Anyar ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(113, 113, 7, 'Kumejing ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(114, 114, 7, 'Lancar ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(115, 115, 7, 'Ngalian ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(116, 116, 7, 'Panerusan ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(117, 117, 7, 'Plunjaran ', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:11'),
(118, 118, 7, 'Somogede ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(119, 119, 7, 'Sumberejo ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(120, 120, 7, 'Sumbersari ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(121, 121, 7, 'Tirip ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(122, 122, 7, 'Trimulyo ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(123, 123, 7, 'Wadas Lintang ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(124, 124, 8, 'Dempel ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(125, 125, 8, 'Depok ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(126, 126, 8, 'Kalialang ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(127, 127, 8, 'Kalikarung ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(128, 128, 8, 'Karangsambung ', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:12'),
(129, 129, 8, 'Mergolangu ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(130, 130, 8, 'Pengarengan ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(131, 131, 8, 'Tempurejo ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(132, 132, 9, 'Campursari ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(133, 133, 9, 'Buntu ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(134, 134, 9, 'Dieng ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(135, 135, 9, 'Igirmranak ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(136, 136, 9, 'Jojogan ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(137, 137, 9, 'Kejajar ', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(138, 138, 9, 'Kreo ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(139, 139, 9, 'Parikesit ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(140, 140, 9, 'Patakbanteng ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(141, 141, 9, 'Sembungan ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(142, 142, 9, 'Serang ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(143, 143, 9, 'Sigedang ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(144, 144, 9, 'Sikunang ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(145, 145, 9, 'Surengede ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(146, 146, 9, 'Tambi ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(147, 147, 9, 'Tieng ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(148, 148, 10, 'Garung ', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:14'),
(149, 149, 10, 'Gemblengan ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(150, 150, 10, 'Jengkol ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(151, 151, 10, 'Kayugiyang ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(152, 152, 10, 'Kuripan ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(153, 153, 10, 'Larangan Lor ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(154, 154, 10, 'Lengkong ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(155, 155, 10, 'Maron ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(156, 156, 10, 'Menjer ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(157, 157, 10, 'Mlandi ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(158, 158, 10, 'Sendangsari ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(159, 159, 10, 'Sitiharjo ', NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:15'),
(160, 160, 10, 'Siwuran ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(161, 161, 10, 'Tegalsari ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(162, 162, 10, 'Tlogo ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(163, 163, 11, 'Andongsili ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(164, 164, 11, 'Blederan ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(165, 165, 11, 'Bumirejo ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(166, 166, 11, 'Candirejo ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(167, 167, 11, 'Deroduwur ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(168, 168, 11, 'Derongisor ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(169, 169, 11, 'Guntur Madu ', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(170, 170, 11, 'Kalibeber ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(171, 171, 11, 'Kebrengan ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(172, 172, 11, 'Keseneng ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(173, 173, 11, 'Krasak ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(174, 174, 11, 'Larangan Kulon ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(175, 175, 11, 'Mojosari ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(176, 176, 11, 'Mudal ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(177, 177, 11, 'Pungangan ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(178, 178, 11, 'Slukatan ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(179, 179, 11, 'Sojopuro ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(180, 180, 11, 'Sukorejo ', NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(181, 181, 11, 'Wonokromo ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(182, 182, 12, 'Bejiarum ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(183, 183, 12, 'Bojasari ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(184, 184, 12, 'Candiyasan ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(185, 185, 12, 'Kapencar ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(186, 186, 12, 'Karangluhur ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(187, 187, 12, 'Kertek ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(188, 188, 12, 'Ngadikusuman ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(189, 189, 12, 'Purbosono ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(190, 190, 12, 'Purwojati ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(191, 191, 12, 'Reco ', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:18'),
(192, 192, 12, 'Sindupaten ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(193, 193, 12, 'Sudungdewo ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(194, 194, 12, 'Sumberdalem ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(195, 195, 12, 'Surengede ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(196, 196, 12, 'Tlogodalem ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(197, 197, 12, 'Wringinanom ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(198, 198, 13, 'Bowongso ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(199, 199, 13, 'Butuh ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(200, 200, 13, 'Butuh Kidul ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(201, 201, 13, 'Kalikajar ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(202, 202, 13, 'Kalikuning ', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:19'),
(203, 203, 13, 'Karangduwur ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(204, 204, 13, 'Kedalon ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(205, 205, 13, 'Kembaran ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(206, 206, 13, 'Kwadungan ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(207, 207, 13, 'Lamuk  ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(208, 208, 13, 'Maduretno ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(209, 209, 13, 'Mangunrejo ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(210, 210, 13, 'Mungkung ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(211, 211, 13, 'Perboto ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(212, 212, 13, 'Purwojiwo ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(213, 213, 13, 'Rejosari ', NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(214, 214, 13, 'Simbang ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(215, 215, 13, 'Tegalombo ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(216, 216, 13, 'Wonosari ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(217, 217, 14, 'Banyumudal ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(218, 218, 14, 'Jolontoro ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(219, 219, 14, 'Karangsari ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(220, 220, 14, 'Marongsari ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(221, 221, 14, 'Ngadikerso ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(222, 222, 14, 'Ngadisalam ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(223, 223, 14, 'Pecekelan ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(224, 224, 14, 'Sapuran ', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(225, 225, 14, 'Sedayu ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(226, 226, 14, 'Tempuranduwur ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(227, 227, 14, 'Tempursari ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(228, 228, 15, 'Bener ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(229, 229, 15, 'Beran ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(230, 230, 15, 'Burat ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(231, 231, 15, 'Gadingrejo ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(232, 232, 15, 'Gadingsukuh ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(233, 233, 15, 'Gondowulan ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(234, 234, 15, 'Jangkrikan ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(235, 235, 15, 'Kalipuru ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(236, 236, 15, 'Kaliwuluh ', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:22'),
(237, 237, 15, 'Kapulogo ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(238, 238, 15, 'Kepil ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(239, 239, 15, 'Ngalian ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(240, 240, 15, 'Ropoh ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(241, 241, 15, 'Tanjunganom ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(242, 242, 15, 'Tegalgot ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(243, 243, 15, 'Teges Wetan ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(244, 244, 15, 'Warangan ', NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `fase`
--

CREATE TABLE `fase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) NOT NULL DEFAULT '0',
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_komoditas_lahan`
--

CREATE TABLE `history_komoditas_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_lahan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `komoditas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lahan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_luas_kandang` decimal(10,2) DEFAULT NULL,
  `b_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `b_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `b_tahap_panen` decimal(10,2) DEFAULT NULL,
  `b_tanggal_masuk_ternak` timestamp NULL DEFAULT NULL,
  `b_jumlah_ternak` int(11) DEFAULT '0',
  `b_tanggal_panen` timestamp NULL DEFAULT NULL,
  `b_estimasi_hasil_panen` int(11) DEFAULT '0',
  `t_luas_lahan` decimal(10,2) DEFAULT NULL,
  `t_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `t_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `t_tahap_panen` decimal(10,2) DEFAULT NULL,
  `t_tanggal_mulai_tanam` timestamp NULL DEFAULT NULL,
  `t_jumlah_tanaman` int(11) DEFAULT '0',
  `t_tanggal_panen` timestamp NULL DEFAULT NULL,
  `t_estimasi_hasil_panen` decimal(10,2) DEFAULT NULL,
  `i_luas_kolam` decimal(10,2) DEFAULT NULL,
  `i_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `i_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `i_tahap_panen` decimal(10,2) DEFAULT NULL,
  `i_tanggal_tebar_ikan` timestamp NULL DEFAULT NULL,
  `i_jumlah_ikan` int(11) DEFAULT '0',
  `i_tanggal_panen` timestamp NULL DEFAULT NULL,
  `i_estimasi_hasil_panen` decimal(10,2) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `pengurus_id`, `provinsi_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Wonosobo', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `pengurus_id`, `kabupaten_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'WONOSOBO', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(2, NULL, 1, 'SELOMERTO', NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(3, NULL, 1, 'LEKSONO', NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(4, NULL, 1, 'SUKOHARJO', NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(5, NULL, 1, 'WATUMALANG', NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(6, NULL, 1, 'KALIWIRO', NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(7, NULL, 1, 'WADASLINTANG', NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(8, NULL, 1, 'KALIBAWANG', NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(9, NULL, 1, 'KEJAJAR', NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(10, NULL, 1, 'GARUNG', NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(11, NULL, 1, 'MOJOTENGAH', NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(12, NULL, 1, 'KERTEK', NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(13, NULL, 1, 'KALIKAJAR', NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(14, NULL, 1, 'SAPURAN', NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(15, NULL, 1, 'KEPIL', NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas`
--

CREATE TABLE `komoditas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas`
--

INSERT INTO `komoditas` (`id`, `name`, `type`, `other`, `created_at`, `updated_at`) VALUES
(1, 'SAPI POTONG', 'ternak', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(2, 'KAMBING POTONG', 'ternak', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(3, 'SAPI PERAH', 'ternak', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(4, 'AYAM PEDAGING', 'ternak', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(5, 'JAGUNG HIBRIDA', 'tanaman', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(6, 'JAGUNG MANIS', 'tanaman', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(7, 'CABE RAWIT', 'tanaman', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(8, 'PADI', 'tanaman', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(9, 'IKAN LELE', 'ikan', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(10, 'IKAN NILA', 'ikan', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(11, 'BELUT', 'ikan', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21'),
(12, 'IKAN ……', 'ikan', NULL, '2019-04-28 07:35:21', '2019-04-28 07:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan`
--

CREATE TABLE `komoditas_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lahan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_luas_kandang` decimal(10,2) DEFAULT NULL,
  `b_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `b_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `b_tahap_panen` decimal(10,2) DEFAULT NULL,
  `b_tanggal_masuk_ternak` timestamp NULL DEFAULT NULL,
  `b_jumlah_ternak` int(11) DEFAULT '0',
  `b_tanggal_panen` timestamp NULL DEFAULT NULL,
  `b_estimasi_hasil_panen` int(11) DEFAULT '0',
  `t_luas_lahan` decimal(10,2) DEFAULT NULL,
  `t_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `t_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `t_tahap_panen` decimal(10,2) DEFAULT NULL,
  `t_tanggal_mulai_tanam` timestamp NULL DEFAULT NULL,
  `t_jumlah_tanaman` int(11) DEFAULT '0',
  `t_tanggal_panen` timestamp NULL DEFAULT NULL,
  `t_estimasi_hasil_panen` decimal(10,2) DEFAULT NULL,
  `i_luas_kolam` decimal(10,2) DEFAULT NULL,
  `i_tahap_persiapan` decimal(10,2) DEFAULT NULL,
  `i_tahap_pemeliharaan` decimal(10,2) DEFAULT NULL,
  `i_tahap_panen` decimal(10,2) DEFAULT NULL,
  `i_tanggal_tebar_ikan` timestamp NULL DEFAULT NULL,
  `i_jumlah_ikan` int(11) DEFAULT '0',
  `i_tanggal_panen` timestamp NULL DEFAULT NULL,
  `i_estimasi_hasil_panen` decimal(10,2) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lahan`
--

CREATE TABLE `lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas` decimal(10,4) NOT NULL,
  `pemilik` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `panen`
--

CREATE TABLE `panen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_lahan_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_tanggal_panen` timestamp NULL DEFAULT NULL,
  `b_hasil_panen` int(11) DEFAULT '0',
  `t_tanggal_panen` timestamp NULL DEFAULT NULL,
  `t_hasil_panen` decimal(10,2) DEFAULT NULL,
  `i_tanggal_panen` timestamp NULL DEFAULT NULL,
  `i_hasil_panen` decimal(10,2) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `pengurus_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Jawa Tengah', NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `other`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'WIDODO ', '0895379136311', '0895379136311', '$2y$10$.xwOQGGCGdSFd8o.hOifguGdPl/jdqW/wsSLpAb0t/hBX67xhbQoW', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(2, 'MASKOKO', '08170727136', '08170727136', '$2y$10$Bm06MebWEay.KblmVm/KruHmu1Lz8T/A8nHjGXIXx4hNXDp5Xo122', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(3, 'MUTAKIM', '081326634490', '081326634490', '$2y$10$eLNU1AGgY6LZEQHiAxK7l.7ZwmYGsD0nbY56RaxZ17ER3J3SWwT2u', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(4, 'DAMAR', '085643379915', '085643379915', '$2y$10$PLFb.MCktBFiagTLnTPeU.9H.94YEU1evjfXxzA0kzVNf5H.9TpcC', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(5, 'THORIQ', '085866644405', '085866644405', '$2y$10$ub.nunDmgWwoMxgSbgyxY.xVJYX178yIqfhxBrzXLpGwHO97SUTXe', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(6, 'WIDODO A. NUGROHO', '08121762141', '08121762141', '$2y$10$bWmhTSSsszEq9Zm1nRgn4OPcXcByZSkVgQHBhjD7HVu0NizA9Dk2u', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(7, 'MUHAMMAD FAQIH', '081327372319', '081327372319', '$2y$10$GrIQBelMhffZGuVCF3zRoOq0dOTjjIWZ846tWnqBRGteaCEZd/xJK', 'kordes', NULL, NULL, '2019-04-28 07:33:00', '2019-04-28 07:33:00'),
(8, 'EDI  SANTOSO (SMS)', '085292685066', '085292685066', '$2y$10$sxgtw3ewdeKXFLR6KrUI9OcWEm2snPyyDPIXOh5NEGGICUUSHk85W', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(9, 'KURNIANTO AGUNG T.', '081915512426', '081915512426', '$2y$10$nDnlXWJtxvAA8bavfdazC.Hhkn1V5qF3.DXwYETqHpmUroL42/udu', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(10, 'SINGGIH AJI PRABOWO', '085867663380', '085867663380', '$2y$10$G27i6/uxzXa4eRYk9AIjRu6tc7ieMchkdbwIfDS23Y54.jvJsMY42', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(11, 'GINUNG', '081215501999', '081215501999', '$2y$10$t.S7smO71FU.lNJfGlKl8.FEvt.KH8xj0P.0tUTslLKlT9mI2aIv2', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(12, 'SUWIYONO', '082242666184', '082242666184', '$2y$10$fBlJOZHw7D2IOc3bLWlBweVKx1ITs1X6kuVyO.PhthLyIvdnBcElu', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(13, 'RISYANTO', '081327462198', '081327462198', '$2y$10$HFK/NH4Ar9GZVjgXAMBzTOvtr0vRKiGPkP0UELFnp2KyOrX7UqWf.', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(14, 'WAKIJO', '083869605713', '083869605713', '$2y$10$TZzpwyUL/AHa3nXDHYi0fOtPhycFzakYAsqdBOey9XUN90C9q431e', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(15, 'SAIKHU', '08122734196', '08122734196', '$2y$10$fwyF602BXypmNuGXxzKRcOv9lDB2TBiHT8sb8Hb/iqlUr/Z.G1N8q', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(16, 'MULYONO', '081327740331', '081327740331', '$2y$10$46vtQSRFX.0e9BvhVberQepsWJ4EbChWf6Yakrov85iPAvpB54jta', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(17, 'AKHMAD ROJUDIN', '085292337202', '085292337202', '$2y$10$s5.SG8JBNnPsEZrjRmCM0.tfA4YDRllCoKJWuTZzh8g8EGYppSqv.', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(18, 'BURHAN PAGUDE', '085877650730', '085877650730', '$2y$10$6.Vdw9w3ZK6g5fUmKNAPseUiSCbFlkJigvRA1SLghOIx0F9EAqXMK', 'kordes', NULL, NULL, '2019-04-28 07:33:01', '2019-04-28 07:33:01'),
(19, 'PUJI HADI', '081327473396', '081327473396', '$2y$10$LqoGNvRkKmrwoN.8ewE9..IVCI2HugvSIt2Klk0iqIG7PLCNE71/C', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(20, 'PURWANTO', '085291607770', '085291607770', '$2y$10$e33WYcWcZfesG5imw6MFDeqIi1YjKM0UdPwv.b9CiGrj0uZC6Yrfa', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(21, 'AHMAD MUSAFA', '081358344142', '081358344142', '$2y$10$58SGtD8zYaHIhVxHqTt2cuQT6vf.xvMKuWmXC24rlpabK0oTVsriW', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(22, 'MOCH EDWIN', '082326929929', '082326929929', '$2y$10$cJ2WV.RQMZ.7ceKVP/J.w.6G50pqwRvGjnmEIRlfoZTXaNFkOM14a', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(23, 'CHICHA PUSPITOSWATI', '083867023400', '083867023400', '$2y$10$n7C4iXh6Hg.HJSLSxCaU2OA43TCkF9GygiBThPpKSIk3Sa9k2yABK', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(24, 'IS', '081329350562', '081329350562', '$2y$10$WPsOyz9xaTKFvwkXfWSkm.4wuaXMXztdLwsiFqGozq0lam6/dtgI.', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(25, 'ISROK', '087719009615', '087719009615', '$2y$10$yqOA7NdXsI/KTN774zuHj.UThU6Gx7tZZfS6a/d729NO9QKY02QKS', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(26, 'HUSEIN ISKANDAR', '085742366851', '085742366851', '$2y$10$7p1lB5LKIoHDM0Ady0ZtLO7DAAaVaGJ7Pta/1QdSOYq1QYqxOK/vG', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(27, 'ERMAWAN', '08977929926', '08977929926', '$2y$10$XJWeyXWZkV5KRvRft39gLOd9y4.LSFnPH5mPbqjjSp7l1tYWpCU6S', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(28, 'TAAT', '085878577282', '085878577282', '$2y$10$z84hDviqXR9La4xbyr7q4uleVACVUAAQ4wlRJlz8E0bLor4pdFPMa', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(29, 'UNGGUL SUROTO', '085878739863', '085878739863', '$2y$10$3IoOSlDWoXh.hIXq2JGZX.W9NSo5vyI700CqcU2eAFGYbSHLUZZ5a', 'kordes', NULL, NULL, '2019-04-28 07:33:02', '2019-04-28 07:33:02'),
(30, 'HARY ALEXA', '08562803037', '08562803037', '$2y$10$HF7SG4hOFwyfgp/enrOvr.sTf7tz9O4FUVzGaYvBzKrvDHhj0ltMy', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(31, 'MUHAMMAD TRI ANGGORO', '081326939833', '081326939833', '$2y$10$QcRSzV9TKVEOEn8G963ElOuuJl/Z2vaUYDGQDPtMe8zmtppOX5bAO', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(32, 'SADAM', '082220897037', '082220897037', '$2y$10$SkUt1eGFxKckPEblSl4YI.62G2bJzIUGrWba6O2CyHLB744uw8GOm', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(33, 'GAGAT PURYANTO', '082153785295', '082153785295', '$2y$10$IqcuqdqXPmpzt2QWaIo0q.9dNxa.PW.ua/yctoJB2oX/0Rg8hroOW', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(34, 'RAHMAD', '085200092709', '085200092709', '$2y$10$Zfk.dZnlZ.Z8sugOyOifyezqt78t.jL4L8WD0MV3a8VHxLOBF2zfe', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(35, 'PRATIK', '0818822657', '0818822657', '$2y$10$gBvEvbxHVTynyMXRtoKXie9RZv.NN98H0IpqYhgqzqWsuz5qU4BlO', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(36, 'BETA ARDIANSAH', '085785194775', '085785194775', '$2y$10$C8yQTtw02WmfLwWlnxS.cejUkvUFZpo/9MAHeJVfUGLdcbKj1C41q', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(37, 'ANAS YUNIANTO', '082220612553', '082220612553', '$2y$10$M2VJPWHG5D6u.9DUHQJOB.XGJKTj8kFQwuOAthdc/bS8Y1./JUGXW', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(38, 'AHMAD YAYIT', '085801344199', '085801344199', '$2y$10$PCYfd0Z8hF4K4GJsa4UOOO8Srqjg/LcskRGVrO03CT8xvTDHbUQcm', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(39, 'BETA ARDIANSAH', '085785194775_2', '085785194775_2', '$2y$10$GOGQhS8fTIDI9wwUFgiUAO6l7XEhgizgWaGsxNFFa9E0qTIe0q1Lu', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(40, 'AMI', '085657076977', '085657076977', '$2y$10$jZMJR2Nk62xnov7JTKHUjONs1IqQ2NcGhd4fxz/tj9Rdcfbv2hj5G', 'kordes', NULL, NULL, '2019-04-28 07:33:03', '2019-04-28 07:33:03'),
(41, 'UMI', '085249366673', '085249366673', '$2y$10$gKwAxDR0N6y1jUoCYl5C9ON9LzvZcN2Rmqn9LGAGpVPN92Ft5iWZq', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(42, 'OZI', '082314327556', '082314327556', '$2y$10$JHjI54yEZrkQvecLnIRHl.kEg/qIEyzCA5bFuzmalyT37Wj6b9UGi', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(43, 'SUPRIYADI', '085877057493', '085877057493', '$2y$10$rw49aybuQ9u2HbxRYgDHyuxEn.1KEDidGkn71zzRxmrbnMo6N/BfK', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(44, 'SANTI', '082134614525', '082134614525', '$2y$10$9HSAPWxF8WgtAUDTXfdDW.HMj2k.u27KCIc05.2W0lWDXoLDwiOve', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(45, 'NARKO', '085325669658', '085325669658', '$2y$10$n80up.X6FC.XpN8hDT7NQeC6T1EUxGuNu/7zAQQzX7x6I6hjmZ672', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(46, 'ROHMAT ', '087719203999', '087719203999', '$2y$10$pS34itMzrLcj8LA0gkU9v.tJofbliqskt3Tj/TB82ZUP.1EsLcrMK', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(47, 'BUDI ', '081328878301', '081328878301', '$2y$10$GweFpgIG9IPnTo6N98DOkerenD5zwPiog33Np/T6bibYrHQcAb1cq', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(48, 'HERI SUSANTO', '085702827853', '085702827853', '$2y$10$EfE5vtqKvqOPG3jwTvSH6ebjKABPZTg9a4757S4Kf0t2lcw4OwyXW', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(49, 'INONG ', '082220608910', '082220608910', '$2y$10$cQri3JGe7bpVdbYp7sZ5P.uWsrRwSFiL9rJ.gPRFefqs/8f8iYrcy', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(50, 'NURHASAN', '085292824277', '085292824277', '$2y$10$UYNCr29z.nLvcfhHPGCCpe97c//3k6t3dXOXJyR95UEpK9dmN3S7.', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(51, 'HAMDI / AZIZAH', '082327079306', '082327079306', '$2y$10$OOdvUNIh0/bDsU6xTG9Qwe9lziHpr34lLAcJPAsB31XaAkexqPXWO', 'kordes', NULL, NULL, '2019-04-28 07:33:04', '2019-04-28 07:33:04'),
(52, 'KISRO PURWANTO', '082324292445', '082324292445', '$2y$10$u5MZuFHLBpydQatgdBpGJ.h8jkmwvV/IyeOvdJ2I1Mp7.sjVs5Azq', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(53, 'HAKIM ', '085227007128', '085227007128', '$2y$10$UTtzYUjWIkmtLm8rDZl/0.k9HIik81BNKSCOOzQLqPx57TtDtKVOu', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(54, 'RINTO ', '089691690146', '089691690146', '$2y$10$j1zMLMpYlY9UoUD5sF/sVuEpQ8ps3EBYYpmXM01z.TOOvZ//x0qjK', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(55, 'MUKLIS', '082325818864', '082325818864', '$2y$10$xhSM7j53fNTLy/3wSuKpzu9TJunYmuy6AMKypk4ywTyTK5NTBO016', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(56, 'JOKO', '081325329979', '081325329979', '$2y$10$P5JCp/SLoUzGLXSnxF9/2e4COiq6ch6CusKPY.SMowwTk4tMckZiy', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(57, 'GUNAWAN', '081325793394', '081325793394', '$2y$10$nnQaeikf6ZA7WwhtmRZQxusPs8XAJE6dAQD3ab.20tB6o0VVKWEG.', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(58, 'AHMAD', '082325013327', '082325013327', '$2y$10$TQqy6U.OEbNe1RBJmbjMZOyUB1sg3N44fgeheQyoB7ISJrpvn4gv.', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(59, 'WONDIYAH', '087834436834', '087834436834', '$2y$10$uwsYXq42F2JmlBcvwne6zeWjzMlUQUqRJ1bPEQ3kU8xPa4cZp9ToC', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(60, 'SOFI', '085876062540', '085876062540', '$2y$10$jvmJ0D/X3DyOLpipW54ZZum8vJBgq3Mo1gY9i9kEd7p6IXWa6X2K6', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(61, 'PARYONO', '082324545676', '082324545676', '$2y$10$5Kwg5S3GWmVK4CQ/J/ENeO4qY0WoRTmZ3kDoh81r5j2r7l0X4fQTe', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(62, 'ALFAN', '085869108927', '085869108927', '$2y$10$Ayu.0X5UXsyzXFvTzmM2dOajER1paA3akDddZKavQJQkYKA9Mnnsi', 'kordes', NULL, NULL, '2019-04-28 07:33:05', '2019-04-28 07:33:05'),
(63, 'MUSTOFA ABQORY', '085336717519', '085336717519', '$2y$10$3Og3uJ5cY2cBJZz9gTufduRgzWcfYHZyK/JL54448Eo9qe5YJOAG2', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(64, 'UNTUNG', '081256527770', '081256527770', '$2y$10$zpzgiy6rCz90w/nZhhyvX.jb.7mSDrbyANbdUY1ePuOLEUkqm8b/O', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(65, 'NURHAYATI', '081802769422', '081802769422', '$2y$10$yUarpA503RwMTmoOGi24IukjUdg6whCsZFblvpcNJt5krqYTml85W', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(66, 'ANI RAKHMAWATI', '087737602828', '087737602828', '$2y$10$l4IJ8zi9AC4U/yOmzyL4XOC9Jlg5WLGuDr9JjzugvP1ZT7BeW.FGu', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(67, 'BARMI', '081568473416', '081568473416', '$2y$10$cOboW2t73BvO1gsPLYvPHuRBl3a6xCyaOdi1fpozqS3jpjJYY9fPq', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(68, 'LISTIYANA', '081373401890', '081373401890', '$2y$10$PxAoPoMIvguLFIEuGLgPuef/g3bDdfD1BQAzl7FbOKmABECUoYt8K', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(69, 'TUNUT', '085878350183', '085878350183', '$2y$10$hKandxeK5mDyLCr6Qb7kBO7.J5Z8hzPrv9vuA8SpNxkYCjMyvZUFK', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(70, 'H. PURWADI', '081390514666', '081390514666', '$2y$10$OMIXWckLtfQ4mt59zMFP..nd/ORQXcJZg4258hoClIeR4oTa23jpq', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(71, 'Kordes - Sempol ', '089632992722', '089632992722', '$2y$10$zpBfT2PwXuwCywUXYloAK.g3hOBi5FqmzAVwf45PW8/grfisoi1ai', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(72, 'SIDIK RAHARJO', '082135919655', '082135919655', '$2y$10$QHe2yCVemlTZmK1aguNC5evNpNuTdP7aDZR7nGfwYJ0WGkxoFZHzG', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(73, 'TIKA PUJI RAHAYU', '081389252670', '081389252670', '$2y$10$9K67QJeHOdIlm8insYT9gODSR5WAZB6tURCCGu.4rHNVGUR456JZK', 'kordes', NULL, NULL, '2019-04-28 07:33:06', '2019-04-28 07:33:06'),
(74, 'SIDIK', '085643656849', '085643656849', '$2y$10$SICHlOWVNNcyT1MAWqINc.gVC7wQtRx6dM0N5atkhP/fiV.Mi.TIi', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(75, 'MARNO', '081567775676', '081567775676', '$2y$10$llTTT9a5wZTgVBSphXL.S.uqCDonsz0HeUi9yrNfEuDevWQtySDCu', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(76, 'NARUHMAN', '085228792792', '085228792792', '$2y$10$eHA4gImcEYEqwI.xac0Vzuo7fsGZiaSK5wDPrmbUVHwSRke1sHKrS', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(77, 'SUPARLAN', '08812839748', '08812839748', '$2y$10$WS62HyDxM8ELGUsxh/Qi3us6UkfkBQrTplhOqIusSC/WuExIv803K', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(78, 'MAS\'UD', '081225802174', '081225802174', '$2y$10$m8Q3FQJO7znNnjV8/bqNieHlBQH5rGY1MbtptqvyRy4qwhmABY.OO', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(79, 'PRAYOGO SATRIYO NEGORO', '081238782576', '081238782576', '$2y$10$7vWCmiBphh0.5sKAMn01BuWGRbZXs.0s8j988C9MexoFyEGft.nCa', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(80, 'IMAWAN', '085328016121', '085328016121', '$2y$10$J.Au2tsFPT1wRDW5OrmRverx7ySzFxdz9fZjt1ltSH9aa2KQgujhW', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(81, 'HARTOYO', '085227722331', '085227722331', '$2y$10$Y5NDcwO/b8iTre8gM6.Y9O3utpapkGIu/eeLGAaMJuRcTktEPGm.e', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(82, 'RAHAYU', '082324895865', '082324895865', '$2y$10$dsHi4aQ5pKbSwBzBfXf/Tepp0EVOyWdK6HgWspLgukjzt/9wywBme', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(83, 'SUPONO', '082325734259', '082325734259', '$2y$10$wsnyycT2704SVM7gUR3bqeED1jW2ztSZB.r66UYTdNP5JADcbojAm', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(84, 'ZAIM IMAYAH', '085328675935', '085328675935', '$2y$10$vzTb51AawKQjgR.2Ck0/Z.GB6THPrRR2lZnYnral0zRiWccwFjSji', 'kordes', NULL, NULL, '2019-04-28 07:33:07', '2019-04-28 07:33:07'),
(85, 'SUMANTO', '085848414593', '085848414593', '$2y$10$uTU.1mLcrhEPZBWKJmO4XOyto/QtSFxzvaB2Ia/oWjWORo7FOWMxi', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(86, 'SUKIRNO', '082242112196', '082242112196', '$2y$10$vSR2ayXKmxmRkI3wxpgA2.PjjJ/VkxDJPrJzL/GEtzJhX8SBZSia.', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(87, 'ALWAN', '085741429097', '085741429097', '$2y$10$Ln64OvIggIpEjKYb0yQm8./dPkajnuXalSx79DDxGaYnsjaLt3ZyK', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(88, 'AAN BUDIYONO', '082242047348', '082242047348', '$2y$10$w9Ux6zbB0rgTBr/uVU56T.Pk7np2jSr5a5qVwmocJj6h8aMSTWnX2', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(89, 'SRI RINAWATI', '085327163564', '085327163564', '$2y$10$tWbBcjIm1zrkqlaE4gDd7urui61lFp1PQKK3jsLJlPX0CuZlTexCa', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(90, 'KIRNO', '087837524370', '087837524370', '$2y$10$GJa22xuHptTJXv/iM9rhM.jINiTOQdtQkuqohcyr4mLa1/yy/qqyK', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(91, 'IWAN', '087734150848', '087734150848', '$2y$10$3MR9RtDkSPWPDA4/YxJSGuqraTMWlaV.1zUafwGIugwJxpdB5sDm2', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(92, 'IKKA', '087719291368', '087719291368', '$2y$10$hzwBF8E1ASO48LZvqj7hi.dnC1La9PNXLY1oeci8.kAfPKo5O2P.y', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(93, 'NUR KHOLIS/SITI AMINAH', '081381681451', '081381681451', '$2y$10$hS0Y8q5ca7bzglRfJTT0EevGfX298hwk/hIA0eSpQUsLbyl8/bna6', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(94, 'GALIH', '085200093323', '085200093323', '$2y$10$t2/n3X7v0jIKwAX9Mbq5xuyBHIx3U/ey0J53Mp8CjhFgui3AuAJeW', 'kordes', NULL, NULL, '2019-04-28 07:33:08', '2019-04-28 07:33:08'),
(95, 'PARMAN LILIK', '082313476155', '082313476155', '$2y$10$gXHvVFqwxJB.DjTJlhNooODytMGQu0CdhN8qOT9KeJDKNd0KFbKqa', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(96, 'NURHADI', '082227599866', '082227599866', '$2y$10$WNrpVjoy7PSox/wWaUD/BeO2zyvskwbTJlDUfJgA6F0gUc9YgSHDe', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(97, 'AGUS SUPRIYONO', '08122577845', '08122577845', '$2y$10$Hlvtjf5Mg2kJCVbMusq4O.qZ4vu9bBtA2du0a8yb6pR.K1AjoQ.zK', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(98, 'TEGUH SANTOSO', '081215464314', '081215464314', '$2y$10$duZljHSKUHtN4KOR1Pm8KOpzw4/lE.MFlACJeovjGSi.ek5gHGfEe', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(99, 'HERI IRAWAN', '082227303979', '082227303979', '$2y$10$bY/4Nf8oNPHNFFprzod5X.jZRVingjm/e8cWA0ECS9wCJ1aiTtH6a', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(100, 'DEWI', '081329066623', '081329066623', '$2y$10$jKr6OwoDInyAUiLe9fC3b./o2ERQgZYjKDxM4BLAkWP0OiRXvSZaS', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(101, 'JUMADI', '081225574881', '081225574881', '$2y$10$qSfu6MnGA6h508mig3C1mO.Jou7/z.yDJH/65cVBHhmEq8qlnHX1O', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(102, 'SUNARTI', '087825499306', '087825499306', '$2y$10$QvA9xBPrdP01d778NwUHFee4LxE7N6am/2IRR/hVit2Q/.wj1fgUe', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(103, 'ARIP SURYADI', '087738393123', '087738393123', '$2y$10$KEc8IlNvt0zCxQsyIftQAOhXHnRAMWOIg2efIW0ADVvsK9Z2/OggC', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(104, 'BUDI (PAK ENDANG)', '082138234768', '082138234768', '$2y$10$/L0ANagxMIDxeO3RolgGKuGnhZRIysye5g0slFFhX8huvqOWffl9C', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(105, 'MUH. SHOLEH', '082221232752', '082221232752', '$2y$10$drlsTzS8b3p8WqIh5/lVCe6Q.2YpOZ/TJOs55Z0l/eDPgW3SBu/mW', 'kordes', NULL, NULL, '2019-04-28 07:33:09', '2019-04-28 07:33:09'),
(106, 'TUT WURI HANDAYANI', '082138939890', '082138939890', '$2y$10$Fc1xzbVHUMZz5.rs4WzwDOFaoHbjf6qBdvhdZVZnkRKWcJR0kyCYO', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(107, 'TRIYONO', '081228862131', '081228862131', '$2y$10$6LcrAYwQiHRQ/p0SExmQPeUx4cKQVkAjq//L..PpyzUazwL7Z5Eme', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(108, 'SUTIKNO', '082134079114', '082134079114', '$2y$10$4KXeEl85rPpXYNHQBa8l1.nes68xrw0XcqIR2TotLMRHOiqePQkUC', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(109, 'TONO', '081251044164', '081251044164', '$2y$10$mXghHXJrczTD0qARWkRMlu3ZIwNMc162PphK0e2SOvS/zUtZZgo0u', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(110, 'DUL HALIM', '082220121117', '082220121117', '$2y$10$AR9uiaNwXkulwc.pThticu9ZzL75tr3bniGexAnIs5WqWnpIvmj.u', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(111, 'SAPTONO', '081327309418', '081327309418', '$2y$10$Ib1i6.menjaKIXPJ4jhpQ.d5VCS7V6nD8aOYgOKA.Zqq7TEILCR5e', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(112, 'TRIA PRIADI', '085290068531', '085290068531', '$2y$10$rnz.SUDuPkvDZom1lcmjjevtHK/wtO547mN4FdIaBmqoOiAj7Noma', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(113, 'ENDAR', '082314354891', '082314354891', '$2y$10$B3U0EcxWTgh/JgixTjcKO.TKJsMJRK2icEbGLHJv/jwK12j/c51f6', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(114, 'SUSILO', '082221308482', '082221308482', '$2y$10$2.1iDgmFQEFkYNPTykXxRehgAp7VFdj/Rtj12JDTUuJlWHdYrogmC', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(115, 'SUPRIATI', '082221586009', '082221586009', '$2y$10$M50/8hLh4kF1g.80J7lXxubSS2U8PrYNBmVM0SVvpHYauTQyY.MTW', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(116, 'Kordes - Panerusan ', '082135268795', '082135268795', '$2y$10$nSw5MeAuzOqFtvmyJCwyxO3eyoXIlTrqxRhEAphis6mcJzY08j9O2', 'kordes', NULL, NULL, '2019-04-28 07:33:10', '2019-04-28 07:33:10'),
(117, 'KAHAT', '082327734288', '082327734288', '$2y$10$ghqmSG.JEc9BsrjsEOD1weySQt.Z3zlWU.y/f3rxwaF1skEAOi7H2', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(118, 'JOKO', '0852.6882.7783', '0852.6882.7783', '$2y$10$ve4P4d0ZmNOahOuNc2KgMeTMl37V7kpBEp9Z.157vSFN2d2hnKVR.', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(119, 'EMI KUSMIATI', '089683649728', '089683649728', '$2y$10$3jMR/Jz9Bo0eKWcjj5KZh.R2MhycJNfiYU.pI8woq/CWmppfED0rK', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(120, 'TURYANTO', '085201062154', '085201062154', '$2y$10$s.aj24DZ192oZS1rFh0cYu/AbBcOwl9QrfjOTnMShrVrx9DXqKMSy', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(121, 'YUDA', '082220120020', '082220120020', '$2y$10$14b8dbY5s1CETUR9Bkd30eYc7tGeS02B/HghOnaCmJWUlk92IxsSC', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(122, 'Kordes - Trimulyo ', '081328506386', '081328506386', '$2y$10$DvGFM2r6ds9Hjs9Y//q.9.E9dfV/BeTaJ2LK/kG8dVosUzOwF7hra', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(123, 'JAFAR', '0895372829942', '0895372829942', '$2y$10$r1LQDkwYW17CClYmOC64bOed7a.wLcPjsDxgKYkpcmrGkv9sklPgC', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(124, 'GITO', '081236021013', '081236021013', '$2y$10$aLxmWH2F5fADYs/EUOarWuiKjr.jW/bvV853sdVFQNXgAjNJ6fDbu', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(125, 'Kordes - Depok ', '082221749473', '082221749473', '$2y$10$C43xzcoddYjR/bDAF6M9/.tr.z5rmHlLyLJ30DKzVSIqn79nPdN5e', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(126, 'IFIN', '082136110543', '082136110543', '$2y$10$b/stZ44OiWFVX4R8gE3rMeOwaFoy4tSVwD8EsQr4ucjmQYvZ/d7P2', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(127, 'NURSALIM', '085293937001', '085293937001', '$2y$10$La5EI0J6l82xQOWX/G362.tilpk0.339FmVSkUvIyJUx/mav1iK5m', 'kordes', NULL, NULL, '2019-04-28 07:33:11', '2019-04-28 07:33:11'),
(128, 'SUBHAN', '081215992559', '081215992559', '$2y$10$HFPFeYfyj7Zy1hibptbwcOrcyiIUQ/FvOxM6Hu/RDsNhDFRRXCNnO', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(129, 'KISNO', '085643699886', '085643699886', '$2y$10$g0SNdeint9mepGLdlcDDM.RG3i8a0FgZISJ.kvT7wyBPZcDwLSzP2', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(130, 'ARIP ', '082242223457', '082242223457', '$2y$10$/1gZHFxXExahjxK7RaVVBe2nBhwuVTlm.ezt3V/H05v8ZbIXsCnq.', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(131, 'FATHONI', '082242001327', '082242001327', '$2y$10$IUph7x7RuNydoPGZcXK3v.K77rBfgj4vN58HapWQ3v9GaWiWwJbL2', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(132, 'RUDI HIDAYAT/TRI NUR SUBEKTI', '085291633755', '085291633755', '$2y$10$p9qnpi90.Akt1j3/xQ2PduHJuNPKDcx1RRALW6htWHAjVRdd4QSmW', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(133, 'YUSNANDAR', '082243362879', '082243362879', '$2y$10$cRJCWOiyi1AfO9JK759eoOeA0Hg4s01irWJG/3eML1dlRnLqP9i12', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(134, 'RIDWAN/MISWAN', '081226692009', '081226692009', '$2y$10$59KqD6HhzVJUwamW3qSYcOfNC0gN349eOnRTp0MJTzfiLCJd4nZbK', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(135, 'BAGIO', '083254050751', '083254050751', '$2y$10$c9cKNdtfmCybzyLo2t5sZuANKkRfmFWRuk3jpVhlRfNIziXuV3AZe', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(136, 'KASIYATI', '082225844375', '082225844375', '$2y$10$0sA3h.5eYEsF8SmRmgrPuu1267oE7R.6ZWvgV9MO2t8pQMS7nH66K', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(137, 'SLAMET KAMSURI', '082134755478', '082134755478', '$2y$10$Tl9mwacO4XXf7wv8Ta040eWagOQ8R5YGrtNy0MTLWP/.FEn4PN4Pq', 'kordes', NULL, NULL, '2019-04-28 07:33:12', '2019-04-28 07:33:12'),
(138, 'DUL AMIN ALS NASIRUDIN', '085647992963', '085647992963', '$2y$10$G49nvUnVqFYMAlcXuDpHbeAT0K5zt328s5Gy88AjDynCVQdsjI9Qq', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(139, 'BUDI SISWANTO', '082325682979', '082325682979', '$2y$10$JcnknzSh6remnr1OvF4hleCKPi9EhkzY7oGk3Btb3wZn.IGuOQrY2', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(140, 'SUTOYO', '082325620440', '082325620440', '$2y$10$zyBux/AtFenLIXFCeZOL5.36rmSqKhfwriufGvKYoRVm9MlqwNvpK', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(141, 'FUADI AMRI KHIKAM', '082313996038', '082313996038', '$2y$10$dEnxPI1GThfG5ejRZRMgWOUDmBJY2hjrIXjKXSJ1QCK01i18SXXiK', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(142, 'GHUFRON HUDAYANTO', '085728061649', '085728061649', '$2y$10$Ts9odA3R3emEgETQPfKcHOTSnjSfTEvW76WQcMHsn03MEDFe.PS7q', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(143, 'MUHAMMAD ARIF ', '082372743260', '082372743260', '$2y$10$mAvhrYiHpR1B6hL7Byq6EOaPcSW/bbE4xGMAWGBoKBacWyBXfhulm', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(144, 'GIYANTO', '081321400119', '081321400119', '$2y$10$GAXImPM2yfvsKe6qzGBsKumZnmUdMEKc42e/Ek9piJU4wBNWzJM/6', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(145, 'FATNUR ROHMAT', '085700581511', '085700581511', '$2y$10$QPEXnOLVOlzn746zqWIbN.Xo8e/N1EmdgwTVCxtQV8.cwcz8YPgaS', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(146, 'ROMADHON', '085291112740', '085291112740', '$2y$10$JqAcstXXmDa0Q5pmYN/YO.mxmtkzseg//dJ58jIr0Qi5d2bLKSzL6', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(147, 'ALFAN', '085642589499', '085642589499', '$2y$10$roWvmXhgUJYzpkpqQxp6iOMF6OJNnG.imEvLG8kOytjYb0WqZPzSu', 'kordes', NULL, NULL, '2019-04-28 07:33:13', '2019-04-28 07:33:13'),
(148, 'SUKOTIMBUL', '085227080738', '085227080738', '$2y$10$a7n/8C9fzngH.mdUWqiJMe5QW18nS6MCG1BYYSzZ6oBzhfkrQdaUW', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(149, 'MARGIYONO', '081391196313', '081391196313', '$2y$10$/5ojPhDZzBxM9Ma1Qxz6J.Yj8AC/oae8ehEO376J8BhHzq9gGG6/W', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(150, 'WARDI', '085225670342', '085225670342', '$2y$10$7qkDWE2CINIb3MjDV26ZLOsyA3OJaZu/ODW1zfSO/y8poor6pe7ua', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(151, 'SUMARYO', '085227174738', '085227174738', '$2y$10$Xmsekp4KNz4F9nGB3guwE.RD75CVCDGZGb3msy2hQlZDeaM1x5SOS', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(152, 'RUDJI', '085227959499', '085227959499', '$2y$10$ifloWHbuv5wgkmvaNCP4ieOmVTplln.hHH6UPk6l1JndiL/nzRkku', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(153, 'FUAD', '082236139608', '082236139608', '$2y$10$glZw36ebbmIslBj2dUA7y.KuBN2LgUPJOYsMeKaZkRG/2Fbgd2svG', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(154, 'SURATNO', '081334961333', '081334961333', '$2y$10$RuqCy2g7r5O7edfZwsIhKuyMnvRVDCCo4JsEvA1Md2/mStfYLO2ye', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(155, 'TONO SUHADI', '085228869997', '085228869997', '$2y$10$uw0EXwkVeDgSGIKcM7jW..9jRtQ5A5VFEqLaK1/5Xp1Qfs7Prn/ni', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(156, 'SUKISNO', '085292858105', '085292858105', '$2y$10$lpORPETE2G/VV4s2qA8tgOUP2nxqiTNW86DoG1xxYUPMyDyV3q1SK', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(157, 'SUKIR', '082328095363', '082328095363', '$2y$10$4KEbtmfM6h6GgZqqmaiWxev33V5Ssf6RL/gpueSxn1z9pXQ0yzxiG', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(158, 'PURYONO', '08895988253', '08895988253', '$2y$10$PyY93I.XDgUhOQE434.6AeS9x9C9NUU2iLTXsMzPa7oMSph8/nCsC', 'kordes', NULL, NULL, '2019-04-28 07:33:14', '2019-04-28 07:33:14'),
(159, 'MUDORIB', '081227509674', '081227509674', '$2y$10$4NLEutjfbVO9r.P78FuktOLYQn90zi10QADx8SroBqHpekmsDSdRe', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(160, 'SOKHIBI', '082324791483', '082324791483', '$2y$10$399rIi/9Oo5/PNgtAy6rh.KtnrqHLjTSpeGMUC0wKfJPVDzUteVBm', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(161, 'WARSITO ', '085240436164', '085240436164', '$2y$10$xnPWLbdXUAFVXosKZaCuUObFzL7hLAKd95Hye9O5X0wbLRot7grYa', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(162, 'BASIRUN', '082226720714', '082226720714', '$2y$10$wEuNDmPVngo0cMNk0LgMwuflfBWvNTYFWVAveSmOfcOcXV9n5YSi2', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(163, 'ANDIKA', '085700895381', '085700895381', '$2y$10$wXZSMNtg3iA8eVxPiekH2.Re684WqB9n8FBvr5VPUmt1EGRaaNP/K', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(164, 'ROMADHON', '085283723670', '085283723670', '$2y$10$/MysH11led5QayXpLQ4xvuPt7WmHRvTKEcpxDhmSDjeo2KJjlNmsC', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(165, 'AGUSTINA/NURHAMID', '082138387606', '082138387606', '$2y$10$4xWUE1Jrv9/0HOT6vZwFi.lIJly2sSUrHVRGaUQe3hCRjDRVrKDHC', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(166, 'ROKHIM', '088216300189', '088216300189', '$2y$10$9q35WtFflSHeDZD/kxNv0u5aB9U6eIU.9EUQ8EZzKqYO/nL6LUdEe', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(167, 'YULI HANA', '082220324124', '082220324124', '$2y$10$fM3KJgQSjWiA.fLI.XGZL.oPoZWZLyoC7WF1Xjp9uukh0.g6LFjUC', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(168, 'MUH. HASANTO IRAWAN', '085336543554', '085336543554', '$2y$10$30UOjbh8/9eE123rXsATrOwEqH2rKiX91h2YAJo1iqKMaHaAAhY4W', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(169, 'RENA WIJAYANTI', '082243374203', '082243374203', '$2y$10$ldCEcd.veSpKXhMbswMYeuT5nHzII2vR2XMETRuAw8cje2nYJYMKK', 'kordes', NULL, NULL, '2019-04-28 07:33:15', '2019-04-28 07:33:15'),
(170, 'SUTRIMO', '085293388310', '085293388310', '$2y$10$PwFPHOMlCIy0mekNNNnF/.mx2YepsSQG9Vcmp29tbxWfDjLHpb7wa', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(171, 'ABYAN WIRATAMA', '082127434931', '082127434931', '$2y$10$48MJLNSIbPB2UdrMt016V.xPl4aCJyWz00Nm7kOSfECKdOebbB24S', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(172, 'HERDIAN DAROJATI', '082329255749', '082329255749', '$2y$10$izh4wf54iDO.x.OLCHPO7uTtKCYRrpbbsPxxx/UAJHZPu/.iMBEvG', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(173, 'MUSTAQO', '085840441225', '085840441225', '$2y$10$ANPdyNlu8Q8cIlRb4IixG.DuGFHWJZ3exEQh.w86SYEsZkmyrfrt6', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(174, 'MASDUKI', '082324508570', '082324508570', '$2y$10$FN169QW7hP/9lFM2Nhe2V.a06dH8tkUILO/fegSIPwmXeSGyv75XS', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(175, 'MA\'RUF', '083145752010', '083145752010', '$2y$10$aIKJN5OObBzpqhIPzUteyOBcKYAZo37V/EzhhjZ1irtyd18TTb0Tm', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(176, 'TEGUH', '081391045899', '081391045899', '$2y$10$6buo5hcBCArHoLQrbZfGc.4DjgBd.FgUn2NeJ/.APhzLACHY/gwee', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(177, 'SABAR PRAYITNO', '081578924042', '081578924042', '$2y$10$mz6LRaf8ulCese6l7Gul.e5uRN1K3oYFBGMdqo4WQNfyoBB2pKPAy', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(178, 'ALFIN STM', '085229531057', '085229531057', '$2y$10$8eXyVvUwUnB7oK/R9yq9VuzcSnooSfT02ph.rEU8xmc5FsDG8VVM2', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(179, 'NURUL HUDA', '085227649068', '085227649068', '$2y$10$uP7OlMFQjwRO86tyKqTkOeTWa07UFzw0E62rerlqo8Q49.o186722', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(180, 'SUMI USRIYATI', '085293565636', '085293565636', '$2y$10$ZMiTjVQOQd5F/YYxGpyGm.V3aykDdycKIpVowtpdnZuEZy9CaQ2XS', 'kordes', NULL, NULL, '2019-04-28 07:33:16', '2019-04-28 07:33:16'),
(181, 'ROFIQI AMNA', '085328915984', '085328915984', '$2y$10$qi5dk3VbyhTc7/H1Mb6ScewCRNf3ipxQABuBBMw.5nq7qBhZoGY7u', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(182, 'JOKO', '081229826020', '081229826020', '$2y$10$YRwYW.KPC76j3yGcNnUz2.4IDliXUAZQ9iad3KIGUh9uBNcQyS5Hu', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(183, 'RIZKI ADI ALFIAN', '082299679889', '082299679889', '$2y$10$eBFT3fvv/TLnZoVvr5R2A.KLtJUv5oml6w26/D9XkceHQkzH9bnDa', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(184, 'SUWALNO', '081228717471', '081228717471', '$2y$10$B9h.v7Adz49UpuiDoI7wcefWUsaiPAr26coYnppRHYA0Rq2PiJwSq', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(185, 'SAPARI', '081326856638', '081326856638', '$2y$10$xJE/X9v0G/wvBXWrIi1hge9gwCNCBY9YtJI1nnbykCWNBNUCOTAvC', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(186, 'ZAENAL ARIFIN', '085227464655', '085227464655', '$2y$10$a6mkiUxFvTKSyw03VIAJveiuv04RjnDuBXH8uN1gqfH6tuvNFlBbO', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(187, 'ADIK HARDINA', '085227203999', '085227203999', '$2y$10$shUQ3/lH.HOW7XcLKtBj1.tbTbGTHTtt0IcuiOieKf8fYwWJo1oae', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(188, 'ENI', '081327371691', '081327371691', '$2y$10$gvpYi3MAU0grLYVYhLMV1O54qqjWn2sSjwVywqUm0EX/UfHz1BQym', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(189, 'UTOMO', '081215423449', '081215423449', '$2y$10$SBFbCuj.qnryBURCZV1msOCNXo8MIXP43kHRKjT55aIeeLaVNMr2m', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(190, 'SLAMET WIDODO', '085290276399', '085290276399', '$2y$10$GkF66b8id2Oee1zddp4eiusmeFIE8q30XqlGbVzLmUXZNHIlhoiR2', 'kordes', NULL, NULL, '2019-04-28 07:33:17', '2019-04-28 07:33:17'),
(191, 'SUPROYONO', '085601622469', '085601622469', '$2y$10$ar329pBG/TusB.5kHT3NJ.6/voierKIh.0COlKOf2bNV/pphlRuqK', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(192, 'AMELIA', '082145795991', '082145795991', '$2y$10$jzNqh.J.ItM3DERM1abDu.6PzGt0Zke.tPI5EFdgHrl2AqO8Rz84a', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(193, 'NURHAYATI', '085642009876', '085642009876', '$2y$10$66OtTsgk9YXY.etBl/2k/eH5DRAfY5rrEyUkjMspWap0WmFh32Q92', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(194, 'NUR ADANG', '08974427380', '08974427380', '$2y$10$FBEp1ORl32k4nI.5kY3MkOgK/..i71aVxLEXQphF3woGavmehd7EK', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(195, 'Kordes - Surengede ', '081229041913', '081229041913', '$2y$10$.o11fdjV4sHCNMyFV5T0PuXgv4W97K/c20X1D3GtvqYl2NjG0m02q', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(196, 'SUYONO', '081329062331', '081329062331', '$2y$10$a4hped9PVoJIL0L6cH6Xtu2nxwynao5OfPrjrKSSav7nz6pcz.fBS', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(197, 'AGUS UMARDHANI', '081391295257', '081391295257', '$2y$10$DR6/H2mvlj.1gqJnHy5wiOv.xRQu/utixngZHFrqjGExNKL5UNVeC', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(198, 'ANDY', '085226955995', '085226955995', '$2y$10$5LAh500PWj1Z8v8LZ.sCwO7l0YErp2JUcSCbhiOCV1EcBDfWaaVMW', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(199, 'SLAMET GUNAWAN', '085290468393', '085290468393', '$2y$10$YTlKyICMBxR3q1n2TEskGOrXH0BIb45vgVFAEYaby5vld/3RDU2FK', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(200, 'FAUZIN', '082138263055', '082138263055', '$2y$10$5H0LSDQtS0yXj02z9W8u5OeRQv/gsazVpIMZPQgFEagBfiJXMp6nm', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(201, 'SUGENG SUBAGYO', '081391236677', '081391236677', '$2y$10$JGZFGSrkr/wdF6IYxozu2.N6zDOk0IIAUEUZvRMOQ69RwFWh/4IS2', 'kordes', NULL, NULL, '2019-04-28 07:33:18', '2019-04-28 07:33:18'),
(202, 'WAHNO', '081329036417', '081329036417', '$2y$10$kf0swiZfOq2StvSsbCnzKeFkeF2rXK60K8/zC8s7nlVaOODqB1eEe', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(203, 'ARIF BAHARUDIN', '085700589847', '085700589847', '$2y$10$p3yZ232NxTmP.0gegB8G4ums4xKgCU46a05BYucteGaRDdC6IOMLK', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(204, 'S. WINANTO', '08122582233', '08122582233', '$2y$10$qPpKIB8Qy7gUyB4ct7ARsuKOY6H1fqb2TQvPYnsHPS5UGNIXuM1gK', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(205, 'HASSAN', '081327122972', '081327122972', '$2y$10$EY0lExez/nVHbN4rpt9jmuRQLwyhJib7HZoKVgWQHU93gZI.J4WU2', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(206, 'LUMAYAN', '082223039197', '082223039197', '$2y$10$tE2scceOt.9utAuB4ggqj.QJsXbtVkCDC6WeJ2Shv9kzxW/.pcf3e', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(207, 'ERNAWATI', '085229044298', '085229044298', '$2y$10$fN3oEXV0V.wlxpWg3M5DPuHm2Dm47rwe7VLyo1YwRkiAulOPFGghS', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(208, 'AYUNING', '082140433701', '082140433701', '$2y$10$5TSbsS9hfRxLyxLry4lBve7rc4hPzYRihJ6JCw3Coq6KZlb8H1FrC', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(209, 'SUTRIS', '081227724309', '081227724309', '$2y$10$X5IlKsyXPyKDm1xJD0atiOq086F1E6yVPYysRDGH1L8MmGtb9chs.', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(210, 'KASWANTO', '085291813739', '085291813739', '$2y$10$WDM0nh6AT2XdBd1ADdKnX.SmMWKcLw4Lk.jgplrL5kr0rK.qFACgG', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(211, 'YUWONO', '082242869599', '082242869599', '$2y$10$p5lhGl9krUkGr.8fGWwGk.h8xaG.422aDeNld3Z.T7h6MyDCD9Ly2', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(212, 'DANIK SUPRIYADI', '082135724777', '082135724777', '$2y$10$a.Ygia6eZC5N7XBY8.lBeevWhFqEFCbDCWomTNYL5d7fVkqihibE6', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(213, 'SALMAN', '082138653468', '082138653468', '$2y$10$F/PtF8doiq8fW4cgJQFaee35bA9wbursWdmhTDl/Z5ZgPSeEkPbgu', 'kordes', NULL, NULL, '2019-04-28 07:33:19', '2019-04-28 07:33:19'),
(214, 'DIRO SUSANTO', '081327091985', '081327091985', '$2y$10$IGym2TfXBB8ItHfjVeVVHOJ.SzgXu2Rx71l23xdao9YWClMmzjski', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(215, 'AGUNG WIRYONO', '085228886414', '085228886414', '$2y$10$/6I2UXGNO.wjfWhrejIK1OdkcWkUYXqW2OIu1nuYKzlU1Xbs0d8IS', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(216, 'TRIMULYANINGSIH', '082138380971', '082138380971', '$2y$10$3him6i9tDEyE9I8LOgceYuq541kj9THUf7KRrBO223CFz1U2PxhNm', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(217, 'AHMAT MUTOLIP', '081392625141', '081392625141', '$2y$10$QpoEI.DEoGklA.xMptTiR.DA5I/JP8Y0E.Y6c95xUrUTlcIFh9mXC', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(218, 'SUWORO CATUR', '081229384741', '081229384741', '$2y$10$04iz8d2qQAGilZtDf8a5YOZzWW/KOqWMbhCXeb90LkHfTS5ZtJE0K', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(219, 'KOHAR', '085227317720', '085227317720', '$2y$10$am2dXVbjzfa3/Oj/u3BTBOzvtw5g8nCPLOOOj5ywFDQhcyibI9ZTK', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(220, 'TEJO ', '085226576444', '085226576444', '$2y$10$AX4DR7qiGpGffN9Hyg2FcusW6T9OVNiNfn2bB9iHnxQQzInFe/wu6', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(221, 'NYUSUL NIYADI', '082350390814', '082350390814', '$2y$10$gKdBB4wFbQYsxhkHjdjxQOYYiwArkvs6anHq7u5PruzBuW9jrOp6G', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(222, 'JUWANTO', '081328372956', '081328372956', '$2y$10$Nu2cc/6Kygx3L9LzZMuW0OVOwcceInQoduHrgAf0rn3OY4qTvu1P2', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(223, 'AFTRINO RIDHO HIDAYAT', '085227978485', '085227978485', '$2y$10$TbEocltKlpGHXqABif3hyOxoTNZCVIvOUPdGboydia/wwfcX7Qiu6', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(224, 'WIDODO', '085226441154', '085226441154', '$2y$10$eWKKgLHxrqj61/GqvUqbc.i2wXaXVjiYOGCuL73y/8i.PpohSt1rC', 'kordes', NULL, NULL, '2019-04-28 07:33:20', '2019-04-28 07:33:20'),
(225, 'KOWIYANTO', '081328792561', '081328792561', '$2y$10$TkIv48C//xifEcZcRoMmsO.FoqygNXfwo2fKRLG7DVSMaYzinuRki', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(226, 'RIYONO', '081326091511', '081326091511', '$2y$10$F1DyC.akc77UTGEOJQLy8ua8o2yfU/o01qWE9foV2EN2YyRWT62kK', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(227, 'IIN NUKMAN', '082240562488', '082240562488', '$2y$10$q1CIPNpAWQ9ZyL5aFKBDKOAzxP8g.qM1UvnWOac9Cng6ZP.BcmS0e', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(228, 'FIKA HERMAWANTO', '08112627811', '08112627811', '$2y$10$mzHK4YU5B/LyiOg/83nBMuY.6JB.X7mMGi/a42quVAs1PUOyEasgi', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(229, 'DENNY FIBRISAPUTRA', '082136100066', '082136100066', '$2y$10$m9lrwS9D4hzmo1tkZW68a.Il9gHs3FAI14qGkN3GzzTebY8IuSor6', 'kordes', NULL, '8GL9SICQT2HUS5EkCgm7KWn2TSCH43Drq6lSR3o921aIlyFWffu7omzK8XBa', '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(230, 'MOHAMMAD SOFYAN', '082257498901', '082257498901', '$2y$10$mV0JieYPNkcC2XKoYs0HcusRRGfNw19l.qXXXpptkeGZbRUSMpWB6', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(231, 'MARGO ISWARNO', '081328153672', '081328153672', '$2y$10$B9GvVZajcbBxjSa5fiWsFe90/wBMqWBeji8vPDpsiOTlf883eZ.8S', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(232, 'BASORIADI', '082225142702', '082225142702', '$2y$10$A1sBhTsxfZNCDkXxMvjnMu91r2wQ4wpBmpFM3nydhs7LsF6/OIp/q', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(233, 'TUSSINAH', '081383605363', '081383605363', '$2y$10$rXq33lboVCYcBKfA0U8Xie68XyEcqhYa5s/liSzf1nmAq4Np8jlui', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(234, 'MUKHOLIL', '082322071822', '082322071822', '$2y$10$Rh4T019vcxmnKZd/axoiXujVQiJp6ZbNTEsvyZXee1VeG48c4vvO2', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(235, 'WITONO', '085728773477', '085728773477', '$2y$10$8L8Ad9bFU2gjjiUfA2v0g.y2x6hur8N9ogY6.AeagfyYTBbZ3wq5O', 'kordes', NULL, NULL, '2019-04-28 07:33:21', '2019-04-28 07:33:21'),
(236, 'JULIYANTO', '081934509355', '081934509355', '$2y$10$li9ZktoZChro5KHq7ZolleZdTbfCZ0JJIw4eYqyTKe4shWW2f.a7e', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(237, 'SUTOPO', '085326807789', '085326807789', '$2y$10$QCEOjUinqxE9aNQt77KR5e35J0V.FBoiDIPd3m.PY3vTeoZNn/HFC', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(238, 'MASRUKIN', '082313306288', '082313306288', '$2y$10$TyaI8KAlYP7l/KkqtKrIXuvt39f/OF7ujvi9ZYsigTctr.6sb2yWi', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(239, 'NURKHAYANI', '085226044599', '085226044599', '$2y$10$YlBx3swerICMvGn0KDlekeR714X2kZ67ZyujnQBrz/ZX.ZheAciFm', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(240, 'ABDILLAH BRAHMA SETYO WIDODO', '081391896637', '081391896637', '$2y$10$.0tsbxAlw6ucGO5mWoLmFeZ9CEv3NFjtte1g5s1LfIPfFzRYJrdP2', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(241, 'NGAKIB', '085311674615', '085311674615', '$2y$10$Ns6bi9AzOWz3ee0BzJSp7.M6K7CLH/owsG8qvkTHw1/3D5/YRb0ye', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(242, 'SANTOSO', '082325833158', '082325833158', '$2y$10$0mdZmvXKUUFyV19FcJI7meqvL7jqh2ecgY8nLZt6a87z9RNEwHGTW', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(243, 'MOCH. SOLIKHIN', '085227940815', '085227940815', '$2y$10$pLSJ8mDqA7fyoL7LTYxEJutHc3n0YA00F93W8WhsKqFugzNep4u/m', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(244, 'SURIPTO BAHRUR', '083144951779', '083144951779', '$2y$10$AyldrkoDLi1JB.FskY.lLOj0cVtTnh7Abu9MxcGhIvjhoKbUI5voS', 'kordes', NULL, NULL, '2019-04-28 07:33:22', '2019-04-28 07:33:22'),
(245, 'Super Admin', 'superadmin@komoditas.id', '123123', '$2y$10$voznXV1yzcgXhLxSnK2nqunfVMm63IFOv/u.BYywg4ljcUgjF9Ik2', 'superadmin', NULL, 'NMmwlOXc3AZjNrmPPUt8vcsXxbcVqMcQAABNma17caenp4MBm8Thl8Vk8KeX', '2019-04-28 07:33:56', '2019-04-28 07:35:21'),
(246, 'Edy Susanto', 'edysusanto66@yahoo.com', 'edysusanto66@yahoo.com', '$2y$10$TjB3sc5r9bbG5NxSx2I2Q.O5AEi90BLlWGq8QdbFklHMX4.NggDGe', 'admin', NULL, NULL, '2019-04-28 07:39:16', '2019-04-28 07:39:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_lahan`
--
ALTER TABLE `asset_lahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_lahan_asset_id_foreign` (`asset_id`),
  ADD KEY `asset_lahan_lahan_id_foreign` (`lahan_id`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desa_kecamatan_id_foreign` (`kecamatan_id`),
  ADD KEY `desa_pengurus_id_foreign` (`pengurus_id`);

--
-- Indexes for table `fase`
--
ALTER TABLE `fase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_komoditas_lahan`
--
ALTER TABLE `history_komoditas_lahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_komoditas_lahan_komoditas_lahan_id_foreign` (`komoditas_lahan_id`),
  ADD KEY `history_komoditas_lahan_komoditas_id_foreign` (`komoditas_id`),
  ADD KEY `history_komoditas_lahan_lahan_id_foreign` (`lahan_id`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabupaten_provinsi_id_foreign` (`provinsi_id`),
  ADD KEY `kabupaten_pengurus_id_foreign` (`pengurus_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kecamatan_kabupaten_id_foreign` (`kabupaten_id`),
  ADD KEY `kecamatan_pengurus_id_foreign` (`pengurus_id`);

--
-- Indexes for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komoditas_lahan_komoditas_id_foreign` (`komoditas_id`),
  ADD KEY `komoditas_lahan_lahan_id_foreign` (`lahan_id`);

--
-- Indexes for table `lahan`
--
ALTER TABLE `lahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lahan_desa_id_foreign` (`desa_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panen`
--
ALTER TABLE `panen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `panen_komoditas_lahan_id_foreign` (`komoditas_lahan_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinsi_pengurus_id_foreign` (`pengurus_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_lahan`
--
ALTER TABLE `asset_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `fase`
--
ALTER TABLE `fase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history_komoditas_lahan`
--
ALTER TABLE `history_komoditas_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lahan`
--
ALTER TABLE `lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `panen`
--
ALTER TABLE `panen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset_lahan`
--
ALTER TABLE `asset_lahan`
  ADD CONSTRAINT `asset_lahan_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `desa`
--
ALTER TABLE `desa`
  ADD CONSTRAINT `desa_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `desa_pengurus_id_foreign` FOREIGN KEY (`pengurus_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `history_komoditas_lahan`
--
ALTER TABLE `history_komoditas_lahan`
  ADD CONSTRAINT `history_komoditas_lahan_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_komoditas_lahan_komoditas_lahan_id_foreign` FOREIGN KEY (`komoditas_lahan_id`) REFERENCES `komoditas_lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_komoditas_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_pengurus_id_foreign` FOREIGN KEY (`pengurus_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `kabupaten_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupaten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kecamatan_pengurus_id_foreign` FOREIGN KEY (`pengurus_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  ADD CONSTRAINT `komoditas_lahan_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komoditas_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lahan`
--
ALTER TABLE `lahan`
  ADD CONSTRAINT `lahan_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `panen`
--
ALTER TABLE `panen`
  ADD CONSTRAINT `panen_komoditas_lahan_id_foreign` FOREIGN KEY (`komoditas_lahan_id`) REFERENCES `komoditas_lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD CONSTRAINT `provinsi_pengurus_id_foreign` FOREIGN KEY (`pengurus_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
