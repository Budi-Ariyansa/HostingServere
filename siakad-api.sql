-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2022 at 09:41 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$pPbhfjkQTXkox2.se2PMeueEvpSC03eSJFXzAgPdUxO.JNVdbM6qC', '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

DROP TABLE IF EXISTS `dosens`;
CREATE TABLE IF NOT EXISTS `dosens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ttl_dosen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dosens_nid_unique` (`nid`),
  UNIQUE KEY `dosens_nik_unique` (`nik`),
  UNIQUE KEY `dosens_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `nama_dosen`, `nid`, `alamat`, `ttl_dosen`, `agama`, `no_hp`, `nik`, `no_kk`, `email`, `password`, `fakultas_id`, `created_at`, `updated_at`) VALUES
(1, 'Agus Haryono', '61532', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Salatiga, 19-05-1995', 'Kristen', '089694771630', '3306124403910224', '3306124403910225', 'agus.haryono@student.uksw.edu', '$2y$10$SkV.CHKxZ8gZOQcgdKlykur0o.jAc/5W.NdDMmCXDBkJJmeq8QJxq', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'Doni Sudrajatt', '61500', 'Jl. Masjid Babul Khair No.4, Ketapang', 'Ketapang, 20-05-1997', 'Kristen', '089694771631', '3316124403910309', '3316124403910311', 'doni.sudrajat@student.uksw.edu', '$2y$10$Q8b12i8CzPpnOuT46Rf4w.kRiwxJa5kW2zB6z4zR8JS.64zvUYAMy', 1, '2022-04-04 09:03:53', '2022-04-04 09:12:31'),
(3, 'Albertus Hornandes', '32455', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Salatiga, 19-08-1980', 'Kristen', '089694771632', '3316124401210309', '3316124401210389', 'albertus.hornandes@student.uksw.edu', '$2y$10$HIwNmchSpwZzAMgHuDCv8OKdhscwsV2G4yqOAdwOEwLU6KtkR/Z9K', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'Taruna Purinusa', '35021', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Banten, 23-09-1989', 'Kristen', '089694771636', '3316124401210399', '3316124401210100', 'taruna.purinusa@student.uksw.edu', '$2y$10$VmE2cc.n88fJCZZBgB.11uaz0km4fU51gTiYl1pPzUb553ACS0jd2', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
CREATE TABLE IF NOT EXISTS `fakultas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_fakultas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akreditasi_fakultas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `program_studi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`, `akreditasi_fakultas`, `program_studi`, `created_at`, `updated_at`) VALUES
(1, 'Fakultas Teknologi Informasi', 'A', 'Teknik Informatika', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'Fakultas Teknologi Informasi', 'A', 'Sistem Informasi', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'Fakultas Ekonomi dan Bisnis', 'A', 'Manajemen', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'Fakultas Ekonomi dan Bisnis', 'A', 'Ilmu Ekonomi', '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_studis`
--

DROP TABLE IF EXISTS `hasil_studis`;
CREATE TABLE IF NOT EXISTS `hasil_studis` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nilai` int NOT NULL,
  `angka_kredit` int NOT NULL,
  `tahun_ambil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ips` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matakuliah_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kuliahs`
--

DROP TABLE IF EXISTS `jadwal_kuliahs`;
CREATE TABLE IF NOT EXISTS `jadwal_kuliahs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `kartu_studi_tetap_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jadwal_kuliahs`
--

INSERT INTO `jadwal_kuliahs` (`id`, `user_id`, `kartu_studi_tetap_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 1, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 1, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 1, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_studi_tetaps`
--

DROP TABLE IF EXISTS `kartu_studi_tetaps`;
CREATE TABLE IF NOT EXISTS `kartu_studi_tetaps` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `b/u` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mengajar_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kartu_studi_tetaps`
--

INSERT INTO `kartu_studi_tetaps` (`id`, `b/u`, `mengajar_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'b', 1, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'b', 2, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'b', 3, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'b', 4, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(5, 'b', 1, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(6, 'b', 2, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(7, 'b', 3, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(8, 'b', 3, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `list_biayas`
--

DROP TABLE IF EXISTS `list_biayas`;
CREATE TABLE IF NOT EXISTS `list_biayas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `harga_spp` int NOT NULL,
  `harga_sks` int NOT NULL,
  `harga_layanan_kh` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_biayas`
--

INSERT INTO `list_biayas` (`id`, `harga_spp`, `harga_sks`, `harga_layanan_kh`, `created_at`, `updated_at`) VALUES
(1, 1000000, 225000, 334000, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliahs`
--

DROP TABLE IF EXISTS `matakuliahs`;
CREATE TABLE IF NOT EXISTS `matakuliahs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_matkul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode_huruf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_matkul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_sks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sks_a` int NOT NULL,
  `sks_b` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matakuliahs`
--

INSERT INTO `matakuliahs` (`id`, `kode_matkul`, `kode_huruf`, `nama_matkul`, `jumlah_sks`, `sks_a`, `sks_b`, `created_at`, `updated_at`) VALUES
(1, 'IN332', 'A', 'SISTEM DIGITAL', '3', 3, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'IN392', 'C', 'ALGORITMA STRUKTUR DATA', '3', 3, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'IN322', 'H', 'REKAYASA PERANGKAT LUNAK', '3', 3, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'IN221', 'F', 'GRAFIKA KOMPUTER', '3', 3, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(5, 'IN311', 'A', 'SISTEM OPERAS', '3', 3, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(6, 'SL339', 'C', 'ILMU SOSIAL BUDAYA DASAR', '3', 3, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(7, 'CA123', 'H', 'SISTEM EMBEDDED', '3', 3, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(8, 'IN211', 'F', 'MATEMATIKA DISKRIT', '3', 3, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah_tersedias`
--

DROP TABLE IF EXISTS `matakuliah_tersedias`;
CREATE TABLE IF NOT EXISTS `matakuliah_tersedias` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `waktu_mulai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mengajars`
--

DROP TABLE IF EXISTS `mengajars`;
CREATE TABLE IF NOT EXISTS `mengajars` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hari_kuliah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jam_kuliah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kursi_tersedia` int NOT NULL,
  `kursi_terpilih` int NOT NULL,
  `dosen_id` bigint UNSIGNED NOT NULL,
  `matakuliah_id` bigint UNSIGNED NOT NULL,
  `ruangan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mengajars`
--

INSERT INTO `mengajars` (`id`, `hari_kuliah`, `jam_kuliah`, `kursi_tersedia`, `kursi_terpilih`, `dosen_id`, `matakuliah_id`, `ruangan_id`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '04_06', 40, 0, 1, 1, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'Selasa', '04_06', 40, 0, 2, 2, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'Kamis', '12_02', 40, 12, 3, 3, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'Jumat', '04_06', 40, 0, 4, 4, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(5, 'Senin', '04_06', 40, 0, 4, 4, 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(6, 'Selasa', '04_06', 40, 0, 3, 5, 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(7, 'Kamis', '12_02', 40, 12, 2, 6, 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(8, 'Jumat', '04_06', 40, 0, 1, 7, 4, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_10_123448_create_dosens_table', 1),
(6, '2022_03_10_133851_create_admins_table', 1),
(7, '2022_03_11_082045_create_riwayats_table', 1),
(8, '2022_03_20_125008_create_registrasi_ulangs_table', 1),
(9, '2022_03_20_145600_create_matakuliah_tersedias_table', 1),
(10, '2022_03_21_072218_create_presensis_table', 1),
(11, '2022_03_21_072320_create_kartu_studi_tetaps_table', 1),
(12, '2022_03_21_072413_create_tagihans_table', 1),
(13, '2022_03_21_072544_create_jadwal_kuliahs_table', 1),
(14, '2022_03_23_144137_create_fakultas_table', 1),
(15, '2022_03_23_144148_create_tahun_ajars_table', 1),
(16, '2022_03_23_145019_create_matakuliahs_table', 1),
(17, '2022_03_23_145438_create_mengajars_table', 1),
(18, '2022_03_23_145447_create_registrasi_matakuliahs_table', 1),
(19, '2022_03_23_145544_create_ruangans_table', 1),
(20, '2022_03_23_145613_create_transkip_nilais_table', 1),
(21, '2022_03_23_145635_create_hasil_studis_table', 1),
(22, '2022_03_23_145853_create_request_matakuliahs_table', 1),
(23, '2022_03_23_145913_create_poin_siswas_table', 1),
(24, '2022_03_25_202136_create_list_biayas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'auth_token', '5891310650e9a233a9afa861b76cfbc8a55fab1f5d05b87271f96671f5192f17', '[\"*\"]', '2022-04-04 09:04:19', '2022-04-04 09:04:09', '2022-04-04 09:04:19'),
(2, 'App\\Models\\Admin', 1, 'auth_token', '398e7f65a707c295423f4e45c53812a48490b967d737463c7579486ce627cbfa', '[\"*\"]', '2022-04-04 09:06:13', '2022-04-04 09:05:41', '2022-04-04 09:06:13'),
(3, 'App\\Models\\Admin', 1, 'auth_token', '261519a93afc2d34e53821b9386bc1447c948e10371c8c2a0b73e1cb1eaeffc3', '[\"*\"]', '2022-04-04 09:11:28', '2022-04-04 09:11:21', '2022-04-04 09:11:28'),
(4, 'App\\Models\\Admin', 1, 'auth_token', 'a6875f416d9bfc2ac5f0e5da36b75981f1a84a54876c476dc56c9256390012d4', '[\"*\"]', '2022-04-04 09:12:31', '2022-04-04 09:12:24', '2022-04-04 09:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `poin_siswas`
--

DROP TABLE IF EXISTS `poin_siswas`;
CREATE TABLE IF NOT EXISTS `poin_siswas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenis_poin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `waktu_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `posisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tingkat_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

DROP TABLE IF EXISTS `presensis`;
CREATE TABLE IF NOT EXISTS `presensis` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_pertemuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_meet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_materi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rps_materi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jadwal_kuliah_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrasi_matakuliahs`
--

DROP TABLE IF EXISTS `registrasi_matakuliahs`;
CREATE TABLE IF NOT EXISTS `registrasi_matakuliahs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `waktu_mulai` datetime NOT NULL,
  `waktu_berakhir` datetime NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrasi_matakuliahs`
--

INSERT INTO `registrasi_matakuliahs` (`id`, `waktu_mulai`, `waktu_berakhir`, `fakultas_id`, `created_at`, `updated_at`) VALUES
(1, '2022-03-30 09:00:00', '2022-03-30 11:00:00', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi_ulangs`
--

DROP TABLE IF EXISTS `registrasi_ulangs`;
CREATE TABLE IF NOT EXISTS `registrasi_ulangs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenis_registrasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BELUM',
  `status` int NOT NULL DEFAULT '0',
  `waktu_mulai` date NOT NULL,
  `waktu_berakhir` date NOT NULL,
  `semester` int NOT NULL,
  `tahun_ajar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrasi_ulangs`
--

INSERT INTO `registrasi_ulangs` (`id`, `jenis_registrasi`, `status`, `waktu_mulai`, `waktu_berakhir`, `semester`, `tahun_ajar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BELUM', 0, '2022-03-27', '2022-04-01', 1, '2021-2022', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'BELUM', 0, '2022-03-27', '2022-04-01', 1, '2021-2022', 2, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'BELUM', 0, '2022-03-27', '2022-04-01', 1, '2021-2022', 3, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `request_matakuliahs`
--

DROP TABLE IF EXISTS `request_matakuliahs`;
CREATE TABLE IF NOT EXISTS `request_matakuliahs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode_matkul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_matkul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alasan` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayats`
--

DROP TABLE IF EXISTS `riwayats`;
CREATE TABLE IF NOT EXISTS `riwayats` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `riwayats`
--

INSERT INTO `riwayats` (`id`, `user`, `kegiatan`, `waktu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Telah Login', '2022-04-04', 'SUCCESS', '2022-04-04 09:04:09', '2022-04-04 09:04:09'),
(2, 'Admin', 'Telah mencari data : 61500', '2022-04-04', 'SUCCESS', '2022-04-04 09:04:16', '2022-04-04 09:04:16'),
(3, 'Admin', 'Telah Login', '2022-04-04', 'SUCCESS', '2022-04-04 09:05:41', '2022-04-04 09:05:41'),
(4, 'Admin', 'Telah mencari data : 61500', '2022-04-04', 'SUCCESS', '2022-04-04 09:05:47', '2022-04-04 09:05:47'),
(5, 'Admin', 'Telah Login', '2022-04-04', 'SUCCESS', '2022-04-04 09:11:21', '2022-04-04 09:11:21'),
(6, 'Admin', 'Telah mencari data : 61500', '2022-04-04', 'SUCCESS', '2022-04-04 09:11:27', '2022-04-04 09:11:27'),
(7, 'Admin', 'Telah Login', '2022-04-04', 'SUCCESS', '2022-04-04 09:12:24', '2022-04-04 09:12:24'),
(8, 'Admin', 'Telah mencari data : 61500', '2022-04-04', 'SUCCESS', '2022-04-04 09:12:29', '2022-04-04 09:12:29'),
(9, 'Admin', 'Telah mengupdate data : ', '2022-04-04', 'SUCCESS', '2022-04-04 09:12:31', '2022-04-04 09:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

DROP TABLE IF EXISTS `ruangans`;
CREATE TABLE IF NOT EXISTS `ruangans` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor_ruangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `nomor_ruangan`, `created_at`, `updated_at`) VALUES
(1, 'FTI445', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'FTI446', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'FTI447', '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(4, 'FTI448', '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

DROP TABLE IF EXISTS `tagihans`;
CREATE TABLE IF NOT EXISTS `tagihans` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uang_kuliah` int NOT NULL,
  `uang_spp` int NOT NULL,
  `uang_denda` int NOT NULL,
  `layanan_kh` int NOT NULL,
  `total_hutang` int NOT NULL,
  `harus_dibayar` int NOT NULL,
  `sudah_dibayar` int NOT NULL,
  `jatuh_tempo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tempo_pelunasan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `uang_kuliah`, `uang_spp`, `uang_denda`, `layanan_kh`, `total_hutang`, `harus_dibayar`, `sudah_dibayar`, `jatuh_tempo`, `tempo_pelunasan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3150000, 1000000, 0, 334000, 4484000, 1800000, 2684000, '07 Jan 2022', '18 Feb 2022', 1, '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajars`
--

DROP TABLE IF EXISTS `tahun_ajars`;
CREATE TABLE IF NOT EXISTS `tahun_ajars` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `semester` int NOT NULL,
  `tahun_ajar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tahun_ajars`
--

INSERT INTO `tahun_ajars` (`id`, `semester`, `tahun_ajar`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-2022', '2022-04-04 09:03:53', '2022-04-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `transkip_nilais`
--

DROP TABLE IF EXISTS `transkip_nilais`;
CREATE TABLE IF NOT EXISTS `transkip_nilais` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nilai` int NOT NULL,
  `angka_kredit` int NOT NULL,
  `tahun_ambil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipk` int NOT NULL,
  `matakuliah_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ttl_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `beban_sks` int NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `tahun_ajar_id` bigint UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_nim_unique` (`nim`),
  UNIQUE KEY `users_nik_unique` (`nik`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_siswa`, `alamat`, `ttl_siswa`, `agama`, `nim`, `no_hp`, `nik`, `no_kk`, `beban_sks`, `email`, `password`, `fakultas_id`, `tahun_ajar_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dinda Azis', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Salatiga, 19-05-2001', 'Kristen', '672019078', '089694771643', '3306124403910302', '3306124403910311', 18, 'dinda.azis@student.uksw.edu', '$2y$10$lWxWHHXbsczwR9SSPLOyqe0c/QhquVLZgyNYJg13djYloaEd/T6j.', 1, 1, NULL, NULL, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(2, 'Gading Jurino', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Salatiga, 19-05-2001', 'Kristen', '692019079', '089694771642', '3306124403910305', '3306124403910315', 20, 'gading.jurino@student.uksw.edu', '$2y$10$/rGTLIIsADo4FilYa2mYvevwQmDLs/i1qmBa3i6x5e28zyzP4Eweu', 2, 1, NULL, NULL, '2022-04-04 09:03:53', '2022-04-04 09:03:53'),
(3, 'Budi Yurdino', 'Jl. Kurniadi Salomo No.4, Salatiga', 'Salatiga, 19-05-2001', 'Kristen', '672019011', '089694771640', '3306124403910309', '3306124403910319', 16, 'budi.yurdino@student.uksw.edu', '$2y$10$bRozg.KarelGPwK21hvXT.Aihl4iARor0qqclnYU5irpENlIr.J.y', 1, 1, NULL, NULL, '2022-04-04 09:03:53', '2022-04-04 09:03:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
