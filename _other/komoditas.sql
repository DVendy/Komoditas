-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 08:47 PM
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
(1, 5, 1, 'Gust Inlet', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(2, 6, 1, 'Eliane Ridges', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(3, 7, 1, 'Alysson Islands', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(4, 8, 1, 'Vance Trafficway', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(5, 9, 1, 'Buckridge Underpass', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(6, 11, 2, 'Elsa Field', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(7, 12, 2, 'Floyd Bridge', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(8, 13, 2, 'Stark Oval', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(9, 14, 2, 'Manuela Squares', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(10, 15, 2, 'Keeling Well', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(11, 17, 3, 'Spencer Plains', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(12, 18, 3, 'Wisoky Corner', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(13, 19, 3, 'Shanahan Coves', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(14, 20, 3, 'Hegmann Greens', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(15, 21, 3, 'Laron Bypass', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17');

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

--
-- Dumping data for table `fase`
--

INSERT INTO `fase` (`id`, `name`, `urutan`, `other`, `created_at`, `updated_at`) VALUES
(1, 'Persiapan', 1, NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(2, 'Penanaman', 2, NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(3, 'Pemeliharaan', 3, NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(4, 'Panen', 4, NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(5, 'Kosong', 5, NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49');

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

--
-- Dumping data for table `history_komoditas_lahan`
--

INSERT INTO `history_komoditas_lahan` (`id`, `komoditas_lahan_id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '538.97', '453.35', '686.97', '433.42', '2019-04-07 17:00:00', 1, NULL, '137.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-07 13:17:46', '2019-04-07 13:20:20'),
(2, 6, 6, 6, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '577.10', '164.81', '248.83', '223.34', '2019-02-26 17:00:00', 137, NULL, '1293.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-07 13:21:38', '2019-04-07 13:24:56'),
(3, 276, 10, 276, 'ikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56.00', '6.00', '76.00', '97.00', '2019-04-15 17:00:00', 23, '2019-04-25 17:00:00', '6767.00', NULL, '2019-04-07 14:06:31', '2019-04-07 14:06:31'),
(4, 277, 1, 277, 'ternak', '36.00', NULL, '23.00', NULL, '2019-04-25 17:00:00', 66, '2019-04-29 17:00:00', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-11 08:19:37', '2019-04-11 08:19:37');

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
(1, 3, 1, 'Indiana', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50');

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
(1, 4, 1, 'Port Camilla', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(2, 10, 1, 'Macejkovicside', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(3, 16, 1, 'Soledadchester', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09');

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
(1, 'SAPI POTONG', 'ternak', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(2, 'KAMBING POTONG', 'ternak', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(3, 'SAPI PERAH', 'ternak', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(4, 'AYAM PEDAGING', 'ternak', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(5, 'JAGUNG HIBRIDA', 'tanaman', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(6, 'JAGUNG MANIS', 'tanaman', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(7, 'CABE RAWIT', 'tanaman', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(8, 'PADI', 'tanaman', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(9, 'IKAN LELE', 'ikan', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(10, 'IKAN NILA', 'ikan', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(11, 'BELUT', 'ikan', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49'),
(12, 'IKAN ……', 'ikan', NULL, '2019-04-12 11:26:49', '2019-04-12 11:26:49');

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

--
-- Dumping data for table `komoditas_lahan`
--

INSERT INTO `komoditas_lahan` (`id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '786.13', '493.20', '774.43', '309.30', '2019-01-23 13:16:35', 22, '2019-06-10 23:32:08', '73.00', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(2, 7, 2, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '788.79', '676.09', '779.49', '771.59', '2019-04-05 12:03:54', 170, '2019-06-12 07:54:37', '114.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(3, 5, 3, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '646.54', '131.93', '660.05', '733.56', '2019-01-22 23:02:39', 38, '2019-05-09 19:23:40', '21.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(4, 9, 4, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '384.84', '789.09', '597.54', '415.86', '2019-02-27 06:09:17', 159, '2019-04-21 20:34:00', '89.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(5, 12, 5, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '645.51', '279.85', '368.00', '302.35', '2019-02-26 15:46:59', 114, '2019-05-13 10:20:27', '155.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(6, 7, 6, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '769.35', '173.44', '245.70', '250.19', '2019-03-15 15:50:13', 68, '2019-06-12 11:13:16', '43.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(7, 9, 7, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '450.75', '320.17', '648.88', '235.61', '2019-01-30 01:31:24', 77, '2019-05-25 07:35:19', '169.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(8, 9, 8, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '454.69', '467.33', '614.52', '574.10', '2019-03-17 19:49:34', 182, '2019-05-15 01:58:41', '136.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(9, 5, 9, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '601.97', '683.83', '171.69', '376.54', '2019-03-19 12:59:00', 166, '2019-05-07 08:26:51', '196.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(10, 3, 10, 'ternak', '540.36', '714.84', '185.35', '485.17', '2019-03-21 16:06:42', 50, '2019-05-25 08:05:05', 66, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(11, 5, 11, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '240.16', '382.61', '469.76', '366.50', '2019-03-19 14:40:34', 150, '2019-05-23 10:53:25', '104.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(12, 2, 12, 'ternak', '791.60', '561.10', '617.00', '426.43', '2019-01-18 19:02:01', 47, '2019-04-13 01:53:08', 42, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(13, 11, 13, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '319.08', '730.62', '573.20', '666.24', '2019-03-07 15:42:37', 159, '2019-05-03 05:27:22', '161.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(14, 10, 14, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '103.88', '253.87', '278.50', '260.44', '2019-01-20 04:09:41', 71, '2019-04-18 04:35:35', '103.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(15, 2, 15, 'ternak', '695.03', '162.69', '527.87', '333.32', '2019-02-08 02:57:41', 156, '2019-06-07 03:37:21', 178, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(16, 6, 16, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '343.84', '737.77', '306.57', '163.13', '2019-03-09 01:13:35', 97, '2019-04-29 08:07:49', '146.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(17, 10, 17, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '258.71', '294.37', '758.78', '315.20', '2019-03-08 20:24:42', 141, '2019-05-19 09:54:59', '90.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(18, 1, 18, 'ternak', '319.43', '462.66', '647.52', '227.34', '2019-01-13 09:37:02', 191, '2019-04-21 07:06:57', 71, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(19, 8, 19, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '665.64', '494.85', '703.88', '138.92', '2019-03-22 05:45:07', 97, '2019-06-11 05:55:51', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(20, 12, 20, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '489.32', '752.42', '145.11', '665.83', '2019-02-17 01:57:59', 118, '2019-05-19 22:10:03', '25.00', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(21, 1, 21, 'ternak', '213.53', '732.83', '132.53', '434.16', '2019-03-27 03:58:45', 14, '2019-04-30 11:31:11', 56, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(22, 2, 22, 'ternak', '316.56', '367.14', '596.89', '200.29', '2019-04-06 13:05:47', 165, '2019-04-23 03:20:58', 110, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(23, 2, 23, 'ternak', '419.34', '315.78', '761.02', '279.17', '2019-01-29 20:34:33', 29, '2019-06-05 05:58:11', 162, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(24, 3, 24, 'ternak', '131.72', '664.10', '722.26', '486.02', '2019-02-26 10:41:24', 44, '2019-05-04 13:32:48', 23, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(25, 9, 25, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '139.87', '629.45', '517.61', '782.17', '2019-03-06 13:11:11', 188, '2019-05-08 10:16:45', '172.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(26, 11, 26, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '309.63', '602.35', '382.89', '586.02', '2019-03-30 09:04:08', 79, '2019-06-08 18:20:12', '154.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(27, 4, 27, 'ternak', '101.14', '616.93', '457.07', '398.43', '2019-01-30 16:56:11', 198, '2019-05-06 09:53:21', 88, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(28, 9, 28, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '569.87', '692.01', '770.17', '630.28', '2019-03-11 22:49:12', 86, '2019-04-30 07:35:41', '106.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(29, 9, 29, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '371.26', '370.39', '680.41', '375.00', '2019-01-24 20:57:45', 110, '2019-04-21 00:28:06', '40.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(30, 9, 30, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '365.35', '561.00', '740.78', '745.40', '2019-03-31 08:41:11', 142, '2019-04-14 06:20:03', '165.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(31, 4, 31, 'ternak', '725.14', '330.83', '796.42', '777.39', '2019-04-10 19:01:58', 103, '2019-04-23 10:20:24', 125, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(32, 12, 32, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '655.45', '618.59', '581.46', '537.74', '2019-02-15 22:05:06', 49, '2019-04-28 13:44:22', '175.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(33, 4, 33, 'ternak', '569.45', '347.14', '345.98', '758.71', '2019-01-29 03:04:50', 71, '2019-05-10 12:11:20', 68, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(34, 5, 34, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '252.96', '632.14', '709.88', '759.33', '2019-02-10 17:17:11', 189, '2019-04-21 21:54:14', '27.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(35, 7, 35, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '634.02', '653.99', '401.99', '258.26', '2019-04-06 05:35:09', 175, '2019-05-29 08:57:56', '178.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(36, 8, 36, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '416.91', '449.33', '385.44', '214.96', '2019-02-19 19:07:46', 192, '2019-04-28 06:28:22', '187.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(37, 2, 37, 'ternak', '326.97', '166.45', '453.03', '417.32', '2019-03-23 18:22:58', 130, '2019-05-12 05:45:04', 77, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(38, 9, 38, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '730.06', '208.76', '651.75', '161.35', '2019-01-24 19:24:07', 176, '2019-05-05 13:48:24', '107.00', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(39, 5, 39, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '216.97', '721.63', '570.96', '162.03', '2019-03-27 05:14:05', 171, '2019-04-24 08:02:22', '11.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(40, 2, 40, 'ternak', '126.11', '500.22', '292.13', '481.70', '2019-01-16 15:51:48', 63, '2019-05-15 02:31:21', 193, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(41, 3, 41, 'ternak', '346.00', '617.12', '203.22', '271.10', '2019-03-23 00:07:07', 141, '2019-04-13 13:55:56', 200, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(42, 9, 42, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '121.87', '458.24', '279.42', '446.45', '2019-04-06 04:42:37', 77, '2019-05-02 04:31:19', '165.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(43, 9, 43, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '621.46', '288.52', '600.03', '229.10', '2019-04-08 19:41:45', 153, '2019-06-04 03:56:54', '159.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(44, 4, 44, 'ternak', '563.33', '666.38', '419.18', '622.77', '2019-03-07 05:17:39', 112, '2019-05-01 16:06:47', 34, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(45, 11, 45, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '779.66', '627.78', '214.35', '469.35', '2019-02-08 04:11:13', 109, '2019-04-26 04:56:09', '157.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(46, 8, 46, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '434.47', '674.52', '164.82', '784.48', '2019-01-16 02:48:53', 37, '2019-05-10 19:45:08', '136.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(47, 2, 47, 'ternak', '567.14', '278.18', '283.18', '626.73', '2019-02-24 18:35:52', 188, '2019-05-30 05:45:10', 46, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(48, 7, 48, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '382.12', '734.35', '452.13', '493.73', '2019-03-12 06:57:54', 117, '2019-05-14 00:18:00', '12.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(49, 12, 49, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '161.17', '242.27', '605.89', '127.61', '2019-03-04 23:15:41', 115, '2019-04-16 20:30:07', '170.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(50, 11, 50, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '217.23', '281.78', '433.80', '192.29', '2019-02-17 07:12:35', 52, '2019-04-20 12:43:35', '141.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(51, 12, 51, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '139.63', '167.51', '244.66', '518.32', '2019-02-13 22:34:57', 132, '2019-04-21 06:41:29', '61.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(52, 2, 52, 'ternak', '150.95', '256.56', '618.92', '291.87', '2019-04-05 17:20:54', 85, '2019-05-07 02:56:18', 156, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(53, 8, 53, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '678.47', '144.87', '662.85', '476.12', '2019-01-22 09:36:35', 192, '2019-06-05 14:09:21', '148.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(54, 3, 54, 'ternak', '364.72', '127.75', '149.10', '337.86', '2019-03-14 04:53:01', 77, '2019-06-09 21:48:37', 13, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(55, 5, 55, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '717.19', '579.41', '506.37', '131.07', '2019-03-26 14:14:21', 62, '2019-04-29 23:51:22', '183.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(56, 9, 56, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '452.16', '467.44', '187.29', '626.32', '2019-04-03 18:09:31', 137, '2019-04-20 15:52:46', '159.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(57, 10, 57, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '154.11', '347.12', '368.94', '489.40', '2019-01-14 11:07:35', 119, '2019-05-03 04:31:27', '96.00', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(58, 2, 58, 'ternak', '298.88', '253.54', '204.22', '503.06', '2019-03-09 12:37:30', 89, '2019-04-29 01:17:53', 182, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(59, 1, 59, 'ternak', '574.22', '513.43', '128.35', '753.89', '2019-04-01 02:38:04', 117, '2019-05-15 22:53:34', 195, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(60, 9, 60, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '216.78', '388.34', '444.80', '277.98', '2019-04-06 18:20:12', 46, '2019-04-14 10:21:29', '14.00', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(61, 12, 61, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '201.30', '123.08', '424.92', '488.93', '2019-01-17 19:28:52', 73, '2019-05-23 15:48:44', '162.00', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(62, 2, 62, 'ternak', '737.32', '586.72', '209.51', '627.75', '2019-03-15 13:28:34', 95, '2019-06-03 02:21:17', 32, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(63, 7, 63, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '403.08', '671.76', '599.27', '397.93', '2019-03-17 16:11:43', 109, '2019-05-15 09:27:01', '123.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(64, 3, 64, 'ternak', '113.84', '170.73', '155.98', '124.17', '2019-03-23 15:22:31', 193, '2019-06-10 21:33:14', 28, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(65, 3, 65, 'ternak', '121.82', '491.64', '587.56', '291.77', '2019-02-01 14:51:52', 190, '2019-04-30 08:53:57', 135, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(66, 8, 66, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '389.70', '518.76', '110.88', '326.46', '2019-03-27 09:43:29', 184, '2019-05-18 15:55:36', '19.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(67, 8, 67, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '241.70', '148.77', '687.13', '572.34', '2019-02-13 11:51:34', 191, '2019-04-27 14:14:03', '88.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(68, 11, 68, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '748.02', '221.32', '448.01', '172.56', '2019-02-28 09:42:18', 89, '2019-05-30 23:56:36', '25.00', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(69, 7, 69, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '341.82', '306.12', '325.10', '557.34', '2019-01-12 19:47:04', 130, '2019-05-30 08:14:03', '111.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(70, 9, 70, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '590.09', '578.47', '660.00', '401.59', '2019-01-29 11:49:22', 197, '2019-04-14 20:15:35', '17.00', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(71, 4, 71, 'ternak', '235.27', '275.61', '386.52', '617.90', '2019-02-20 05:39:11', 142, '2019-05-16 00:08:07', 141, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(72, 9, 72, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '295.25', '285.07', '508.33', '687.11', '2019-03-01 12:36:57', 31, '2019-05-07 09:01:50', '21.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(73, 11, 73, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '465.62', '278.80', '774.93', '438.38', '2019-03-29 22:37:32', 158, '2019-04-30 13:36:50', '135.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(74, 11, 74, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '233.67', '214.01', '354.18', '357.15', '2019-02-23 01:10:27', 89, '2019-04-15 01:46:40', '180.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(75, 7, 75, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '623.20', '329.16', '694.46', '218.89', '2019-02-11 06:51:57', 114, '2019-05-16 11:29:39', '53.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(76, 8, 76, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '552.88', '334.33', '581.21', '426.56', '2019-02-28 08:33:55', 22, '2019-06-11 04:51:14', '191.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(77, 10, 77, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '231.36', '794.54', '140.12', '547.00', '2019-02-09 14:50:06', 89, '2019-05-03 18:38:55', '134.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(78, 5, 78, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '565.86', '133.78', '198.08', '771.01', '2019-01-17 11:58:36', 88, '2019-06-05 14:19:22', '35.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(79, 2, 79, 'ternak', '309.43', '450.87', '166.08', '223.01', '2019-02-15 14:27:25', 106, '2019-04-12 19:17:11', 195, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(80, 1, 80, 'ternak', '790.88', '784.76', '571.31', '226.18', '2019-02-25 09:32:05', 10, '2019-05-25 21:56:37', 185, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(81, 4, 81, 'ternak', '645.54', '187.84', '311.36', '477.47', '2019-01-31 12:32:58', 184, '2019-06-08 17:45:28', 64, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(82, 12, 82, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '493.91', '287.29', '289.37', '662.96', '2019-01-25 11:32:26', 185, '2019-04-27 00:25:48', '136.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(83, 9, 83, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '329.46', '340.15', '602.62', '644.54', '2019-02-14 23:37:00', 59, '2019-05-28 22:26:53', '130.00', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(84, 5, 84, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '171.77', '524.10', '759.26', '690.44', '2019-03-21 11:28:04', 188, '2019-05-17 06:47:06', '59.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(85, 8, 85, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '792.11', '388.96', '633.10', '214.43', '2019-03-29 00:35:19', 59, '2019-04-21 13:41:28', '38.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(86, 1, 86, 'ternak', '155.40', '632.79', '205.76', '309.97', '2019-01-22 07:13:32', 50, '2019-05-05 20:14:07', 47, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(87, 1, 87, 'ternak', '494.43', '342.82', '512.79', '317.44', '2019-01-25 03:47:19', 76, '2019-05-15 01:54:01', 115, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(88, 1, 88, 'ternak', '198.05', '669.99', '414.55', '522.48', '2019-02-10 05:17:31', 159, '2019-05-01 21:04:40', 175, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(89, 9, 89, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '389.10', '578.78', '449.81', '350.32', '2019-02-13 20:02:35', 79, '2019-06-03 23:10:22', '146.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(90, 12, 90, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '518.44', '601.38', '692.85', '674.86', '2019-02-12 05:15:03', 54, '2019-06-04 17:40:54', '50.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(91, 3, 91, 'ternak', '310.77', '382.82', '259.26', '531.68', '2019-02-11 07:15:49', 184, '2019-05-22 14:06:42', 44, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(92, 12, 92, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '431.11', '614.87', '638.43', '270.53', '2019-03-07 06:24:18', 132, '2019-05-14 13:42:59', '194.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(93, 8, 93, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '799.34', '333.02', '374.70', '302.77', '2019-03-24 20:45:31', 10, '2019-05-30 23:28:29', '70.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(94, 9, 94, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '610.64', '139.87', '357.81', '707.59', '2019-02-11 04:55:02', 19, '2019-05-30 15:19:10', '102.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(95, 5, 95, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '653.07', '243.60', '228.12', '126.91', '2019-02-22 10:35:18', 40, '2019-04-22 13:39:59', '90.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(96, 1, 96, 'ternak', '250.85', '279.30', '382.13', '649.77', '2019-04-10 21:26:25', 57, '2019-04-28 09:57:35', 35, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(97, 10, 97, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '481.85', '521.85', '268.64', '219.22', '2019-02-10 21:47:04', 139, '2019-04-22 17:53:57', '101.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(98, 3, 98, 'ternak', '605.15', '622.63', '528.40', '133.54', '2019-03-03 12:11:19', 165, '2019-06-06 16:02:00', 16, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(99, 5, 99, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '311.45', '119.51', '627.76', '223.05', '2019-01-23 20:39:21', 149, '2019-05-24 03:21:41', '30.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(100, 11, 100, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '139.52', '584.96', '614.90', '506.53', '2019-03-20 18:52:25', 27, '2019-05-25 09:22:59', '112.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(101, 5, 101, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '609.15', '262.41', '329.36', '610.96', '2019-01-26 06:16:09', 55, '2019-04-23 12:57:57', '80.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(102, 10, 102, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '432.56', '313.05', '569.81', '449.28', '2019-03-12 20:36:02', 114, '2019-06-08 20:29:54', '160.00', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(103, 1, 103, 'ternak', '710.41', '510.66', '326.99', '790.37', '2019-02-18 07:30:46', 64, '2019-04-24 10:27:02', 185, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(104, 5, 104, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '348.72', '369.81', '414.22', '541.85', '2019-02-02 00:31:27', 22, '2019-05-04 08:22:07', '95.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(105, 5, 105, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '399.76', '403.29', '145.95', '718.30', '2019-02-18 18:21:48', 188, '2019-04-19 23:50:05', '48.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(106, 5, 106, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '414.50', '506.94', '472.87', '309.72', '2019-04-09 12:40:43', 140, '2019-05-26 13:05:01', '170.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(107, 12, 107, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '235.31', '533.38', '533.60', '468.40', '2019-02-01 04:30:10', 14, '2019-05-04 10:24:34', '106.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(108, 3, 108, 'ternak', '318.53', '416.10', '393.77', '226.31', '2019-02-05 04:37:00', 135, '2019-05-20 07:42:13', 13, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(109, 2, 109, 'ternak', '472.39', '728.52', '326.02', '212.35', '2019-02-01 19:27:43', 54, '2019-04-16 05:27:01', 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(110, 7, 110, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '702.60', '582.04', '720.84', '684.63', '2019-03-30 17:08:03', 153, '2019-04-22 00:29:42', '112.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(111, 10, 111, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '102.45', '404.63', '789.91', '392.83', '2019-02-28 03:41:58', 85, '2019-04-18 19:03:55', '190.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(112, 8, 112, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '737.46', '328.77', '615.31', '349.91', '2019-03-04 05:46:17', 87, '2019-04-24 03:26:59', '13.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(113, 12, 113, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '761.82', '360.88', '687.75', '557.75', '2019-03-29 00:51:37', 57, '2019-05-03 01:52:20', '125.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(114, 11, 114, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '417.01', '446.68', '777.03', '598.25', '2019-03-11 17:36:07', 81, '2019-06-03 17:30:52', '87.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(115, 4, 115, 'ternak', '253.80', '174.03', '319.58', '341.72', '2019-02-27 05:10:30', 112, '2019-05-10 19:21:23', 54, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(116, 10, 116, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '373.81', '621.83', '731.87', '610.31', '2019-02-25 15:56:39', 199, '2019-05-10 09:01:48', '55.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(117, 2, 117, 'ternak', '250.87', '144.18', '429.61', '275.13', '2019-01-21 05:26:16', 140, '2019-05-17 21:28:00', 68, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(118, 9, 118, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '575.61', '300.95', '608.01', '331.82', '2019-03-02 06:59:12', 37, '2019-04-18 00:18:18', '27.00', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(119, 2, 119, 'ternak', '450.96', '157.47', '679.92', '562.32', '2019-03-01 09:37:47', 189, '2019-05-23 14:32:13', 13, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(120, 7, 120, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '425.98', '141.60', '693.05', '751.93', '2019-03-19 13:50:36', 71, '2019-04-20 20:39:10', '59.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(121, 5, 121, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '174.83', '694.37', '525.67', '583.67', '2019-03-31 15:48:09', 46, '2019-04-25 14:27:08', '187.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(122, 9, 122, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '217.63', '266.51', '140.61', '785.03', '2019-03-11 20:53:44', 86, '2019-05-04 07:41:46', '57.00', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(123, 6, 123, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '505.42', '524.55', '756.14', '426.44', '2019-02-26 16:13:16', 96, '2019-04-21 23:58:31', '124.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(124, 11, 124, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '267.34', '717.02', '698.38', '626.68', '2019-04-03 01:20:13', 43, '2019-05-08 23:55:30', '173.00', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(125, 7, 125, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '145.58', '192.39', '502.17', '705.49', '2019-01-22 06:49:55', 160, '2019-05-19 10:30:09', '144.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(126, 8, 126, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '778.59', '197.59', '254.45', '317.04', '2019-02-27 15:29:34', 180, '2019-05-15 08:50:56', '110.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(127, 9, 127, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '492.37', '535.10', '442.65', '258.78', '2019-02-22 15:22:57', 180, '2019-05-17 11:27:08', '200.00', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(128, 4, 128, 'ternak', '239.13', '581.57', '478.18', '233.68', '2019-02-27 04:23:18', 58, '2019-04-29 18:35:37', 103, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(129, 6, 129, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '657.77', '700.37', '512.15', '675.40', '2019-03-19 11:05:00', 54, '2019-05-26 07:45:53', '134.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(130, 8, 130, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '780.33', '228.03', '652.53', '568.73', '2019-02-04 11:19:15', 198, '2019-05-27 08:26:28', '158.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(131, 9, 131, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '506.62', '468.68', '761.93', '516.86', '2019-01-25 11:03:15', 167, '2019-04-23 08:51:07', '93.00', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(132, 2, 132, 'ternak', '139.05', '521.35', '380.18', '481.71', '2019-04-01 20:07:19', 79, '2019-04-23 05:43:01', 196, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(133, 5, 133, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '483.98', '363.39', '662.97', '475.80', '2019-04-06 21:00:21', 100, '2019-04-30 14:11:42', '64.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(134, 12, 134, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '208.54', '287.41', '177.77', '762.64', '2019-03-23 09:42:05', 160, '2019-05-20 05:48:56', '95.00', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(135, 3, 135, 'ternak', '298.44', '442.40', '392.32', '674.50', '2019-04-07 04:10:12', 89, '2019-04-25 18:41:40', 105, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(136, 4, 136, 'ternak', '143.95', '444.84', '158.20', '609.73', '2019-04-03 03:38:27', 26, '2019-05-29 13:06:38', 114, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(137, 8, 137, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '429.61', '565.78', '129.72', '386.09', '2019-01-24 15:47:50', 137, '2019-06-07 17:31:05', '158.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(138, 10, 138, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '396.11', '662.64', '221.47', '193.36', '2019-01-25 07:49:10', 63, '2019-05-23 17:49:21', '115.00', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(139, 1, 139, 'ternak', '614.04', '439.26', '285.62', '320.02', '2019-03-02 21:06:09', 39, '2019-04-13 07:13:22', 197, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(140, 9, 140, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '657.69', '598.31', '410.34', '469.45', '2019-01-27 15:11:28', 133, '2019-06-02 09:13:47', '75.00', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(141, 2, 141, 'ternak', '522.20', '760.08', '706.40', '644.21', '2019-04-06 22:01:11', 172, '2019-05-20 06:24:22', 75, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(142, 7, 142, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '246.51', '632.46', '519.17', '400.02', '2019-01-15 20:44:00', 36, '2019-04-15 17:52:12', '111.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(143, 3, 143, 'ternak', '260.62', '116.51', '685.77', '583.40', '2019-03-19 13:08:30', 74, '2019-05-21 00:53:22', 81, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(144, 8, 144, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '245.85', '437.90', '412.15', '210.38', '2019-03-08 09:44:46', 72, '2019-05-22 01:09:05', '36.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(145, 5, 145, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '358.59', '168.86', '287.18', '640.69', '2019-01-12 22:43:19', 131, '2019-04-18 18:48:50', '157.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(146, 6, 146, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '580.40', '629.93', '409.41', '569.99', '2019-01-15 09:19:26', 199, '2019-05-01 08:30:27', '90.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(147, 3, 147, 'ternak', '527.78', '302.05', '463.52', '739.40', '2019-03-21 17:13:45', 122, '2019-05-24 13:17:40', 91, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(148, 6, 148, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '428.88', '758.96', '756.29', '692.36', '2019-04-09 13:57:16', 151, '2019-04-22 10:57:25', '101.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(149, 3, 149, 'ternak', '145.26', '331.31', '426.74', '163.73', '2019-02-02 23:04:26', 42, '2019-05-20 08:12:00', 11, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(150, 4, 150, 'ternak', '506.36', '209.94', '567.32', '241.39', '2019-03-28 03:14:35', 108, '2019-04-29 23:12:25', 166, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(151, 7, 151, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '109.14', '649.05', '525.77', '592.67', '2019-02-20 04:03:26', 92, '2019-04-30 00:41:12', '129.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(152, 2, 152, 'ternak', '757.17', '541.15', '175.72', '454.05', '2019-01-26 04:35:52', 149, '2019-05-24 22:56:43', 24, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(153, 3, 153, 'ternak', '724.08', '380.27', '252.03', '693.46', '2019-02-01 01:55:31', 199, '2019-05-30 02:52:28', 138, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(154, 9, 154, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '670.91', '457.10', '776.24', '389.41', '2019-02-27 15:42:04', 65, '2019-05-21 18:00:03', '13.00', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(155, 2, 155, 'ternak', '481.17', '456.06', '652.64', '720.70', '2019-02-15 18:28:37', 46, '2019-05-09 01:36:49', 176, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(156, 10, 156, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '448.70', '153.11', '498.85', '167.50', '2019-01-20 15:56:27', 17, '2019-05-26 00:51:47', '131.00', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(157, 5, 157, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '106.68', '103.41', '772.50', '348.22', '2019-03-10 04:11:25', 13, '2019-05-17 07:02:29', '88.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(158, 3, 158, 'ternak', '136.16', '119.16', '240.72', '521.80', '2019-01-18 00:13:57', 110, '2019-05-25 19:48:10', 112, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(159, 5, 159, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '750.73', '476.71', '517.13', '331.27', '2019-02-24 22:39:15', 43, '2019-04-15 08:07:10', '192.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(160, 6, 160, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '288.92', '436.43', '557.39', '132.61', '2019-02-27 16:21:12', 152, '2019-04-17 22:49:09', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(161, 7, 161, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '759.64', '337.39', '532.27', '126.17', '2019-03-11 04:00:17', 40, '2019-05-26 10:03:04', '120.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(162, 4, 162, 'ternak', '549.58', '223.00', '392.57', '165.98', '2019-02-17 14:23:54', 158, '2019-05-14 11:26:11', 162, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(163, 9, 163, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '694.90', '255.52', '330.43', '316.68', '2019-02-25 21:16:44', 53, '2019-05-29 03:14:16', '172.00', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(164, 8, 164, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '373.81', '259.09', '676.76', '529.30', '2019-04-11 06:51:59', 41, '2019-06-03 09:35:10', '101.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(165, 7, 165, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '382.48', '716.65', '621.80', '618.31', '2019-02-22 15:07:58', 147, '2019-04-21 05:18:21', '180.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(166, 2, 166, 'ternak', '424.96', '532.60', '533.55', '776.04', '2019-03-03 07:57:39', 79, '2019-04-24 13:07:50', 82, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(167, 10, 167, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '736.42', '328.06', '669.49', '381.80', '2019-02-26 18:55:00', 105, '2019-05-29 18:03:49', '34.00', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(168, 4, 168, 'ternak', '450.34', '311.23', '554.00', '507.97', '2019-01-30 10:07:39', 173, '2019-05-05 12:16:20', 58, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(169, 7, 169, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '278.77', '190.57', '369.84', '738.26', '2019-03-24 16:52:08', 37, '2019-05-23 17:21:58', '168.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(170, 11, 170, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '778.50', '563.24', '666.61', '459.21', '2019-04-08 17:19:46', 143, '2019-05-10 06:23:53', '182.00', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(171, 9, 171, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '504.16', '733.78', '390.69', '764.27', '2019-02-25 16:33:45', 152, '2019-05-04 05:00:44', '139.00', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(172, 5, 172, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '171.33', '672.49', '268.07', '159.18', '2019-02-25 11:05:16', 65, '2019-05-09 04:55:39', '159.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(173, 12, 173, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '439.96', '578.14', '697.98', '364.65', '2019-04-11 12:12:12', 155, '2019-04-21 17:14:37', '113.00', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(174, 2, 174, 'ternak', '510.05', '161.69', '355.10', '357.66', '2019-02-05 08:33:31', 25, '2019-05-12 15:26:40', 39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(175, 6, 175, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '756.62', '457.53', '481.19', '339.45', '2019-01-26 09:41:17', 175, '2019-05-23 21:02:11', '48.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(176, 10, 176, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '576.24', '273.58', '715.46', '262.84', '2019-01-17 17:07:19', 188, '2019-05-10 09:54:15', '89.00', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(177, 6, 177, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '412.45', '119.40', '168.89', '355.95', '2019-01-19 14:25:12', 178, '2019-04-19 10:44:31', '115.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(178, 2, 178, 'ternak', '571.14', '300.39', '337.64', '419.56', '2019-03-25 23:42:32', 15, '2019-04-23 18:12:32', 114, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(179, 7, 179, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '298.41', '463.51', '310.67', '216.91', '2019-01-30 03:42:16', 141, '2019-04-19 00:39:30', '108.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(180, 5, 180, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '639.20', '262.16', '327.45', '259.38', '2019-03-13 19:49:15', 192, '2019-05-02 21:04:57', '199.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(181, 2, 181, 'ternak', '158.31', '722.35', '289.70', '394.08', '2019-02-17 18:23:19', 131, '2019-05-22 12:38:40', 35, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(182, 4, 182, 'ternak', '189.56', '651.97', '218.78', '422.16', '2019-02-23 19:39:47', 26, '2019-06-12 09:59:56', 20, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(183, 10, 183, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '647.27', '581.01', '322.43', '215.30', '2019-01-30 20:05:24', 59, '2019-05-17 02:47:48', '62.00', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(184, 8, 184, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '367.02', '710.19', '343.49', '620.83', '2019-03-20 02:35:32', 111, '2019-06-10 14:19:54', '114.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(185, 8, 185, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '109.67', '705.08', '719.32', '375.96', '2019-03-09 03:15:25', 142, '2019-04-28 14:16:51', '91.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(186, 6, 186, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '536.89', '443.16', '694.42', '684.77', '2019-03-08 16:35:15', 169, '2019-04-25 13:01:38', '15.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(187, 6, 187, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '203.40', '348.44', '603.33', '129.70', '2019-03-20 14:05:20', 184, '2019-05-01 20:53:41', '195.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(188, 12, 188, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '621.69', '548.00', '732.83', '128.19', '2019-04-11 21:05:12', 186, '2019-05-26 15:42:03', '26.00', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(189, 4, 189, 'ternak', '377.57', '573.22', '523.41', '365.69', '2019-01-19 23:14:15', 110, '2019-05-07 00:32:53', 104, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02');
INSERT INTO `komoditas_lahan` (`id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(190, 1, 190, 'ternak', '129.66', '337.16', '398.57', '500.55', '2019-01-26 22:42:02', 26, '2019-04-21 16:38:45', 180, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(191, 10, 191, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '557.47', '683.51', '156.47', '538.82', '2019-03-06 09:48:52', 28, '2019-04-25 00:15:35', '168.00', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(192, 2, 192, 'ternak', '471.78', '684.94', '468.85', '332.00', '2019-01-21 06:30:10', 29, '2019-04-19 19:06:06', 196, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(193, 8, 193, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '165.42', '697.50', '239.87', '135.98', '2019-03-20 14:58:52', 152, '2019-04-30 03:58:55', '180.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(194, 12, 194, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '333.24', '541.58', '134.65', '715.89', '2019-03-24 14:47:29', 190, '2019-05-13 03:56:16', '32.00', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(195, 10, 195, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '460.87', '692.37', '728.00', '453.17', '2019-02-07 23:13:23', 89, '2019-05-12 09:46:35', '171.00', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(196, 5, 196, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '139.32', '122.94', '321.02', '121.42', '2019-03-13 01:21:18', 165, '2019-05-26 00:54:17', '92.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(197, 1, 197, 'ternak', '175.68', '261.75', '682.83', '624.85', '2019-01-21 02:33:28', 174, '2019-05-14 15:01:12', 10, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(198, 6, 198, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '358.14', '172.65', '780.74', '645.17', '2019-02-28 09:22:10', 105, '2019-05-02 00:34:11', '167.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(199, 4, 199, 'ternak', '680.50', '129.66', '158.07', '435.56', '2019-03-07 07:14:35', 59, '2019-05-02 13:05:45', 155, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(200, 6, 200, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '741.34', '655.10', '783.81', '456.47', '2019-02-08 10:49:19', 141, '2019-04-25 10:21:11', '143.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(201, 11, 201, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '525.58', '492.77', '378.40', '372.89', '2019-03-02 08:20:23', 163, '2019-05-22 05:16:54', '33.00', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(202, 4, 202, 'ternak', '336.61', '357.03', '636.76', '290.66', '2019-02-25 21:10:24', 140, '2019-04-17 13:14:03', 173, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(203, 8, 203, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '513.45', '468.78', '120.90', '761.26', '2019-01-27 20:19:49', 124, '2019-04-15 02:16:12', '170.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(204, 4, 204, 'ternak', '701.42', '571.44', '492.78', '169.71', '2019-03-08 18:00:53', 160, '2019-04-23 04:40:21', 99, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(205, 2, 205, 'ternak', '433.42', '287.59', '656.11', '617.88', '2019-03-13 03:33:25', 138, '2019-06-01 18:33:20', 79, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(206, 11, 206, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '288.72', '686.60', '159.95', '399.43', '2019-03-03 12:08:20', 130, '2019-04-22 09:52:34', '185.00', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(207, 9, 207, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '763.86', '269.89', '661.59', '669.56', '2019-03-22 20:32:46', 93, '2019-05-30 14:17:39', '91.00', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(208, 12, 208, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '529.19', '781.62', '788.21', '300.45', '2019-01-15 19:36:14', 73, '2019-05-30 01:18:23', '116.00', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(209, 9, 209, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '739.91', '203.07', '792.26', '616.79', '2019-01-28 22:21:11', 28, '2019-05-14 05:01:29', '187.00', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(210, 3, 210, 'ternak', '637.07', '627.88', '204.76', '498.05', '2019-02-15 20:59:34', 154, '2019-05-27 10:25:41', 118, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(211, 9, 211, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '686.42', '132.52', '284.57', '504.22', '2019-01-27 00:34:15', 125, '2019-04-15 10:08:50', '181.00', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(212, 5, 212, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '627.52', '797.14', '256.80', '204.33', '2019-02-24 18:18:58', 134, '2019-06-03 17:24:53', '125.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(213, 9, 213, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '219.80', '623.30', '228.35', '456.59', '2019-01-13 05:58:26', 156, '2019-06-02 13:17:43', '39.00', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(214, 8, 214, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '310.32', '488.84', '761.10', '198.90', '2019-02-01 03:06:50', 45, '2019-05-24 08:25:56', '57.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(215, 10, 215, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '589.59', '185.28', '557.34', '323.87', '2019-03-11 15:56:14', 187, '2019-05-28 02:14:17', '145.00', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(216, 5, 216, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '649.26', '778.08', '504.21', '147.07', '2019-03-17 18:26:35', 56, '2019-04-22 02:31:25', '24.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(217, 2, 217, 'ternak', '330.56', '267.31', '755.89', '393.44', '2019-01-24 21:15:28', 133, '2019-04-19 11:12:45', 111, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(218, 2, 218, 'ternak', '112.00', '306.26', '197.34', '528.32', '2019-04-10 12:03:57', 174, '2019-05-01 00:01:37', 85, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(219, 12, 219, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '667.39', '706.15', '435.44', '173.03', '2019-01-26 22:33:50', 138, '2019-04-24 22:03:11', '139.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(220, 3, 220, 'ternak', '560.50', '561.82', '464.98', '740.30', '2019-01-28 18:47:00', 12, '2019-04-14 01:16:21', 106, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(221, 8, 221, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '510.01', '699.91', '341.84', '283.09', '2019-01-14 19:22:33', 34, '2019-06-07 20:40:13', '152.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(222, 1, 222, 'ternak', '378.84', '544.92', '554.31', '540.04', '2019-03-31 14:10:53', 121, '2019-04-22 17:18:58', 194, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(223, 5, 223, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '177.95', '167.88', '312.30', '757.23', '2019-02-05 00:33:53', 142, '2019-06-06 04:13:08', '172.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(224, 8, 224, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '626.79', '628.81', '658.35', '585.18', '2019-01-26 04:52:39', 66, '2019-06-06 00:01:25', '54.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(225, 6, 225, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '582.61', '583.91', '577.19', '261.98', '2019-03-06 20:40:39', 123, '2019-06-04 11:49:16', '162.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(226, 12, 226, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '579.30', '635.14', '411.00', '612.47', '2019-03-05 06:31:05', 187, '2019-06-10 14:18:25', '174.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(227, 10, 227, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '204.40', '357.45', '428.67', '340.61', '2019-02-08 14:06:15', 65, '2019-05-04 20:46:37', '106.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(228, 9, 228, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '353.37', '542.14', '409.31', '724.18', '2019-02-27 07:11:37', 193, '2019-06-09 06:38:59', '128.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(229, 3, 229, 'ternak', '514.75', '454.37', '643.66', '413.86', '2019-03-31 17:34:38', 86, '2019-04-16 22:23:31', 178, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(230, 4, 230, 'ternak', '739.73', '610.38', '429.86', '224.68', '2019-01-19 11:19:03', 28, '2019-06-07 14:19:32', 86, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(231, 2, 231, 'ternak', '463.98', '778.32', '169.94', '336.67', '2019-01-21 16:07:58', 75, '2019-05-23 22:14:28', 188, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(232, 11, 232, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '522.89', '428.78', '738.28', '398.49', '2019-04-06 20:33:23', 184, '2019-05-11 07:03:50', '58.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(233, 1, 233, 'ternak', '289.05', '257.32', '559.17', '492.67', '2019-02-01 03:35:45', 181, '2019-04-30 01:36:35', 153, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(234, 4, 234, 'ternak', '318.21', '776.62', '716.92', '717.83', '2019-03-04 02:18:19', 41, '2019-05-15 19:24:13', 57, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(235, 5, 235, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '776.74', '394.71', '454.66', '468.73', '2019-02-20 18:05:50', 143, '2019-04-15 05:40:28', '108.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(236, 4, 236, 'ternak', '370.73', '572.43', '371.52', '470.12', '2019-03-18 10:41:57', 67, '2019-05-11 23:45:00', 148, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(237, 12, 237, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '757.99', '360.44', '765.75', '620.94', '2019-03-21 18:10:22', 185, '2019-05-09 04:21:37', '39.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(238, 10, 238, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '265.95', '557.93', '187.53', '588.22', '2019-04-11 09:29:46', 21, '2019-05-03 21:11:36', '108.00', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(239, 4, 239, 'ternak', '117.84', '325.24', '431.57', '177.29', '2019-03-08 18:30:42', 62, '2019-04-15 20:25:04', 46, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(240, 12, 240, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '442.02', '481.07', '744.48', '303.39', '2019-01-30 11:56:30', 77, '2019-05-17 09:13:14', '135.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(241, 10, 241, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '145.25', '675.34', '184.43', '252.09', '2019-02-01 19:55:13', 120, '2019-04-28 12:47:40', '150.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(242, 8, 242, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '235.82', '610.69', '374.08', '745.20', '2019-02-12 23:30:44', 75, '2019-05-13 18:03:23', '69.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(243, 11, 243, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '657.79', '263.19', '155.42', '362.28', '2019-03-11 14:34:11', 181, '2019-05-17 04:23:50', '94.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(244, 3, 244, 'ternak', '685.09', '285.85', '644.38', '686.65', '2019-03-25 20:41:20', 65, '2019-05-09 04:55:59', 155, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(245, 11, 245, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '169.59', '322.27', '657.14', '244.45', '2019-03-04 12:41:20', 61, '2019-05-12 00:48:00', '69.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(246, 10, 246, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '747.36', '636.74', '190.98', '136.72', '2019-01-20 12:40:04', 122, '2019-04-18 10:46:14', '107.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(247, 10, 247, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '601.49', '765.29', '505.03', '645.90', '2019-03-23 02:28:12', 166, '2019-05-24 16:36:49', '43.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(248, 12, 248, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '710.01', '729.88', '312.89', '316.03', '2019-02-12 00:34:17', 133, '2019-05-23 09:11:58', '161.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(249, 12, 249, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '610.88', '695.58', '728.13', '574.89', '2019-03-02 07:51:35', 170, '2019-05-03 02:17:54', '129.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(250, 10, 250, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '533.51', '198.18', '351.90', '564.24', '2019-03-02 22:06:05', 135, '2019-05-18 18:03:20', '91.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(251, 9, 251, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '797.23', '296.41', '114.25', '151.88', '2019-03-15 21:18:23', 61, '2019-05-17 12:41:57', '31.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(252, 7, 252, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '232.90', '756.51', '182.75', '460.85', '2019-03-08 20:39:32', 105, '2019-05-13 18:00:44', '200.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(253, 6, 253, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '771.09', '740.35', '501.37', '630.99', '2019-02-10 01:46:16', 41, '2019-05-20 08:23:34', '16.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(254, 11, 254, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '728.95', '457.82', '781.09', '401.34', '2019-01-17 02:38:01', 162, '2019-06-11 09:09:42', '138.00', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(255, 10, 255, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '711.52', '592.23', '552.21', '531.60', '2019-03-09 00:05:27', 28, '2019-05-14 06:40:29', '162.00', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(256, 3, 256, 'ternak', '453.28', '687.93', '249.60', '182.18', '2019-01-27 06:46:37', 31, '2019-06-10 06:41:25', 90, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(257, 6, 257, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '503.06', '700.60', '186.96', '184.89', '2019-03-10 04:14:49', 65, '2019-05-27 01:45:19', '25.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(258, 8, 258, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '718.50', '792.52', '372.01', '363.65', '2019-01-15 18:39:44', 79, '2019-04-22 12:06:37', '50.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(259, 1, 259, 'ternak', '580.63', '550.21', '321.29', '330.60', '2019-03-18 12:49:50', 76, '2019-05-29 16:35:25', 30, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(260, 4, 260, 'ternak', '748.75', '406.42', '311.72', '376.45', '2019-02-19 12:28:50', 10, '2019-05-11 12:50:49', 160, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(261, 7, 261, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '155.57', '153.45', '445.13', '615.31', '2019-01-24 10:12:03', 97, '2019-06-03 04:24:31', '194.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(262, 4, 262, 'ternak', '115.77', '413.05', '413.77', '232.28', '2019-03-30 06:13:04', 70, '2019-06-09 11:47:11', 85, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(263, 11, 263, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '772.44', '222.36', '406.72', '374.28', '2019-02-21 20:53:44', 146, '2019-04-16 04:28:44', '114.00', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(264, 5, 264, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '445.05', '330.76', '650.03', '784.40', '2019-04-04 06:11:26', 126, '2019-04-21 09:05:58', '135.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(265, 8, 265, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '348.05', '553.67', '555.37', '633.27', '2019-04-08 23:27:42', 89, '2019-04-23 20:03:52', '19.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(266, 3, 266, 'ternak', '536.05', '481.77', '496.73', '386.63', '2019-03-21 02:33:06', 124, '2019-05-02 14:23:56', 24, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(267, 1, 267, 'ternak', '355.12', '134.94', '642.76', '476.05', '2019-03-31 18:23:27', 155, '2019-05-05 01:26:37', 10, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(268, 8, 268, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '319.71', '644.08', '261.06', '635.35', '2019-03-28 13:20:51', 72, '2019-05-24 02:53:53', '151.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(269, 12, 269, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '569.06', '378.26', '377.41', '635.16', '2019-02-24 06:13:00', 146, '2019-04-25 03:16:29', '170.00', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(270, 4, 270, 'ternak', '506.98', '745.48', '123.84', '626.11', '2019-02-27 22:50:06', 74, '2019-05-19 09:02:00', 155, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(271, 7, 271, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '176.94', '224.72', '562.97', '681.44', '2019-01-13 12:36:46', 71, '2019-06-02 21:40:59', '110.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(272, 12, 272, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '244.98', '483.91', '149.92', '776.45', '2019-02-27 19:33:21', 49, '2019-05-20 03:51:31', '57.00', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(273, 5, 273, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '164.52', '712.75', '792.14', '256.57', '2019-01-16 19:55:08', 97, '2019-05-05 06:41:07', '27.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(274, 4, 274, 'ternak', '223.06', '231.27', '106.26', '409.75', '2019-03-15 16:10:42', 110, '2019-04-14 05:41:35', 15, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(275, 1, 275, 'ternak', '205.33', '492.81', '748.53', '241.95', '2019-01-21 12:59:53', 149, '2019-06-02 13:31:32', 90, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(276, 7, 276, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '404.65', '219.05', '388.58', '166.89', '2019-03-01 16:47:27', 151, '2019-05-02 09:40:41', '177.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(277, 2, 277, 'ternak', '241.68', '590.57', '335.57', '410.78', '2019-01-26 02:15:16', 199, '2019-04-16 04:18:57', 86, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(278, 4, 278, 'ternak', '586.92', '569.80', '622.74', '248.01', '2019-04-05 05:47:32', 57, '2019-04-26 16:59:35', 106, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(279, 8, 279, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '426.81', '730.38', '791.08', '357.12', '2019-02-24 01:44:08', 23, '2019-05-11 13:05:03', '53.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(280, 2, 280, 'ternak', '171.91', '636.56', '762.61', '294.37', '2019-03-04 01:33:46', 13, '2019-05-05 14:22:05', 194, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(281, 7, 281, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '586.84', '245.40', '357.16', '690.85', '2019-03-05 02:12:29', 105, '2019-05-02 19:35:51', '40.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(282, 12, 282, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '605.74', '705.98', '194.30', '165.54', '2019-03-09 09:58:08', 85, '2019-05-16 21:20:17', '110.00', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(283, 10, 283, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '294.66', '130.22', '601.30', '575.31', '2019-04-04 18:19:39', 116, '2019-05-22 10:00:11', '39.00', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(284, 8, 284, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '670.57', '751.96', '548.78', '423.34', '2019-01-19 08:00:41', 167, '2019-04-20 02:12:50', '21.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(285, 9, 285, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '278.66', '777.51', '570.77', '650.61', '2019-03-29 06:05:51', 140, '2019-04-21 13:35:24', '142.00', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(286, 1, 286, 'ternak', '115.32', '570.96', '310.42', '182.45', '2019-02-15 12:41:35', 170, '2019-05-04 20:28:21', 33, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(287, 10, 287, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '194.37', '265.39', '267.03', '467.98', '2019-03-20 04:34:51', 64, '2019-04-22 06:29:20', '25.00', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(288, 6, 288, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '222.08', '228.84', '552.76', '322.44', '2019-02-05 04:56:03', 101, '2019-05-28 03:34:13', '56.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(289, 3, 289, 'ternak', '269.59', '337.10', '451.60', '777.91', '2019-01-18 22:29:16', 197, '2019-04-18 21:43:40', 75, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(290, 11, 290, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '799.23', '377.25', '268.96', '688.07', '2019-04-11 17:21:44', 150, '2019-06-09 16:15:01', '135.00', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(291, 6, 291, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '405.45', '339.07', '612.07', '621.56', '2019-02-07 08:12:40', 68, '2019-05-25 04:01:35', '16.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(292, 9, 292, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '639.26', '746.78', '668.98', '146.08', '2019-04-06 02:21:56', 77, '2019-06-04 13:37:37', '63.00', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(293, 10, 293, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '595.24', '634.14', '688.88', '762.19', '2019-02-17 14:28:21', 147, '2019-04-20 22:22:41', '83.00', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(294, 8, 294, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '712.54', '334.01', '133.42', '486.34', '2019-01-27 08:36:45', 31, '2019-04-23 20:27:31', '110.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(295, 3, 295, 'ternak', '363.80', '345.33', '154.43', '733.01', '2019-01-31 01:16:17', 129, '2019-06-07 11:50:49', 69, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(296, 2, 296, 'ternak', '568.60', '123.89', '496.14', '441.93', '2019-02-01 03:25:00', 145, '2019-04-27 21:41:39', 87, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(297, 4, 297, 'ternak', '572.24', '466.42', '645.92', '256.50', '2019-04-05 15:47:08', 152, '2019-04-15 05:52:45', 108, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(298, 7, 298, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '144.98', '199.14', '534.54', '357.05', '2019-02-12 00:36:48', 180, '2019-05-12 12:25:10', '183.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(299, 12, 299, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '415.61', '262.36', '199.95', '569.07', '2019-01-24 16:29:59', 64, '2019-05-17 17:48:43', '34.00', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(300, 8, 300, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '680.80', '637.60', '780.88', '145.27', '2019-02-07 12:02:11', 197, '2019-04-21 22:26:40', '190.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(301, 1, 301, 'ternak', '543.19', '673.72', '233.27', '736.46', '2019-03-04 18:14:26', 74, '2019-04-30 10:17:11', 20, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(302, 7, 302, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '251.88', '309.35', '423.49', '207.69', '2019-02-19 13:51:07', 46, '2019-05-09 03:37:51', '44.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(303, 4, 303, 'ternak', '376.91', '625.83', '338.46', '767.53', '2019-02-03 08:49:53', 107, '2019-05-17 07:11:15', 108, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(304, 1, 304, 'ternak', '517.38', '372.10', '480.29', '407.85', '2019-04-01 12:50:31', 112, '2019-04-23 16:37:40', 20, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(305, 10, 305, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '160.17', '735.22', '576.47', '199.90', '2019-01-23 19:53:21', 77, '2019-05-31 21:41:08', '12.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(306, 3, 306, 'ternak', '519.36', '507.27', '722.45', '473.82', '2019-03-12 18:14:04', 120, '2019-05-27 07:51:20', 55, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(307, 9, 307, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '437.01', '617.87', '678.17', '437.61', '2019-01-21 19:41:02', 180, '2019-04-30 04:01:10', '104.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(308, 1, 308, 'ternak', '181.06', '350.13', '358.09', '708.52', '2019-03-18 19:10:21', 35, '2019-05-30 08:33:33', 184, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(309, 11, 309, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '317.03', '274.59', '620.43', '262.19', '2019-03-20 03:06:05', 79, '2019-04-17 22:11:50', '36.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(310, 12, 310, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '482.06', '655.87', '306.59', '471.68', '2019-02-11 10:27:13', 47, '2019-05-12 14:13:28', '176.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(311, 2, 311, 'ternak', '298.83', '512.97', '589.97', '298.73', '2019-02-20 17:50:06', 181, '2019-06-08 05:32:33', 76, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(312, 9, 312, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '364.59', '322.92', '405.64', '137.03', '2019-03-08 19:53:08', 119, '2019-04-26 04:43:12', '194.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(313, 4, 313, 'ternak', '531.11', '219.39', '240.14', '436.30', '2019-02-07 10:52:02', 176, '2019-06-08 08:39:25', 22, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(314, 1, 314, 'ternak', '502.22', '448.32', '202.99', '695.95', '2019-03-07 07:47:16', 31, '2019-05-30 12:33:28', 35, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(315, 11, 315, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '380.47', '380.57', '537.75', '263.63', '2019-02-15 15:43:10', 105, '2019-04-17 03:05:31', '106.00', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(316, 1, 316, 'ternak', '573.70', '245.41', '544.18', '270.89', '2019-02-11 09:09:22', 136, '2019-04-17 08:37:46', 172, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(317, 4, 317, 'ternak', '319.37', '166.18', '220.82', '608.97', '2019-01-23 17:55:31', 168, '2019-05-24 05:03:05', 136, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(318, 11, 318, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '564.77', '387.66', '639.01', '539.00', '2019-04-05 01:54:50', 196, '2019-06-01 00:05:44', '131.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(319, 10, 319, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '585.98', '496.74', '217.97', '551.94', '2019-02-17 20:19:43', 165, '2019-06-11 02:28:03', '46.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(320, 9, 320, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '765.32', '689.42', '163.28', '591.53', '2019-03-09 12:27:29', 150, '2019-06-07 13:57:20', '26.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(321, 9, 321, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '408.55', '579.12', '572.09', '667.29', '2019-01-17 03:45:40', 124, '2019-04-25 01:05:36', '182.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(322, 8, 322, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '448.20', '576.45', '490.77', '128.03', '2019-03-06 07:42:08', 198, '2019-05-19 12:51:59', '163.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(323, 7, 323, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '254.60', '316.96', '627.29', '778.33', '2019-03-13 04:23:23', 25, '2019-05-01 21:09:15', '90.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(324, 12, 324, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '609.59', '424.38', '380.52', '649.40', '2019-04-05 23:09:30', 183, '2019-04-30 02:49:03', '118.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(325, 1, 325, 'ternak', '380.59', '633.70', '555.12', '483.94', '2019-02-20 04:35:48', 22, '2019-04-16 11:19:55', 39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(326, 2, 326, 'ternak', '419.92', '514.69', '455.81', '649.52', '2019-01-13 18:02:00', 152, '2019-05-13 08:25:49', 42, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(327, 4, 327, 'ternak', '701.14', '631.45', '498.14', '535.21', '2019-01-27 00:56:01', 188, '2019-05-20 22:29:51', 21, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(328, 11, 328, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '102.54', '704.36', '253.86', '312.88', '2019-01-14 00:18:19', 103, '2019-05-30 18:33:37', '76.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(329, 5, 329, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '696.09', '757.48', '362.88', '370.05', '2019-02-09 12:54:12', 165, '2019-05-22 19:59:21', '19.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(330, 9, 330, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '772.82', '215.35', '241.43', '175.37', '2019-04-04 00:16:00', 91, '2019-05-01 08:55:14', '65.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(331, 11, 331, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '699.88', '512.08', '735.64', '779.31', '2019-03-08 05:24:23', 28, '2019-05-08 05:43:51', '62.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(332, 10, 332, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '705.31', '312.95', '441.18', '307.07', '2019-03-24 13:19:42', 81, '2019-05-16 18:40:03', '166.00', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(333, 8, 333, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '578.85', '491.59', '662.59', '451.71', '2019-01-20 17:03:01', 189, '2019-06-02 12:15:24', '83.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(334, 3, 334, 'ternak', '340.17', '757.46', '639.12', '722.72', '2019-01-20 11:03:50', 188, '2019-05-12 10:10:48', 86, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(335, 11, 335, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '505.21', '764.94', '682.01', '613.68', '2019-02-04 23:42:12', 43, '2019-05-13 03:39:39', '83.00', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(336, 3, 336, 'ternak', '280.44', '512.62', '644.43', '360.52', '2019-01-30 01:17:44', 29, '2019-06-05 23:33:53', 151, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(337, 9, 337, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '727.13', '722.29', '373.51', '764.27', '2019-01-16 21:44:48', 59, '2019-04-20 03:15:03', '153.00', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(338, 10, 338, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '549.09', '698.05', '500.01', '202.93', '2019-04-06 05:18:34', 70, '2019-05-12 18:30:08', '197.00', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(339, 5, 339, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '181.07', '594.56', '376.32', '561.70', '2019-02-15 11:39:47', 169, '2019-04-27 16:50:21', '40.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(340, 4, 340, 'ternak', '257.65', '693.68', '784.69', '553.33', '2019-03-01 09:48:33', 153, '2019-04-28 08:52:35', 133, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(341, 12, 341, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '420.44', '455.38', '707.66', '598.69', '2019-03-05 18:13:35', 107, '2019-05-29 18:11:14', '70.00', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(342, 3, 342, 'ternak', '410.26', '196.69', '142.11', '384.09', '2019-03-07 21:10:28', 143, '2019-04-22 22:16:11', 89, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(343, 8, 343, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '747.96', '313.85', '319.18', '318.65', '2019-04-04 07:47:41', 152, '2019-05-24 19:57:36', '40.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(344, 6, 344, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '115.64', '521.69', '377.89', '498.12', '2019-02-04 00:56:21', 116, '2019-06-05 05:46:22', '148.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(345, 1, 345, 'ternak', '477.04', '571.43', '573.92', '175.99', '2019-01-22 20:06:56', 144, '2019-06-12 04:29:27', 31, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(346, 4, 346, 'ternak', '344.80', '679.31', '225.58', '233.30', '2019-03-03 22:41:33', 26, '2019-05-25 11:31:18', 96, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(347, 2, 347, 'ternak', '333.09', '696.95', '294.45', '791.90', '2019-03-17 21:52:56', 159, '2019-05-25 19:15:49', 136, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(348, 5, 348, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '117.03', '631.63', '148.61', '121.53', '2019-02-24 15:50:26', 73, '2019-04-23 05:34:24', '50.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(349, 9, 349, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '636.05', '458.80', '442.52', '471.45', '2019-03-16 00:14:26', 184, '2019-04-22 17:26:03', '110.00', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(350, 5, 350, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '745.66', '531.05', '304.68', '420.65', '2019-04-02 11:28:01', 16, '2019-05-06 07:48:04', '91.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(351, 1, 351, 'ternak', '459.74', '740.12', '113.11', '593.41', '2019-03-18 01:34:25', 51, '2019-05-08 11:59:20', 130, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(352, 3, 352, 'ternak', '105.23', '289.46', '601.72', '438.61', '2019-04-09 12:20:05', 137, '2019-04-30 16:47:58', 118, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(353, 2, 353, 'ternak', '744.37', '318.03', '522.75', '122.46', '2019-01-17 12:12:42', 113, '2019-04-28 12:44:33', 180, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(354, 2, 354, 'ternak', '515.42', '752.37', '764.76', '341.00', '2019-02-12 03:06:30', 176, '2019-05-02 17:19:40', 178, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(355, 8, 355, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '247.40', '281.78', '169.17', '406.47', '2019-03-10 16:30:48', 118, '2019-04-28 17:39:13', '29.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(356, 10, 356, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '721.97', '515.11', '704.87', '790.81', '2019-03-07 06:28:10', 166, '2019-04-27 13:27:55', '102.00', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(357, 3, 357, 'ternak', '395.02', '572.25', '703.12', '799.08', '2019-01-25 04:48:52', 183, '2019-04-29 09:57:40', 115, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(358, 4, 358, 'ternak', '625.01', '447.69', '427.07', '324.52', '2019-03-11 14:02:14', 150, '2019-05-14 22:27:30', 120, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(359, 10, 359, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '381.14', '131.81', '774.69', '330.11', '2019-02-06 14:11:21', 124, '2019-04-18 04:47:01', '179.00', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(360, 5, 360, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '333.43', '211.15', '528.06', '521.93', '2019-03-12 21:26:15', 75, '2019-05-05 17:54:04', '61.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(361, 8, 361, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '791.93', '505.82', '359.14', '514.55', '2019-02-21 15:27:48', 152, '2019-06-06 22:54:25', '101.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(362, 3, 362, 'ternak', '641.37', '225.97', '601.02', '754.93', '2019-01-18 04:45:25', 178, '2019-05-05 09:53:56', 199, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(363, 12, 363, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '574.30', '610.29', '727.14', '186.53', '2019-03-07 09:53:56', 152, '2019-04-21 05:23:08', '49.00', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(364, 6, 364, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '145.01', '487.64', '646.58', '702.81', '2019-03-05 21:32:23', 56, '2019-05-17 13:28:02', '169.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(365, 6, 365, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '553.93', '389.25', '201.78', '725.77', '2019-02-26 22:20:45', 46, '2019-06-10 11:07:05', '70.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(366, 10, 366, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '670.40', '310.73', '612.82', '799.54', '2019-03-27 19:35:07', 75, '2019-06-02 02:12:12', '32.00', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(367, 11, 367, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '738.39', '374.55', '482.66', '207.94', '2019-04-04 02:26:00', 74, '2019-06-06 19:09:21', '181.00', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(368, 1, 368, 'ternak', '440.64', '709.53', '172.25', '776.49', '2019-02-17 07:00:33', 65, '2019-05-30 14:38:52', 47, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(369, 9, 369, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '127.67', '152.11', '124.85', '200.44', '2019-03-18 10:43:07', 60, '2019-06-05 20:32:34', '129.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(370, 3, 370, 'ternak', '302.57', '532.89', '618.88', '131.68', '2019-03-26 21:30:29', 18, '2019-04-27 13:26:59', 80, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(371, 6, 371, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '541.27', '348.18', '128.68', '362.19', '2019-04-05 03:35:53', 149, '2019-04-19 21:31:30', '158.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(372, 11, 372, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '409.41', '411.00', '602.49', '710.31', '2019-02-16 05:05:11', 95, '2019-06-01 22:38:16', '156.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(373, 2, 373, 'ternak', '190.51', '613.47', '413.85', '147.78', '2019-03-27 01:23:34', 129, '2019-05-29 10:19:02', 60, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(374, 10, 374, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '423.47', '379.91', '687.17', '127.79', '2019-02-15 23:24:58', 118, '2019-04-26 03:06:17', '68.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(375, 8, 375, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '676.32', '412.62', '424.51', '385.98', '2019-01-26 10:27:35', 107, '2019-05-01 10:36:21', '29.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(376, 10, 376, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '780.53', '300.15', '751.29', '204.22', '2019-02-23 11:35:57', 13, '2019-04-20 22:51:35', '176.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(377, 7, 377, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '254.33', '733.46', '345.46', '753.13', '2019-02-03 12:12:57', 117, '2019-06-09 03:49:23', '144.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(378, 4, 378, 'ternak', '657.71', '170.35', '739.45', '300.07', '2019-04-02 13:33:53', 153, '2019-04-23 21:37:36', 80, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14');
INSERT INTO `komoditas_lahan` (`id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(379, 10, 379, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '526.12', '208.85', '718.57', '457.82', '2019-01-24 10:36:26', 60, '2019-05-01 10:47:55', '82.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(380, 2, 380, 'ternak', '454.83', '483.10', '683.75', '732.33', '2019-01-16 00:17:38', 139, '2019-04-18 06:12:15', 45, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(381, 1, 381, 'ternak', '581.96', '592.04', '115.07', '434.81', '2019-03-10 13:48:08', 14, '2019-04-15 13:07:03', 151, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(382, 11, 382, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '100.37', '152.85', '494.50', '522.54', '2019-01-16 15:40:42', 52, '2019-05-17 02:46:21', '173.00', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(383, 6, 383, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '791.83', '389.59', '355.66', '793.26', '2019-02-04 10:36:13', 41, '2019-06-04 09:32:08', '163.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(384, 6, 384, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '552.12', '641.16', '169.98', '303.08', '2019-04-10 21:45:08', 175, '2019-06-02 17:48:56', '113.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(385, 5, 385, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '165.19', '356.03', '477.91', '505.82', '2019-03-27 18:46:49', 49, '2019-06-09 16:53:20', '142.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(386, 4, 386, 'ternak', '165.36', '109.18', '527.11', '505.21', '2019-01-22 11:28:45', 23, '2019-05-12 18:59:26', 24, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(387, 11, 387, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '297.77', '288.22', '189.06', '724.58', '2019-02-06 15:42:07', 15, '2019-05-13 04:14:24', '25.00', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(388, 6, 388, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '685.67', '361.95', '699.34', '263.54', '2019-01-25 22:20:44', 87, '2019-04-16 12:12:07', '67.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(389, 1, 389, 'ternak', '323.88', '322.48', '666.49', '377.93', '2019-02-12 01:28:27', 174, '2019-05-28 07:28:34', 26, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(390, 2, 390, 'ternak', '551.30', '597.89', '795.06', '154.96', '2019-02-05 07:09:06', 111, '2019-05-09 12:33:55', 30, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(391, 9, 391, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '213.80', '347.37', '234.37', '529.95', '2019-02-18 07:07:32', 109, '2019-04-22 20:35:46', '170.00', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(392, 1, 392, 'ternak', '124.37', '618.32', '519.14', '502.30', '2019-02-11 02:31:48', 121, '2019-05-15 06:10:41', 122, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(393, 9, 393, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '479.91', '419.69', '281.42', '768.67', '2019-01-15 20:36:04', 50, '2019-06-12 06:17:26', '154.00', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(394, 4, 394, 'ternak', '636.68', '466.04', '694.98', '485.63', '2019-03-11 10:36:18', 80, '2019-06-03 09:01:44', 34, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(395, 5, 395, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '198.65', '522.28', '578.29', '140.17', '2019-02-28 00:33:39', 123, '2019-05-03 11:46:41', '68.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(396, 11, 396, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '138.97', '113.83', '794.65', '530.10', '2019-01-20 05:45:23', 34, '2019-04-17 14:44:57', '93.00', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(397, 12, 397, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '782.66', '736.60', '675.89', '658.92', '2019-03-23 15:07:54', 149, '2019-05-10 10:45:40', '36.00', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(398, 3, 398, 'ternak', '643.30', '169.23', '154.78', '278.46', '2019-04-10 14:25:55', 41, '2019-05-06 17:30:27', 161, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(399, 1, 399, 'ternak', '215.90', '163.13', '750.12', '196.34', '2019-03-12 01:48:18', 42, '2019-04-20 03:13:07', 140, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(400, 8, 400, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '143.95', '125.04', '153.05', '358.85', '2019-03-14 06:29:55', 90, '2019-05-22 22:12:32', '141.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(401, 7, 401, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '317.03', '689.75', '342.27', '779.51', '2019-02-22 04:56:14', 42, '2019-06-08 03:53:15', '18.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(402, 9, 402, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '409.26', '781.91', '665.86', '655.89', '2019-02-14 18:16:09', 66, '2019-05-25 23:36:53', '176.00', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(403, 7, 403, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '540.73', '420.98', '230.06', '649.54', '2019-03-29 21:17:31', 179, '2019-05-31 02:08:13', '176.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(404, 2, 404, 'ternak', '492.50', '332.08', '726.54', '601.94', '2019-03-18 20:24:20', 47, '2019-05-11 17:55:30', 96, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(405, 1, 405, 'ternak', '191.13', '584.02', '489.57', '790.29', '2019-01-18 18:20:36', 69, '2019-04-19 22:48:03', 11, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(406, 3, 406, 'ternak', '213.14', '613.01', '428.06', '223.28', '2019-02-04 10:49:20', 34, '2019-05-02 05:32:55', 123, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(407, 8, 407, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '685.84', '754.93', '158.75', '508.05', '2019-01-16 07:30:01', 187, '2019-05-06 10:01:59', '189.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(408, 2, 408, 'ternak', '374.44', '774.29', '764.78', '794.01', '2019-02-18 06:37:10', 76, '2019-06-11 22:20:10', 124, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(409, 6, 409, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '145.55', '539.16', '489.57', '212.84', '2019-03-05 05:43:47', 165, '2019-04-29 04:44:20', '47.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(410, 1, 410, 'ternak', '689.35', '624.37', '436.49', '475.75', '2019-03-01 03:05:15', 165, '2019-05-31 21:34:28', 162, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(411, 11, 411, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '479.98', '331.84', '389.78', '697.71', '2019-02-12 02:25:57', 21, '2019-05-09 12:00:10', '25.00', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(412, 8, 412, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '107.65', '566.65', '390.88', '409.73', '2019-03-27 04:33:09', 107, '2019-04-30 02:15:02', '174.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(413, 10, 413, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '790.31', '549.52', '273.96', '680.47', '2019-01-25 10:09:01', 47, '2019-04-16 13:57:11', '182.00', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(414, 4, 414, 'ternak', '536.98', '385.72', '164.35', '423.15', '2019-02-03 02:07:04', 84, '2019-05-11 14:26:33', 140, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(415, 2, 415, 'ternak', '352.02', '683.16', '485.82', '600.99', '2019-03-25 22:11:24', 161, '2019-06-04 11:46:57', 59, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(416, 7, 416, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '705.50', '195.08', '459.40', '499.86', '2019-02-12 22:57:50', 69, '2019-05-22 05:57:14', '35.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(417, 2, 417, 'ternak', '755.67', '105.92', '199.60', '608.23', '2019-03-14 14:30:13', 106, '2019-05-07 12:18:15', 187, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(418, 9, 418, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '155.70', '415.83', '762.15', '705.49', '2019-02-14 22:13:16', 59, '2019-05-23 06:27:19', '93.00', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(419, 10, 419, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '678.40', '179.19', '708.17', '582.23', '2019-04-01 11:07:51', 42, '2019-05-29 15:37:20', '115.00', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(420, 9, 420, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '492.49', '506.29', '477.47', '391.42', '2019-01-26 00:59:12', 137, '2019-04-29 19:51:48', '187.00', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(421, 8, 421, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '639.47', '443.39', '641.95', '399.11', '2019-03-12 07:40:19', 84, '2019-05-05 03:19:04', '137.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(422, 4, 422, 'ternak', '168.16', '651.97', '585.60', '222.95', '2019-01-26 21:56:00', 126, '2019-05-28 05:00:31', 87, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(423, 1, 423, 'ternak', '148.03', '175.23', '572.87', '748.16', '2019-02-10 05:04:45', 54, '2019-06-05 19:59:57', 143, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(424, 3, 424, 'ternak', '469.47', '560.95', '350.80', '416.76', '2019-01-28 17:02:17', 131, '2019-05-27 06:24:11', 110, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(425, 11, 425, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '200.54', '325.80', '502.40', '787.70', '2019-03-04 05:39:42', 81, '2019-05-21 01:24:51', '52.00', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(426, 5, 426, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '265.35', '750.40', '201.33', '644.09', '2019-03-04 14:46:53', 192, '2019-05-18 22:37:16', '59.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(427, 1, 427, 'ternak', '208.04', '250.15', '270.20', '553.90', '2019-03-04 00:00:35', 165, '2019-04-12 14:17:27', 104, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(428, 2, 428, 'ternak', '716.55', '726.20', '769.21', '571.37', '2019-03-12 13:26:44', 109, '2019-04-29 02:21:50', 124, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(429, 7, 429, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '515.00', '756.23', '782.62', '643.24', '2019-04-09 09:16:42', 150, '2019-04-27 15:01:24', '33.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(430, 1, 430, 'ternak', '444.73', '511.42', '134.53', '521.74', '2019-03-09 17:12:48', 46, '2019-05-11 08:11:21', 152, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(431, 12, 431, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '138.50', '293.71', '765.68', '251.16', '2019-04-08 13:41:41', 76, '2019-05-01 08:19:48', '55.00', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(432, 5, 432, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '346.83', '234.82', '609.76', '330.96', '2019-04-08 14:02:20', 102, '2019-05-28 02:25:21', '105.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(433, 7, 433, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '424.94', '511.83', '539.95', '178.47', '2019-01-22 01:52:03', 99, '2019-06-01 08:26:31', '137.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(434, 3, 434, 'ternak', '615.03', '455.65', '230.51', '240.13', '2019-03-03 11:56:56', 74, '2019-05-31 11:43:10', 58, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(435, 7, 435, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '637.70', '367.25', '785.72', '241.65', '2019-02-22 21:45:57', 61, '2019-05-30 14:51:12', '106.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(436, 10, 436, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '727.76', '180.05', '317.28', '117.25', '2019-02-19 15:49:14', 114, '2019-06-05 13:59:56', '35.00', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(437, 5, 437, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '681.02', '742.85', '527.01', '135.18', '2019-02-18 04:54:35', 107, '2019-05-04 11:01:41', '174.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(438, 8, 438, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '195.27', '459.45', '488.41', '328.33', '2019-03-22 19:47:11', 191, '2019-05-04 02:07:56', '80.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(439, 2, 439, 'ternak', '762.17', '549.23', '598.17', '691.43', '2019-03-21 06:28:10', 16, '2019-04-22 04:16:48', 34, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(440, 10, 440, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '459.85', '537.78', '334.18', '697.49', '2019-04-02 02:43:29', 18, '2019-05-28 06:11:00', '96.00', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(441, 11, 441, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '569.77', '208.36', '401.19', '653.43', '2019-01-23 13:36:17', 181, '2019-06-01 01:00:34', '11.00', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(442, 12, 442, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '796.48', '557.91', '390.48', '631.88', '2019-01-13 11:50:23', 47, '2019-05-09 08:33:10', '140.00', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(443, 2, 443, 'ternak', '406.47', '343.71', '260.33', '436.83', '2019-02-05 02:35:25', 70, '2019-05-18 07:24:49', 157, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(444, 6, 444, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '226.86', '404.07', '175.81', '628.55', '2019-03-03 18:20:07', 101, '2019-05-31 17:51:18', '177.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(445, 8, 445, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '326.27', '222.98', '636.00', '150.32', '2019-02-17 17:32:50', 86, '2019-04-25 03:00:42', '63.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(446, 8, 446, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '113.36', '309.30', '556.58', '592.32', '2019-03-28 18:00:09', 151, '2019-05-28 04:51:40', '94.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(447, 3, 447, 'ternak', '700.66', '660.85', '714.10', '348.10', '2019-02-18 23:11:35', 114, '2019-05-23 10:33:56', 97, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(448, 6, 448, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '107.39', '409.57', '308.79', '723.08', '2019-03-18 21:29:13', 32, '2019-05-04 21:34:47', '183.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(449, 5, 449, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '189.01', '633.21', '379.45', '620.89', '2019-02-01 17:14:38', 163, '2019-05-14 21:52:13', '143.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:21', '2019-04-12 11:27:21'),
(450, 1, 450, 'ternak', '151.80', '650.51', '325.37', '182.50', '2019-01-26 16:34:30', 17, '2019-05-08 05:35:19', 128, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-12 11:27:21', '2019-04-12 11:27:21');

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

--
-- Dumping data for table `lahan`
--

INSERT INTO `lahan` (`id`, `desa_id`, `other`, `name`, `lat`, `long`, `luas`, `pemilik`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Lahan Apt. 809', '-7.1284305', '108.1979602', '692.1000', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(2, 1, NULL, 'Lahan Suite 311', '-7.179943', '108.5924882', '131.9700', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(3, 1, NULL, 'Lahan Suite 001', '-7.641223', '109.1541355', '785.1000', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(4, 1, NULL, 'Lahan Suite 585', '-7.1369569', '108.2776791', '516.0000', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(5, 1, NULL, 'Lahan Apt. 819', '-6.8506428', '107.8367843', '385.7500', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(6, 1, NULL, 'Lahan Apt. 944', '-6.8137211', '107.4228174', '576.1700', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(7, 1, NULL, 'Lahan Apt. 179', '-7.6949875', '107.8498813', '274.3900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(8, 1, NULL, 'Lahan Suite 798', '-7.453684', '107.2155357', '732.1100', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(9, 1, NULL, 'Lahan Apt. 418', '-7.3766419', '109.2629853', '379.9500', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(10, 1, NULL, 'Lahan Apt. 562', '-7.3447999', '107.3069879', '649.0700', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(11, 1, NULL, 'Lahan Suite 738', '-7.6309928', '107.0799452', '377.9500', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(12, 1, NULL, 'Lahan Suite 041', '-7.0414844', '108.7306331', '622.9900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(13, 1, NULL, 'Lahan Apt. 231', '-7.156225', '110.0544262', '403.1900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(14, 1, NULL, 'Lahan Apt. 036', '-6.9992283', '107.8990732', '197.0600', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(15, 1, NULL, 'Lahan Apt. 974', '-7.356344', '107.9889929', '398.1100', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(16, 1, NULL, 'Lahan Suite 948', '-6.99207', '108.6869905', '678.5800', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(17, 1, NULL, 'Lahan Suite 520', '-7.6948544', '107.5669254', '737.3100', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(18, 1, NULL, 'Lahan Suite 810', '-7.4913946', '109.060582', '569.7900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(19, 1, NULL, 'Lahan Apt. 871', '-6.9641129', '109.3998973', '339.9400', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(20, 1, NULL, 'Lahan Apt. 667', '-7.3436384', '107.2901458', '420.8500', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(21, 1, NULL, 'Lahan Suite 430', '-7.2092236', '109.0843574', '590.6900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(22, 1, NULL, 'Lahan Suite 063', '-7.4355848', '110.689315', '234.9900', NULL, '2019-04-12 11:26:51', '2019-04-12 11:26:51'),
(23, 1, NULL, 'Lahan Apt. 576', '-7.1716019', '108.5791407', '499.4400', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(24, 1, NULL, 'Lahan Suite 122', '-6.9922574', '108.927384', '749.8000', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(25, 1, NULL, 'Lahan Suite 391', '-7.646704', '107.6500528', '360.4600', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(26, 1, NULL, 'Lahan Suite 086', '-7.6852009', '110.476435', '350.6400', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(27, 1, NULL, 'Lahan Suite 276', '-7.4138933', '110.9921721', '489.0600', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(28, 1, NULL, 'Lahan Suite 381', '-6.8922209', '108.436341', '163.8000', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(29, 1, NULL, 'Lahan Apt. 329', '-7.2690216', '108.776853', '752.6500', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(30, 1, NULL, 'Lahan Suite 988', '-7.0825658', '108.8883032', '200.6700', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(31, 2, NULL, 'Lahan Suite 448', '-7.3945226', '107.5936386', '428.7100', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(32, 2, NULL, 'Lahan Suite 331', '-6.942598', '109.3136426', '371.6700', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(33, 2, NULL, 'Lahan Suite 901', '-7.0312668', '110.1621112', '390.4200', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(34, 2, NULL, 'Lahan Suite 759', '-7.1962346', '109.3201813', '108.6400', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(35, 2, NULL, 'Lahan Suite 531', '-7.3425345', '107.4618881', '409.4900', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(36, 2, NULL, 'Lahan Apt. 052', '-6.9064843', '110.7679242', '442.8300', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(37, 2, NULL, 'Lahan Apt. 463', '-7.5428037', '107.5472172', '260.0700', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(38, 2, NULL, 'Lahan Apt. 789', '-6.9293126', '109.4841436', '751.0500', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(39, 2, NULL, 'Lahan Suite 313', '-7.4601503', '110.8773176', '739.6000', NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(40, 2, NULL, 'Lahan Apt. 672', '-7.2784863', '110.3730755', '788.6200', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(41, 2, NULL, 'Lahan Apt. 199', '-6.8266774', '107.7686753', '222.1800', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(42, 2, NULL, 'Lahan Apt. 608', '-6.9629163', '110.9537751', '315.8000', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(43, 2, NULL, 'Lahan Apt. 196', '-7.6471847', '108.8280193', '475.3300', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(44, 2, NULL, 'Lahan Suite 801', '-7.0054861', '109.4263961', '544.8100', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(45, 2, NULL, 'Lahan Suite 658', '-7.3309562', '108.5868703', '691.7700', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(46, 2, NULL, 'Lahan Apt. 821', '-7.5586552', '107.8515746', '251.2000', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(47, 2, NULL, 'Lahan Suite 240', '-7.1158663', '107.2412674', '263.9700', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(48, 2, NULL, 'Lahan Suite 565', '-7.08718', '110.6205452', '509.9300', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(49, 2, NULL, 'Lahan Suite 662', '-7.1451387', '109.4449582', '267.3600', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(50, 2, NULL, 'Lahan Apt. 283', '-7.1767099', '110.3881491', '313.2400', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(51, 2, NULL, 'Lahan Suite 564', '-7.3469966', '110.7424725', '789.2300', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(52, 2, NULL, 'Lahan Suite 822', '-7.2143343', '108.2882781', '401.0200', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(53, 2, NULL, 'Lahan Apt. 697', '-7.5992362', '107.7244769', '465.3100', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(54, 2, NULL, 'Lahan Suite 987', '-7.1387339', '109.9799057', '606.5100', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(55, 2, NULL, 'Lahan Apt. 599', '-6.8528115', '109.8646986', '701.2500', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(56, 2, NULL, 'Lahan Apt. 177', '-7.6785749', '108.2706691', '377.7600', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(57, 2, NULL, 'Lahan Apt. 481', '-7.0045106', '108.4022505', '496.4700', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(58, 2, NULL, 'Lahan Suite 217', '-7.3725988', '110.2752079', '435.1000', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(59, 2, NULL, 'Lahan Apt. 981', '-7.1892088', '109.0569628', '172.6200', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(60, 2, NULL, 'Lahan Apt. 826', '-7.2130554', '109.3677075', '596.7500', NULL, '2019-04-12 11:26:53', '2019-04-12 11:26:53'),
(61, 3, NULL, 'Lahan Suite 166', '-7.0067883', '110.8514337', '370.1100', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(62, 3, NULL, 'Lahan Apt. 336', '-6.8109155', '110.7035561', '550.0200', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(63, 3, NULL, 'Lahan Suite 656', '-7.0620051', '108.4862508', '672.7400', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(64, 3, NULL, 'Lahan Suite 334', '-7.6378099', '107.6824107', '783.9100', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(65, 3, NULL, 'Lahan Suite 284', '-7.0318435', '107.7477078', '689.2400', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(66, 3, NULL, 'Lahan Apt. 112', '-6.9928288', '107.5402591', '328.8100', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(67, 3, NULL, 'Lahan Suite 909', '-6.8076609', '109.3286643', '716.5200', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(68, 3, NULL, 'Lahan Suite 705', '-6.888143', '110.836175', '181.9200', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(69, 3, NULL, 'Lahan Suite 103', '-7.4217103', '108.3170633', '725.9400', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(70, 3, NULL, 'Lahan Apt. 299', '-7.6110737', '110.9842691', '390.0800', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(71, 3, NULL, 'Lahan Apt. 043', '-7.5204655', '110.2800893', '677.8000', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(72, 3, NULL, 'Lahan Suite 118', '-7.1361125', '107.6019226', '465.4800', NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(73, 3, NULL, 'Lahan Apt. 501', '-7.0971047', '110.0742628', '371.3500', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(74, 3, NULL, 'Lahan Suite 784', '-7.5016462', '107.5496894', '175.4600', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(75, 3, NULL, 'Lahan Suite 733', '-7.6362561', '107.9723818', '631.2800', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(76, 3, NULL, 'Lahan Apt. 105', '-7.0978878', '108.1228766', '450.1000', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(77, 3, NULL, 'Lahan Apt. 900', '-7.2018142', '109.9149706', '707.5800', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(78, 3, NULL, 'Lahan Apt. 362', '-6.8868083', '108.1721717', '724.9900', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(79, 3, NULL, 'Lahan Suite 350', '-7.0893414', '110.3353531', '590.3500', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(80, 3, NULL, 'Lahan Suite 775', '-7.5908434', '109.7921533', '740.5200', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(81, 3, NULL, 'Lahan Suite 586', '-7.301246', '109.3152031', '672.1500', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(82, 3, NULL, 'Lahan Apt. 126', '-6.9017269', '110.2627171', '747.1400', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(83, 3, NULL, 'Lahan Apt. 752', '-7.5250711', '109.2579689', '702.1700', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(84, 3, NULL, 'Lahan Apt. 435', '-7.5037912', '109.9005602', '217.8500', NULL, '2019-04-12 11:26:55', '2019-04-12 11:26:55'),
(85, 3, NULL, 'Lahan Suite 660', '-6.8854903', '110.5917911', '653.9800', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(86, 3, NULL, 'Lahan Apt. 181', '-7.326045', '110.4597391', '172.0000', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(87, 3, NULL, 'Lahan Apt. 110', '-6.8748306', '107.4281644', '133.3900', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(88, 3, NULL, 'Lahan Apt. 097', '-7.2553436', '108.2207009', '366.7700', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(89, 3, NULL, 'Lahan Suite 621', '-7.5800185', '110.9062858', '300.7800', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(90, 3, NULL, 'Lahan Apt. 076', '-7.4868886', '108.5673679', '221.3700', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(91, 4, NULL, 'Lahan Apt. 876', '-7.0574611', '107.7334312', '724.4900', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(92, 4, NULL, 'Lahan Apt. 193', '-7.6559884', '109.884114', '567.5300', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(93, 4, NULL, 'Lahan Apt. 037', '-7.6195355', '110.8274228', '644.3900', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(94, 4, NULL, 'Lahan Apt. 582', '-7.417714', '110.730145', '681.9500', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(95, 4, NULL, 'Lahan Suite 337', '-6.8816602', '109.9928672', '188.8400', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(96, 4, NULL, 'Lahan Apt. 681', '-7.3454956', '110.6270043', '134.6500', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(97, 4, NULL, 'Lahan Apt. 310', '-6.9269489', '109.3232271', '372.4300', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(98, 4, NULL, 'Lahan Apt. 778', '-7.5909528', '109.0477758', '728.9200', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(99, 4, NULL, 'Lahan Apt. 524', '-7.197309', '110.015207', '672.3700', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(100, 4, NULL, 'Lahan Suite 599', '-7.035437', '110.7270149', '248.7800', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(101, 4, NULL, 'Lahan Apt. 170', '-6.8030391', '108.4897812', '557.4500', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(102, 4, NULL, 'Lahan Suite 229', '-7.300413', '107.7703213', '550.7900', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(103, 4, NULL, 'Lahan Apt. 657', '-7.1538535', '108.3588817', '661.4300', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(104, 4, NULL, 'Lahan Suite 431', '-7.5121475', '109.6388433', '180.4400', NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(105, 4, NULL, 'Lahan Suite 557', '-6.8018808', '108.8088405', '451.6800', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(106, 4, NULL, 'Lahan Apt. 308', '-7.6431364', '110.0301277', '724.0000', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(107, 4, NULL, 'Lahan Apt. 641', '-7.3057331', '108.8033729', '205.9300', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(108, 4, NULL, 'Lahan Suite 444', '-7.0726011', '109.9887832', '237.7500', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(109, 4, NULL, 'Lahan Apt. 612', '-7.5085399', '109.0037127', '150.8100', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(110, 4, NULL, 'Lahan Suite 539', '-6.8731001', '108.9350356', '148.5200', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(111, 4, NULL, 'Lahan Apt. 093', '-7.4759963', '109.1098637', '763.8200', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(112, 4, NULL, 'Lahan Suite 067', '-6.8118161', '108.4070266', '469.2300', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(113, 4, NULL, 'Lahan Suite 846', '-7.2767914', '108.6558785', '340.6000', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(114, 4, NULL, 'Lahan Suite 429', '-7.4714999', '110.1899911', '497.8600', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(115, 4, NULL, 'Lahan Suite 700', '-7.5597569', '109.8069678', '666.9000', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(116, 4, NULL, 'Lahan Suite 270', '-6.8396951', '109.5002962', '187.8000', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(117, 4, NULL, 'Lahan Suite 894', '-7.1375148', '109.2058639', '604.3200', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(118, 4, NULL, 'Lahan Suite 550', '-7.0315202', '108.4098895', '624.9300', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(119, 4, NULL, 'Lahan Apt. 289', '-6.9299234', '108.7766456', '788.4000', NULL, '2019-04-12 11:26:57', '2019-04-12 11:26:57'),
(120, 4, NULL, 'Lahan Apt. 810', '-7.1394077', '107.1928443', '598.6800', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(121, 5, NULL, 'Lahan Suite 441', '-7.328371', '107.1340771', '141.5600', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(122, 5, NULL, 'Lahan Suite 378', '-7.4170159', '110.9705737', '795.5600', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(123, 5, NULL, 'Lahan Suite 175', '-7.5471955', '110.3190921', '364.9100', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(124, 5, NULL, 'Lahan Suite 218', '-7.4670364', '109.3161675', '757.4200', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(125, 5, NULL, 'Lahan Suite 763', '-7.2646052', '109.9268239', '384.1200', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(126, 5, NULL, 'Lahan Suite 075', '-7.2202451', '109.2788514', '497.8700', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(127, 5, NULL, 'Lahan Suite 778', '-7.1516419', '107.916209', '486.8900', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(128, 5, NULL, 'Lahan Apt. 064', '-7.3590132', '109.5957914', '722.3900', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(129, 5, NULL, 'Lahan Apt. 937', '-7.1606582', '110.0627831', '547.2100', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(130, 5, NULL, 'Lahan Suite 324', '-7.0209712', '110.4753914', '553.7300', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(131, 5, NULL, 'Lahan Apt. 173', '-7.5425384', '110.1539195', '308.9900', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(132, 5, NULL, 'Lahan Suite 978', '-7.3591783', '109.6402385', '383.4700', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(133, 5, NULL, 'Lahan Suite 049', '-6.9510822', '110.5506284', '742.1000', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(134, 5, NULL, 'Lahan Apt. 833', '-6.8348555', '108.815195', '452.1500', NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(135, 5, NULL, 'Lahan Suite 074', '-7.6450606', '107.5472545', '190.2200', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(136, 5, NULL, 'Lahan Suite 452', '-6.8065833', '109.6111257', '309.6400', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(137, 5, NULL, 'Lahan Suite 245', '-6.8930718', '110.9713019', '544.7500', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(138, 5, NULL, 'Lahan Apt. 664', '-6.9754651', '109.9424449', '277.4400', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(139, 5, NULL, 'Lahan Apt. 182', '-6.9471291', '110.2169551', '216.4700', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(140, 5, NULL, 'Lahan Suite 375', '-7.6769217', '110.6613336', '187.2700', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(141, 5, NULL, 'Lahan Suite 948', '-7.1533531', '108.4082483', '248.0600', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(142, 5, NULL, 'Lahan Suite 809', '-7.2784144', '109.2539192', '279.8700', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(143, 5, NULL, 'Lahan Suite 258', '-7.3989812', '110.711331', '196.3000', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(144, 5, NULL, 'Lahan Suite 528', '-7.25123', '108.0683062', '296.8500', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(145, 5, NULL, 'Lahan Suite 034', '-6.874653', '109.7035242', '121.1900', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(146, 5, NULL, 'Lahan Suite 295', '-7.5607561', '108.0612662', '797.6900', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(147, 5, NULL, 'Lahan Suite 016', '-6.8237947', '107.1720639', '778.2200', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(148, 5, NULL, 'Lahan Suite 161', '-7.2574715', '108.0634758', '230.7300', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(149, 5, NULL, 'Lahan Suite 731', '-7.07746', '110.0145988', '351.1700', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(150, 5, NULL, 'Lahan Suite 749', '-7.0200533', '108.0438934', '406.1600', NULL, '2019-04-12 11:26:59', '2019-04-12 11:26:59'),
(151, 6, NULL, 'Lahan Apt. 760', '-7.1005238', '107.6350423', '468.1700', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(152, 6, NULL, 'Lahan Apt. 193', '-7.1664632', '109.5517377', '423.6500', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(153, 6, NULL, 'Lahan Apt. 892', '-7.3811975', '109.506209', '564.1900', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(154, 6, NULL, 'Lahan Suite 192', '-7.5272889', '107.4791568', '302.2300', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(155, 6, NULL, 'Lahan Apt. 818', '-7.3436164', '108.2464321', '340.6200', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(156, 6, NULL, 'Lahan Suite 798', '-7.6731728', '110.8970314', '214.3800', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(157, 6, NULL, 'Lahan Apt. 992', '-7.5102323', '107.0535334', '785.7300', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(158, 6, NULL, 'Lahan Suite 418', '-6.871964', '109.6938764', '524.9600', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(159, 6, NULL, 'Lahan Suite 816', '-7.5597162', '107.3868224', '428.3200', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(160, 6, NULL, 'Lahan Apt. 857', '-7.0218399', '107.4825144', '473.8500', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(161, 6, NULL, 'Lahan Suite 553', '-7.5483051', '110.0971142', '418.5100', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(162, 6, NULL, 'Lahan Apt. 013', '-6.8161445', '107.8310583', '153.4500', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(163, 6, NULL, 'Lahan Apt. 672', '-7.6246229', '109.8224782', '600.8400', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(164, 6, NULL, 'Lahan Apt. 663', '-6.9191774', '109.7425628', '613.9500', NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(165, 6, NULL, 'Lahan Apt. 097', '-7.2025443', '108.5887424', '541.9500', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(166, 6, NULL, 'Lahan Suite 760', '-6.8875024', '108.669645', '101.5800', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(167, 6, NULL, 'Lahan Apt. 891', '-6.9653694', '107.8589175', '363.6600', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(168, 6, NULL, 'Lahan Apt. 088', '-7.1389213', '107.3082151', '559.8000', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(169, 6, NULL, 'Lahan Apt. 330', '-7.5070906', '108.0220766', '551.1900', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(170, 6, NULL, 'Lahan Apt. 906', '-7.5391074', '108.9065132', '391.1800', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(171, 6, NULL, 'Lahan Apt. 120', '-7.0747614', '109.5604728', '632.2300', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(172, 6, NULL, 'Lahan Apt. 347', '-7.4547417', '109.37326', '784.5600', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(173, 6, NULL, 'Lahan Apt. 046', '-7.3739969', '108.7186096', '755.0000', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(174, 6, NULL, 'Lahan Suite 294', '-6.856628', '107.2764797', '315.4700', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(175, 6, NULL, 'Lahan Apt. 073', '-7.6960657', '107.2328114', '380.8600', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(176, 6, NULL, 'Lahan Apt. 742', '-7.2979889', '107.9749789', '750.6900', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(177, 6, NULL, 'Lahan Suite 479', '-7.4586065', '107.9510444', '707.9600', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(178, 6, NULL, 'Lahan Apt. 465', '-7.6973691', '109.2139066', '330.7600', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(179, 6, NULL, 'Lahan Apt. 729', '-7.1300425', '107.9511892', '223.9700', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(180, 6, NULL, 'Lahan Apt. 462', '-6.8029431', '109.5385784', '450.2300', NULL, '2019-04-12 11:27:01', '2019-04-12 11:27:01'),
(181, 7, NULL, 'Lahan Apt. 306', '-7.3236601', '109.1938192', '716.2000', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(182, 7, NULL, 'Lahan Suite 000', '-7.3431717', '108.5358372', '552.5900', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(183, 7, NULL, 'Lahan Suite 276', '-7.2934336', '108.6806425', '562.1600', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(184, 7, NULL, 'Lahan Suite 291', '-7.3638496', '107.3322062', '464.7000', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(185, 7, NULL, 'Lahan Apt. 076', '-6.9469515', '107.360821', '362.0400', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(186, 7, NULL, 'Lahan Apt. 884', '-7.3272615', '109.8619765', '181.3600', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(187, 7, NULL, 'Lahan Apt. 300', '-7.4344908', '107.3055445', '153.3400', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(188, 7, NULL, 'Lahan Apt. 054', '-6.8945929', '108.4234281', '202.7400', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(189, 7, NULL, 'Lahan Suite 648', '-7.1619375', '108.7263997', '727.4100', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(190, 7, NULL, 'Lahan Apt. 664', '-6.9970807', '108.0049013', '167.3700', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(191, 7, NULL, 'Lahan Suite 268', '-7.5117485', '109.4465909', '211.6000', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(192, 7, NULL, 'Lahan Suite 074', '-7.2514541', '110.5354651', '573.8100', NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(193, 7, NULL, 'Lahan Apt. 545', '-7.6462947', '109.0353081', '109.0600', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(194, 7, NULL, 'Lahan Apt. 476', '-7.4687288', '108.909613', '251.3000', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(195, 7, NULL, 'Lahan Suite 711', '-6.9248593', '110.6007401', '292.0000', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(196, 7, NULL, 'Lahan Suite 107', '-7.6290989', '109.2337234', '561.3200', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(197, 7, NULL, 'Lahan Suite 530', '-7.5970114', '109.7715263', '569.3800', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(198, 7, NULL, 'Lahan Apt. 175', '-7.3620067', '107.0493774', '447.9600', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(199, 7, NULL, 'Lahan Suite 910', '-7.6752319', '110.8763494', '353.8900', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(200, 7, NULL, 'Lahan Apt. 681', '-7.3108503', '110.9395942', '689.8900', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(201, 7, NULL, 'Lahan Suite 784', '-6.8115035', '108.5300945', '271.3200', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(202, 7, NULL, 'Lahan Suite 697', '-7.2535889', '109.5178858', '400.1100', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(203, 7, NULL, 'Lahan Apt. 438', '-6.8856559', '108.9015495', '259.4300', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(204, 7, NULL, 'Lahan Suite 814', '-7.0182292', '109.7933153', '435.8300', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(205, 7, NULL, 'Lahan Apt. 456', '-7.3435019', '109.58079', '670.6500', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(206, 7, NULL, 'Lahan Suite 053', '-6.823235', '109.6296287', '413.6600', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(207, 7, NULL, 'Lahan Apt. 731', '-7.074769', '109.909176', '449.8100', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(208, 7, NULL, 'Lahan Apt. 254', '-7.531722', '110.6966558', '548.5800', NULL, '2019-04-12 11:27:03', '2019-04-12 11:27:03'),
(209, 7, NULL, 'Lahan Apt. 241', '-7.5406757', '108.2928628', '452.9900', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(210, 7, NULL, 'Lahan Suite 781', '-7.4153792', '108.9583464', '375.9600', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(211, 8, NULL, 'Lahan Apt. 142', '-7.5752799', '107.5288296', '217.9800', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(212, 8, NULL, 'Lahan Apt. 104', '-7.025481', '108.392374', '795.2600', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(213, 8, NULL, 'Lahan Suite 095', '-7.1174918', '109.0779214', '706.9200', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(214, 8, NULL, 'Lahan Suite 587', '-6.9717596', '110.3698449', '335.0300', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(215, 8, NULL, 'Lahan Apt. 893', '-7.3929534', '109.0688195', '456.4000', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(216, 8, NULL, 'Lahan Suite 985', '-7.1489703', '110.2949588', '403.5100', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(217, 8, NULL, 'Lahan Suite 794', '-7.6909578', '109.9343059', '766.4200', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(218, 8, NULL, 'Lahan Suite 342', '-7.1435595', '108.6416376', '585.7000', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(219, 8, NULL, 'Lahan Suite 170', '-7.5455792', '107.7998552', '630.1800', NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(220, 8, NULL, 'Lahan Suite 456', '-7.3470238', '108.4561738', '631.7700', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(221, 8, NULL, 'Lahan Suite 285', '-7.08581', '108.7219908', '105.9400', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(222, 8, NULL, 'Lahan Apt. 466', '-7.5534714', '108.5162294', '228.2300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(223, 8, NULL, 'Lahan Apt. 849', '-7.555607', '110.332888', '159.3200', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(224, 8, NULL, 'Lahan Apt. 467', '-6.8903203', '107.6894671', '252.3900', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(225, 8, NULL, 'Lahan Apt. 672', '-7.2952316', '108.7823776', '741.6300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(226, 8, NULL, 'Lahan Apt. 488', '-7.4636931', '109.7896866', '388.8500', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(227, 8, NULL, 'Lahan Apt. 328', '-6.8656177', '110.7847497', '165.4400', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(228, 8, NULL, 'Lahan Suite 769', '-7.1515669', '107.1256072', '135.0100', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(229, 8, NULL, 'Lahan Suite 410', '-6.9787555', '110.1858785', '183.5300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(230, 8, NULL, 'Lahan Suite 153', '-6.8809008', '107.8348273', '425.5900', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(231, 8, NULL, 'Lahan Suite 323', '-7.0791455', '109.1457552', '514.7400', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(232, 8, NULL, 'Lahan Apt. 981', '-6.9625044', '107.1274646', '336.3400', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(233, 8, NULL, 'Lahan Suite 415', '-6.8887668', '107.7839647', '152.3300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(234, 8, NULL, 'Lahan Apt. 827', '-7.0923954', '109.3035581', '456.9300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(235, 8, NULL, 'Lahan Suite 125', '-7.3549024', '107.9126977', '509.2300', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(236, 8, NULL, 'Lahan Apt. 374', '-7.4126827', '108.1288861', '771.2500', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(237, 8, NULL, 'Lahan Apt. 032', '-7.0816724', '108.5480613', '170.3800', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(238, 8, NULL, 'Lahan Apt. 727', '-7.3266556', '108.362445', '357.3200', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(239, 8, NULL, 'Lahan Apt. 452', '-7.5283525', '110.8684777', '237.4100', NULL, '2019-04-12 11:27:05', '2019-04-12 11:27:05'),
(240, 8, NULL, 'Lahan Apt. 913', '-7.1398382', '110.853865', '487.3900', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(241, 9, NULL, 'Lahan Suite 946', '-7.026382', '108.5125237', '201.2600', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(242, 9, NULL, 'Lahan Apt. 700', '-7.1374091', '108.0109573', '750.6200', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(243, 9, NULL, 'Lahan Suite 172', '-7.24073', '107.1540981', '305.9500', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(244, 9, NULL, 'Lahan Apt. 881', '-7.1731581', '107.1283226', '657.6900', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(245, 9, NULL, 'Lahan Suite 801', '-7.6552458', '110.7027486', '695.3800', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(246, 9, NULL, 'Lahan Apt. 697', '-7.1749723', '108.1901878', '153.7400', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(247, 9, NULL, 'Lahan Suite 946', '-6.9730405', '108.9048011', '783.9500', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(248, 9, NULL, 'Lahan Suite 288', '-7.159956', '110.876323', '513.7500', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(249, 9, NULL, 'Lahan Suite 119', '-7.1098266', '108.717723', '315.1900', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(250, 9, NULL, 'Lahan Suite 816', '-7.4278652', '110.4259005', '593.1500', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(251, 9, NULL, 'Lahan Apt. 775', '-6.8869953', '108.3742636', '235.2600', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(252, 9, NULL, 'Lahan Suite 842', '-7.4054487', '110.4667358', '334.5200', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(253, 9, NULL, 'Lahan Apt. 791', '-6.9405374', '107.8405855', '748.9400', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(254, 9, NULL, 'Lahan Apt. 761', '-7.6572386', '108.6280631', '144.0100', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(255, 9, NULL, 'Lahan Suite 744', '-7.1893874', '108.9187112', '611.8500', NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(256, 9, NULL, 'Lahan Suite 180', '-7.2519384', '109.3789487', '246.8900', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(257, 9, NULL, 'Lahan Suite 214', '-7.2669281', '108.8864114', '233.2600', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(258, 9, NULL, 'Lahan Apt. 971', '-6.847599', '107.8963243', '247.1900', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(259, 9, NULL, 'Lahan Suite 653', '-6.9179023', '110.1838285', '319.2800', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(260, 9, NULL, 'Lahan Suite 761', '-7.2830641', '107.3579183', '312.2400', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(261, 9, NULL, 'Lahan Suite 989', '-7.2123853', '107.7832751', '628.4800', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(262, 9, NULL, 'Lahan Apt. 434', '-6.9386593', '110.2139307', '391.8300', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(263, 9, NULL, 'Lahan Apt. 660', '-7.1172707', '109.6987557', '299.8300', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(264, 9, NULL, 'Lahan Suite 683', '-7.2758147', '110.504443', '335.4400', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(265, 9, NULL, 'Lahan Suite 372', '-7.2217922', '110.4656609', '210.7900', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(266, 9, NULL, 'Lahan Suite 469', '-7.307814', '108.938816', '677.4800', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(267, 9, NULL, 'Lahan Apt. 665', '-7.6859638', '108.0276562', '253.5200', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(268, 9, NULL, 'Lahan Suite 548', '-7.6478179', '109.7949024', '752.3900', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(269, 9, NULL, 'Lahan Suite 434', '-7.210997', '107.9197601', '267.7700', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(270, 9, NULL, 'Lahan Suite 857', '-7.6119072', '109.0281224', '555.8700', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(271, 10, NULL, 'Lahan Apt. 173', '-7.6966531', '107.241403', '769.3900', NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(272, 10, NULL, 'Lahan Apt. 051', '-7.3816089', '107.8183803', '658.4200', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(273, 10, NULL, 'Lahan Suite 929', '-7.2932805', '109.7622348', '273.9100', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(274, 10, NULL, 'Lahan Suite 674', '-7.3192368', '110.6312253', '179.7300', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(275, 10, NULL, 'Lahan Apt. 966', '-7.2294834', '108.9427731', '273.0300', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(276, 10, NULL, 'Lahan Apt. 839', '-7.2958937', '110.6337481', '698.7100', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(277, 10, NULL, 'Lahan Apt. 758', '-7.4520748', '110.4523454', '551.9600', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(278, 10, NULL, 'Lahan Apt. 282', '-6.8220608', '107.6850857', '109.8100', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(279, 10, NULL, 'Lahan Suite 970', '-7.6978372', '107.5176756', '259.3300', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(280, 10, NULL, 'Lahan Suite 991', '-7.3688625', '109.8808004', '327.1100', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(281, 10, NULL, 'Lahan Suite 651', '-7.0315712', '108.2677187', '343.4800', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(282, 10, NULL, 'Lahan Apt. 917', '-7.4457678', '110.1086931', '182.2600', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(283, 10, NULL, 'Lahan Suite 746', '-7.1801116', '108.9783741', '103.5900', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(284, 10, NULL, 'Lahan Apt. 962', '-6.9589809', '107.2836665', '745.2600', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(285, 10, NULL, 'Lahan Apt. 414', '-7.0392636', '109.1192', '108.4300', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(286, 10, NULL, 'Lahan Apt. 899', '-6.8314665', '109.4220713', '683.2100', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(287, 10, NULL, 'Lahan Suite 114', '-7.389838', '109.8631562', '782.0400', NULL, '2019-04-12 11:27:08', '2019-04-12 11:27:08'),
(288, 10, NULL, 'Lahan Suite 898', '-7.4658395', '109.5515039', '637.8700', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(289, 10, NULL, 'Lahan Apt. 176', '-6.9213663', '110.5557955', '110.4800', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(290, 10, NULL, 'Lahan Apt. 774', '-7.6108947', '108.6964092', '205.3100', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(291, 10, NULL, 'Lahan Suite 552', '-7.388774', '109.2151398', '292.9300', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(292, 10, NULL, 'Lahan Suite 467', '-7.4384169', '107.6955922', '661.4400', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(293, 10, NULL, 'Lahan Suite 476', '-7.6145884', '107.9047075', '777.1600', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(294, 10, NULL, 'Lahan Apt. 291', '-7.2284691', '108.0313596', '638.6100', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(295, 10, NULL, 'Lahan Apt. 218', '-7.1316863', '108.9197076', '720.9500', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(296, 10, NULL, 'Lahan Suite 144', '-6.8689658', '108.058893', '581.2400', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(297, 10, NULL, 'Lahan Suite 319', '-7.0600484', '108.3331402', '433.2000', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(298, 10, NULL, 'Lahan Suite 438', '-7.1852575', '110.4987174', '237.6200', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(299, 10, NULL, 'Lahan Apt. 862', '-6.9973924', '109.6883069', '730.8600', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(300, 10, NULL, 'Lahan Apt. 215', '-7.353201', '107.4528326', '680.8300', NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(301, 11, NULL, 'Lahan Apt. 607', '-7.2505754', '110.7429502', '418.0800', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(302, 11, NULL, 'Lahan Suite 131', '-7.665175', '107.263378', '287.4400', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(303, 11, NULL, 'Lahan Apt. 961', '-7.2904269', '109.4850577', '651.3400', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(304, 11, NULL, 'Lahan Suite 612', '-7.3165816', '110.3493769', '577.2900', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(305, 11, NULL, 'Lahan Apt. 658', '-6.8660426', '109.9024288', '443.8400', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(306, 11, NULL, 'Lahan Suite 457', '-7.4131905', '107.7495548', '296.1600', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(307, 11, NULL, 'Lahan Apt. 819', '-7.2519412', '110.7691925', '152.9600', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(308, 11, NULL, 'Lahan Apt. 807', '-7.1924747', '110.2397312', '273.8500', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(309, 11, NULL, 'Lahan Suite 156', '-6.8158179', '109.9702739', '543.7700', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(310, 11, NULL, 'Lahan Apt. 283', '-7.0565469', '109.420871', '757.8600', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(311, 11, NULL, 'Lahan Apt. 290', '-7.0125933', '107.698827', '377.3900', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(312, 11, NULL, 'Lahan Suite 252', '-7.0487499', '108.2395071', '153.5200', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(313, 11, NULL, 'Lahan Suite 340', '-7.0868409', '108.5081917', '584.4700', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(314, 11, NULL, 'Lahan Suite 792', '-6.8792406', '110.4244621', '448.6800', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(315, 11, NULL, 'Lahan Apt. 452', '-7.0608383', '110.0710011', '721.4500', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(316, 11, NULL, 'Lahan Suite 477', '-6.9646251', '109.6177782', '677.1000', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(317, 11, NULL, 'Lahan Apt. 322', '-7.4053595', '108.3391281', '550.9300', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(318, 11, NULL, 'Lahan Suite 075', '-6.8271175', '107.1155818', '642.8000', NULL, '2019-04-12 11:27:10', '2019-04-12 11:27:10'),
(319, 11, NULL, 'Lahan Apt. 761', '-7.4185356', '107.7886505', '150.1200', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(320, 11, NULL, 'Lahan Suite 699', '-6.9034518', '109.4106856', '536.9000', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(321, 11, NULL, 'Lahan Apt. 674', '-7.6258357', '108.8098046', '752.3400', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(322, 11, NULL, 'Lahan Apt. 712', '-6.9441969', '107.7899417', '413.0900', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(323, 11, NULL, 'Lahan Apt. 778', '-7.1564903', '108.3579617', '295.4000', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(324, 11, NULL, 'Lahan Apt. 528', '-7.37502', '107.054826', '339.5300', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(325, 11, NULL, 'Lahan Apt. 310', '-6.9170476', '107.8011877', '709.9200', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(326, 11, NULL, 'Lahan Suite 784', '-6.8951517', '108.2864602', '636.9000', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(327, 11, NULL, 'Lahan Suite 131', '-7.4321495', '107.4044477', '264.6100', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(328, 11, NULL, 'Lahan Suite 529', '-7.5632866', '107.991294', '286.7300', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(329, 11, NULL, 'Lahan Suite 637', '-7.0669711', '110.325835', '656.0800', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(330, 11, NULL, 'Lahan Apt. 030', '-6.8032042', '107.2331066', '618.7400', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(331, 12, NULL, 'Lahan Suite 828', '-7.1870222', '110.935885', '447.4200', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(332, 12, NULL, 'Lahan Suite 938', '-7.5867647', '107.9286447', '251.1800', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(333, 12, NULL, 'Lahan Apt. 167', '-7.396684', '107.5868394', '482.7500', NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(334, 12, NULL, 'Lahan Suite 295', '-7.5290662', '109.1000698', '473.5100', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(335, 12, NULL, 'Lahan Apt. 167', '-7.1773884', '109.6372974', '693.0200', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(336, 12, NULL, 'Lahan Suite 352', '-6.9677863', '107.8767465', '795.8900', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(337, 12, NULL, 'Lahan Suite 079', '-6.9510208', '109.2277239', '721.1700', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(338, 12, NULL, 'Lahan Apt. 339', '-7.5222076', '107.671545', '171.7200', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(339, 12, NULL, 'Lahan Suite 988', '-7.0317109', '109.250062', '304.9600', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(340, 12, NULL, 'Lahan Suite 011', '-7.3161361', '110.1344244', '168.4100', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(341, 12, NULL, 'Lahan Suite 726', '-7.2771704', '109.3854465', '782.4800', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(342, 12, NULL, 'Lahan Apt. 039', '-6.9214381', '110.7531185', '462.2700', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(343, 12, NULL, 'Lahan Apt. 717', '-6.8173597', '107.641846', '302.0500', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(344, 12, NULL, 'Lahan Apt. 127', '-7.4167385', '108.965831', '694.3100', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(345, 12, NULL, 'Lahan Apt. 777', '-7.3685771', '108.059307', '270.7300', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(346, 12, NULL, 'Lahan Apt. 037', '-7.0025864', '109.9825893', '457.9100', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(347, 12, NULL, 'Lahan Apt. 449', '-7.189094', '109.4331254', '625.7800', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(348, 12, NULL, 'Lahan Suite 232', '-7.5849278', '107.2219531', '524.5200', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(349, 12, NULL, 'Lahan Suite 805', '-7.3779193', '107.3463902', '707.1700', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(350, 12, NULL, 'Lahan Suite 717', '-6.8166997', '108.854457', '320.2700', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(351, 12, NULL, 'Lahan Suite 892', '-7.1688706', '109.4010531', '383.4400', NULL, '2019-04-12 11:27:12', '2019-04-12 11:27:12'),
(352, 12, NULL, 'Lahan Apt. 743', '-7.2740997', '107.1441512', '451.0200', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(353, 12, NULL, 'Lahan Apt. 415', '-7.5714456', '110.8624907', '160.0400', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(354, 12, NULL, 'Lahan Apt. 814', '-7.5226111', '110.6869178', '610.8800', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(355, 12, NULL, 'Lahan Suite 203', '-7.1660401', '108.9242154', '549.4200', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(356, 12, NULL, 'Lahan Suite 000', '-7.1015605', '110.1081271', '347.9900', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(357, 12, NULL, 'Lahan Apt. 463', '-7.0202424', '107.9880709', '291.9800', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(358, 12, NULL, 'Lahan Suite 487', '-7.2032041', '110.9093201', '603.3300', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(359, 12, NULL, 'Lahan Apt. 353', '-7.3161577', '109.3593585', '567.1900', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(360, 12, NULL, 'Lahan Suite 006', '-6.8104767', '110.5600318', '426.3100', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(361, 13, NULL, 'Lahan Suite 236', '-7.6219332', '107.5293626', '531.6200', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(362, 13, NULL, 'Lahan Suite 525', '-7.2043282', '107.6358192', '261.4800', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(363, 13, NULL, 'Lahan Apt. 771', '-7.6745036', '107.5552728', '612.4600', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(364, 13, NULL, 'Lahan Suite 636', '-7.658548', '110.4459239', '453.3200', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(365, 13, NULL, 'Lahan Apt. 852', '-7.682873', '109.4901702', '661.8600', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(366, 13, NULL, 'Lahan Suite 236', '-6.9053294', '110.1816371', '708.6100', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(367, 13, NULL, 'Lahan Apt. 347', '-7.6832981', '108.6818128', '673.1100', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(368, 13, NULL, 'Lahan Apt. 874', '-7.069909', '108.2495289', '333.7700', NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(369, 13, NULL, 'Lahan Suite 353', '-7.6152118', '109.5966215', '705.9600', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(370, 13, NULL, 'Lahan Suite 667', '-6.9663458', '109.7293358', '791.9200', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(371, 13, NULL, 'Lahan Suite 838', '-7.4914694', '109.5988679', '307.5800', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(372, 13, NULL, 'Lahan Apt. 281', '-7.081817', '108.6129754', '321.2600', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(373, 13, NULL, 'Lahan Apt. 900', '-7.274823', '107.4119405', '477.9500', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(374, 13, NULL, 'Lahan Apt. 091', '-7.5865477', '107.1708774', '780.5300', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(375, 13, NULL, 'Lahan Suite 403', '-7.0201102', '110.6415338', '364.7000', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(376, 13, NULL, 'Lahan Suite 742', '-7.5167039', '109.5939582', '212.2000', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(377, 13, NULL, 'Lahan Suite 517', '-7.5914737', '110.2751979', '604.1800', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(378, 13, NULL, 'Lahan Apt. 003', '-6.9851357', '110.8671293', '634.8200', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(379, 13, NULL, 'Lahan Apt. 800', '-6.8194102', '110.8638975', '691.4800', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(380, 13, NULL, 'Lahan Apt. 207', '-7.4882117', '110.5620183', '712.1100', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(381, 13, NULL, 'Lahan Apt. 179', '-7.0014342', '110.4921061', '729.3100', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(382, 13, NULL, 'Lahan Apt. 956', '-6.8391111', '108.1374855', '545.5300', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(383, 13, NULL, 'Lahan Apt. 379', '-7.3469736', '107.3843364', '304.5100', NULL, '2019-04-12 11:27:14', '2019-04-12 11:27:14'),
(384, 13, NULL, 'Lahan Apt. 406', '-7.0624886', '110.5214302', '791.1100', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(385, 13, NULL, 'Lahan Suite 816', '-6.8473629', '109.691464', '292.7300', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(386, 13, NULL, 'Lahan Apt. 759', '-7.6077597', '110.4037549', '691.8400', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(387, 13, NULL, 'Lahan Apt. 253', '-7.5981796', '110.5089029', '442.7800', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(388, 13, NULL, 'Lahan Suite 399', '-7.0405937', '110.5789408', '297.4100', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(389, 13, NULL, 'Lahan Apt. 586', '-7.0866996', '109.801876', '638.5700', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(390, 13, NULL, 'Lahan Apt. 609', '-6.9493719', '107.2121609', '640.1000', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(391, 14, NULL, 'Lahan Apt. 880', '-7.4541661', '109.9987752', '545.8500', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(392, 14, NULL, 'Lahan Apt. 897', '-6.9166999', '109.4968686', '705.7700', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(393, 14, NULL, 'Lahan Apt. 335', '-7.0574205', '109.5466522', '694.1000', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(394, 14, NULL, 'Lahan Suite 356', '-7.5307532', '107.7831574', '247.3800', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(395, 14, NULL, 'Lahan Suite 715', '-7.5197203', '110.4607853', '173.5000', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(396, 14, NULL, 'Lahan Suite 162', '-6.9237189', '108.1010574', '678.1000', NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(397, 14, NULL, 'Lahan Suite 310', '-7.3230049', '108.9379863', '306.8600', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(398, 14, NULL, 'Lahan Apt. 559', '-7.4663331', '110.191554', '730.2900', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16');
INSERT INTO `lahan` (`id`, `desa_id`, `other`, `name`, `lat`, `long`, `luas`, `pemilik`, `created_at`, `updated_at`) VALUES
(399, 14, NULL, 'Lahan Apt. 277', '-7.6564259', '107.6518212', '635.5500', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(400, 14, NULL, 'Lahan Apt. 484', '-7.2997506', '107.4656271', '777.0400', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(401, 14, NULL, 'Lahan Apt. 611', '-6.8414194', '109.031638', '798.4900', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(402, 14, NULL, 'Lahan Apt. 275', '-7.3175681', '110.7792547', '406.3300', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(403, 14, NULL, 'Lahan Suite 194', '-7.3627217', '109.7822882', '314.1200', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(404, 14, NULL, 'Lahan Apt. 473', '-7.5825389', '109.8222103', '167.0100', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(405, 14, NULL, 'Lahan Apt. 809', '-7.5671612', '110.2717758', '130.5800', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(406, 14, NULL, 'Lahan Suite 354', '-7.6172519', '107.8463079', '751.4500', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(407, 14, NULL, 'Lahan Suite 376', '-7.499444', '108.3339466', '484.3400', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(408, 14, NULL, 'Lahan Apt. 489', '-7.0590824', '109.8756507', '126.2500', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(409, 14, NULL, 'Lahan Suite 003', '-7.1471875', '109.9221004', '680.2000', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(410, 14, NULL, 'Lahan Suite 157', '-6.977991', '108.896186', '633.4400', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(411, 14, NULL, 'Lahan Suite 647', '-7.2122688', '107.4623192', '344.1500', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(412, 14, NULL, 'Lahan Suite 844', '-7.571412', '109.2193415', '268.0100', NULL, '2019-04-12 11:27:16', '2019-04-12 11:27:16'),
(413, 14, NULL, 'Lahan Suite 198', '-7.3844142', '109.659878', '777.4800', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(414, 14, NULL, 'Lahan Apt. 672', '-7.3990445', '110.8505603', '521.8300', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(415, 14, NULL, 'Lahan Apt. 638', '-7.1289251', '109.5648967', '144.9900', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(416, 14, NULL, 'Lahan Apt. 106', '-7.0871573', '109.3670349', '638.3400', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(417, 14, NULL, 'Lahan Apt. 460', '-7.0146307', '108.3311555', '311.6500', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(418, 14, NULL, 'Lahan Suite 363', '-7.6408292', '109.7023144', '184.8400', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(419, 14, NULL, 'Lahan Apt. 965', '-7.2699016', '108.9376127', '519.9700', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(420, 14, NULL, 'Lahan Suite 860', '-7.1659528', '108.8249891', '613.2600', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(421, 15, NULL, 'Lahan Apt. 816', '-7.5837507', '107.8864148', '708.6600', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(422, 15, NULL, 'Lahan Suite 822', '-7.2817046', '109.0693759', '696.3400', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(423, 15, NULL, 'Lahan Suite 661', '-7.2249028', '109.7399055', '797.0500', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(424, 15, NULL, 'Lahan Suite 169', '-6.8490561', '109.7586469', '423.5200', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(425, 15, NULL, 'Lahan Apt. 406', '-7.1952556', '108.4300915', '312.5700', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(426, 15, NULL, 'Lahan Apt. 292', '-7.6909525', '110.1146412', '126.0700', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(427, 15, NULL, 'Lahan Apt. 827', '-7.2047349', '107.7169333', '164.7900', NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17'),
(428, 15, NULL, 'Lahan Apt. 856', '-7.6164653', '110.6140304', '226.6400', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(429, 15, NULL, 'Lahan Apt. 103', '-7.3677328', '108.5174076', '143.0100', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(430, 15, NULL, 'Lahan Apt. 266', '-6.9408594', '109.1676393', '411.9800', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(431, 15, NULL, 'Lahan Apt. 717', '-7.3299089', '107.0918898', '418.0400', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(432, 15, NULL, 'Lahan Apt. 822', '-7.1985216', '110.0783516', '771.9200', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(433, 15, NULL, 'Lahan Suite 384', '-7.1280971', '108.272238', '446.0300', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(434, 15, NULL, 'Lahan Suite 372', '-7.4201992', '109.265004', '394.2000', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(435, 15, NULL, 'Lahan Suite 643', '-7.0786748', '108.0056295', '755.7400', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(436, 15, NULL, 'Lahan Apt. 938', '-7.5621623', '109.1839399', '191.0900', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(437, 15, NULL, 'Lahan Apt. 185', '-7.4417374', '107.7398055', '448.0500', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(438, 15, NULL, 'Lahan Suite 647', '-7.09885', '108.8099983', '703.3600', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(439, 15, NULL, 'Lahan Apt. 213', '-7.0826378', '110.6475262', '129.8200', NULL, '2019-04-12 11:27:18', '2019-04-12 11:27:18'),
(440, 15, NULL, 'Lahan Apt. 435', '-7.2454025', '109.6725624', '149.3400', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(441, 15, NULL, 'Lahan Suite 849', '-7.3354886', '107.5632327', '521.3900', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(442, 15, NULL, 'Lahan Apt. 903', '-7.3725068', '108.3134537', '541.2800', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(443, 15, NULL, 'Lahan Apt. 194', '-7.6245554', '109.0654579', '521.1800', NULL, '2019-04-12 11:27:19', '2019-04-12 11:27:19'),
(444, 15, NULL, 'Lahan Suite 471', '-7.6137976', '110.4058112', '777.5000', NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(445, 15, NULL, 'Lahan Apt. 627', '-7.4598555', '109.6632195', '422.8400', NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(446, 15, NULL, 'Lahan Suite 097', '-7.0978924', '109.3916765', '132.5100', NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(447, 15, NULL, 'Lahan Suite 226', '-6.9807648', '109.9040381', '732.0600', NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(448, 15, NULL, 'Lahan Apt. 368', '-6.8973725', '107.8252608', '595.2300', NULL, '2019-04-12 11:27:20', '2019-04-12 11:27:20'),
(449, 15, NULL, 'Lahan Suite 972', '-7.4120762', '107.2839665', '494.5500', NULL, '2019-04-12 11:27:21', '2019-04-12 11:27:21'),
(450, 15, NULL, 'Lahan Apt. 326', '-7.6892127', '107.246183', '621.3300', NULL, '2019-04-12 11:27:21', '2019-04-12 11:27:21');

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
(1, 2, 'Jordan', NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50');

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
(1, 'Super Admin', 'superadmin@komoditas.id', '12345', '$2y$10$hxbgBVNI76pQmm6UFUUfc.cr1RxWLiym3LA8TvA.xFVQxqTBOc5hC', 'superadmin', NULL, NULL, '2019-04-12 11:26:48', '2019-04-12 11:26:48'),
(2, 'Ali Moen', 'alimoen@komoditas.id', 'alimoen@komoditas.id', '$2y$10$ky1EbxHo1iKPKVmirYja3ey8mXacK1DJqIEzYRbv1v1EIkJHh1Jqq', 'korprov', NULL, NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(3, 'Grayce Keebler', 'graycekeebler@komoditas.id', 'graycekeebler@komoditas.id', '$2y$10$DZwk..FbXo4V66f2qd7uDeQqJUeuZncFaVDDIrbJc48oopx3Z9PeC', 'korkab', NULL, NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(4, 'Vernon Turner', 'vernonturner@komoditas.id', 'vernonturner@komoditas.id', '$2y$10$m1OiwkZ5Guel4.fWU7EtiuYQWOuYIjipRRQdiuMA.WcGUN1SdiJGq', 'korkec', NULL, NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(5, 'Emory Turner', 'emoryturner@komoditas.id', 'emoryturner@komoditas.id', '$2y$10$c4r6fEAU/uyVAGOudyM/B.txg57Ovi63F8nmvWOurS4komfNhJjgu', 'kordes', NULL, NULL, '2019-04-12 11:26:50', '2019-04-12 11:26:50'),
(6, 'Aaliyah Zulauf', 'aaliyahzulauf@komoditas.id', 'aaliyahzulauf@komoditas.id', '$2y$10$3rVQ4Dd19acVby2mbF6arum6I6k6aUUo6.fHC74zSxykp/YVuai0m', 'kordes', NULL, NULL, '2019-04-12 11:26:52', '2019-04-12 11:26:52'),
(7, 'Christa Huel', 'christahuel@komoditas.id', 'christahuel@komoditas.id', '$2y$10$cL55QNzMwB9LxvH7yAXUxuRgNx1Qh.VNmoGv8BKJqLErMgk3Fyre.', 'kordes', NULL, NULL, '2019-04-12 11:26:54', '2019-04-12 11:26:54'),
(8, 'Issac McGlynn', 'issacmcglynn@komoditas.id', 'issacmcglynn@komoditas.id', '$2y$10$sshznfFPJh03Hz0v0bJuA.cV8GaG6QGPmjSb0XcN6LCsgeYUNvp86', 'kordes', NULL, NULL, '2019-04-12 11:26:56', '2019-04-12 11:26:56'),
(9, 'Zelma Goldner', 'zelmagoldner@komoditas.id', 'zelmagoldner@komoditas.id', '$2y$10$HtjJbQ0b6nvBlmYVuWtXpu6AWV4hTlhUrNec7IqHCkORqcmNGvv7i', 'kordes', NULL, NULL, '2019-04-12 11:26:58', '2019-04-12 11:26:58'),
(10, 'Jamey Braun', 'jameybraun@komoditas.id', 'jameybraun@komoditas.id', '$2y$10$QhMews7Bt3vmwsWCX/feie3Uehli2H2cXz5WD7/dyZmukUydW5miK', 'korkec', NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(11, 'Katrina Reichel', 'katrinareichel@komoditas.id', 'katrinareichel@komoditas.id', '$2y$10$v8tXJgt65ddUh.iwRTdHHuPoOAlAUGu6sgFltDnzIdAUedqUmErdW', 'kordes', NULL, NULL, '2019-04-12 11:27:00', '2019-04-12 11:27:00'),
(12, 'Queen Veum', 'queenveum@komoditas.id', 'queenveum@komoditas.id', '$2y$10$mZHYGmJQ9FtpkOCYKBvVp.Qe.F22LL5PADkspM5F4jkgYnFR4zl5O', 'kordes', NULL, NULL, '2019-04-12 11:27:02', '2019-04-12 11:27:02'),
(13, 'Ofelia Pfeffer', 'ofeliapfeffer@komoditas.id', 'ofeliapfeffer@komoditas.id', '$2y$10$NxBvU2FKJJXmEZS1yZyjr.gic9JFV6LZJz0O1WYVLSbmadCE7KGe.', 'kordes', NULL, NULL, '2019-04-12 11:27:04', '2019-04-12 11:27:04'),
(14, 'Ryann Roberts', 'ryannroberts@komoditas.id', 'ryannroberts@komoditas.id', '$2y$10$4CDmAfsSYyr8l63u27vTre6TpsHoruChUz4vr7/DDokpknA2lJpSi', 'kordes', NULL, NULL, '2019-04-12 11:27:06', '2019-04-12 11:27:06'),
(15, 'Andrew Davis', 'andrewdavis@komoditas.id', 'andrewdavis@komoditas.id', '$2y$10$bxVAIP8XuZdYFEmqFOTK8uB8tSy4lz5FHhrbgGU8eeFv60RZe2AKS', 'kordes', NULL, NULL, '2019-04-12 11:27:07', '2019-04-12 11:27:07'),
(16, 'Delia Hodkiewicz', 'deliahodkiewicz@komoditas.id', 'deliahodkiewicz@komoditas.id', '$2y$10$K9GbFnv6e.phVrAv9iMMSuKIq2iuN4pQ9Vclv/cntr/d0ANXe4fAe', 'korkec', NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(17, 'Manuela Hamill', 'manuelahamill@komoditas.id', 'manuelahamill@komoditas.id', '$2y$10$8EWIu7MPgzDdIMslr3jMgudD4Sa.ioqpHOlqAcwIR0eVpvLWYSlzW', 'kordes', NULL, NULL, '2019-04-12 11:27:09', '2019-04-12 11:27:09'),
(18, 'Omer Considine', 'omerconsidine@komoditas.id', 'omerconsidine@komoditas.id', '$2y$10$8wd1QPfQzBAhvYi91Z7BGO3QM44UP.3xAVs0HuPxZ.wh/VsbBCcxG', 'kordes', NULL, NULL, '2019-04-12 11:27:11', '2019-04-12 11:27:11'),
(19, 'Hilton Satterfield', 'hiltonsatterfield@komoditas.id', 'hiltonsatterfield@komoditas.id', '$2y$10$/U2Ju2CP5lfPZ9trR27TPefPYmlhZ2kahOPDWpy53p6D/pXFwqxoG', 'kordes', NULL, NULL, '2019-04-12 11:27:13', '2019-04-12 11:27:13'),
(20, 'Anderson Schulist', 'andersonschulist@komoditas.id', 'andersonschulist@komoditas.id', '$2y$10$40JVRD4l8tf6ycULhQpvRuAMPTzAqSZkjJV/rZ32pPkkThWKarod.', 'kordes', NULL, NULL, '2019-04-12 11:27:15', '2019-04-12 11:27:15'),
(21, 'Jovan Corwin', 'jovancorwin@komoditas.id', 'jovancorwin@komoditas.id', '$2y$10$rdPyiZ/jltOhl.2g1bdFLuRvNeUxbqpzj/sn3joFcY12eKRiBJZ1G', 'kordes', NULL, NULL, '2019-04-12 11:27:17', '2019-04-12 11:27:17');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `fase`
--
ALTER TABLE `fase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `history_komoditas_lahan`
--
ALTER TABLE `history_komoditas_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;
--
-- AUTO_INCREMENT for table `lahan`
--
ALTER TABLE `lahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
  ADD CONSTRAINT `history_komoditas_lahan_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `history_komoditas_lahan_komoditas_lahan_id_foreign` FOREIGN KEY (`komoditas_lahan_id`) REFERENCES `komoditas_lahan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `history_komoditas_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
  ADD CONSTRAINT `komoditas_lahan_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `komoditas_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
