-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 04:31 AM
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id`, `kecamatan_id`, `user_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'Toy View', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 2, NULL, 'Leora Drive', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 3, 8, 'Nicklaus Crescent', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 4, 9, 'Swaniawski Street', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(5, 5, 10, 'Jermaine Mountain', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(6, 5, NULL, 'Dell Views', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(7, 6, NULL, 'Vernice Mill', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(8, 6, NULL, 'Sporer Light', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(9, 7, 11, 'Rogahn Corner', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(10, 7, NULL, 'Raina Summit', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fase`
--

INSERT INTO `fase` (`id`, `name`, `urutan`, `other`, `created_at`, `updated_at`) VALUES
(1, 'Persiapan', 1, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 'Penanaman', 2, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 'Pemeliharaan', 3, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 'Panen', 4, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(5, 'Kosong', 5, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `provinsi_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Jersey', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 2, 'New Hampshire', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 2, 'New Jersey', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 3, 'Minnesota', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `kabupaten_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ephraimberg', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 1, 'Nolanchester', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 2, 'Urbanchester', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 2, 'South Ronnyport', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(5, 3, 'Schulistville', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(6, 4, 'New Stanhaven', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(7, 4, 'Derekmouth', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan`
--

CREATE TABLE `komoditas_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `luas` decimal(10,4) NOT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan_gudang`
--

CREATE TABLE `komoditas_lahan_gudang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lahan`
--

CREATE TABLE `lahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas` decimal(10,4) NOT NULL,
  `pemilik` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lahan`
--

INSERT INTO `lahan` (`id`, `desa_id`, `fase_id`, `other`, `name`, `lat`, `long`, `luas`, `pemilik`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, 'Lahan Apt. 008', '-7.6231112', '107.5233852', '367.5500', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 1, 4, NULL, 'Lahan Suite 203', '-6.8441017', '109.1463909', '440.6700', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 1, 4, NULL, 'Lahan Suite 015', '-7.3748879', '108.153869', '570.1800', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 1, 5, NULL, 'Lahan Suite 307', '-7.4834595', '108.6527715', '678.4800', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(5, 1, 3, NULL, 'Lahan Suite 801', '-7.5110747', '107.3359108', '623.2500', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(6, 1, 5, NULL, 'Lahan Apt. 697', '-7.110896', '109.2397319', '119.0100', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(7, 1, 3, NULL, 'Lahan Apt. 758', '-7.66819', '108.3695915', '270.7700', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(8, 3, 3, NULL, 'Lahan Apt. 310', '-7.2384909', '108.3257919', '476.1200', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(9, 3, 4, NULL, 'Lahan Apt. 012', '-6.8306821', '108.0969247', '345.1700', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(10, 3, 5, NULL, 'Lahan Apt. 209', '-7.3651813', '109.4426839', '244.8900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(11, 3, 4, NULL, 'Lahan Apt. 327', '-6.9149736', '108.2092561', '688.9700', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(12, 3, 4, NULL, 'Lahan Suite 324', '-7.0914875', '107.7791887', '407.7100', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(13, 3, 3, NULL, 'Lahan Apt. 337', '-7.5198631', '109.3389799', '415.6600', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(14, 3, 1, NULL, 'Lahan Suite 487', '-7.6710626', '107.967886', '196.1400', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(15, 4, 3, NULL, 'Lahan Apt. 837', '-7.6731642', '109.431036', '498.4200', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(16, 4, 2, NULL, 'Lahan Apt. 680', '-7.2754779', '108.4741617', '118.1100', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(17, 4, 4, NULL, 'Lahan Apt. 001', '-7.0018729', '109.7095862', '452.0800', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(18, 4, 2, NULL, 'Lahan Suite 663', '-7.4692873', '109.6037993', '734.3900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(19, 4, 1, NULL, 'Lahan Apt. 371', '-7.497819', '108.2195702', '217.4400', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(20, 5, 4, NULL, 'Lahan Apt. 799', '-6.9489543', '110.4953729', '117.3900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(21, 5, 1, NULL, 'Lahan Apt. 323', '-7.2715162', '108.2501925', '419.0200', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(22, 5, 5, NULL, 'Lahan Apt. 510', '-7.3642505', '108.9396729', '208.2300', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(23, 5, 3, NULL, 'Lahan Apt. 444', '-6.8197691', '107.4995472', '236.0700', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(24, 5, 5, NULL, 'Lahan Apt. 502', '-7.6810546', '110.4738029', '266.8500', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(25, 5, 3, NULL, 'Lahan Suite 654', '-7.1287692', '107.6851014', '193.2900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(26, 9, 4, NULL, 'Lahan Suite 813', '-6.9070632', '108.082842', '747.4900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(27, 9, 4, NULL, 'Lahan Suite 244', '-7.6346326', '109.3822547', '739.8800', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(28, 9, 3, NULL, 'Lahan Apt. 069', '-7.3644469', '110.7152486', '233.5900', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(29, 9, 1, NULL, 'Lahan Apt. 780', '-6.8939591', '110.4328088', '770.2800', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(30, 9, 3, NULL, 'Lahan Suite 784', '-7.1416073', '110.2675592', '329.6500', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(31, 9, 3, NULL, 'Lahan Apt. 788', '-7.2946324', '109.9780502', '153.7100', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(32, 9, 4, NULL, 'Lahan Apt. 300', '-7.077097', '108.68486', '173.6300', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(33, 9, 1, NULL, 'Lahan Apt. 536', '-7.6415305', '110.2941833', '250.4100', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(34, 5, 2, NULL, 'Tefewf', '-7.077567196046544', '108.30934251703457', '545645.0000', '74yhrthtr', '2018-03-28 07:27:25', '2018-03-28 07:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `hasil` decimal(10,4) NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 'Bahrain', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 'Albania', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 'Portugal', NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `other`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@komoditas.id', '12345', '$2y$10$Ua2HUg/8NMhctsZAXRl28OA5YMhKd/B0c38n4YN9PRuHcTDL1C/LO', 'superadmin', NULL, 'HG8y2kGQdPAdJkqacermGHwIBX8BpGNGPD51nH83FESMPTwyWzeexXGcbqlj', '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(2, 'Madelynn Bergstrom', 'madelynnbergstrom@komoditas.id', 'madelynnbergstrom@komoditas.id', '$2y$10$/pWrm73.GjMlCoT81eOfBu6eIQkkSxRl2RDM0.tONkV0iojUZH5oe', 'admin', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(3, 'Alberta Gerlach', 'albertagerlach@komoditas.id', 'albertagerlach@komoditas.id', '$2y$10$wjGyJNfwyudI6FMHF9WewetfLxcA9LbSOjVFjI9jJ.su6n93zJxze', 'admin', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(4, 'Preston Reichel', 'prestonreichel@komoditas.id', 'prestonreichel@komoditas.id', '$2y$10$7F6PMfHrvUOCPW31oLHwbeyzVcqwcxi0bU/Nf2zzrK9.QHk56Rtyy', 'admin', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(5, 'Felicia Pfeffer', 'feliciapfeffer@komoditas.id', 'feliciapfeffer@komoditas.id', '$2y$10$ktEkQYDCraevx/2BJJYAnOghN8yR1F3Y9vUkjW5di7RBcirWUgBCC', 'admin', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(6, 'Josephine Kuvalis', 'josephinekuvalis@komoditas.id', 'josephinekuvalis@komoditas.id', '$2y$10$n66NxpI49pGh3w8L9s0EXOXGnmMA7cy/Hp.auHgcRJmdJ0vUeYjkq', 'admin', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(7, 'Theodora Ankunding', '081_7', '081_7', '$2y$10$LtXPbDlDrSkhltIs4hks.e1yjv7f7bKdgnrNPbaEuSjnGplY1A5CW', 'desa', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(8, 'Vivian Wiegand', '081_8', '081_8', '$2y$10$yTSN293ndt.PUU1d0HNDrOPNbElJP70rr9hlG3CcwxISKTTL.xpZ6', 'desa', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(9, 'Vicente DuBuque', '081_9', '081_9', '$2y$10$cy9yPjum1GnHnWJz5Fu9suQltqI3CuwPGNCynsjTT5PQLj8VloP.S', 'desa', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(10, 'Vilma Smith', '081_10', '081_10', '$2y$10$ntF5cX5hTxAvexqGI87aL.puyCA3k2uUVTKGHkk5v.b1VPzb1deBm', 'desa', NULL, 'ym0XUPv5Q72p2WXvdA7QaRoxEsWwuWZ1q3fOgIxxDJO6JfBbjD8R27f947Nk', '2018-03-28 06:57:09', '2018-03-28 06:57:09'),
(11, 'Urban Simonis', '081_11', '081_11', '$2y$10$GsOZe8gxdzUigFC11ladHu9.jZC5tx.1rfbPx9RU7hjsEVGtxowNK', 'desa', NULL, NULL, '2018-03-28 06:57:09', '2018-03-28 06:57:09');

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
  ADD KEY `desa_user_id_foreign` (`user_id`);

--
-- Indexes for table `fase`
--
ALTER TABLE `fase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabupaten_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kecamatan_kabupaten_id_foreign` (`kabupaten_id`);

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
-- Indexes for table `komoditas_lahan_gudang`
--
ALTER TABLE `komoditas_lahan_gudang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komoditas_lahan_gudang_komoditas_id_foreign` (`komoditas_id`),
  ADD KEY `komoditas_lahan_gudang_lahan_id_foreign` (`lahan_id`);

--
-- Indexes for table `lahan`
--
ALTER TABLE `lahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lahan_desa_id_foreign` (`desa_id`),
  ADD KEY `lahan_fase_id_foreign` (`fase_id`);

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
  ADD KEY `panen_lahan_id_foreign` (`lahan_id`),
  ADD KEY `panen_komoditas_id_foreign` (`komoditas_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fase`
--
ALTER TABLE `fase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komoditas_lahan_gudang`
--
ALTER TABLE `komoditas_lahan_gudang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lahan`
--
ALTER TABLE `lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
