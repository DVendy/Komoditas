-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2019 at 09:08 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_lahan`
--

DROP TABLE IF EXISTS `asset_lahan`;
CREATE TABLE IF NOT EXISTS `asset_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asset_lahan_asset_id_foreign` (`asset_id`),
  KEY `asset_lahan_lahan_id_foreign` (`lahan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

DROP TABLE IF EXISTS `desa`;
CREATE TABLE IF NOT EXISTS `desa` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desa_kecamatan_id_foreign` (`kecamatan_id`),
  KEY `desa_pengurus_id_foreign` (`pengurus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id`, `pengurus_id`, `kecamatan_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Hane Parkway', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 6, 1, 'Mayer Valleys', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 7, 1, 'Eichmann Glens', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 8, 1, 'VonRueden Landing', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(5, 9, 1, 'Mueller Ford', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(6, 10, 1, 'Braxton Cape', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(7, 12, 2, 'Nikolaus Loaf', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(8, 13, 2, 'Catharine Forge', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(9, 14, 2, 'McLaughlin Plaza', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(10, 15, 2, 'Richard Turnpike', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(11, 16, 2, 'Alexandrea Mall', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(12, 17, 2, 'Kacey Flats', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(13, 18, 2, 'Kyra Parks', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(14, 19, 2, 'Lindgren Square', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(15, 21, 3, 'Efrain Station', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(16, 22, 3, 'Little Mount', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(17, 23, 3, 'Weimann Causeway', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(18, 24, 3, 'Rylan Gardens', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(19, 25, 3, 'Myriam Landing', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(20, 26, 3, 'Abbigail Mission', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(21, 27, 3, 'Rhiannon Turnpike', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(22, 29, 4, 'Maryse Meadows', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(23, 30, 4, 'Wilderman Forges', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(24, 31, 4, 'Kreiger Falls', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(25, 32, 4, 'Schaden Knolls', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(26, 33, 4, 'Schmeler Via', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(27, 34, 4, 'Zemlak Spurs', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(28, 36, 5, 'Petra Mills', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(29, 37, 5, 'Schmitt Freeway', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(30, 38, 5, 'Santa Points', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(31, 39, 5, 'Rebekah Ramp', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(32, 40, 5, 'Cruickshank Points', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(33, 41, 5, 'Clifford Village', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(34, 43, 6, 'Rodriguez Locks', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(35, 44, 6, 'Ana Way', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(36, 45, 6, 'Koch Ville', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(37, 46, 6, 'Rau Points', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(38, 47, 6, 'Dean Lodge', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(39, 48, 6, 'Tia Walks', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(40, 49, 6, 'Labadie Shores', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(41, 51, 7, 'Trantow Spurs', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(42, 52, 7, 'Geovany Plaza', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(43, 53, 7, 'Mark Vista', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(44, 54, 7, 'Tyshawn Gardens', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(45, 55, 7, 'Wehner Extensions', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(46, 56, 7, 'Hansen Shore', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(47, 57, 7, 'Walsh Dale', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(48, 58, 7, 'Christiansen Station', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `fase`
--

DROP TABLE IF EXISTS `fase`;
CREATE TABLE IF NOT EXISTS `fase` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) NOT NULL DEFAULT '0',
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fase`
--

INSERT INTO `fase` (`id`, `name`, `urutan`, `other`, `created_at`, `updated_at`) VALUES
(1, 'Persiapan', 1, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 'Penanaman', 2, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 'Pemeliharaan', 3, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 'Panen', 4, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(5, 'Kosong', 5, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

DROP TABLE IF EXISTS `kabupaten`;
CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kabupaten_provinsi_id_foreign` (`provinsi_id`),
  KEY `kabupaten_pengurus_id_foreign` (`pengurus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `pengurus_id`, `provinsi_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Minnesota', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kecamatan_kabupaten_id_foreign` (`kabupaten_id`),
  KEY `kecamatan_pengurus_id_foreign` (`pengurus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `pengurus_id`, `kabupaten_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Maggioborough', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 11, 1, 'Ashleechester', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(3, 20, 1, 'Tonyville', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(4, 28, 1, 'Gulgowskiview', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(5, 35, 1, 'East Adolphuston', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(6, 42, 1, 'Eliezerfurt', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(7, 50, 1, 'South Reggie', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas`
--

DROP TABLE IF EXISTS `komoditas`;
CREATE TABLE IF NOT EXISTS `komoditas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas`
--

INSERT INTO `komoditas` (`id`, `name`, `type`, `other`, `created_at`, `updated_at`) VALUES
(1, 'SAPI POTONG', 'ternak', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 'KAMBING POTONG', 'ternak', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 'SAPI PERAH', 'ternak', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 'AYAM PEDAGING', 'ternak', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(5, 'JAGUNG HIBRIDA', 'tanaman', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(6, 'JAGUNG MANIS', 'tanaman', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(7, 'CABE RAWIT', 'tanaman', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(8, 'PADI', 'tanaman', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(9, 'IKAN LELE', 'ikan', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(10, 'IKAN NILA', 'ikan', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(11, 'BELUT', 'ikan', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(12, 'IKAN ……', 'ikan', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan`
--

DROP TABLE IF EXISTS `komoditas_lahan`;
CREATE TABLE IF NOT EXISTS `komoditas_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `komoditas_lahan_komoditas_id_foreign` (`komoditas_id`),
  KEY `komoditas_lahan_lahan_id_foreign` (`lahan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas_lahan`
--

INSERT INTO `komoditas_lahan` (`id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '596.43', '561.25', '558.17', '328.09', '2019-01-05 20:59:32', 192, '2019-06-02 15:47:10', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 7, 2, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '450.62', '785.36', '715.80', '793.14', '2019-01-08 04:28:04', 73, '2019-05-13 15:48:46', '157.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 1, 3, 'ternak', '561.57', '219.32', '324.44', '623.88', '2019-02-07 17:47:20', 47, '2019-04-30 11:08:16', 124, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 11, 4, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '237.32', '308.12', '768.76', '370.48', '2019-02-16 20:07:59', 184, '2019-04-26 13:13:12', '87.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(5, 11, 5, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '230.71', '161.04', '569.88', '303.13', '2019-04-02 20:40:25', 56, '2019-05-02 14:23:17', '127.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(6, 8, 6, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '673.16', '607.54', '721.09', '180.84', '2019-03-01 12:09:16', 174, '2019-04-05 06:24:23', '137.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(7, 6, 7, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '579.05', '744.06', '295.18', '427.21', '2019-03-25 02:53:42', 103, '2019-06-05 07:55:46', '45.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(8, 9, 8, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '458.73', '352.41', '782.37', '535.34', '2019-03-07 00:50:32', 50, '2019-06-28 17:33:02', '71.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(9, 3, 9, 'ternak', '415.69', '618.81', '460.45', '413.56', '2019-02-19 09:05:32', 32, '2019-07-03 18:11:41', 54, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(10, 3, 10, 'ternak', '602.67', '514.10', '644.73', '376.00', '2019-02-24 17:40:15', 167, '2019-04-24 22:26:27', 64, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(11, 10, 11, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '470.27', '303.45', '542.56', '368.07', '2019-01-24 17:15:00', 165, '2019-05-24 18:21:44', '163.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(12, 12, 12, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '514.64', '583.66', '487.76', '189.91', '2019-01-07 10:26:23', 59, '2019-04-06 20:09:04', '151.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(13, 4, 13, 'ternak', '445.89', '352.18', '596.14', '194.88', '2019-02-23 02:44:10', 106, '2019-06-04 22:26:06', 27, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(14, 9, 14, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '124.67', '598.80', '686.37', '693.02', '2019-03-09 00:20:33', 64, '2019-05-23 20:02:17', '37.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(15, 11, 15, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '460.64', '789.03', '446.56', '714.82', '2019-02-27 14:26:44', 47, '2019-04-29 07:42:09', '72.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(16, 5, 16, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '749.67', '472.77', '542.62', '407.45', '2019-01-17 19:34:01', 122, '2019-06-12 01:18:39', '125.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(17, 7, 17, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '301.70', '744.50', '468.01', '656.81', '2019-03-30 18:25:16', 192, '2019-06-12 03:44:50', '145.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(18, 10, 18, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '236.63', '556.61', '341.58', '487.54', '2019-01-08 09:13:05', 11, '2019-05-13 13:02:23', '99.00', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(19, 3, 19, 'ternak', '449.77', '495.41', '709.91', '618.70', '2019-03-22 12:02:26', 197, '2019-06-24 20:53:43', 147, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(20, 10, 20, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '475.65', '401.41', '634.83', '798.36', '2019-03-22 18:33:17', 189, '2019-04-05 08:39:10', '158.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(21, 12, 21, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '415.90', '507.15', '568.52', '644.83', '2019-02-16 14:45:35', 173, '2019-05-20 04:58:33', '95.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(22, 9, 22, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '626.55', '413.21', '396.56', '147.48', '2019-03-13 13:28:11', 35, '2019-06-30 17:57:19', '167.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(23, 5, 23, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '453.10', '348.46', '370.20', '424.61', '2019-01-14 00:21:25', 82, '2019-04-16 08:29:47', '114.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(24, 7, 24, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '555.04', '184.15', '159.19', '397.38', '2019-01-23 17:32:47', 128, '2019-06-09 04:21:17', '144.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(25, 5, 25, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '227.43', '655.41', '145.08', '330.38', '2019-03-25 19:01:20', 110, '2019-06-18 00:25:06', '90.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(26, 7, 26, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '725.51', '604.68', '541.92', '103.39', '2019-03-28 12:28:09', 195, '2019-07-04 01:45:37', '193.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(27, 3, 27, 'ternak', '215.35', '191.16', '386.89', '301.48', '2019-03-06 23:59:16', 193, '2019-04-12 06:24:27', 161, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(28, 5, 28, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '699.82', '384.52', '238.65', '112.56', '2019-02-19 12:30:55', 46, '2019-05-26 20:01:03', '96.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(29, 5, 29, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '420.70', '379.74', '543.75', '393.45', '2019-03-17 19:08:51', 57, '2019-07-03 04:10:44', '122.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(30, 11, 30, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '445.50', '202.24', '476.00', '337.19', '2019-01-25 17:11:00', 186, '2019-04-14 12:43:17', '169.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(31, 2, 31, 'ternak', '462.47', '329.32', '646.19', '485.15', '2019-03-15 08:40:38', 60, '2019-05-22 07:24:02', 29, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(32, 10, 32, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '136.65', '281.40', '573.50', '322.25', '2019-03-21 08:09:03', 111, '2019-06-26 10:20:12', '17.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(33, 5, 33, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '152.72', '454.17', '469.12', '703.42', '2019-01-07 14:28:34', 160, '2019-06-18 01:52:23', '109.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(34, 12, 34, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '737.06', '656.18', '622.16', '251.65', '2019-01-25 08:34:36', 84, '2019-05-26 23:19:50', '30.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(35, 7, 35, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '409.18', '799.50', '750.46', '710.62', '2019-02-22 16:16:19', 181, '2019-04-11 04:34:15', '69.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(36, 2, 36, 'ternak', '595.93', '717.57', '527.56', '461.37', '2019-03-17 09:22:55', 165, '2019-04-15 23:38:04', 71, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(37, 11, 37, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '441.33', '701.37', '179.57', '362.65', '2019-03-30 11:35:17', 176, '2019-04-24 08:31:58', '184.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(38, 7, 38, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '756.15', '333.32', '798.55', '285.21', '2019-02-09 14:51:56', 84, '2019-06-11 03:56:57', '134.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(39, 8, 39, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '394.02', '756.95', '666.39', '481.18', '2019-02-23 00:53:02', 28, '2019-06-21 09:28:47', '115.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(40, 8, 40, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '240.58', '314.04', '276.58', '586.38', '2019-02-06 22:44:15', 62, '2019-04-29 00:55:28', '177.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(41, 7, 41, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '312.18', '191.53', '728.55', '284.01', '2019-03-31 05:42:30', 150, '2019-06-05 07:37:12', '118.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(42, 5, 42, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '696.95', '275.48', '668.05', '614.33', '2019-01-29 22:01:48', 170, '2019-05-29 00:41:16', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(43, 6, 43, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '162.32', '121.08', '200.45', '555.58', '2019-03-28 08:04:48', 121, '2019-04-08 22:43:15', '35.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(44, 6, 44, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '350.04', '453.10', '672.46', '615.33', '2019-02-27 02:04:38', 152, '2019-04-15 04:16:36', '176.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(45, 2, 45, 'ternak', '496.59', '711.21', '401.64', '725.10', '2019-02-05 17:13:52', 158, '2019-06-04 11:34:39', 108, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(46, 11, 46, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '108.35', '358.29', '144.60', '681.03', '2019-01-25 21:07:46', 145, '2019-07-04 21:21:20', '21.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(47, 3, 47, 'ternak', '153.60', '605.65', '324.76', '305.95', '2019-02-22 01:08:23', 187, '2019-04-18 02:05:21', 90, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(48, 3, 48, 'ternak', '322.64', '393.48', '442.05', '168.35', '2019-01-30 04:13:13', 46, '2019-05-29 15:39:43', 174, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(49, 1, 49, 'ternak', '778.52', '402.12', '665.55', '205.58', '2019-02-14 10:50:45', 30, '2019-05-29 14:20:50', 196, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(50, 12, 50, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '586.55', '590.36', '186.95', '464.28', '2019-03-16 04:26:52', 47, '2019-05-28 16:25:33', '48.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(51, 11, 51, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '463.57', '267.82', '634.12', '437.26', '2019-03-14 08:32:54', 164, '2019-06-12 14:37:11', '106.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(52, 3, 52, 'ternak', '204.15', '111.61', '283.24', '579.58', '2019-02-25 21:19:26', 68, '2019-04-17 15:52:50', 89, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(53, 10, 53, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '337.36', '622.38', '540.79', '785.21', '2019-03-13 07:42:59', 37, '2019-06-19 06:12:17', '45.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(54, 10, 54, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '712.35', '575.48', '775.06', '363.13', '2019-04-03 13:59:04', 46, '2019-04-11 13:15:03', '150.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(55, 8, 55, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '433.58', '617.09', '475.40', '430.84', '2019-03-17 03:16:23', 126, '2019-04-13 08:51:25', '144.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(56, 12, 56, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '338.23', '345.84', '385.64', '112.06', '2019-02-23 07:35:40', 184, '2019-06-12 19:12:39', '194.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(57, 12, 57, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '457.96', '569.04', '133.22', '286.64', '2019-02-20 05:51:59', 96, '2019-05-07 12:16:28', '194.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(58, 3, 58, 'ternak', '715.76', '644.41', '701.88', '493.16', '2019-03-24 10:52:00', 98, '2019-04-29 16:31:01', 46, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(59, 10, 59, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '575.26', '294.41', '484.43', '452.92', '2019-03-24 06:57:06', 89, '2019-06-17 02:58:24', '146.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(60, 9, 60, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '316.81', '300.96', '658.63', '497.94', '2019-02-18 14:34:31', 56, '2019-04-21 04:55:10', '36.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(61, 12, 61, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '378.43', '615.86', '509.50', '433.10', '2019-02-19 02:02:10', 161, '2019-04-15 16:28:42', '25.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(62, 5, 62, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '439.71', '758.83', '799.79', '295.09', '2019-02-13 21:19:58', 197, '2019-04-10 08:07:47', '43.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(63, 11, 63, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '127.64', '151.72', '159.68', '574.52', '2019-02-09 08:35:01', 160, '2019-06-19 22:54:49', '199.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(64, 1, 64, 'ternak', '569.44', '394.92', '103.03', '214.54', '2019-03-18 15:40:51', 170, '2019-06-29 12:27:53', 98, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(65, 11, 65, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '745.52', '517.02', '337.61', '422.26', '2019-01-22 00:45:55', 59, '2019-06-24 07:07:25', '23.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(66, 12, 66, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '184.89', '393.96', '698.79', '489.59', '2019-02-10 10:05:50', 105, '2019-04-30 15:43:10', '25.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(67, 10, 67, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '673.77', '634.01', '258.45', '403.27', '2019-01-09 02:01:41', 138, '2019-04-20 07:05:28', '108.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(68, 2, 68, 'ternak', '208.07', '604.16', '637.13', '720.25', '2019-03-21 19:07:57', 30, '2019-05-31 09:30:41', 110, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(69, 3, 69, 'ternak', '138.22', '775.17', '476.02', '687.42', '2019-01-19 18:03:25', 83, '2019-06-04 22:16:22', 13, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(70, 10, 70, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '443.59', '367.44', '484.18', '389.67', '2019-03-18 01:38:24', 83, '2019-06-10 01:24:41', '48.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(71, 12, 71, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '655.76', '310.84', '319.52', '207.11', '2019-01-11 16:24:08', 169, '2019-06-07 14:47:36', '85.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(72, 6, 72, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '370.03', '594.80', '797.97', '377.23', '2019-01-27 21:28:20', 110, '2019-06-13 14:23:47', '38.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(73, 6, 73, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '389.61', '759.33', '285.80', '151.37', '2019-03-25 09:42:24', 123, '2019-06-15 14:08:38', '132.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(74, 7, 74, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '324.78', '453.40', '176.32', '207.32', '2019-03-19 11:13:34', 140, '2019-07-01 06:59:57', '160.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(75, 4, 75, 'ternak', '245.73', '643.65', '676.33', '115.50', '2019-03-17 02:25:02', 134, '2019-06-12 18:17:18', 113, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(76, 3, 76, 'ternak', '431.74', '343.01', '340.19', '559.59', '2019-03-09 16:25:52', 21, '2019-05-28 11:13:52', 144, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(77, 10, 77, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '720.41', '577.48', '740.00', '551.55', '2019-03-23 20:15:05', 63, '2019-06-27 08:57:42', '165.00', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(78, 1, 78, 'ternak', '112.60', '715.33', '379.30', '210.57', '2019-01-20 04:55:07', 139, '2019-06-29 14:50:59', 167, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(79, 2, 79, 'ternak', '266.65', '263.80', '428.05', '505.87', '2019-01-22 13:52:49', 29, '2019-05-27 01:31:23', 35, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(80, 9, 80, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '788.08', '319.98', '439.70', '217.50', '2019-03-07 15:17:41', 160, '2019-05-30 13:50:19', '35.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(81, 10, 81, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '215.92', '498.98', '520.76', '172.50', '2019-03-05 06:18:11', 185, '2019-07-02 19:50:54', '90.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(82, 9, 82, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '199.26', '181.83', '682.84', '428.78', '2019-02-06 11:51:13', 95, '2019-06-07 17:25:26', '13.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(83, 9, 83, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '174.18', '556.53', '551.08', '263.87', '2019-03-09 20:22:58', 179, '2019-04-08 08:01:15', '94.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(84, 2, 84, 'ternak', '713.34', '690.40', '643.92', '130.90', '2019-03-08 11:02:22', 164, '2019-06-03 05:18:41', 159, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(85, 1, 85, 'ternak', '647.24', '672.12', '642.89', '782.15', '2019-02-04 02:37:02', 135, '2019-05-27 18:31:27', 47, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(86, 12, 86, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '755.10', '189.89', '508.26', '353.14', '2019-02-04 17:28:09', 11, '2019-04-06 21:30:00', '86.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(87, 9, 87, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '209.37', '778.07', '177.91', '611.61', '2019-04-02 09:41:46', 72, '2019-05-16 23:48:19', '182.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(88, 5, 88, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '679.17', '609.12', '552.73', '626.30', '2019-01-29 09:53:22', 127, '2019-05-23 18:22:57', '170.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(89, 7, 89, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '446.28', '580.68', '638.27', '502.69', '2019-04-05 00:00:51', 21, '2019-05-24 08:57:56', '95.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(90, 12, 90, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '318.48', '534.92', '192.69', '650.09', '2019-03-21 00:18:03', 156, '2019-05-06 08:38:05', '105.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(91, 11, 91, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '371.10', '343.50', '334.31', '150.43', '2019-03-12 02:57:47', 82, '2019-06-12 17:43:24', '101.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(92, 12, 92, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '697.49', '434.95', '734.86', '584.60', '2019-01-18 04:54:47', 110, '2019-04-19 07:11:52', '130.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(93, 10, 93, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '244.96', '744.54', '357.52', '563.38', '2019-02-18 20:19:23', 55, '2019-04-19 08:21:02', '32.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(94, 4, 94, 'ternak', '159.41', '158.65', '581.61', '669.71', '2019-01-24 03:08:31', 153, '2019-05-21 16:27:12', 158, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(95, 9, 95, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '265.48', '400.34', '316.88', '531.87', '2019-02-24 19:16:56', 155, '2019-05-30 02:33:20', '192.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(96, 6, 96, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '766.80', '511.51', '533.20', '263.96', '2019-03-29 22:03:21', 155, '2019-06-01 03:39:18', '158.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(97, 12, 97, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '417.34', '735.93', '696.30', '466.60', '2019-03-10 09:58:48', 93, '2019-05-22 14:06:12', '110.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(98, 6, 98, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '189.62', '303.00', '281.79', '758.62', '2019-01-17 12:33:51', 164, '2019-06-15 01:05:05', '128.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(99, 12, 99, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '254.99', '549.01', '632.50', '794.28', '2019-01-11 18:27:48', 124, '2019-06-06 23:53:23', '87.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(100, 10, 100, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '385.83', '435.64', '632.78', '717.95', '2019-03-01 17:12:06', 196, '2019-05-23 00:41:53', '26.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(101, 2, 101, 'ternak', '485.49', '143.68', '735.32', '689.14', '2019-03-19 21:07:10', 33, '2019-05-10 09:56:09', 121, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(102, 9, 102, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '655.63', '630.31', '770.54', '480.43', '2019-03-01 15:04:46', 122, '2019-06-10 07:57:58', '146.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(103, 2, 103, 'ternak', '470.26', '543.97', '454.40', '329.19', '2019-01-31 01:20:49', 198, '2019-06-24 04:18:44', 70, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(104, 1, 104, 'ternak', '741.29', '768.57', '282.32', '308.39', '2019-01-18 01:35:21', 198, '2019-05-14 21:28:13', 37, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(105, 1, 105, 'ternak', '662.84', '135.90', '143.64', '323.38', '2019-01-09 12:11:25', 185, '2019-05-21 11:03:50', 169, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(106, 10, 106, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '428.94', '269.70', '285.70', '246.21', '2019-03-13 22:46:09', 103, '2019-04-17 03:54:08', '79.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(107, 6, 107, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '202.63', '604.58', '243.67', '704.83', '2019-03-12 07:11:33', 14, '2019-05-04 08:56:47', '21.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(108, 3, 108, 'ternak', '744.09', '422.93', '686.88', '714.52', '2019-02-28 13:31:16', 104, '2019-05-04 03:23:10', 193, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(109, 3, 109, 'ternak', '203.03', '765.87', '508.87', '569.25', '2019-01-14 16:07:31', 142, '2019-04-27 18:42:20', 140, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(110, 7, 110, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '410.43', '217.43', '767.01', '138.14', '2019-03-03 23:56:36', 24, '2019-05-23 16:54:46', '190.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(111, 8, 111, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '103.75', '634.93', '205.16', '580.35', '2019-01-05 05:57:18', 29, '2019-06-03 22:25:13', '182.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(112, 4, 112, 'ternak', '535.93', '764.64', '594.29', '494.10', '2019-01-06 17:14:30', 173, '2019-06-02 09:45:53', 91, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(113, 7, 113, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '712.56', '701.78', '779.98', '562.19', '2019-02-07 07:37:18', 29, '2019-05-18 05:14:17', '41.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(114, 6, 114, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '592.25', '670.16', '135.81', '423.25', '2019-01-15 07:35:56', 36, '2019-05-06 01:46:53', '37.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(115, 11, 115, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '249.48', '636.26', '180.23', '715.25', '2019-03-02 08:41:52', 24, '2019-05-01 19:13:15', '166.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(116, 10, 116, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '500.79', '125.05', '146.76', '785.28', '2019-02-24 14:00:40', 199, '2019-05-13 02:27:59', '92.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(117, 10, 117, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '186.43', '602.83', '288.86', '720.85', '2019-03-05 01:10:50', 179, '2019-05-31 23:03:55', '112.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(118, 3, 118, 'ternak', '119.83', '762.51', '200.91', '459.11', '2019-03-02 23:15:22', 31, '2019-06-03 05:50:28', 113, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(119, 10, 119, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '613.46', '587.70', '350.16', '176.11', '2019-02-03 04:58:27', 62, '2019-04-12 12:40:34', '79.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(120, 7, 120, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '619.57', '779.26', '115.27', '342.49', '2019-03-28 02:47:31', 31, '2019-04-15 03:56:21', '84.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(121, 7, 121, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '788.34', '750.98', '387.40', '355.11', '2019-02-06 23:49:19', 152, '2019-05-29 01:39:05', '154.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(122, 4, 122, 'ternak', '688.45', '514.46', '508.93', '589.92', '2019-01-25 00:17:56', 190, '2019-04-10 23:10:04', 197, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(123, 12, 123, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '590.91', '226.92', '582.17', '605.32', '2019-01-08 12:07:29', 52, '2019-04-12 15:49:11', '198.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(124, 12, 124, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '457.46', '544.38', '416.73', '506.06', '2019-01-08 01:15:44', 169, '2019-06-11 09:42:25', '76.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(125, 11, 125, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '460.05', '273.26', '147.85', '718.88', '2019-02-26 20:40:21', 52, '2019-04-05 16:40:07', '139.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(126, 1, 126, 'ternak', '488.56', '661.96', '664.39', '602.82', '2019-01-20 03:55:28', 44, '2019-05-17 04:01:40', 175, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(127, 10, 127, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '511.80', '558.15', '446.80', '345.37', '2019-01-08 16:47:00', 83, '2019-06-17 01:09:55', '198.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(128, 5, 128, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '744.24', '406.04', '608.74', '354.42', '2019-01-26 10:09:34', 58, '2019-06-11 04:32:48', '122.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(129, 5, 129, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '267.45', '251.99', '569.98', '376.11', '2019-01-15 18:17:04', 185, '2019-05-06 20:33:18', '162.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(130, 1, 130, 'ternak', '677.44', '421.13', '231.12', '371.09', '2019-03-26 10:40:52', 189, '2019-05-08 16:51:43', 88, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(131, 12, 131, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '385.42', '540.70', '528.73', '120.60', '2019-02-02 04:56:09', 185, '2019-04-11 15:49:38', '172.00', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(132, 7, 132, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '417.03', '380.53', '186.96', '436.17', '2019-03-20 02:56:52', 25, '2019-04-28 07:34:10', '194.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(133, 7, 133, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '243.05', '443.09', '571.71', '425.87', '2019-01-13 19:10:53', 171, '2019-06-05 19:52:33', '86.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(134, 7, 134, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '702.54', '194.60', '674.56', '263.82', '2019-03-28 06:32:27', 66, '2019-05-15 12:56:01', '41.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(135, 4, 135, 'ternak', '735.71', '345.67', '626.23', '467.49', '2019-02-16 14:39:17', 124, '2019-06-30 15:00:06', 12, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(136, 7, 136, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '364.15', '504.65', '736.57', '666.54', '2019-01-08 23:12:02', 193, '2019-04-14 08:44:37', '22.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(137, 5, 137, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '725.66', '714.14', '296.93', '691.93', '2019-01-15 04:09:41', 188, '2019-04-06 06:38:51', '114.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(138, 11, 138, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '561.02', '448.54', '228.69', '495.15', '2019-02-14 18:07:53', 65, '2019-05-24 19:05:55', '192.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(139, 1, 139, 'ternak', '260.30', '151.63', '490.97', '458.35', '2019-03-25 11:29:45', 15, '2019-05-14 01:48:51', 185, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(140, 9, 140, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '142.73', '671.22', '332.17', '698.59', '2019-01-28 01:22:09', 137, '2019-05-10 04:41:10', '45.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(141, 1, 141, 'ternak', '491.50', '255.54', '777.46', '568.56', '2019-01-20 04:33:26', 112, '2019-04-14 18:55:03', 107, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(142, 7, 142, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '788.99', '105.62', '164.18', '756.64', '2019-02-15 07:46:20', 51, '2019-07-03 18:57:22', '16.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(143, 1, 143, 'ternak', '193.57', '583.33', '208.82', '541.68', '2019-01-12 23:30:06', 188, '2019-06-14 07:42:49', 193, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(144, 2, 144, 'ternak', '550.90', '170.33', '371.53', '108.81', '2019-02-02 19:22:24', 38, '2019-05-25 18:11:21', 139, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(145, 2, 145, 'ternak', '297.54', '522.87', '356.86', '208.57', '2019-02-17 10:27:12', 55, '2019-05-02 21:15:55', 11, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(146, 12, 146, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '687.04', '517.72', '374.52', '397.33', '2019-01-25 04:26:06', 96, '2019-04-09 16:23:19', '197.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(147, 12, 147, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '785.83', '307.21', '661.22', '106.18', '2019-02-11 16:33:24', 97, '2019-06-18 12:07:31', '58.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(148, 4, 148, 'ternak', '164.27', '700.84', '692.55', '452.32', '2019-04-04 13:12:43', 154, '2019-06-06 21:37:12', 190, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(149, 5, 149, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '283.41', '668.69', '201.41', '134.80', '2019-01-13 16:54:39', 102, '2019-06-02 12:08:39', '35.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(150, 2, 150, 'ternak', '519.85', '500.35', '128.98', '384.12', '2019-02-15 14:12:01', 30, '2019-04-13 00:37:06', 160, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(151, 12, 151, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '280.48', '319.27', '709.47', '121.13', '2019-03-20 18:05:41', 58, '2019-04-19 21:43:26', '138.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(152, 5, 152, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '341.52', '383.52', '150.80', '729.99', '2019-02-16 05:14:37', 195, '2019-04-24 05:25:44', '136.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(153, 3, 153, 'ternak', '318.36', '617.85', '603.54', '669.63', '2019-03-09 22:02:59', 125, '2019-06-13 11:02:46', 64, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(154, 7, 154, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '410.26', '518.35', '735.01', '105.45', '2019-02-11 18:30:40', 182, '2019-05-07 22:30:29', '88.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(155, 11, 155, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '788.81', '624.24', '703.80', '399.58', '2019-02-10 02:12:16', 50, '2019-06-10 05:21:17', '98.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(156, 8, 156, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '425.55', '106.46', '641.81', '293.34', '2019-03-31 12:58:05', 78, '2019-06-18 20:05:23', '107.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(157, 2, 157, 'ternak', '682.91', '334.85', '167.36', '649.82', '2019-02-03 21:04:53', 128, '2019-05-25 07:23:43', 140, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(158, 10, 158, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '525.27', '561.90', '389.56', '779.17', '2019-03-07 20:08:54', 171, '2019-06-20 07:44:44', '109.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(159, 6, 159, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '559.00', '231.47', '482.15', '425.04', '2019-02-28 23:36:00', 151, '2019-04-29 05:00:50', '54.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(160, 10, 160, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '308.31', '243.21', '605.35', '597.88', '2019-03-13 15:54:17', 34, '2019-07-02 23:16:51', '72.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(161, 9, 161, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '151.10', '369.24', '622.37', '673.09', '2019-04-03 16:20:07', 186, '2019-06-04 14:30:54', '171.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(162, 11, 162, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '442.86', '796.25', '438.31', '494.04', '2019-03-24 05:57:01', 152, '2019-05-21 10:31:33', '197.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(163, 11, 163, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '183.26', '546.72', '137.70', '285.31', '2019-02-22 13:07:45', 150, '2019-06-24 04:06:36', '176.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(164, 4, 164, 'ternak', '761.38', '113.85', '491.31', '479.29', '2019-03-09 04:09:59', 191, '2019-05-02 13:47:04', 33, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(165, 2, 165, 'ternak', '327.60', '255.62', '418.65', '537.86', '2019-03-15 23:49:56', 54, '2019-06-26 01:24:23', 130, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(166, 1, 166, 'ternak', '406.32', '755.01', '669.89', '495.08', '2019-03-25 15:49:16', 36, '2019-05-19 23:26:35', 82, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(167, 10, 167, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '167.33', '648.98', '550.63', '454.83', '2019-02-27 09:26:53', 129, '2019-06-25 16:13:02', '66.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(168, 3, 168, 'ternak', '589.73', '207.85', '749.65', '773.51', '2019-02-28 04:37:54', 167, '2019-05-10 23:48:37', 41, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(169, 12, 169, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '502.97', '377.96', '287.19', '159.83', '2019-02-01 13:47:40', 106, '2019-06-17 09:16:36', '97.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(170, 9, 170, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '592.89', '480.99', '186.43', '603.87', '2019-01-18 08:07:24', 193, '2019-05-23 20:13:15', '49.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(171, 5, 171, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '787.59', '108.83', '169.64', '397.53', '2019-03-09 22:47:28', 138, '2019-06-30 15:48:46', '15.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(172, 6, 172, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '322.60', '592.69', '578.84', '589.60', '2019-01-23 13:59:40', 61, '2019-05-04 03:56:11', '98.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(173, 9, 173, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '429.63', '191.60', '448.32', '549.94', '2019-03-15 02:27:25', 155, '2019-06-02 11:43:22', '127.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(174, 6, 174, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '147.49', '146.63', '296.37', '492.12', '2019-02-01 16:39:49', 146, '2019-05-01 12:51:25', '151.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(175, 6, 175, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '424.52', '500.17', '791.57', '735.44', '2019-02-15 13:57:40', 31, '2019-05-07 04:28:03', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(176, 3, 176, 'ternak', '663.50', '767.99', '767.12', '518.96', '2019-02-20 09:14:38', 102, '2019-05-23 10:44:58', 177, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(177, 1, 177, 'ternak', '428.38', '669.67', '238.65', '324.00', '2019-03-26 13:38:21', 122, '2019-04-30 21:16:05', 46, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(178, 8, 178, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '326.41', '761.85', '330.33', '599.05', '2019-01-26 20:01:30', 25, '2019-05-21 10:08:52', '123.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(179, 9, 179, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '310.91', '735.67', '115.68', '544.20', '2019-01-22 00:53:27', 164, '2019-06-09 23:46:51', '81.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(180, 9, 180, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '571.27', '702.83', '348.27', '332.69', '2019-03-19 20:36:01', 126, '2019-06-25 11:03:12', '10.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(181, 10, 181, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '690.94', '269.85', '281.65', '205.64', '2019-01-28 01:59:18', 81, '2019-07-02 01:03:13', '96.00', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(182, 2, 182, 'ternak', '204.43', '673.96', '676.01', '218.54', '2019-01-28 03:46:37', 26, '2019-05-02 10:48:53', 15, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(183, 1, 183, 'ternak', '351.61', '138.18', '678.83', '236.67', '2019-03-09 11:41:52', 61, '2019-06-29 10:26:35', 186, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(184, 1, 184, 'ternak', '433.13', '559.81', '321.30', '734.92', '2019-01-16 14:10:22', 161, '2019-04-10 22:55:24', 80, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(185, 5, 185, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '608.02', '489.56', '572.92', '660.93', '2019-01-06 20:11:54', 156, '2019-06-05 18:09:34', '59.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(186, 4, 186, 'ternak', '707.90', '107.92', '723.97', '289.50', '2019-01-18 07:14:28', 94, '2019-06-23 21:54:43', 110, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(187, 2, 187, 'ternak', '623.59', '166.30', '217.30', '519.40', '2019-02-13 00:10:33', 71, '2019-07-04 18:52:11', 140, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(188, 7, 188, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '579.23', '637.17', '749.06', '726.01', '2019-03-05 00:54:45', 128, '2019-05-26 03:28:57', '139.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(189, 5, 189, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '260.77', '103.99', '689.43', '233.80', '2019-01-28 12:49:35', 19, '2019-05-24 21:15:37', '73.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29');
INSERT INTO `komoditas_lahan` (`id`, `komoditas_id`, `lahan_id`, `type`, `b_luas_kandang`, `b_tahap_persiapan`, `b_tahap_pemeliharaan`, `b_tahap_panen`, `b_tanggal_masuk_ternak`, `b_jumlah_ternak`, `b_tanggal_panen`, `b_estimasi_hasil_panen`, `t_luas_lahan`, `t_tahap_persiapan`, `t_tahap_pemeliharaan`, `t_tahap_panen`, `t_tanggal_mulai_tanam`, `t_jumlah_tanaman`, `t_tanggal_panen`, `t_estimasi_hasil_panen`, `i_luas_kolam`, `i_tahap_persiapan`, `i_tahap_pemeliharaan`, `i_tahap_panen`, `i_tanggal_tebar_ikan`, `i_jumlah_ikan`, `i_tanggal_panen`, `i_estimasi_hasil_panen`, `other`, `created_at`, `updated_at`) VALUES
(190, 1, 190, 'ternak', '609.21', '257.22', '221.97', '757.98', '2019-03-09 09:10:11', 64, '2019-05-04 21:07:46', 134, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(191, 10, 191, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '649.18', '110.93', '734.48', '268.85', '2019-03-18 09:35:37', 76, '2019-05-05 02:19:59', '124.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(192, 6, 192, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '661.83', '249.04', '775.42', '727.18', '2019-04-01 19:07:32', 179, '2019-05-31 11:47:04', '33.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(193, 10, 193, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '634.21', '710.40', '795.47', '265.35', '2019-03-20 17:34:36', 43, '2019-05-09 00:03:49', '131.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(194, 3, 194, 'ternak', '217.66', '722.43', '738.96', '470.94', '2019-03-19 06:42:41', 64, '2019-05-17 04:46:19', 39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(195, 7, 195, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '649.95', '762.29', '181.58', '135.52', '2019-03-18 05:53:11', 106, '2019-06-23 01:44:49', '66.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(196, 4, 196, 'ternak', '525.24', '673.60', '581.36', '752.86', '2019-03-25 09:49:31', 134, '2019-04-25 02:20:46', 45, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(197, 6, 197, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '386.79', '501.08', '399.78', '117.18', '2019-03-31 06:51:34', 88, '2019-06-16 12:06:54', '85.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(198, 5, 198, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '351.59', '673.22', '242.28', '481.98', '2019-01-30 22:06:41', 177, '2019-04-27 22:33:56', '199.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(199, 1, 199, 'ternak', '323.55', '416.46', '577.98', '698.88', '2019-03-20 21:31:52', 146, '2019-04-09 09:39:01', 55, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(200, 2, 200, 'ternak', '221.28', '708.69', '545.65', '727.06', '2019-02-26 13:42:19', 29, '2019-04-28 12:34:21', 157, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(201, 3, 201, 'ternak', '512.07', '362.93', '619.91', '325.41', '2019-01-16 00:39:30', 163, '2019-04-09 22:16:22', 137, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(202, 10, 202, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '245.96', '163.13', '653.59', '330.95', '2019-01-27 13:41:10', 178, '2019-04-08 11:05:11', '148.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(203, 5, 203, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '299.96', '314.60', '725.37', '581.46', '2019-01-10 03:18:18', 114, '2019-04-28 04:54:28', '13.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(204, 8, 204, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '379.79', '227.80', '379.45', '609.79', '2019-04-01 04:38:00', 95, '2019-04-24 04:31:58', '108.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(205, 12, 205, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '613.14', '203.86', '429.61', '380.46', '2019-03-09 03:46:30', 126, '2019-06-14 20:21:04', '62.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(206, 2, 206, 'ternak', '195.60', '630.02', '425.22', '674.24', '2019-04-01 16:43:39', 181, '2019-06-26 08:51:33', 148, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(207, 1, 207, 'ternak', '147.25', '236.86', '241.33', '683.12', '2019-02-15 02:05:04', 140, '2019-04-14 07:42:18', 10, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(208, 6, 208, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '507.08', '297.93', '629.46', '773.17', '2019-02-10 10:10:28', 41, '2019-05-21 21:17:23', '111.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(209, 11, 209, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '143.60', '295.88', '299.74', '313.62', '2019-03-17 08:28:31', 181, '2019-05-11 16:49:46', '23.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(210, 8, 210, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '126.18', '274.58', '781.62', '595.70', '2019-03-11 04:21:40', 13, '2019-06-28 03:22:23', '114.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(211, 1, 211, 'ternak', '444.36', '159.84', '718.82', '299.20', '2019-02-24 04:05:25', 189, '2019-04-29 00:08:44', 61, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(212, 3, 212, 'ternak', '134.75', '404.85', '170.92', '667.15', '2019-01-27 04:04:57', 125, '2019-04-25 07:56:17', 67, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(213, 11, 213, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '771.66', '613.34', '736.23', '570.91', '2019-03-22 17:22:11', 72, '2019-04-30 11:53:58', '20.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(214, 12, 214, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '146.25', '643.29', '147.11', '536.64', '2019-03-05 13:00:55', 14, '2019-06-10 19:40:52', '18.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(215, 2, 215, 'ternak', '700.05', '450.33', '110.29', '673.02', '2019-01-21 13:45:08', 96, '2019-06-16 08:32:18', 72, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(216, 9, 216, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '642.42', '794.52', '173.04', '262.25', '2019-02-24 13:55:24', 37, '2019-06-23 00:49:25', '65.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(217, 4, 217, 'ternak', '178.09', '452.48', '452.36', '335.29', '2019-04-02 05:33:42', 140, '2019-04-30 09:38:08', 173, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(218, 10, 218, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '109.31', '268.16', '553.89', '500.62', '2019-02-22 08:24:28', 101, '2019-04-09 09:17:27', '93.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(219, 12, 219, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '366.32', '354.37', '268.64', '338.93', '2019-03-26 18:33:07', 77, '2019-05-12 06:59:06', '113.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(220, 6, 220, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '385.77', '664.62', '523.29', '356.13', '2019-01-25 13:28:34', 90, '2019-05-10 05:19:18', '15.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(221, 5, 221, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '565.66', '567.04', '733.77', '466.31', '2019-01-30 01:19:50', 148, '2019-06-07 04:21:48', '195.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(222, 6, 222, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '482.42', '455.95', '524.64', '332.67', '2019-02-22 01:59:14', 107, '2019-04-23 16:15:43', '11.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(223, 4, 223, 'ternak', '779.54', '551.85', '616.66', '595.95', '2019-02-28 05:27:05', 41, '2019-04-24 13:39:50', 162, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(224, 9, 224, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '784.50', '101.43', '722.51', '589.39', '2019-01-10 11:36:13', 171, '2019-04-29 19:16:12', '39.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(225, 4, 225, 'ternak', '298.98', '305.34', '347.75', '259.35', '2019-03-20 19:19:39', 143, '2019-06-21 00:52:44', 63, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(226, 6, 226, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '258.69', '625.75', '411.21', '489.62', '2019-01-26 00:57:21', 59, '2019-05-29 16:51:04', '79.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(227, 11, 227, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '763.42', '794.47', '562.68', '730.59', '2019-02-25 09:47:54', 23, '2019-05-31 03:00:39', '134.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(228, 10, 228, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '632.19', '550.81', '430.65', '754.73', '2019-01-19 22:30:25', 57, '2019-04-16 08:49:54', '38.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(229, 7, 229, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '515.67', '471.77', '643.12', '685.43', '2019-01-20 05:18:30', 23, '2019-06-11 01:05:44', '92.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(230, 10, 230, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '343.03', '171.30', '200.29', '672.28', '2019-01-12 16:08:12', 164, '2019-05-09 09:46:48', '193.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(231, 3, 231, 'ternak', '263.81', '463.27', '525.24', '777.06', '2019-03-12 18:15:44', 85, '2019-05-07 19:13:24', 52, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(232, 9, 232, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '308.65', '767.67', '106.59', '751.85', '2019-04-03 08:21:26', 184, '2019-04-21 03:30:58', '64.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(233, 5, 233, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '626.60', '292.56', '555.74', '316.87', '2019-03-18 12:42:28', 85, '2019-06-03 04:18:16', '164.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(234, 9, 234, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '338.53', '370.81', '112.52', '152.69', '2019-03-25 08:19:35', 194, '2019-05-08 21:04:30', '176.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(235, 12, 235, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '137.99', '387.42', '406.20', '178.34', '2019-02-16 06:07:56', 130, '2019-06-27 09:22:46', '31.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(236, 11, 236, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '755.47', '375.96', '695.14', '163.48', '2019-02-12 10:31:06', 63, '2019-04-07 19:45:33', '143.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(237, 5, 237, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '123.08', '687.38', '274.09', '511.85', '2019-01-28 00:00:15', 164, '2019-04-27 21:57:50', '181.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(238, 1, 238, 'ternak', '755.20', '628.82', '104.82', '569.68', '2019-02-21 13:13:13', 82, '2019-05-03 01:10:35', 34, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(239, 2, 239, 'ternak', '424.19', '799.58', '365.07', '564.07', '2019-02-23 17:26:43', 17, '2019-04-16 13:08:42', 39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(240, 3, 240, 'ternak', '347.54', '263.98', '462.10', '720.92', '2019-03-27 19:57:20', 134, '2019-04-21 04:21:04', 64, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(241, 8, 241, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '484.74', '336.52', '680.35', '394.92', '2019-03-13 09:04:47', 28, '2019-06-14 19:05:07', '104.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(242, 6, 242, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '116.63', '671.85', '198.22', '481.38', '2019-04-02 16:42:43', 47, '2019-06-13 10:27:06', '34.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(243, 12, 243, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '715.17', '745.57', '108.48', '522.72', '2019-02-14 23:24:50', 125, '2019-06-16 17:15:31', '148.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(244, 4, 244, 'ternak', '632.22', '286.54', '688.40', '402.69', '2019-03-09 06:07:18', 94, '2019-05-19 07:20:59', 199, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(245, 5, 245, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '224.08', '252.40', '501.58', '764.09', '2019-02-07 19:52:25', 93, '2019-06-10 12:24:39', '109.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(246, 10, 246, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '368.94', '274.63', '217.96', '402.16', '2019-02-09 04:45:11', 177, '2019-04-25 07:44:50', '56.00', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(247, 2, 247, 'ternak', '471.91', '787.69', '404.49', '359.69', '2019-01-28 01:34:30', 180, '2019-04-29 12:25:11', 112, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(248, 1, 248, 'ternak', '344.45', '726.80', '396.49', '421.35', '2019-03-08 22:07:44', 171, '2019-06-24 13:18:59', 13, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(249, 8, 249, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '552.03', '770.01', '359.31', '623.80', '2019-01-22 20:43:49', 36, '2019-06-12 12:29:31', '140.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(250, 7, 250, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '574.03', '208.92', '683.19', '604.29', '2019-03-23 12:47:54', 47, '2019-05-30 15:46:57', '77.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(251, 1, 251, 'ternak', '758.83', '300.46', '172.51', '368.96', '2019-03-10 12:18:28', 125, '2019-04-10 21:38:55', 95, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(252, 4, 252, 'ternak', '548.98', '177.98', '163.65', '136.91', '2019-01-17 07:00:07', 12, '2019-06-08 19:35:08', 14, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(253, 3, 253, 'ternak', '736.28', '754.03', '764.48', '222.78', '2019-03-15 09:54:00', 25, '2019-06-11 20:23:55', 182, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(254, 11, 254, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '602.68', '489.33', '195.89', '165.18', '2019-03-22 04:57:46', 113, '2019-05-29 18:16:33', '101.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(255, 9, 255, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '387.93', '371.18', '784.11', '287.20', '2019-01-11 06:10:52', 120, '2019-05-09 09:20:14', '60.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(256, 8, 256, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '465.00', '676.94', '294.54', '693.45', '2019-01-27 06:00:04', 52, '2019-05-20 12:29:59', '145.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(257, 2, 257, 'ternak', '142.54', '532.53', '539.86', '652.62', '2019-02-27 03:59:43', 20, '2019-06-25 23:07:04', 192, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(258, 1, 258, 'ternak', '371.26', '624.34', '411.08', '100.11', '2019-02-07 18:30:53', 22, '2019-05-20 08:43:54', 82, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(259, 12, 259, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '791.02', '598.99', '525.36', '163.54', '2019-02-19 16:41:27', 92, '2019-06-09 20:48:19', '31.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(260, 1, 260, 'ternak', '430.28', '146.21', '691.37', '301.94', '2019-01-27 12:38:58', 16, '2019-05-13 13:14:00', 189, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(261, 5, 261, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '626.60', '526.53', '249.65', '261.27', '2019-03-14 07:59:28', 59, '2019-05-09 17:56:43', '59.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(262, 10, 262, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '100.47', '129.15', '165.48', '392.13', '2019-02-16 21:20:11', 40, '2019-05-23 19:52:55', '78.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(263, 12, 263, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '283.06', '412.39', '370.71', '797.83', '2019-01-07 01:32:24', 88, '2019-06-20 04:28:18', '172.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(264, 7, 264, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '674.48', '345.46', '568.19', '429.30', '2019-01-21 17:29:19', 128, '2019-05-14 22:12:03', '173.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(265, 5, 265, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '151.85', '282.16', '242.44', '182.55', '2019-03-25 14:23:54', 194, '2019-05-01 20:43:29', '160.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(266, 11, 266, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '515.68', '629.43', '181.03', '547.47', '2019-02-23 04:19:56', 184, '2019-05-09 06:08:30', '155.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(267, 7, 267, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '200.02', '795.44', '114.25', '418.49', '2019-01-23 07:44:37', 49, '2019-04-05 17:02:43', '190.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(268, 11, 268, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '795.10', '261.66', '673.85', '169.08', '2019-01-26 07:55:19', 36, '2019-05-22 19:53:45', '84.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(269, 11, 269, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '206.75', '727.14', '362.39', '441.31', '2019-02-05 21:14:25', 158, '2019-06-07 15:14:58', '198.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(270, 11, 270, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '346.60', '662.45', '605.15', '386.13', '2019-01-09 14:17:13', 116, '2019-06-05 03:12:00', '98.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(271, 8, 271, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '150.45', '381.29', '311.64', '589.91', '2019-02-26 08:03:53', 91, '2019-06-28 07:13:23', '60.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(272, 2, 272, 'ternak', '198.18', '660.15', '647.91', '574.92', '2019-03-04 23:14:49', 149, '2019-06-27 06:41:46', 83, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(273, 4, 273, 'ternak', '670.89', '765.69', '717.81', '354.21', '2019-03-10 09:19:09', 185, '2019-05-24 02:24:09', 70, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(274, 11, 274, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '280.41', '584.44', '647.99', '384.30', '2019-03-04 04:39:50', 92, '2019-05-21 04:29:07', '14.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(275, 8, 275, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '700.15', '432.26', '769.52', '493.89', '2019-02-20 20:49:14', 82, '2019-06-10 23:13:32', '100.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(276, 9, 276, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '285.94', '575.19', '546.25', '496.94', '2019-01-24 06:04:38', 78, '2019-05-15 19:34:00', '171.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(277, 8, 277, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '565.32', '291.90', '798.32', '308.84', '2019-01-20 17:22:05', 127, '2019-07-01 17:53:20', '12.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(278, 10, 278, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '314.62', '750.14', '598.95', '780.72', '2019-03-30 08:13:49', 51, '2019-06-28 18:10:07', '151.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(279, 12, 279, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '666.40', '376.55', '368.35', '554.37', '2019-02-05 21:21:43', 75, '2019-06-01 13:44:45', '56.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(280, 5, 280, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '707.74', '595.49', '518.09', '695.31', '2019-01-14 19:51:06', 130, '2019-06-23 03:56:27', '118.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(281, 6, 281, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '625.03', '496.87', '657.99', '235.36', '2019-03-28 20:28:18', 37, '2019-04-19 10:49:58', '173.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(282, 1, 282, 'ternak', '407.91', '515.64', '327.01', '430.00', '2019-01-28 16:43:51', 172, '2019-06-22 20:01:07', 143, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(283, 7, 283, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '153.46', '759.86', '368.15', '626.24', '2019-03-31 21:55:23', 170, '2019-07-03 00:33:52', '45.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(284, 8, 284, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '357.59', '405.73', '268.68', '236.77', '2019-01-05 05:21:21', 178, '2019-04-28 01:09:11', '176.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(285, 10, 285, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '762.80', '251.28', '731.79', '602.09', '2019-02-03 07:46:47', 100, '2019-05-10 05:59:00', '102.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(286, 1, 286, 'ternak', '122.53', '126.09', '603.96', '235.70', '2019-03-15 09:01:33', 53, '2019-06-04 15:18:16', 75, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(287, 7, 287, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '212.60', '434.30', '550.83', '598.83', '2019-03-10 06:24:44', 43, '2019-04-11 17:56:26', '189.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(288, 9, 288, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '411.69', '787.91', '457.27', '221.04', '2019-03-07 06:13:38', 121, '2019-04-25 15:18:19', '55.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(289, 1, 289, 'ternak', '655.72', '557.59', '222.04', '787.63', '2019-02-23 20:35:37', 121, '2019-04-24 10:26:32', 30, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(290, 1, 290, 'ternak', '267.38', '343.72', '343.33', '614.48', '2019-03-01 04:07:56', 177, '2019-05-28 20:52:50', 82, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(291, 8, 291, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '368.51', '540.98', '784.92', '607.17', '2019-01-28 21:47:55', 39, '2019-06-16 19:57:17', '109.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(292, 7, 292, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '732.42', '151.26', '144.06', '329.49', '2019-01-21 07:23:14', 72, '2019-04-29 15:30:48', '169.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(293, 9, 293, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '373.05', '340.51', '124.93', '688.43', '2019-03-19 09:00:19', 62, '2019-05-15 03:36:41', '122.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(294, 4, 294, 'ternak', '155.22', '565.28', '262.18', '447.94', '2019-02-02 11:51:03', 29, '2019-04-24 05:56:17', 121, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(295, 5, 295, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '377.94', '584.60', '396.88', '634.55', '2019-02-09 03:21:46', 24, '2019-04-10 11:11:42', '81.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(296, 4, 296, 'ternak', '503.59', '524.12', '565.27', '728.24', '2019-03-19 16:39:20', 83, '2019-04-24 04:19:22', 118, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(297, 3, 297, 'ternak', '169.93', '243.73', '111.37', '706.67', '2019-02-14 23:02:53', 59, '2019-05-27 06:52:34', 99, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(298, 3, 298, 'ternak', '630.07', '635.09', '345.90', '200.13', '2019-03-10 19:47:39', 57, '2019-05-16 07:43:34', 39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(299, 8, 299, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '222.86', '294.23', '767.44', '131.59', '2019-01-10 11:57:10', 52, '2019-04-06 06:22:48', '200.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(300, 2, 300, 'ternak', '115.74', '113.90', '474.54', '415.14', '2019-01-24 09:46:35', 128, '2019-05-30 18:45:30', 123, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(301, 8, 301, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '591.77', '508.35', '716.08', '788.38', '2019-01-08 14:52:35', 113, '2019-05-25 06:03:50', '140.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(302, 1, 302, 'ternak', '637.54', '662.94', '298.57', '560.77', '2019-03-13 10:32:16', 36, '2019-05-17 22:58:10', 195, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(303, 10, 303, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '142.07', '541.93', '513.06', '587.99', '2019-01-22 10:22:42', 115, '2019-04-19 22:05:57', '136.00', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(304, 6, 304, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '144.52', '589.90', '508.36', '614.32', '2019-03-06 15:03:44', 67, '2019-06-05 14:45:12', '47.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(305, 7, 305, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '371.49', '566.43', '173.30', '359.62', '2019-03-27 21:57:35', 91, '2019-05-20 04:03:20', '67.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(306, 4, 306, 'ternak', '241.12', '591.21', '299.53', '501.54', '2019-02-01 16:26:46', 150, '2019-05-24 20:49:02', 197, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(307, 7, 307, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '371.36', '116.94', '378.56', '564.41', '2019-02-04 05:06:10', 172, '2019-04-11 08:36:48', '86.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(308, 1, 308, 'ternak', '513.55', '497.27', '582.07', '507.31', '2019-01-24 05:42:45', 41, '2019-05-05 10:36:33', 73, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(309, 8, 309, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '242.25', '107.31', '580.59', '399.05', '2019-01-15 00:35:31', 70, '2019-04-21 01:22:41', '168.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(310, 5, 310, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '224.63', '214.18', '340.13', '733.44', '2019-03-16 01:18:14', 23, '2019-06-27 15:15:16', '102.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(311, 4, 311, 'ternak', '110.61', '627.35', '557.42', '470.04', '2019-01-28 17:20:40', 183, '2019-04-27 07:45:34', 116, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(312, 1, 312, 'ternak', '325.29', '521.28', '620.13', '118.49', '2019-03-12 18:12:28', 141, '2019-06-07 08:46:31', 199, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(313, 11, 313, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '381.26', '518.04', '302.83', '334.91', '2019-02-06 14:14:15', 18, '2019-05-14 21:34:07', '155.00', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(314, 3, 314, 'ternak', '258.96', '155.21', '671.52', '627.03', '2019-04-02 18:20:07', 162, '2019-04-13 01:08:27', 200, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(315, 3, 315, 'ternak', '358.83', '623.30', '242.26', '362.58', '2019-01-18 18:05:03', 102, '2019-06-13 09:26:24', 25, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(316, 8, 316, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '546.58', '309.96', '294.58', '586.58', '2019-03-24 07:33:50', 62, '2019-04-09 08:55:34', '11.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(317, 9, 317, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '761.60', '617.16', '645.00', '370.83', '2019-02-26 17:32:53', 139, '2019-04-05 03:57:28', '76.00', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(318, 2, 318, 'ternak', '481.70', '381.17', '215.09', '442.57', '2019-03-31 17:07:44', 29, '2019-06-12 22:44:18', 173, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(319, 1, 319, 'ternak', '385.12', '623.67', '139.32', '666.43', '2019-02-20 23:30:39', 56, '2019-05-12 21:31:19', 197, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(320, 7, 320, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '560.69', '297.07', '372.01', '273.72', '2019-01-10 21:32:02', 132, '2019-04-11 22:00:17', '162.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(321, 1, 321, 'ternak', '387.42', '387.13', '578.20', '194.94', '2019-01-18 22:20:03', 175, '2019-04-08 01:46:44', 191, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(322, 3, 322, 'ternak', '199.31', '734.66', '415.97', '775.83', '2019-03-02 03:59:53', 183, '2019-04-12 06:34:27', 137, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(323, 9, 323, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '719.34', '456.74', '286.94', '279.50', '2019-02-27 20:43:23', 149, '2019-05-27 18:13:38', '62.00', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(324, 9, 324, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '132.74', '233.66', '606.91', '623.40', '2019-03-13 15:16:45', 44, '2019-06-24 04:29:59', '107.00', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(325, 1, 325, 'ternak', '596.12', '783.22', '792.01', '500.96', '2019-03-25 10:02:51', 108, '2019-04-10 22:11:44', 173, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(326, 1, 326, 'ternak', '256.38', '248.76', '287.60', '681.59', '2019-01-05 23:03:32', 118, '2019-06-21 10:08:01', 135, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(327, 11, 327, 'ikan', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '508.59', '546.27', '351.86', '362.54', '2019-03-01 10:53:37', 166, '2019-04-30 00:34:45', '119.00', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(328, 7, 328, 'tanaman', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '573.54', '660.86', '768.30', '525.38', '2019-02-22 15:18:30', 22, '2019-05-26 19:26:30', '138.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `lahan`
--

DROP TABLE IF EXISTS `lahan`;
CREATE TABLE IF NOT EXISTS `lahan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `desa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas` decimal(10,4) NOT NULL,
  `pemilik` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lahan_desa_id_foreign` (`desa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lahan`
--

INSERT INTO `lahan` (`id`, `desa_id`, `other`, `name`, `lat`, `long`, `luas`, `pemilik`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Lahan Suite 721', '-7.0147371', '110.0757468', '186.0400', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 1, NULL, 'Lahan Apt. 956', '-7.0703053', '110.5010584', '178.1700', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 1, NULL, 'Lahan Suite 880', '-7.6145659', '107.0604029', '683.5000', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 1, NULL, 'Lahan Suite 970', '-7.5684364', '108.4960294', '400.3700', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(5, 1, NULL, 'Lahan Apt. 779', '-7.1056147', '108.3487226', '221.4400', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(6, 1, NULL, 'Lahan Apt. 251', '-6.8371436', '109.7777704', '197.1600', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(7, 1, NULL, 'Lahan Suite 583', '-7.2873079', '108.3012346', '388.4600', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(8, 1, NULL, 'Lahan Apt. 940', '-6.8351648', '110.2922049', '221.2900', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(9, 2, NULL, 'Lahan Suite 111', '-7.6456407', '108.6613603', '202.5700', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(10, 2, NULL, 'Lahan Apt. 422', '-6.8247341', '109.9547103', '415.1300', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(11, 2, NULL, 'Lahan Suite 554', '-7.2098452', '108.8180209', '350.1700', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(12, 2, NULL, 'Lahan Apt. 855', '-7.4509108', '107.47984', '163.0500', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(13, 2, NULL, 'Lahan Apt. 371', '-6.9949607', '109.8944491', '606.9000', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(14, 2, NULL, 'Lahan Suite 417', '-6.9442902', '107.3019668', '734.2100', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(15, 3, NULL, 'Lahan Apt. 905', '-7.5410287', '107.8399394', '174.9900', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(16, 3, NULL, 'Lahan Suite 898', '-7.2606444', '109.1415981', '193.1300', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(17, 3, NULL, 'Lahan Apt. 416', '-6.8105749', '107.2441487', '693.9600', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(18, 3, NULL, 'Lahan Suite 733', '-7.3782068', '110.2494151', '456.6400', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(19, 3, NULL, 'Lahan Apt. 085', '-7.4885111', '107.7620015', '392.0500', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(20, 4, NULL, 'Lahan Apt. 124', '-7.4322155', '107.2914519', '563.7500', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(21, 4, NULL, 'Lahan Suite 065', '-7.6380395', '107.5894833', '205.9300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(22, 4, NULL, 'Lahan Apt. 627', '-7.4133662', '108.3786367', '503.8200', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(23, 4, NULL, 'Lahan Suite 696', '-7.1979191', '107.046689', '288.1700', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(24, 4, NULL, 'Lahan Suite 496', '-7.6982907', '110.4570855', '684.7300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(25, 4, NULL, 'Lahan Apt. 641', '-6.835309', '107.4154223', '365.0100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(26, 5, NULL, 'Lahan Suite 328', '-7.3911049', '109.439277', '319.0600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(27, 5, NULL, 'Lahan Apt. 241', '-7.5633103', '108.6122063', '597.2900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(28, 5, NULL, 'Lahan Apt. 075', '-7.6346158', '109.5019936', '309.4500', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(29, 5, NULL, 'Lahan Apt. 534', '-7.514015', '109.7435505', '103.8200', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(30, 5, NULL, 'Lahan Apt. 441', '-7.3661163', '110.7956306', '740.3100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(31, 5, NULL, 'Lahan Suite 613', '-7.2688519', '107.4060161', '553.1400', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(32, 5, NULL, 'Lahan Apt. 404', '-7.4996239', '107.695586', '638.9800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(33, 6, NULL, 'Lahan Apt. 025', '-7.6751544', '108.108046', '380.3100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(34, 6, NULL, 'Lahan Suite 649', '-6.8215855', '110.1762857', '635.1800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(35, 6, NULL, 'Lahan Suite 022', '-7.3307754', '110.1266722', '308.9800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(36, 6, NULL, 'Lahan Suite 307', '-7.5193482', '109.4169636', '387.1600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(37, 6, NULL, 'Lahan Apt. 092', '-7.6241092', '110.3280654', '342.9600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(38, 6, NULL, 'Lahan Suite 995', '-7.117606', '110.14503', '739.0000', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(39, 6, NULL, 'Lahan Suite 600', '-7.0697502', '108.9581767', '582.7500', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(40, 7, NULL, 'Lahan Apt. 438', '-6.9943476', '110.1524685', '742.2300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(41, 7, NULL, 'Lahan Apt. 011', '-7.458697', '107.2302563', '487.0400', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(42, 7, NULL, 'Lahan Apt. 571', '-7.6038025', '109.0623677', '439.3300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(43, 7, NULL, 'Lahan Suite 308', '-7.2830041', '109.0757894', '143.9800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(44, 7, NULL, 'Lahan Apt. 398', '-7.4289083', '107.850635', '762.7300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(45, 7, NULL, 'Lahan Suite 706', '-7.3211394', '110.9849256', '761.4200', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(46, 7, NULL, 'Lahan Suite 155', '-7.6148824', '109.4162981', '124.6100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(47, 8, NULL, 'Lahan Apt. 149', '-7.1188505', '108.254209', '722.3500', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(48, 8, NULL, 'Lahan Suite 713', '-7.0440682', '107.6974064', '746.2300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(49, 8, NULL, 'Lahan Apt. 112', '-6.8754772', '108.2928025', '250.6900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(50, 8, NULL, 'Lahan Apt. 175', '-6.8431006', '108.8374481', '407.3600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(51, 8, NULL, 'Lahan Suite 988', '-7.1368178', '107.135928', '744.6100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(52, 8, NULL, 'Lahan Suite 123', '-7.4888229', '108.0301164', '366.5900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(53, 8, NULL, 'Lahan Suite 036', '-7.4469604', '110.4989506', '442.6800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(54, 8, NULL, 'Lahan Suite 113', '-7.5599885', '108.6055704', '792.1100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(55, 8, NULL, 'Lahan Apt. 541', '-7.1606946', '108.8937453', '102.6700', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(56, 8, NULL, 'Lahan Suite 670', '-7.3211076', '107.4728086', '157.2700', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(57, 9, NULL, 'Lahan Suite 987', '-7.3545153', '107.1114843', '348.1100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(58, 9, NULL, 'Lahan Suite 528', '-7.279467', '110.4896074', '267.3600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(59, 9, NULL, 'Lahan Suite 642', '-6.8516067', '107.4204137', '195.0300', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(60, 9, NULL, 'Lahan Apt. 230', '-7.6802897', '107.9988229', '748.1900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(61, 9, NULL, 'Lahan Suite 012', '-7.5530017', '108.5778549', '469.6000', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(62, 9, NULL, 'Lahan Apt. 890', '-7.2857253', '107.165684', '361.5400', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(63, 10, NULL, 'Lahan Apt. 208', '-6.9381849', '109.6686414', '223.6400', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(64, 10, NULL, 'Lahan Apt. 118', '-6.9970789', '109.2819015', '364.4900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(65, 10, NULL, 'Lahan Suite 674', '-7.2909601', '107.4072285', '219.3600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(66, 10, NULL, 'Lahan Apt. 316', '-7.1295699', '108.9966752', '317.4800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(67, 10, NULL, 'Lahan Suite 816', '-7.6936823', '110.5388352', '424.7100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(68, 11, NULL, 'Lahan Suite 926', '-7.5049509', '108.58999', '361.2900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(69, 11, NULL, 'Lahan Apt. 667', '-7.4578417', '108.8704172', '782.0400', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(70, 11, NULL, 'Lahan Apt. 832', '-7.3857987', '108.5955897', '338.8800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(71, 11, NULL, 'Lahan Suite 324', '-6.9051847', '109.2156919', '262.5100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(72, 11, NULL, 'Lahan Apt. 579', '-7.4082181', '109.7450096', '618.0200', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(73, 11, NULL, 'Lahan Apt. 048', '-6.801837', '110.0306355', '516.6800', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(74, 12, NULL, 'Lahan Suite 497', '-7.5311382', '107.2687258', '440.1900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(75, 12, NULL, 'Lahan Apt. 712', '-7.1077898', '108.4348873', '466.1700', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(76, 12, NULL, 'Lahan Suite 201', '-7.2754679', '110.1862714', '553.7900', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(77, 12, NULL, 'Lahan Suite 636', '-6.8550266', '107.2501426', '536.1600', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(78, 12, NULL, 'Lahan Apt. 876', '-7.5281443', '107.2355976', '264.2100', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(79, 12, NULL, 'Lahan Apt. 169', '-7.3159891', '110.7960278', '588.2700', NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(80, 13, NULL, 'Lahan Apt. 964', '-7.5896033', '109.1284944', '161.5400', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(81, 13, NULL, 'Lahan Suite 507', '-6.9795438', '108.6972755', '280.3400', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(82, 13, NULL, 'Lahan Apt. 240', '-7.1611262', '109.3667266', '392.9000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(83, 13, NULL, 'Lahan Apt. 334', '-6.963433', '109.4347338', '257.1500', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(84, 13, NULL, 'Lahan Apt. 875', '-7.264475', '108.141517', '472.8200', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(85, 13, NULL, 'Lahan Apt. 978', '-7.4316643', '108.9286782', '362.5300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(86, 14, NULL, 'Lahan Apt. 308', '-7.3330396', '110.3664362', '224.5300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(87, 14, NULL, 'Lahan Apt. 802', '-7.4457343', '107.0227121', '122.4600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(88, 14, NULL, 'Lahan Suite 953', '-7.1621773', '107.9575587', '271.6000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(89, 14, NULL, 'Lahan Apt. 126', '-7.0492676', '109.2334979', '252.3600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(90, 14, NULL, 'Lahan Apt. 950', '-7.2596277', '108.1424036', '292.6100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(91, 14, NULL, 'Lahan Suite 132', '-7.0246654', '107.2796755', '164.8300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(92, 14, NULL, 'Lahan Apt. 041', '-7.3607867', '107.2944497', '498.4100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(93, 14, NULL, 'Lahan Apt. 518', '-7.0304368', '108.8887242', '271.2600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(94, 14, NULL, 'Lahan Apt. 043', '-6.9180861', '109.4952312', '412.0600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(95, 15, NULL, 'Lahan Apt. 409', '-7.0812351', '107.6522713', '626.7500', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(96, 15, NULL, 'Lahan Suite 562', '-7.1593365', '109.7847364', '409.2000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(97, 15, NULL, 'Lahan Apt. 117', '-7.4602434', '108.1125002', '700.1500', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(98, 15, NULL, 'Lahan Apt. 434', '-6.8986222', '107.2489518', '172.8500', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(99, 15, NULL, 'Lahan Suite 152', '-7.1306879', '107.7871632', '465.0800', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(100, 16, NULL, 'Lahan Suite 634', '-7.1129101', '107.153105', '745.7900', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(101, 16, NULL, 'Lahan Suite 363', '-7.4301355', '107.1984612', '292.0200', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(102, 16, NULL, 'Lahan Apt. 449', '-7.1175474', '109.7713237', '518.8200', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(103, 16, NULL, 'Lahan Apt. 747', '-6.9800948', '107.0731492', '707.1100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(104, 16, NULL, 'Lahan Suite 599', '-6.8730741', '110.1645167', '228.8900', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(105, 16, NULL, 'Lahan Suite 370', '-7.3020439', '108.5743712', '131.5700', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(106, 17, NULL, 'Lahan Apt. 487', '-7.5004958', '110.5066001', '667.3800', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(107, 17, NULL, 'Lahan Suite 509', '-7.54291', '110.8557461', '785.4000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(108, 17, NULL, 'Lahan Apt. 785', '-6.9499044', '110.514961', '357.2100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(109, 17, NULL, 'Lahan Apt. 825', '-7.170576', '110.2879216', '619.6700', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(110, 17, NULL, 'Lahan Apt. 162', '-7.5189201', '108.4887852', '206.7900', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(111, 17, NULL, 'Lahan Suite 021', '-6.9736851', '109.3614893', '276.5300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(112, 17, NULL, 'Lahan Apt. 498', '-7.170986', '108.2617248', '300.2100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(113, 17, NULL, 'Lahan Suite 121', '-6.9557124', '107.8567129', '442.1300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(114, 18, NULL, 'Lahan Suite 701', '-7.2608519', '107.9044756', '431.5300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(115, 18, NULL, 'Lahan Apt. 926', '-7.5371619', '110.8926429', '243.8600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(116, 18, NULL, 'Lahan Apt. 158', '-6.8661936', '109.3950333', '654.1100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(117, 18, NULL, 'Lahan Suite 380', '-7.4383748', '108.8808548', '154.8600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(118, 18, NULL, 'Lahan Suite 946', '-7.2882502', '107.656658', '414.8900', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(119, 18, NULL, 'Lahan Apt. 502', '-7.0737123', '110.8108439', '121.5700', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(120, 19, NULL, 'Lahan Suite 898', '-7.3754527', '107.8970747', '630.6600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(121, 19, NULL, 'Lahan Suite 451', '-7.0573499', '109.8490506', '273.8700', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(122, 19, NULL, 'Lahan Apt. 895', '-7.499382', '107.228389', '564.8900', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(123, 19, NULL, 'Lahan Apt. 283', '-7.1197353', '110.1231044', '647.6600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(124, 19, NULL, 'Lahan Suite 477', '-6.9260362', '108.0373804', '672.3100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(125, 19, NULL, 'Lahan Suite 306', '-7.4535637', '107.7544852', '691.0000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(126, 20, NULL, 'Lahan Apt. 467', '-7.4557192', '108.8861756', '327.6200', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(127, 20, NULL, 'Lahan Apt. 148', '-7.1006314', '109.2390781', '324.2600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(128, 20, NULL, 'Lahan Suite 100', '-7.5396076', '109.6573149', '321.8300', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(129, 20, NULL, 'Lahan Suite 354', '-7.6981716', '110.8297084', '746.0100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(130, 20, NULL, 'Lahan Suite 667', '-7.0495096', '110.5179386', '174.2000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(131, 20, NULL, 'Lahan Apt. 782', '-7.3191069', '109.0963272', '771.8800', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(132, 21, NULL, 'Lahan Apt. 100', '-6.8075709', '108.5124246', '223.3100', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(133, 21, NULL, 'Lahan Suite 420', '-7.0766543', '108.5050497', '552.4500', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(134, 21, NULL, 'Lahan Apt. 663', '-7.6047686', '109.351019', '724.9000', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(135, 21, NULL, 'Lahan Apt. 930', '-7.5667676', '109.4874623', '742.5600', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(136, 21, NULL, 'Lahan Apt. 808', '-7.1824544', '109.8754333', '129.6800', NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(137, 22, NULL, 'Lahan Apt. 023', '-7.0781133', '108.7191022', '323.3000', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(138, 22, NULL, 'Lahan Suite 129', '-7.1337618', '108.0507078', '213.5200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(139, 22, NULL, 'Lahan Apt. 610', '-7.3711933', '109.8850806', '570.5900', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(140, 22, NULL, 'Lahan Suite 661', '-7.369408', '110.9197661', '353.5600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(141, 22, NULL, 'Lahan Apt. 001', '-6.8928878', '108.0383309', '235.3500', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(142, 23, NULL, 'Lahan Suite 874', '-7.4293849', '108.577569', '642.0300', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(143, 23, NULL, 'Lahan Apt. 192', '-7.1052359', '108.2893595', '758.2300', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(144, 23, NULL, 'Lahan Suite 751', '-7.1379753', '109.5671242', '453.5100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(145, 23, NULL, 'Lahan Apt. 824', '-6.8553838', '107.5096178', '459.1400', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(146, 23, NULL, 'Lahan Apt. 503', '-7.0040922', '110.1711364', '537.6800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(147, 23, NULL, 'Lahan Suite 462', '-7.4145557', '108.5167008', '707.8600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(148, 23, NULL, 'Lahan Suite 383', '-7.5381707', '108.136912', '618.6800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(149, 24, NULL, 'Lahan Suite 866', '-7.337612', '107.1010777', '192.6600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(150, 24, NULL, 'Lahan Apt. 449', '-7.4027454', '109.7038611', '574.7700', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(151, 24, NULL, 'Lahan Suite 026', '-7.4089505', '107.7130666', '576.2100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(152, 24, NULL, 'Lahan Suite 371', '-7.6666644', '107.6704225', '501.8100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(153, 24, NULL, 'Lahan Suite 637', '-6.9344879', '108.5780095', '233.4300', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(154, 24, NULL, 'Lahan Suite 127', '-6.9213469', '109.4384634', '725.1600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(155, 24, NULL, 'Lahan Suite 600', '-6.8206757', '108.5428385', '635.4900', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(156, 25, NULL, 'Lahan Suite 631', '-7.1869665', '109.4121216', '300.4600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(157, 25, NULL, 'Lahan Apt. 748', '-7.6427509', '108.204129', '229.0100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(158, 25, NULL, 'Lahan Apt. 946', '-7.3356509', '110.3058536', '185.3200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(159, 25, NULL, 'Lahan Suite 557', '-7.1799959', '108.9874787', '364.9500', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(160, 25, NULL, 'Lahan Apt. 315', '-7.3440446', '110.4351806', '222.8600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(161, 25, NULL, 'Lahan Apt. 359', '-7.3909071', '110.6716596', '211.9900', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(162, 25, NULL, 'Lahan Suite 732', '-7.5877893', '110.4642825', '548.2200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(163, 25, NULL, 'Lahan Apt. 337', '-7.6639483', '107.9646768', '514.7800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(164, 26, NULL, 'Lahan Suite 613', '-7.5858708', '109.2731862', '769.3500', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(165, 26, NULL, 'Lahan Suite 797', '-7.4026384', '107.9808131', '730.7800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(166, 26, NULL, 'Lahan Apt. 466', '-7.2809942', '107.4765531', '562.3500', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(167, 26, NULL, 'Lahan Apt. 053', '-7.4962026', '107.6326628', '417.3800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(168, 26, NULL, 'Lahan Apt. 336', '-7.1852456', '109.3181645', '164.4000', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(169, 26, NULL, 'Lahan Apt. 418', '-6.9392458', '107.7321066', '718.1100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(170, 27, NULL, 'Lahan Suite 602', '-6.8731933', '107.5543081', '258.2400', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(171, 27, NULL, 'Lahan Apt. 094', '-7.4285195', '109.9736046', '142.6000', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(172, 27, NULL, 'Lahan Apt. 093', '-6.9524142', '107.1410377', '751.8300', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(173, 27, NULL, 'Lahan Suite 727', '-7.6082991', '107.2974512', '762.8100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(174, 27, NULL, 'Lahan Suite 603', '-6.8592477', '109.6387209', '650.0700', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(175, 27, NULL, 'Lahan Suite 696', '-7.2723825', '108.7476887', '422.9400', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(176, 28, NULL, 'Lahan Apt. 465', '-6.9776289', '107.8230079', '113.8500', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(177, 28, NULL, 'Lahan Apt. 120', '-7.3894324', '110.3316064', '620.9800', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(178, 28, NULL, 'Lahan Suite 554', '-7.3849274', '108.0371245', '204.9200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(179, 28, NULL, 'Lahan Suite 393', '-6.8463439', '109.2338541', '247.0600', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(180, 28, NULL, 'Lahan Apt. 741', '-7.1455885', '108.0271902', '165.8100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(181, 29, NULL, 'Lahan Apt. 666', '-7.4871646', '107.37542', '383.3200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(182, 29, NULL, 'Lahan Apt. 823', '-7.3725861', '107.2841754', '331.2000', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(183, 29, NULL, 'Lahan Apt. 737', '-7.3984731', '108.9492512', '204.7200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(184, 29, NULL, 'Lahan Suite 147', '-7.457338', '109.1117896', '576.7100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(185, 29, NULL, 'Lahan Suite 395', '-7.0130454', '107.2272361', '698.9200', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(186, 29, NULL, 'Lahan Apt. 839', '-6.9310687', '109.6710941', '761.0900', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(187, 29, NULL, 'Lahan Apt. 018', '-7.0420125', '108.9531159', '164.6000', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(188, 29, NULL, 'Lahan Suite 624', '-6.8262368', '107.7537268', '372.0100', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(189, 29, NULL, 'Lahan Suite 335', '-7.4797947', '108.7995772', '190.0900', NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(190, 30, NULL, 'Lahan Suite 071', '-7.4229442', '110.6098951', '134.3900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(191, 30, NULL, 'Lahan Suite 854', '-7.308706', '108.6461182', '369.0100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(192, 30, NULL, 'Lahan Suite 725', '-7.4631975', '108.299141', '381.4400', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(193, 30, NULL, 'Lahan Suite 697', '-6.882025', '108.3168848', '598.6900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(194, 30, NULL, 'Lahan Apt. 384', '-6.9507788', '107.6885943', '354.3800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(195, 30, NULL, 'Lahan Suite 780', '-7.1124345', '110.5450986', '774.1000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(196, 30, NULL, 'Lahan Apt. 477', '-7.413836', '107.1573569', '325.6800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(197, 31, NULL, 'Lahan Suite 945', '-7.6759695', '110.4183763', '725.1200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(198, 31, NULL, 'Lahan Apt. 054', '-7.6802778', '109.9946042', '229.6800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(199, 31, NULL, 'Lahan Suite 998', '-7.0044295', '109.2656059', '580.6600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(200, 31, NULL, 'Lahan Suite 226', '-6.9822733', '109.902838', '641.6000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(201, 31, NULL, 'Lahan Apt. 210', '-7.6140873', '108.4479745', '490.7800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(202, 31, NULL, 'Lahan Apt. 866', '-7.3340919', '109.3874453', '436.9600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(203, 32, NULL, 'Lahan Apt. 416', '-7.0109893', '110.3500885', '474.0900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(204, 32, NULL, 'Lahan Apt. 126', '-7.4658357', '110.5206933', '242.2500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(205, 32, NULL, 'Lahan Suite 692', '-7.5509763', '109.172195', '707.8200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(206, 32, NULL, 'Lahan Suite 070', '-7.1502438', '107.1231537', '334.6500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(207, 32, NULL, 'Lahan Apt. 812', '-7.6122027', '109.2361915', '161.7900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(208, 32, NULL, 'Lahan Suite 776', '-7.5307606', '109.3596574', '678.2700', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(209, 32, NULL, 'Lahan Apt. 131', '-7.4153865', '110.7887807', '197.7700', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(210, 33, NULL, 'Lahan Suite 288', '-7.5813813', '109.3689745', '324.4200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(211, 33, NULL, 'Lahan Apt. 559', '-7.1093262', '107.1232', '725.9500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(212, 33, NULL, 'Lahan Apt. 792', '-7.0149485', '107.7832817', '466.9100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(213, 33, NULL, 'Lahan Apt. 571', '-7.6167938', '108.6343713', '799.3400', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(214, 33, NULL, 'Lahan Apt. 744', '-7.4885005', '109.653882', '522.3100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(215, 33, NULL, 'Lahan Suite 182', '-6.8209797', '107.3186078', '353.1900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(216, 33, NULL, 'Lahan Apt. 869', '-6.9159817', '108.41416', '494.8000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(217, 34, NULL, 'Lahan Suite 052', '-6.8092296', '108.5849746', '106.5600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(218, 34, NULL, 'Lahan Apt. 324', '-7.6258556', '109.2794622', '204.0200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(219, 34, NULL, 'Lahan Suite 431', '-7.5580735', '110.0409261', '798.9100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(220, 34, NULL, 'Lahan Suite 282', '-6.9399832', '107.5260654', '244.8200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(221, 34, NULL, 'Lahan Suite 521', '-7.4099032', '107.7338568', '151.5100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(222, 34, NULL, 'Lahan Apt. 114', '-7.2862509', '109.3350523', '143.5700', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(223, 34, NULL, 'Lahan Apt. 488', '-7.2424219', '107.1944681', '307.0600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(224, 34, NULL, 'Lahan Suite 550', '-6.9645111', '110.754557', '708.8200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(225, 35, NULL, 'Lahan Suite 818', '-7.1371682', '110.095717', '150.8800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(226, 35, NULL, 'Lahan Apt. 890', '-7.0944857', '109.6679278', '422.5900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(227, 35, NULL, 'Lahan Apt. 312', '-7.3385936', '108.0466615', '214.3200', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(228, 35, NULL, 'Lahan Apt. 102', '-7.3797979', '107.6540041', '707.1600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(229, 35, NULL, 'Lahan Apt. 124', '-7.4460405', '108.6766672', '567.3800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(230, 35, NULL, 'Lahan Suite 276', '-7.4354117', '109.8125676', '561.1500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(231, 35, NULL, 'Lahan Suite 916', '-6.8044804', '110.0459971', '147.8100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(232, 36, NULL, 'Lahan Apt. 948', '-7.4810237', '107.8102082', '780.5600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(233, 36, NULL, 'Lahan Suite 194', '-7.5240636', '107.3290971', '699.1500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(234, 36, NULL, 'Lahan Apt. 913', '-6.9452913', '110.0811789', '196.7600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(235, 36, NULL, 'Lahan Suite 915', '-6.9516869', '107.3158793', '742.9000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(236, 36, NULL, 'Lahan Apt. 477', '-6.8431796', '107.6278615', '167.1100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(237, 36, NULL, 'Lahan Suite 663', '-6.9092534', '110.4785121', '255.7000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(238, 36, NULL, 'Lahan Apt. 102', '-7.4888774', '108.1277874', '272.8700', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(239, 36, NULL, 'Lahan Apt. 138', '-7.2791277', '110.1128851', '461.2100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(240, 36, NULL, 'Lahan Suite 545', '-6.9823864', '107.5838388', '520.5600', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(241, 37, NULL, 'Lahan Apt. 540', '-7.4470602', '110.564111', '251.2800', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(242, 37, NULL, 'Lahan Apt. 409', '-6.9417468', '107.321463', '209.4400', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(243, 37, NULL, 'Lahan Apt. 202', '-7.4397395', '108.9805707', '379.5500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(244, 37, NULL, 'Lahan Suite 203', '-7.1645082', '107.8496125', '252.2700', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(245, 37, NULL, 'Lahan Suite 029', '-6.9241009', '108.6999994', '692.0000', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(246, 37, NULL, 'Lahan Apt. 561', '-7.0411992', '108.5701752', '230.9500', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(247, 37, NULL, 'Lahan Suite 549', '-7.4906193', '107.2433926', '320.8100', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(248, 37, NULL, 'Lahan Suite 985', '-6.8480824', '108.7737742', '659.1900', NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(249, 38, NULL, 'Lahan Apt. 465', '-7.3762642', '110.847437', '731.9200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(250, 38, NULL, 'Lahan Suite 017', '-7.1151806', '110.1754285', '470.8200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(251, 38, NULL, 'Lahan Apt. 361', '-7.1774493', '110.2003488', '799.7500', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(252, 38, NULL, 'Lahan Apt. 848', '-7.3739449', '107.9829154', '582.0700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(253, 38, NULL, 'Lahan Suite 269', '-6.8464497', '109.1216901', '586.0700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(254, 38, NULL, 'Lahan Apt. 818', '-7.2369602', '107.9901913', '326.2200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(255, 38, NULL, 'Lahan Apt. 372', '-6.9219254', '108.6015499', '563.8400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(256, 38, NULL, 'Lahan Apt. 775', '-6.9873552', '108.6236878', '595.8500', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(257, 38, NULL, 'Lahan Apt. 373', '-7.6246198', '110.2733276', '697.3600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(258, 39, NULL, 'Lahan Apt. 466', '-7.0202961', '109.90852', '434.8700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(259, 39, NULL, 'Lahan Apt. 472', '-7.6495744', '109.4583207', '393.5200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(260, 39, NULL, 'Lahan Apt. 836', '-7.0396828', '108.9280903', '110.3900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(261, 39, NULL, 'Lahan Suite 560', '-7.4810793', '107.5971366', '274.9800', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(262, 39, NULL, 'Lahan Apt. 234', '-7.3308378', '109.9846016', '199.5100', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(263, 39, NULL, 'Lahan Apt. 343', '-7.5999641', '109.9132965', '647.7300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(264, 40, NULL, 'Lahan Apt. 768', '-7.1915707', '109.6152422', '705.7900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(265, 40, NULL, 'Lahan Suite 075', '-6.8023658', '110.2784374', '230.5200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(266, 40, NULL, 'Lahan Apt. 943', '-7.650148', '110.0949623', '750.7300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(267, 40, NULL, 'Lahan Suite 636', '-7.5420792', '110.5440556', '457.2700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(268, 40, NULL, 'Lahan Suite 368', '-6.9048418', '109.4294638', '382.7600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(269, 40, NULL, 'Lahan Suite 260', '-7.3784765', '108.2889083', '772.9400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(270, 41, NULL, 'Lahan Suite 089', '-6.8668932', '107.5115274', '798.8700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(271, 41, NULL, 'Lahan Suite 831', '-6.8729169', '110.5797382', '446.5300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(272, 41, NULL, 'Lahan Apt. 080', '-6.9472657', '109.9743204', '235.1900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(273, 41, NULL, 'Lahan Suite 218', '-7.4007397', '107.8407626', '458.8600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(274, 41, NULL, 'Lahan Apt. 505', '-7.6953459', '110.3569297', '342.6700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(275, 41, NULL, 'Lahan Apt. 370', '-7.462243', '110.5527695', '724.0400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(276, 41, NULL, 'Lahan Apt. 622', '-7.5317343', '108.8448798', '482.8300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(277, 41, NULL, 'Lahan Apt. 199', '-7.1427017', '108.5029471', '291.1200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(278, 41, NULL, 'Lahan Apt. 758', '-7.1727742', '108.3163697', '673.9400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(279, 42, NULL, 'Lahan Apt. 565', '-6.9975392', '109.8842661', '421.2700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(280, 42, NULL, 'Lahan Apt. 210', '-7.3124576', '107.8649569', '534.4700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(281, 42, NULL, 'Lahan Apt. 450', '-7.1547174', '107.4289884', '475.6300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(282, 42, NULL, 'Lahan Apt. 538', '-7.4968544', '107.252648', '654.8700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(283, 42, NULL, 'Lahan Apt. 729', '-6.9283231', '107.9658437', '610.8400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(284, 42, NULL, 'Lahan Apt. 163', '-7.6458389', '107.1137204', '578.8600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(285, 43, NULL, 'Lahan Suite 383', '-7.014983', '109.9898127', '121.4400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(286, 43, NULL, 'Lahan Apt. 720', '-7.4078918', '109.2530356', '237.8200', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(287, 43, NULL, 'Lahan Apt. 550', '-7.6228171', '107.014914', '321.2900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(288, 43, NULL, 'Lahan Suite 667', '-7.2301843', '107.5507819', '627.4700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(289, 43, NULL, 'Lahan Apt. 864', '-7.6355331', '108.8095607', '653.6500', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(290, 43, NULL, 'Lahan Suite 589', '-7.574379', '109.9619545', '316.9700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(291, 43, NULL, 'Lahan Apt. 686', '-7.2534355', '110.7379096', '455.6400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(292, 43, NULL, 'Lahan Suite 536', '-6.9395335', '109.9587235', '737.9300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(293, 43, NULL, 'Lahan Apt. 630', '-7.1712873', '108.8644521', '272.9300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(294, 44, NULL, 'Lahan Apt. 271', '-7.0454359', '108.893683', '550.9600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(295, 44, NULL, 'Lahan Suite 199', '-7.6328608', '109.7697044', '128.4000', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(296, 44, NULL, 'Lahan Suite 965', '-7.4922321', '110.1944848', '723.2100', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(297, 44, NULL, 'Lahan Apt. 520', '-6.9476622', '107.2359063', '611.2500', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(298, 44, NULL, 'Lahan Apt. 526', '-6.8777219', '107.7826683', '247.2000', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(299, 44, NULL, 'Lahan Suite 877', '-7.5113257', '109.9629649', '769.5400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(300, 44, NULL, 'Lahan Suite 398', '-7.5976782', '110.2143763', '766.1300', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(301, 45, NULL, 'Lahan Apt. 137', '-7.6301113', '109.2558492', '117.3800', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(302, 45, NULL, 'Lahan Suite 368', '-7.5693493', '109.2070011', '697.4000', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(303, 45, NULL, 'Lahan Apt. 220', '-7.3900074', '109.5006753', '260.0900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(304, 45, NULL, 'Lahan Apt. 140', '-7.0063439', '107.1554739', '687.9900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(305, 45, NULL, 'Lahan Apt. 653', '-7.3909504', '108.0270549', '224.7700', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(306, 45, NULL, 'Lahan Apt. 396', '-7.270068', '110.0523673', '568.5400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(307, 45, NULL, 'Lahan Suite 811', '-7.3915377', '107.611068', '449.2600', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(308, 46, NULL, 'Lahan Suite 649', '-6.9762484', '107.6613667', '756.5500', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(309, 46, NULL, 'Lahan Apt. 488', '-7.0765005', '110.6606674', '277.8900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(310, 46, NULL, 'Lahan Apt. 766', '-7.3752907', '109.2369581', '612.3400', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(311, 46, NULL, 'Lahan Suite 475', '-6.8821002', '108.8773626', '500.5900', NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(312, 46, NULL, 'Lahan Suite 057', '-7.5568286', '107.2237505', '488.6800', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(313, 46, NULL, 'Lahan Apt. 173', '-7.1607206', '107.4801522', '242.2000', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(314, 46, NULL, 'Lahan Apt. 324', '-6.829038', '109.0473738', '410.1100', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(315, 46, NULL, 'Lahan Apt. 700', '-6.8438974', '107.5208299', '479.3100', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(316, 47, NULL, 'Lahan Suite 927', '-7.6610699', '108.9228192', '373.9000', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(317, 47, NULL, 'Lahan Suite 277', '-7.0202303', '110.0718946', '710.3600', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(318, 47, NULL, 'Lahan Apt. 839', '-7.4021304', '110.1429047', '199.9400', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(319, 47, NULL, 'Lahan Apt. 070', '-7.1714717', '110.6576969', '719.4300', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(320, 47, NULL, 'Lahan Suite 109', '-7.6215768', '108.5097082', '136.2200', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(321, 47, NULL, 'Lahan Suite 998', '-7.070101', '107.533883', '277.5300', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(322, 48, NULL, 'Lahan Apt. 471', '-7.4464074', '108.3691372', '174.9200', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(323, 48, NULL, 'Lahan Apt. 096', '-6.8582448', '108.6386071', '650.5100', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(324, 48, NULL, 'Lahan Suite 035', '-7.299042', '107.0210237', '281.9400', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(325, 48, NULL, 'Lahan Apt. 014', '-6.886971', '107.8008997', '420.7600', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(326, 48, NULL, 'Lahan Apt. 369', '-7.4940077', '109.1801358', '430.1500', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(327, 48, NULL, 'Lahan Suite 935', '-6.8715517', '109.825604', '749.9400', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(328, 48, NULL, 'Lahan Suite 696', '-7.6500664', '110.3981585', '620.7000', NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

DROP TABLE IF EXISTS `panen`;
CREATE TABLE IF NOT EXISTS `panen` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `panen_komoditas_lahan_id_foreign` (`komoditas_lahan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provinsi_pengurus_id_foreign` (`pengurus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `pengurus_id`, `name`, `other`, `created_at`, `updated_at`) VALUES
(1, 2, 'Botswana', NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `other`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@komoditas.id', '12345', '$2y$10$3Ou4IujK8JnpunZNwUUhreJMtovpnFxBPX1Qt6t1IPoi.v33HsmiS', 'superadmin', NULL, 'epdLhsfJGCwaYZuTCXctK9TuOwFu0lvE4OjSz2OREduX0d1aApeRtOEWwxHY', '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(2, 'Lucinda Olson', 'lucindaolson@komoditas.id', 'lucindaolson@komoditas.id', '$2y$10$68M21ShyM..pk7bT5nsoY.JjLjsNbjhdd/msOOxE9ngOdFEfVoISW', 'korprov', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(3, 'Destinee Lowe', 'destineelowe@komoditas.id', 'destineelowe@komoditas.id', '$2y$10$OA7AT4vDFay/5RO0oumFHuuQxWxsSpzdVLzi07TftvELK4hjHovmC', 'korkab', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(4, 'Arielle Lehner', 'ariellelehner@komoditas.id', 'ariellelehner@komoditas.id', '$2y$10$kGUIkRXzR8letFK9ifKoAuCz9XPSnUieAIKMu0C9ZqXwN90yfYq4.', 'korkec', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(5, 'Korey Hilll', 'koreyhilll@komoditas.id', 'koreyhilll@komoditas.id', '$2y$10$wMIhtXcI.ZOa9wdIkOcxR.KBN/xW0ex5A56h8FQzflJMWEmWV8DF6', 'kordes', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(6, 'Loyce Goodwin', 'loycegoodwin@komoditas.id', 'loycegoodwin@komoditas.id', '$2y$10$XGIPQ8JILI.787ghS9lyN.2s58.rHEgvMTax..qMmMHRO6ZNjrBES', 'kordes', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(7, 'Hilbert Wunsch', 'hilbertwunsch@komoditas.id', 'hilbertwunsch@komoditas.id', '$2y$10$lM4urEbmnKM6AyVBG8S15OA8i40NZib/v/S4o0pgHVElcEx53FhpO', 'kordes', NULL, NULL, '2019-04-05 03:20:26', '2019-04-05 03:20:26'),
(8, 'Rocky Daugherty', 'rockydaugherty@komoditas.id', 'rockydaugherty@komoditas.id', '$2y$10$UY3iwq5mGjBLEXZTiwxxze4v8aAfv6mMlwFCSEV0.Dc/u3SN0H98G', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(9, 'Ebba Gulgowski', 'ebbagulgowski@komoditas.id', 'ebbagulgowski@komoditas.id', '$2y$10$59E7cBCuEgcPNpS1QkkTaelXNxlszQve2nEOYULaDDVFzN14LhKAC', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(10, 'Randall Littel', 'randalllittel@komoditas.id', 'randalllittel@komoditas.id', '$2y$10$OxOcxRDMCukHiikdsu9/leh7ToSzRGRPpRAE1i9hnqB/U1TNzXIvC', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(11, 'Ole Mayer', 'olemayer@komoditas.id', 'olemayer@komoditas.id', '$2y$10$2q4rhLH0EZygBYR.NbqXuulJoRfC7g7Z1Zdy519qm9IQOsGlMEjqG', 'korkec', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(12, 'Chanelle Bahringer', 'chanellebahringer@komoditas.id', 'chanellebahringer@komoditas.id', '$2y$10$UMN8rRwXDg7pZezvqoYEf.1/DgPJCUR5yZHtZNpX7RUKNHnDqUYEm', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(13, 'Esmeralda Goodwin', 'esmeraldagoodwin@komoditas.id', 'esmeraldagoodwin@komoditas.id', '$2y$10$kjKDRt2NQtCU2g87kVdZse//JMXJTbLY8i07aHJs4Tfu0qMHEtNH6', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(14, 'Luther Kris', 'lutherkris@komoditas.id', 'lutherkris@komoditas.id', '$2y$10$3ZeC6Bhz57pUKJhu7ynOz.HgjVurfF1YqTtpiS3rc.ouN/UqzBco6', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(15, 'Duane Denesik', 'duanedenesik@komoditas.id', 'duanedenesik@komoditas.id', '$2y$10$z11CgW/jiFOuM0sYgPpqMOSgggvatOO24ap7JqpOww28JxvAZxvnW', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(16, 'Richie Fadel', 'richiefadel@komoditas.id', 'richiefadel@komoditas.id', '$2y$10$SDK1qHJgSp5dXA2DbeEaouUwbgtvKGaxS0SioM1F3dk6z14pafvvK', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(17, 'Gillian Schinner', 'gillianschinner@komoditas.id', 'gillianschinner@komoditas.id', '$2y$10$ZzrpYEZSPZxv3dj/o0ccNuxQvuQzeL9UgxgXiRw5.j67wm/DlrRFS', 'kordes', NULL, NULL, '2019-04-05 03:20:27', '2019-04-05 03:20:27'),
(18, 'Icie Carter', 'iciecarter@komoditas.id', 'iciecarter@komoditas.id', '$2y$10$eA6NJkgcoJmjKnpmCwiXvefMdae3CYno6gNySGE6k9uEfJFnDh0oG', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(19, 'Isaac Lubowitz', 'isaaclubowitz@komoditas.id', 'isaaclubowitz@komoditas.id', '$2y$10$zWwvu6BwN3c5u6bFRM3/aePiyxX309fUS6hK2R0FwKbVPi2bkRPdK', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(20, 'Eveline Gerhold', 'evelinegerhold@komoditas.id', 'evelinegerhold@komoditas.id', '$2y$10$NhJItEYwUd3np9hXjn.Kc.goEUg2eEqU7oT/nOHix95qWUzcTpuPa', 'korkec', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(21, 'Marianna Sanford', 'mariannasanford@komoditas.id', 'mariannasanford@komoditas.id', '$2y$10$KzIRKRW7Do9ypv/p3vDMuO9Zgc2j0uHFFAOURyfBOjcL/SLEqbRou', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(22, 'Tito Crooks', 'titocrooks@komoditas.id', 'titocrooks@komoditas.id', '$2y$10$HsG4kDV4i555UNNDfFzIT.UFTgjKuvyQW3vRNHIUnq46qDMp7c2.6', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(23, 'Lillie Schultz', 'lillieschultz@komoditas.id', 'lillieschultz@komoditas.id', '$2y$10$bqYwvjdOIlRAVcivZuoHTeeiqNfIKigZ3coJKQ2q/WcG3pH3f/QgO', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(24, 'Kristy Ortiz', 'kristyortiz@komoditas.id', 'kristyortiz@komoditas.id', '$2y$10$BYaChFcNhtnb/esUwqPCb.bc9/c.LobhS41p5SP.YrL8.xi0zz.96', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(25, 'Marjolaine Mann', 'marjolainemann@komoditas.id', 'marjolainemann@komoditas.id', '$2y$10$RUHgjJl1bNX.A4jQvibJce/LK7gRK64qShiOvOerIEhsMFp90p44G', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(26, 'Brooke Funk', 'brookefunk@komoditas.id', 'brookefunk@komoditas.id', '$2y$10$UrtP.rYcXCK3yIe8i65qSuK4PXWA3eGG2uGYxEDpdZ2ip8CNOaZHu', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(27, 'Esperanza Koch', 'esperanzakoch@komoditas.id', 'esperanzakoch@komoditas.id', '$2y$10$mNAYFAhYo6p5VbKbepUoy.K1PZa6twxnW0qdIJ0stB4ls0.lXXfgu', 'kordes', NULL, NULL, '2019-04-05 03:20:28', '2019-04-05 03:20:28'),
(28, 'Jerod Tromp', 'jerodtromp@komoditas.id', 'jerodtromp@komoditas.id', '$2y$10$ifksPCCye0yzqDz9IBa88unYAwhyk8Po3US0GjFUWtMM7TIOsJGCC', 'korkec', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(29, 'Emiliano Huel', 'emilianohuel@komoditas.id', 'emilianohuel@komoditas.id', '$2y$10$WEJ5ibQhOHZl81IPwhpYwOJ6fDwGdB1ZCVFIAO/2xDUlRD2Wbg9K6', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(30, 'Trevor Ondricka', 'trevorondricka@komoditas.id', 'trevorondricka@komoditas.id', '$2y$10$seaqsdkEq5vBdVNf6oJrNOQlCnQKXCegaGf13K09/76BjZEo4t2cK', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(31, 'Mariano Goyette', 'marianogoyette@komoditas.id', 'marianogoyette@komoditas.id', '$2y$10$BD6uXxystNe4Dza3gWBsx.TdgtruhH8BSUqa.M11qIqAakMPvbYeS', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(32, 'Dayton Kuphal', 'daytonkuphal@komoditas.id', 'daytonkuphal@komoditas.id', '$2y$10$NJABxYUkXQoobl2xiHat.uWPy4az2yhwUBExlIIf715iG71gtxKzq', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(33, 'Llewellyn Treutel', 'llewellyntreutel@komoditas.id', 'llewellyntreutel@komoditas.id', '$2y$10$50BDoJpisw5vAnyHb4SXCOR9lLmwRoJ1H9OGy.w89CpzLKyD7GVX6', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(34, 'Turner Crona', 'turnercrona@komoditas.id', 'turnercrona@komoditas.id', '$2y$10$Mod5gn6G6jgOmpxUXoXln.1ZW2sM9zc0fOgW7Pxp7haFGxhy00lda', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(35, 'Harry Bailey', 'harrybailey@komoditas.id', 'harrybailey@komoditas.id', '$2y$10$Q/n8VR0ubQaPLfvBC64ByeFLAvIXiWiPGYi3DS6VMtmD.sjzB6iuq', 'korkec', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(36, 'Sean Mann', 'seanmann@komoditas.id', 'seanmann@komoditas.id', '$2y$10$M6zg0zjXGdnNexunAN0cj.PcIk/gkI2iEN1KhdtaTf6SaMc37kGxC', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(37, 'Zena Okuneva', 'zenaokuneva@komoditas.id', 'zenaokuneva@komoditas.id', '$2y$10$7wOLdai2Ez5jr8SjPKTbG.XvLUN/0YuEHpYbNlFqPmj.Jx2ykxjPa', 'kordes', NULL, NULL, '2019-04-05 03:20:29', '2019-04-05 03:20:29'),
(38, 'Dameon Gerhold', 'dameongerhold@komoditas.id', 'dameongerhold@komoditas.id', '$2y$10$H6ER373181NKw90avBWKg.1Bw21oohhPBKZEf9fiLkjqq/q3/gGIK', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(39, 'Vito Spencer', 'vitospencer@komoditas.id', 'vitospencer@komoditas.id', '$2y$10$v.k3hOTHxv5itPWwkxblrual/Vaspl3vP5lU2I.pFsAwGBvWKwZji', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(40, 'Rubie Romaguera', 'rubieromaguera@komoditas.id', 'rubieromaguera@komoditas.id', '$2y$10$Gn3Fak4fT425V1pV7Vpfu.oTNacTwHYvXhc7USFZ3jzZ15g/ScFTS', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(41, 'Payton Wolff', 'paytonwolff@komoditas.id', 'paytonwolff@komoditas.id', '$2y$10$VYkkDfNWKiZnzbkRZcXwXe.tjMo.1wtP.3.ZT4hJeXGLmLhjAv0Hu', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(42, 'Lucienne Sanford', 'luciennesanford@komoditas.id', 'luciennesanford@komoditas.id', '$2y$10$W0OJEWBb/h0qt6FcDCtXxOnEY6qfWxcNuF1V9b15c5iCPvdysfQpS', 'korkec', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(43, 'Juliet Dickens', 'julietdickens@komoditas.id', 'julietdickens@komoditas.id', '$2y$10$xnLZK3Qxnef2CXfQWhasbONu37NKUyhA2.x/AQnphjoGJutIDipzm', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(44, 'Carlie Shields', 'carlieshields@komoditas.id', 'carlieshields@komoditas.id', '$2y$10$85lklb5F0WZhginjNgClXucLDyGtbDA5T0J3z85E8acXCElPjMr5G', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(45, 'Ila Turcotte', 'ilaturcotte@komoditas.id', 'ilaturcotte@komoditas.id', '$2y$10$gyPY9wLqH/iwZ09j8as0XebEEo4bUTxtfgkL7bQDPtcW/Rb2OA2sG', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(46, 'Jody Borer', 'jodyborer@komoditas.id', 'jodyborer@komoditas.id', '$2y$10$ErUHGUJcHaxbHWPTWbc4LuBHNGieKTu8Qk9D7OyjFhhNlSJd4FzpC', 'kordes', NULL, NULL, '2019-04-05 03:20:30', '2019-04-05 03:20:30'),
(47, 'Talon Hettinger', 'talonhettinger@komoditas.id', 'talonhettinger@komoditas.id', '$2y$10$3LH9rpB9pt6tw2mpHQMVBezfh.6JoS38R/RCiGXXspbqJ1s/6Q3ly', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(48, 'Oscar Jacobson', 'oscarjacobson@komoditas.id', 'oscarjacobson@komoditas.id', '$2y$10$jOe33d9RyW7a7By/4pVCbuURAQmrIK8GIPhjCqQx0haM5Jdhjdgmm', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(49, 'Marcus Runolfsdottir', 'marcusrunolfsdottir@komoditas.id', 'marcusrunolfsdottir@komoditas.id', '$2y$10$RqT8TeRHCCJ003Ynz5mQf.ZP2qQUlFG/vKRjnJdkEgQerSMJojaaW', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(50, 'Abbie Swaniawski', 'abbieswaniawski@komoditas.id', 'abbieswaniawski@komoditas.id', '$2y$10$fBFhRyTvUJaRvag5AvByh.SWdDiocx0OnmVNiSPdwi/sBeSY/F5H6', 'korkec', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(51, 'Justen Beatty', 'justenbeatty@komoditas.id', 'justenbeatty@komoditas.id', '$2y$10$lnVNuPiMRqcV/wDRbHfo0OB7GoWA4HzsJ7Ipmu29ph93lvNGmM2Ge', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(52, 'Kelsie Durgan', 'kelsiedurgan@komoditas.id', 'kelsiedurgan@komoditas.id', '$2y$10$gW04wORG16K43bd1BQbvoepL0gdzZeKOFEo0HsqFwNZ6.CKE7X9vy', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(53, 'Lucius McDermott', 'luciusmcdermott@komoditas.id', 'luciusmcdermott@komoditas.id', '$2y$10$eG7l4loS4w1y6zHftNtGMuyIjaMEZugOjCOoJ3uAygwQkNV5XNQwa', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(54, 'Antonette Kuhlman', 'antonettekuhlman@komoditas.id', 'antonettekuhlman@komoditas.id', '$2y$10$m2YyMuKaKy6rdFKw21nD.OHKTYe.sbBMZ.c60U.yoWAOZCncJBNKi', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(55, 'Carmen Cassin', 'carmencassin@komoditas.id', 'carmencassin@komoditas.id', '$2y$10$rLJlQK/09OIbXL51ifLKt.HUTcOuXuxg75x5ruhBItq6DeF.kKFoK', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(56, 'Andres Gusikowski', 'andresgusikowski@komoditas.id', 'andresgusikowski@komoditas.id', '$2y$10$H0smnV6GZ8k2V0YceTltpOr0uTaUH1H8IHccL5Ui6pIhlFWn1ZY7C', 'kordes', NULL, NULL, '2019-04-05 03:20:31', '2019-04-05 03:20:31'),
(57, 'Gregorio Considine', 'gregorioconsidine@komoditas.id', 'gregorioconsidine@komoditas.id', '$2y$10$7dvNg3NdZk0Zkeh37L8QC.4oOy/kt43e8.bv6CpvKyPPIWKzQEAlK', 'kordes', NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32'),
(58, 'Elliot Dicki', 'elliotdicki@komoditas.id', 'elliotdicki@komoditas.id', '$2y$10$TBIo2IwJQTgd8kj4sGOSteTHAZUrf4hn88i.XN.Szb0q05yTLgRPG', 'kordes', NULL, NULL, '2019-04-05 03:20:32', '2019-04-05 03:20:32');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
