-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2019 at 10:59 PM
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
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desa_kecamatan_id_foreign` (`kecamatan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Persiapan', 1, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(2, 'Penanaman', 2, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(3, 'Pemeliharaan', 3, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(4, 'Panen', 4, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(5, 'Kosong', 5, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

DROP TABLE IF EXISTS `kabupaten`;
CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kabupaten_provinsi_id_foreign` (`provinsi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kecamatan_kabupaten_id_foreign` (`kabupaten_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas`
--

INSERT INTO `komoditas` (`id`, `name`, `type`, `other`, `created_at`, `updated_at`) VALUES
(1, 'Padi', 'tanaman', NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(2, 'Jagung', 'tanaman', NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(3, 'Ayam', 'ternak', NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(4, 'Sapi', 'ternak', NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan`
--

DROP TABLE IF EXISTS `komoditas_lahan`;
CREATE TABLE IF NOT EXISTS `komoditas_lahan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `fase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `luas` decimal(10,4) DEFAULT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `komoditas_lahan_komoditas_id_foreign` (`komoditas_id`),
  KEY `komoditas_lahan_lahan_id_foreign` (`lahan_id`),
  KEY `komoditas_lahan_fase_id_foreign` (`fase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komoditas_lahan_gudang`
--

DROP TABLE IF EXISTS `komoditas_lahan_gudang`;
CREATE TABLE IF NOT EXISTS `komoditas_lahan_gudang` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,4) DEFAULT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `komoditas_lahan_gudang_komoditas_id_foreign` (`komoditas_id`),
  KEY `komoditas_lahan_gudang_lahan_id_foreign` (`lahan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lahan`
--

DROP TABLE IF EXISTS `lahan`;
CREATE TABLE IF NOT EXISTS `lahan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengurus_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  KEY `lahan_desa_id_foreign` (`desa_id`),
  KEY `lahan_pengurus_id_foreign` (`pengurus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `lahan_id` bigint(20) UNSIGNED NOT NULL,
  `komoditas_id` bigint(20) UNSIGNED NOT NULL,
  `hasil` decimal(10,4) NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `panen_lahan_id_foreign` (`lahan_id`),
  KEY `panen_komoditas_id_foreign` (`komoditas_id`)
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `other`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@komoditas.id', '12345', '$2y$10$VdW8169y3R.KO9/kKDfy5ufQK8fIeaNkjkaKHjit1B0KpuWX8ov5m', 'superadmin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(2, 'Thurman Miller', 'thurmanmiller@komoditas.id', 'thurmanmiller@komoditas.id', '$2y$10$p2v/Ubi3Dj580l2VY32Uxeo93wYTP46zdmL9iA52GNEL4X5/v4pW6', 'admin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(3, 'Roxane Barrows', 'roxanebarrows@komoditas.id', 'roxanebarrows@komoditas.id', '$2y$10$MbQYN9D7HKxRHhejjgcGY.lg8n/lU3kkkIu6.W0fjHAbyFK2ugqTC', 'admin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(4, 'Jody Padberg', 'jodypadberg@komoditas.id', 'jodypadberg@komoditas.id', '$2y$10$z3uowJ43Np9yULEpxCWP4.7UbOo1gAZ9TrhqjVTpVpBGjUdWsB0t6', 'admin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(5, 'Alivia Wilderman', 'aliviawilderman@komoditas.id', 'aliviawilderman@komoditas.id', '$2y$10$rTOzqqCEzIQ87d7fS5NavuLt2wVrbEq1ueAFbYYhdNwPuRIx3wNfi', 'admin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18'),
(6, 'Lizeth Mertz', 'lizethmertz@komoditas.id', 'lizethmertz@komoditas.id', '$2y$10$1ZrTfOvmYmoJa6T2Zy3MSua1wVfL1JOIFpx.yATo.03FM466TbkS6', 'admin', NULL, NULL, '2019-03-06 15:59:18', '2019-03-06 15:59:18');

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
  ADD CONSTRAINT `desa_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupaten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komoditas_lahan`
--
ALTER TABLE `komoditas_lahan`
  ADD CONSTRAINT `komoditas_lahan_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komoditas_lahan_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komoditas_lahan_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komoditas_lahan_gudang`
--
ALTER TABLE `komoditas_lahan_gudang`
  ADD CONSTRAINT `komoditas_lahan_gudang_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komoditas_lahan_gudang_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lahan`
--
ALTER TABLE `lahan`
  ADD CONSTRAINT `lahan_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lahan_pengurus_id_foreign` FOREIGN KEY (`pengurus_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `panen`
--
ALTER TABLE `panen`
  ADD CONSTRAINT `panen_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `panen_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
