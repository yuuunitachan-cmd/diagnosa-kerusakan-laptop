-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2025 at 03:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosa_laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `id` bigint UNSIGNED NOT NULL,
  `kerusakan_id` bigint UNSIGNED NOT NULL,
  `gejala_id` bigint UNSIGNED NOT NULL,
  `urutan` int NOT NULL DEFAULT '1',
  `is_aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`id`, `kerusakan_id`, `gejala_id`, `urutan`, `is_aktif`, `created_at`, `updated_at`) VALUES
(3, 7, 11, 1, 1, '2025-12-01 09:20:10', '2025-12-01 09:20:10'),
(4, 7, 13, 2, 1, '2025-12-01 09:21:21', '2025-12-01 09:21:21'),
(5, 7, 12, 3, 1, '2025-12-01 09:22:26', '2025-12-01 09:22:26'),
(6, 8, 14, 1, 1, '2025-12-01 09:22:59', '2025-12-01 09:23:17'),
(7, 8, 15, 2, 1, '2025-12-01 09:28:20', '2025-12-01 09:28:20'),
(11, 20, 16, 1, 1, '2025-12-01 09:32:54', '2025-12-01 09:32:54'),
(12, 20, 17, 2, 1, '2025-12-01 09:33:18', '2025-12-01 09:33:18'),
(13, 20, 31, 1, 1, '2025-12-01 09:33:31', '2025-12-01 09:33:31'),
(14, 10, 17, 1, 1, '2025-12-01 09:34:09', '2025-12-01 09:34:09'),
(15, 10, 20, 2, 1, '2025-12-01 09:34:33', '2025-12-01 09:34:33'),
(16, 10, 31, 3, 1, '2025-12-01 09:34:53', '2025-12-01 09:34:53'),
(17, 9, 21, 1, 1, '2025-12-01 09:35:32', '2025-12-01 09:35:32'),
(18, 9, 23, 2, 1, '2025-12-01 09:35:48', '2025-12-01 09:35:48'),
(19, 9, 24, 3, 1, '2025-12-01 09:36:02', '2025-12-01 09:36:02'),
(20, 9, 22, 4, 1, '2025-12-01 09:37:04', '2025-12-01 09:37:04'),
(21, 9, 19, 5, 1, '2025-12-01 09:37:25', '2025-12-01 09:37:25'),
(22, 11, 24, 1, 1, '2025-12-01 09:37:53', '2025-12-01 09:37:53'),
(23, 11, 25, 2, 1, '2025-12-01 09:38:06', '2025-12-01 09:38:06'),
(24, 18, 27, 1, 1, '2025-12-01 09:38:28', '2025-12-01 09:38:28'),
(25, 18, 28, 2, 1, '2025-12-01 09:38:41', '2025-12-01 09:38:41'),
(26, 18, 29, 3, 1, '2025-12-01 09:39:06', '2025-12-01 09:39:06'),
(27, 18, 30, 4, 1, '2025-12-01 09:39:29', '2025-12-01 09:39:29'),
(28, 18, 26, 5, 1, '2025-12-01 09:39:57', '2025-12-01 09:39:57'),
(29, 13, 36, 1, 1, '2025-12-01 09:40:21', '2025-12-01 09:40:21'),
(30, 13, 37, 2, 1, '2025-12-01 09:40:40', '2025-12-01 09:40:40'),
(31, 13, 38, 3, 1, '2025-12-01 09:41:22', '2025-12-01 09:41:22'),
(32, 13, 39, 4, 1, '2025-12-01 09:41:44', '2025-12-01 09:41:44'),
(33, 14, 40, 1, 1, '2025-12-01 09:42:05', '2025-12-01 09:42:05'),
(34, 14, 41, 2, 1, '2025-12-01 09:42:31', '2025-12-01 09:42:31'),
(35, 14, 42, 3, 1, '2025-12-01 09:43:11', '2025-12-01 09:43:11'),
(36, 15, 40, 1, 1, '2025-12-01 09:43:45', '2025-12-01 09:43:45'),
(37, 15, 42, 2, 1, '2025-12-01 09:44:03', '2025-12-01 09:44:03'),
(38, 11, 28, 1, 1, '2025-12-01 09:44:26', '2025-12-01 09:44:26'),
(39, 11, 29, 2, 1, '2025-12-01 09:44:50', '2025-12-01 09:44:50'),
(40, 11, 30, 3, 1, '2025-12-01 09:45:09', '2025-12-01 09:45:09'),
(41, 17, 32, 1, 1, '2025-12-01 09:45:26', '2025-12-01 09:45:26'),
(42, 17, 33, 2, 1, '2025-12-01 09:45:44', '2025-12-01 09:45:44'),
(43, 16, 34, 1, 1, '2025-12-01 09:46:31', '2025-12-01 09:46:31'),
(44, 16, 33, 2, 1, '2025-12-01 09:47:03', '2025-12-01 09:47:03'),
(45, 19, 17, 1, 1, '2025-12-01 09:47:23', '2025-12-01 09:47:23'),
(46, 19, 18, 2, 1, '2025-12-01 09:47:36', '2025-12-01 09:47:36'),
(47, 19, 21, 3, 1, '2025-12-01 09:47:55', '2025-12-01 09:47:55'),
(48, 12, 28, 1, 1, '2025-12-01 09:48:14', '2025-12-01 09:48:14'),
(49, 12, 30, 2, 1, '2025-12-01 09:48:36', '2025-12-01 09:48:36'),
(50, 13, 35, 1, 1, '2025-12-01 09:49:03', '2025-12-01 09:49:03'),
(51, 13, 24, 2, 1, '2025-12-01 09:49:19', '2025-12-01 09:49:19'),
(52, 9, 25, 6, 1, '2025-12-01 09:50:49', '2025-12-01 09:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kategori` enum('hardware','software','battery','display','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_aktif` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode_gejala`, `nama_gejala`, `deskripsi`, `kategori`, `is_aktif`, `created_at`, `updated_at`) VALUES
(11, 'G001', 'Tidak berfungsi tombol keyboard', 'Tombol keyboard tidak merespons saat ditekan, sebagian atau seluruhnya', 'hardware', 1, '2025-12-01 08:21:23', '2025-12-01 08:21:35'),
(12, 'G002', 'Terdengar suara beep panjang', 'Bunyi beep panjang terdengar saat laptop dinyalakan, menandakan error hardware', 'software', 1, '2025-12-01 08:22:27', '2025-12-01 08:22:31'),
(13, 'G003', 'Tidak menyala lampu LED di keyboard', 'Lampu indikator keyboard (caps lock, num lock) tidak menyala saat ditekan', 'hardware', 1, '2025-12-01 08:23:25', '2025-12-01 08:23:32'),
(14, 'G004', 'Kursor mouse bergerak tidak stabil', 'Pointer mouse bergerak tersendat-sendat, melompat, atau tidak smooth', 'hardware', 1, '2025-12-01 08:26:24', '2025-12-01 08:26:31'),
(15, 'G005', 'Kursor mouse bergerak sendiri', 'Pointer bergerak tanpa disentuh atau input dari pengguna', 'hardware', 1, '2025-12-01 08:28:28', '2025-12-01 08:28:35'),
(16, 'G006', 'Muncul tulisan \"Boot MGR is Missing\"', 'Pesan error \"Boot Manager is Missing\" muncul saat booting', 'software', 1, '2025-12-01 08:31:33', '2025-12-01 08:57:45'),
(17, 'G007', 'Tidak dapat masuk sistem operasi', 'Laptop stuck atau gagal masuk ke Windows/Linux setelah boot', 'software', 1, '2025-12-01 08:32:05', '2025-12-01 08:57:51'),
(18, 'G008', 'Sering restart sendiri', 'Laptop mati dan hidup kembali sendiri tanpa perintah pengguna', 'software', 1, '2025-12-01 08:37:33', '2025-12-01 08:58:01'),
(19, 'G009', 'Komponen sudah dipasang dengan benar', 'RAM/HDD sudah terpasang benar', 'hardware', 1, '2025-12-01 08:38:06', '2025-12-01 08:58:06'),
(20, 'G010', 'Hard disk tidak terdeteksi BIOS', 'BIOS tidak mengenali hard disk', 'hardware', 1, '2025-12-01 08:38:33', '2025-12-01 08:58:11'),
(21, 'G011', 'Muncul bluescreen (BSOD)', 'Layar biru dengan kode error', 'software', 1, '2025-12-01 08:39:02', '2025-12-01 08:58:16'),
(22, 'G012', 'Kapasitas memory tidak sesuai', 'Kapasitas RAM terbaca tidak sesuai', 'hardware', 1, '2025-12-01 08:39:52', '2025-12-01 08:58:21'),
(23, 'G013', 'Terdengar bunyi beep 3x', 'Bunyi beep pendek 3 kali', 'hardware', 1, '2025-12-01 08:40:25', '2025-12-01 08:58:33'),
(24, 'G014', 'No display (layar kosong)', 'Layar gelap meski laptop menyala', 'display', 1, '2025-12-01 08:40:50', '2025-12-01 08:58:26'),
(25, 'G015', 'Bunyi beep panjang 1x', 'Bunyi beep tunggal panjang', 'hardware', 1, '2025-12-01 08:41:18', '2025-12-01 08:58:39'),
(26, 'G016', 'Tanggal tidak tersimpan', 'Setting tanggal reset setiap mati', 'hardware', 1, '2025-12-01 08:41:48', '2025-12-01 08:58:44'),
(27, 'G017', 'Kipas tidak berputar', 'Kipas processor diam total', 'hardware', 1, '2025-12-01 08:42:16', '2025-12-01 08:58:50'),
(28, 'G018', 'Shutdown sendiri', 'Laptop mati otomatis', 'hardware', 1, '2025-12-01 08:42:40', '2025-12-01 08:59:50'),
(29, 'G019', 'Bagian bawah laptop sangat panas', 'Suhu berlebihan di bagian bawah', 'hardware', 1, '2025-12-01 08:43:09', '2025-12-01 08:59:57'),
(30, 'G020', 'Suhu processor tinggi (overheat)', 'Processor overheating', 'hardware', 1, '2025-12-01 08:43:37', '2025-12-01 09:00:02'),
(31, 'G021', 'Muncul pesan \"Disk Boot Failure\"', 'Error disk boot saat startup', 'software', 1, '2025-12-01 08:44:02', '2025-12-01 09:00:12'),
(32, 'G022', 'No play (audio)', 'Tidak ada suara dari speaker', 'hardware', 1, '2025-12-01 08:44:30', '2025-12-01 09:00:07'),
(33, 'G023', 'Driver tidak bisa diinstall', 'Gagal instal driver hardware', 'software', 1, '2025-12-01 08:44:56', '2025-12-01 08:59:43'),
(34, 'G024', 'Tidak menyala lampu webcam', 'LED webcam tidak menyala', 'hardware', 1, '2025-12-01 08:45:24', '2025-12-01 08:59:37'),
(35, 'G025', 'Tidak muncul nama VGA di OS', 'Kartu grafis tidak terdeteksi', 'display', 1, '2025-12-01 08:46:13', '2025-12-01 08:59:31'),
(36, 'G026', 'LCD mati mendadak', 'Layar tiba-tiba mati', 'display', 1, '2025-12-01 08:46:44', '2025-12-01 08:59:23'),
(37, 'G027', 'Bau terbakar pada LCD', 'Bau gosong dari area layar', 'display', 1, '2025-12-01 08:47:14', '2025-12-01 08:59:17'),
(38, 'G028', 'Muncul garis vertikal di layar', 'Garis vertikal di layar', 'display', 1, '2025-12-01 08:47:48', '2025-12-01 08:59:13'),
(39, 'G029', 'Tidak muncul tampilan di layar', 'Layar blank total', 'display', 1, '2025-12-01 08:48:13', '2025-12-01 08:59:07'),
(40, 'G030', 'Laptop mati total', 'Tidak ada tanda hidup', 'battery', 1, '2025-12-01 08:48:37', '2025-12-01 08:59:03'),
(41, 'G031', 'Charge LED mati', 'Lampu indikator charger mati', 'battery', 1, '2025-12-01 08:49:03', '2025-12-01 08:58:59'),
(42, 'G032', 'Bau terbakar pada adaptor', 'Adaptor mengeluarkan bau gosong', 'other', 1, '2025-12-01 08:56:52', '2025-12-01 08:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pengguna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `gejala_terpilih` json NOT NULL,
  `fakta_terbukti` json DEFAULT NULL,
  `rules_tertrigger` json DEFAULT NULL,
  `hasil_akhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langkah_diagnosa` int NOT NULL DEFAULT '0',
  `hasil_diagnosa` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `nama_pengguna`, `email`, `user_id`, `gejala_terpilih`, `fakta_terbukti`, `rules_tertrigger`, `hasil_akhir`, `langkah_diagnosa`, `hasil_diagnosa`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', NULL, '\"[1,2]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":1,\\\"kode_kerusakan\\\":\\\"K001\\\",\\\"nama_kerusakan\\\":\\\"Hardware Failure\\\",\\\"deskripsi\\\":\\\"Kerusakan pada komponen hardware laptop\\\",\\\"solusi\\\":\\\"Ganti komponen yang rusak, bawa ke service center\\\"},\\\"cf\\\":85.5,\\\"persentase\\\":85.5}]\"', '2025-11-17 23:14:23', '2025-11-17 23:14:23'),
(2, 'User Demo', 'user@diagnosa.com', 2, '\"[\\\"10\\\"]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":3,\\\"kode_kerusakan\\\":\\\"K003\\\",\\\"nama_kerusakan\\\":\\\"Battery Problem\\\",\\\"deskripsi\\\":\\\"Masalah pada baterai laptop\\\",\\\"solusi\\\":\\\"Ganti baterai, kalibrasi baterai, cek charger\\\",\\\"kategori\\\":\\\"battery\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":8,\\\"kerusakan_id\\\":3,\\\"gejala_id\\\":10,\\\"bobot\\\":0.7,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.7,\\\"persentase\\\":70,\\\"gejala_count\\\":1}]\"', '2025-11-20 08:49:15', '2025-11-20 08:49:15'),
(3, 'User Demo', 'user@diagnosa.com', 2, '\"[\\\"1\\\",\\\"4\\\"]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":1,\\\"kode_kerusakan\\\":\\\"K001\\\",\\\"nama_kerusakan\\\":\\\"Hardware Failure\\\",\\\"deskripsi\\\":\\\"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\\\",\\\"solusi\\\":\\\"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-20T03:45:24.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":1,\\\"kerusakan_id\\\":1,\\\"gejala_id\\\":1,\\\"bobot\\\":0.8,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.8,\\\"persentase\\\":80,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":2,\\\"kode_kerusakan\\\":\\\"K002\\\",\\\"nama_kerusakan\\\":\\\"Software Corruption\\\",\\\"deskripsi\\\":\\\"Kerusakan sistem operasi atau software\\\",\\\"solusi\\\":\\\"Install ulang sistem operasi, update driver\\\",\\\"kategori\\\":\\\"software\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":5,\\\"kerusakan_id\\\":2,\\\"gejala_id\\\":4,\\\"bobot\\\":0.8,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.8,\\\"persentase\\\":80,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":4,\\\"kode_kerusakan\\\":\\\"K004\\\",\\\"nama_kerusakan\\\":\\\"Overheating\\\",\\\"deskripsi\\\":\\\"Laptop terlalu panas\\\",\\\"solusi\\\":\\\"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":13,\\\"kerusakan_id\\\":4,\\\"gejala_id\\\":4,\\\"bobot\\\":0.6,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.6,\\\"persentase\\\":60,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":5,\\\"kode_kerusakan\\\":\\\"K005\\\",\\\"nama_kerusakan\\\":\\\"Display Issue\\\",\\\"deskripsi\\\":\\\"Masalah pada layar laptop\\\",\\\"solusi\\\":\\\"Cek kabel LCD, ganti layar, update driver grafis\\\",\\\"kategori\\\":\\\"display\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":16,\\\"kerusakan_id\\\":5,\\\"gejala_id\\\":1,\\\"bobot\\\":0.4,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.4,\\\"persentase\\\":40,\\\"gejala_count\\\":1}]\"', '2025-11-20 17:54:41', '2025-11-20 17:54:41'),
(4, 'User Demo', 'user@diagnosa.com', 2, '\"[\\\"1\\\",\\\"3\\\",\\\"10\\\"]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":2,\\\"kode_kerusakan\\\":\\\"K002\\\",\\\"nama_kerusakan\\\":\\\"Software Corruption\\\",\\\"deskripsi\\\":\\\"Kerusakan sistem operasi atau software\\\",\\\"solusi\\\":\\\"Install ulang sistem operasi, update driver\\\",\\\"kategori\\\":\\\"software\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":4,\\\"kerusakan_id\\\":2,\\\"gejala_id\\\":3,\\\"bobot\\\":0.9,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.9,\\\"persentase\\\":90,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":1,\\\"kode_kerusakan\\\":\\\"K001\\\",\\\"nama_kerusakan\\\":\\\"Hardware Failure\\\",\\\"deskripsi\\\":\\\"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\\\",\\\"solusi\\\":\\\"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-20T03:45:24.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":1,\\\"kerusakan_id\\\":1,\\\"gejala_id\\\":1,\\\"bobot\\\":0.8,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.8,\\\"persentase\\\":80,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":3,\\\"kode_kerusakan\\\":\\\"K003\\\",\\\"nama_kerusakan\\\":\\\"Battery Problem\\\",\\\"deskripsi\\\":\\\"Masalah pada baterai laptop\\\",\\\"solusi\\\":\\\"Ganti baterai, kalibrasi baterai, cek charger\\\",\\\"kategori\\\":\\\"battery\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":8,\\\"kerusakan_id\\\":3,\\\"gejala_id\\\":10,\\\"bobot\\\":0.7,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.7,\\\"persentase\\\":70,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":5,\\\"kode_kerusakan\\\":\\\"K005\\\",\\\"nama_kerusakan\\\":\\\"Display Issue\\\",\\\"deskripsi\\\":\\\"Masalah pada layar laptop\\\",\\\"solusi\\\":\\\"Cek kabel LCD, ganti layar, update driver grafis\\\",\\\"kategori\\\":\\\"display\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":16,\\\"kerusakan_id\\\":5,\\\"gejala_id\\\":1,\\\"bobot\\\":0.4,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.4,\\\"persentase\\\":40,\\\"gejala_count\\\":1}]\"', '2025-11-20 18:07:53', '2025-11-20 18:07:53'),
(7, 'User', 'user@diagnosa.com', 2, '\"[\\\"1\\\",\\\"6\\\"]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":4,\\\"kode_kerusakan\\\":\\\"K004\\\",\\\"nama_kerusakan\\\":\\\"Overheating\\\",\\\"deskripsi\\\":\\\"Laptop terlalu panas\\\",\\\"solusi\\\":\\\"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":10,\\\"kerusakan_id\\\":4,\\\"gejala_id\\\":6,\\\"bobot\\\":0.9,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.9,\\\"persentase\\\":90,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":1,\\\"kode_kerusakan\\\":\\\"K001\\\",\\\"nama_kerusakan\\\":\\\"Hardware Failure\\\",\\\"deskripsi\\\":\\\"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\\\",\\\"solusi\\\":\\\"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-20T03:45:24.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":1,\\\"kerusakan_id\\\":1,\\\"gejala_id\\\":1,\\\"bobot\\\":0.8,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.8,\\\"persentase\\\":80,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":5,\\\"kode_kerusakan\\\":\\\"K005\\\",\\\"nama_kerusakan\\\":\\\"Display Issue\\\",\\\"deskripsi\\\":\\\"Masalah pada layar laptop\\\",\\\"solusi\\\":\\\"Cek kabel LCD, ganti layar, update driver grafis\\\",\\\"kategori\\\":\\\"display\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":16,\\\"kerusakan_id\\\":5,\\\"gejala_id\\\":1,\\\"bobot\\\":0.4,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.4,\\\"persentase\\\":40,\\\"gejala_count\\\":1}]\"', '2025-11-20 19:27:36', '2025-11-20 19:27:36'),
(8, 'User', 'user@diagnosa.com', 2, '\"[\\\"2\\\",\\\"10\\\"]\"', NULL, NULL, NULL, 0, '\"[{\\\"kerusakan\\\":{\\\"id\\\":3,\\\"kode_kerusakan\\\":\\\"K003\\\",\\\"nama_kerusakan\\\":\\\"Battery Problem\\\",\\\"deskripsi\\\":\\\"Masalah pada baterai laptop\\\",\\\"solusi\\\":\\\"Ganti baterai, kalibrasi baterai, cek charger\\\",\\\"kategori\\\":\\\"battery\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":9,\\\"kerusakan_id\\\":3,\\\"gejala_id\\\":2,\\\"bobot\\\":0.6,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"},{\\\"id\\\":8,\\\"kerusakan_id\\\":3,\\\"gejala_id\\\":10,\\\"bobot\\\":0.7,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.8799999999999999,\\\"persentase\\\":88,\\\"gejala_count\\\":2},{\\\"kerusakan\\\":{\\\"id\\\":4,\\\"kode_kerusakan\\\":\\\"K004\\\",\\\"nama_kerusakan\\\":\\\"Overheating\\\",\\\"deskripsi\\\":\\\"Laptop terlalu panas\\\",\\\"solusi\\\":\\\"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":12,\\\"kerusakan_id\\\":4,\\\"gejala_id\\\":2,\\\"bobot\\\":0.7,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.7,\\\"persentase\\\":70,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":1,\\\"kode_kerusakan\\\":\\\"K001\\\",\\\"nama_kerusakan\\\":\\\"Hardware Failure\\\",\\\"deskripsi\\\":\\\"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\\\",\\\"solusi\\\":\\\"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\\\",\\\"kategori\\\":\\\"hardware\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-20T03:45:24.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":2,\\\"kerusakan_id\\\":1,\\\"gejala_id\\\":2,\\\"bobot\\\":0.6,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.6,\\\"persentase\\\":60,\\\"gejala_count\\\":1},{\\\"kerusakan\\\":{\\\"id\\\":2,\\\"kode_kerusakan\\\":\\\"K002\\\",\\\"nama_kerusakan\\\":\\\"Software Corruption\\\",\\\"deskripsi\\\":\\\"Kerusakan sistem operasi atau software\\\",\\\"solusi\\\":\\\"Install ulang sistem operasi, update driver\\\",\\\"kategori\\\":\\\"software\\\",\\\"tingkat_kerusakan\\\":\\\"sedang\\\",\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"basis_pengetahuan\\\":[{\\\"id\\\":6,\\\"kerusakan_id\\\":2,\\\"gejala_id\\\":2,\\\"bobot\\\":0.5,\\\"created_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\",\\\"updated_at\\\":\\\"2025-11-18T07:14:23.000000Z\\\"}]},\\\"cf\\\":0.5,\\\"persentase\\\":50,\\\"gejala_count\\\":1}]\"', '2025-11-20 19:49:06', '2025-11-20 19:49:06'),
(9, 'Admin', 'admin@diagnosa.com', 1, '[\"2\", \"10\"]', '[\"2\", \"10\"]', '[{\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 1, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 7, \"rule\": \"IF G010 THEN K003\", \"step\": 2, \"gejala_kode\": \"G010\", \"gejala_nama\": \"Baterai cepat habis\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}]', 'Hardware Failure', 3, '{\"total_langkah\": 3, \"fakta_terbukti\": [\"2\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1, \"gejala_terkait\": [2]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop mati sendiri, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"2\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop mati sendiri THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"2\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Baterai cepat habis THEN Battery Problem\", \"conclusions\": [1, 3], \"working_memory\": [\"2\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 1, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 7, \"rule\": \"IF G010 THEN K003\", \"step\": 2, \"gejala_kode\": \"G010\", \"gejala_nama\": \"Baterai cepat habis\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [2]}, {\"kerusakan\": {\"id\": 3, \"solusi\": \"Ganti baterai, kalibrasi baterai, cek charger\", \"is_final\": 1, \"kategori\": \"battery\", \"deskripsi\": \"Masalah pada baterai laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K003\", \"nama_kerusakan\": \"Battery Problem\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [10]}], \"total_rules_tertrigger\": 2}', '2025-11-22 05:46:50', '2025-11-22 05:46:50'),
(10, 'Admin', 'admin@diagnosa.com', 1, '[\"2\", \"10\"]', '[\"2\", \"10\"]', '[{\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 1, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 7, \"rule\": \"IF G010 THEN K003\", \"step\": 2, \"gejala_kode\": \"G010\", \"gejala_nama\": \"Baterai cepat habis\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}]', 'Hardware Failure', 3, '{\"total_langkah\": 3, \"fakta_terbukti\": [\"2\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1, \"gejala_terkait\": [2]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop mati sendiri, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"2\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop mati sendiri THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"2\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Baterai cepat habis THEN Battery Problem\", \"conclusions\": [1, 3], \"working_memory\": [\"2\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 1, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 7, \"rule\": \"IF G010 THEN K003\", \"step\": 2, \"gejala_kode\": \"G010\", \"gejala_nama\": \"Baterai cepat habis\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [2]}, {\"kerusakan\": {\"id\": 3, \"solusi\": \"Ganti baterai, kalibrasi baterai, cek charger\", \"is_final\": 1, \"kategori\": \"battery\", \"deskripsi\": \"Masalah pada baterai laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K003\", \"nama_kerusakan\": \"Battery Problem\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [10]}], \"total_rules_tertrigger\": 2}', '2025-11-22 05:47:44', '2025-11-22 05:47:44'),
(11, 'User', 'user@diagnosa.com', 2, '[\"1\", \"9\", \"5\", \"10\"]', '[\"1\", \"9\", \"5\", \"10\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 2, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 3, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}]', 'Hardware Failure', 4, '{\"total_langkah\": 4, \"fakta_terbukti\": [\"1\", \"9\", \"5\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1, \"gejala_terkait\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Baterai tidak bisa dicharge, Suara kipas berisik, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"1\", \"9\", \"5\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop tidak bisa menyala THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"1\", \"9\", \"5\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Baterai tidak bisa dicharge THEN Battery Problem\", \"conclusions\": [1, 3], \"working_memory\": [\"1\", \"9\", \"5\", \"10\"]}, {\"step\": 3, \"action\": \"Rule triggered: IF Suara kipas berisik THEN Overheating\", \"conclusions\": [1, 3, 4], \"working_memory\": [\"1\", \"9\", \"5\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 2, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 3, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [1]}, {\"kerusakan\": {\"id\": 3, \"solusi\": \"Ganti baterai, kalibrasi baterai, cek charger\", \"is_final\": 1, \"kategori\": \"battery\", \"deskripsi\": \"Masalah pada baterai laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K003\", \"nama_kerusakan\": \"Battery Problem\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [5]}, {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [9]}], \"total_rules_tertrigger\": 3}', '2025-11-22 06:43:44', '2025-11-22 06:43:44'),
(12, 'User', 'user@diagnosa.com', 2, '[\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]', '[\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 2, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 8, \"rule\": \"IF G006 THEN K004\", \"step\": 3, \"gejala_kode\": \"G006\", \"gejala_nama\": \"Laptop cepat panas\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}, {\"id\": 10, \"rule\": \"IF G007 THEN K005\", \"step\": 4, \"gejala_kode\": \"G007\", \"gejala_nama\": \"Layar blank/hitam\", \"kerusakan_kode\": \"K005\", \"kerusakan_nama\": \"Display Issue\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 5, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 6, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 7, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}, {\"id\": 11, \"rule\": \"IF G008 THEN K005\", \"step\": 8, \"gejala_kode\": \"G008\", \"gejala_nama\": \"Ada garis-garis pada layar\", \"kerusakan_kode\": \"K005\", \"kerusakan_nama\": \"Display Issue\"}, {\"id\": 13, \"rule\": \"IF G003 THEN K006\", \"step\": 9, \"gejala_kode\": \"G003\", \"gejala_nama\": \"Blue Screen (BSOD)\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}]', 'Hardware Failure', 10, '{\"total_langkah\": 10, \"fakta_terbukti\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 2, \"gejala_terkait\": [1, 2]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Laptop mati sendiri, Blue Screen (BSOD), Laptop lambat dan sering hang, Baterai tidak bisa dicharge, Laptop cepat panas, Layar blank/hitam, Ada garis-garis pada layar, Suara kipas berisik, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop tidak bisa menyala THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Baterai tidak bisa dicharge THEN Battery Problem\", \"conclusions\": [1, 3], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 3, \"action\": \"Rule triggered: IF Laptop cepat panas THEN Overheating\", \"conclusions\": [1, 3, 4], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 4, \"action\": \"Rule triggered: IF Layar blank/hitam THEN Display Issue\", \"conclusions\": [1, 3, 4, 5], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 5, \"action\": \"Rule triggered: IF Laptop lambat dan sering hang THEN crash atau hang\", \"conclusions\": [1, 3, 4, 5, 6], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 6, \"action\": \"Rule triggered: IF Laptop mati sendiri THEN Hardware Failure\", \"conclusions\": [1, 3, 4, 5, 6], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 7, \"action\": \"Rule triggered: IF Suara kipas berisik THEN Overheating\", \"conclusions\": [1, 3, 4, 5, 6], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 8, \"action\": \"Rule triggered: IF Ada garis-garis pada layar THEN Display Issue\", \"conclusions\": [1, 3, 4, 5, 6], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}, {\"step\": 9, \"action\": \"Rule triggered: IF Blue Screen (BSOD) THEN crash atau hang\", \"conclusions\": [1, 3, 4, 5, 6], \"working_memory\": [\"1\", \"2\", \"6\", \"7\", \"8\", \"9\", \"3\", \"4\", \"5\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 2, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 8, \"rule\": \"IF G006 THEN K004\", \"step\": 3, \"gejala_kode\": \"G006\", \"gejala_nama\": \"Laptop cepat panas\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}, {\"id\": 10, \"rule\": \"IF G007 THEN K005\", \"step\": 4, \"gejala_kode\": \"G007\", \"gejala_nama\": \"Layar blank/hitam\", \"kerusakan_kode\": \"K005\", \"kerusakan_nama\": \"Display Issue\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 5, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 2, \"rule\": \"IF G002 THEN K001\", \"step\": 6, \"gejala_kode\": \"G002\", \"gejala_nama\": \"Laptop mati sendiri\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 7, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}, {\"id\": 11, \"rule\": \"IF G008 THEN K005\", \"step\": 8, \"gejala_kode\": \"G008\", \"gejala_nama\": \"Ada garis-garis pada layar\", \"kerusakan_kode\": \"K005\", \"kerusakan_nama\": \"Display Issue\"}, {\"id\": 13, \"rule\": \"IF G003 THEN K006\", \"step\": 9, \"gejala_kode\": \"G003\", \"gejala_nama\": \"Blue Screen (BSOD)\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 2, \"gejala_terkait\": [1, 2]}, {\"kerusakan\": {\"id\": 3, \"solusi\": \"Ganti baterai, kalibrasi baterai, cek charger\", \"is_final\": 1, \"kategori\": \"battery\", \"deskripsi\": \"Masalah pada baterai laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K003\", \"nama_kerusakan\": \"Battery Problem\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [5]}, {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 2, \"gejala_terkait\": [6, 9]}, {\"kerusakan\": {\"id\": 5, \"solusi\": \"Cek kabel LCD, ganti layar, update driver grafis\", \"is_final\": 1, \"kategori\": \"display\", \"deskripsi\": \"Masalah pada layar laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K005\", \"nama_kerusakan\": \"Display Issue\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 2, \"gejala_terkait\": [7, 8]}, {\"kerusakan\": {\"id\": 6, \"solusi\": \"perbarui  sistem dan driver, pindai malware, bersihkan file, periksa suhu.\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"aplikasi tiba-tiba berhenti berfungsi, menutup sendiri, atau seluruh perangkat hang\", \"created_at\": \"2025-11-21T03:33:56.000000Z\", \"updated_at\": \"2025-11-21T03:33:56.000000Z\", \"kode_kerusakan\": \"K006\", \"nama_kerusakan\": \"crash atau hang\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 2, \"gejala_terkait\": [4, 3]}], \"total_rules_tertrigger\": 9}', '2025-11-22 06:44:44', '2025-11-22 06:44:44'),
(13, 'User', 'user@diagnosa.com', 2, '[\"1\", \"4\"]', '[\"1\", \"4\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}]', 'Hardware Failure', 3, '{\"total_langkah\": 3, \"fakta_terbukti\": [\"1\", \"4\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1, \"gejala_terkait\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Laptop lambat dan sering hang\", \"conclusions\": [], \"working_memory\": [\"1\", \"4\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop tidak bisa menyala THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"1\", \"4\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Laptop lambat dan sering hang THEN crash atau hang\", \"conclusions\": [1, 6], \"working_memory\": [\"1\", \"4\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [1]}, {\"kerusakan\": {\"id\": 6, \"solusi\": \"perbarui  sistem dan driver, pindai malware, bersihkan file, periksa suhu.\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"aplikasi tiba-tiba berhenti berfungsi, menutup sendiri, atau seluruh perangkat hang\", \"created_at\": \"2025-11-21T03:33:56.000000Z\", \"updated_at\": \"2025-11-21T03:33:56.000000Z\", \"kode_kerusakan\": \"K006\", \"nama_kerusakan\": \"crash atau hang\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [4]}], \"total_rules_tertrigger\": 2}', '2025-11-22 06:49:45', '2025-11-22 06:49:45'),
(14, 'yunitanime', 'yunitanime@gmail.com', 3, '[\"1\", \"9\", \"4\", \"10\"]', '[\"1\", \"9\", \"4\", \"10\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 3, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}]', 'Hardware Failure', 4, '{\"total_langkah\": 4, \"fakta_terbukti\": [\"1\", \"9\", \"4\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1, \"gejala_terkait\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Laptop lambat dan sering hang, Suara kipas berisik, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"1\", \"9\", \"4\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop tidak bisa menyala THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"1\", \"9\", \"4\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Laptop lambat dan sering hang THEN crash atau hang\", \"conclusions\": [1, 6], \"working_memory\": [\"1\", \"9\", \"4\", \"10\"]}, {\"step\": 3, \"action\": \"Rule triggered: IF Suara kipas berisik THEN Overheating\", \"conclusions\": [1, 6, 4], \"working_memory\": [\"1\", \"9\", \"4\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 3, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [1]}, {\"kerusakan\": {\"id\": 6, \"solusi\": \"perbarui  sistem dan driver, pindai malware, bersihkan file, periksa suhu.\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"aplikasi tiba-tiba berhenti berfungsi, menutup sendiri, atau seluruh perangkat hang\", \"created_at\": \"2025-11-21T03:33:56.000000Z\", \"updated_at\": \"2025-11-21T03:33:56.000000Z\", \"kode_kerusakan\": \"K006\", \"nama_kerusakan\": \"crash atau hang\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [4]}, {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [9]}], \"total_rules_tertrigger\": 3}', '2025-11-22 07:00:39', '2025-11-22 07:00:39'),
(15, 'Admin', 'admin@diagnosa.com', 1, '[\"1\", \"9\", \"10\"]', '[\"1\", \"9\", \"10\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 2, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}]', 'Hardware Failure', 3, '{\"total_langkah\": 3, \"fakta_terbukti\": [\"1\", \"9\", \"10\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1, \"gejala_terkait\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Suara kipas berisik, Baterai cepat habis\", \"conclusions\": [], \"working_memory\": [\"1\", \"9\", \"10\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Laptop tidak bisa menyala THEN Hardware Failure\", \"conclusions\": [1], \"working_memory\": [\"1\", \"9\", \"10\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Suara kipas berisik THEN Overheating\", \"conclusions\": [1, 4], \"working_memory\": [\"1\", \"9\", \"10\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_kode\": \"G001\", \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_kode\": \"K001\", \"kerusakan_nama\": \"Hardware Failure\"}, {\"id\": 9, \"rule\": \"IF G009 THEN K004\", \"step\": 2, \"gejala_kode\": \"G009\", \"gejala_nama\": \"Suara kipas berisik\", \"kerusakan_kode\": \"K004\", \"kerusakan_nama\": \"Overheating\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 1, \"solusi\": \"Ganti komponen yang rusak, bawa ke service center, cek kabel internal\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Kerusakan pada komponen hardware laptop seperti motherboard, RAM, atau processor\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-20T03:45:24.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Hardware Failure\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [1]}, {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [9]}], \"total_rules_tertrigger\": 2}', '2025-11-22 08:13:49', '2025-11-22 08:13:49'),
(16, 'yunitanime', 'yunitanime@gmail.com', 3, '[\"1\", \"3\", \"4\", \"5\"]', '[\"1\", \"3\", \"4\", \"5\"]', '[{\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 1, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 13, \"rule\": \"IF G003 THEN K006\", \"step\": 3, \"gejala_kode\": \"G003\", \"gejala_nama\": \"Blue Screen (BSOD)\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}]', 'crash atau hang', 4, '{\"total_langkah\": 4, \"fakta_terbukti\": [\"1\", \"3\", \"4\", \"5\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 6, \"solusi\": \"perbarui  sistem dan driver, pindai malware, bersihkan file, periksa suhu.\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"aplikasi tiba-tiba berhenti berfungsi, menutup sendiri, atau seluruh perangkat hang\", \"created_at\": \"2025-11-21T03:33:56.000000Z\", \"updated_at\": \"2025-11-21T03:33:56.000000Z\", \"kode_kerusakan\": \"K006\", \"nama_kerusakan\": \"crash atau hang\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 2, \"gejala_terkait\": [4, 3]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai diagnosa dengan gejala: Laptop tidak bisa menyala, Blue Screen (BSOD), Laptop lambat dan sering hang, Baterai tidak bisa dicharge\", \"conclusions\": [], \"working_memory\": [\"1\", \"3\", \"4\", \"5\"]}, {\"step\": 1, \"action\": \"Rule triggered: IF Baterai tidak bisa dicharge THEN Battery Problem\", \"conclusions\": [3], \"working_memory\": [\"1\", \"3\", \"4\", \"5\"]}, {\"step\": 2, \"action\": \"Rule triggered: IF Laptop lambat dan sering hang THEN crash atau hang\", \"conclusions\": [3, 6], \"working_memory\": [\"1\", \"3\", \"4\", \"5\"]}, {\"step\": 3, \"action\": \"Rule triggered: IF Blue Screen (BSOD) THEN crash atau hang\", \"conclusions\": [3, 6], \"working_memory\": [\"1\", \"3\", \"4\", \"5\"]}], \"rules_tertrigger\": [{\"id\": 6, \"rule\": \"IF G005 THEN K003\", \"step\": 1, \"gejala_kode\": \"G005\", \"gejala_nama\": \"Baterai tidak bisa dicharge\", \"kerusakan_kode\": \"K003\", \"kerusakan_nama\": \"Battery Problem\"}, {\"id\": 12, \"rule\": \"IF G004 THEN K006\", \"step\": 2, \"gejala_kode\": \"G004\", \"gejala_nama\": \"Laptop lambat dan sering hang\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}, {\"id\": 13, \"rule\": \"IF G003 THEN K006\", \"step\": 3, \"gejala_kode\": \"G003\", \"gejala_nama\": \"Blue Screen (BSOD)\", \"kerusakan_kode\": \"K006\", \"kerusakan_nama\": \"crash atau hang\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 3, \"solusi\": \"Ganti baterai, kalibrasi baterai, cek charger\", \"is_final\": 1, \"kategori\": \"battery\", \"deskripsi\": \"Masalah pada baterai laptop\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K003\", \"nama_kerusakan\": \"Battery Problem\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 1, \"gejala_terkait\": [5]}, {\"kerusakan\": {\"id\": 6, \"solusi\": \"perbarui  sistem dan driver, pindai malware, bersihkan file, periksa suhu.\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"aplikasi tiba-tiba berhenti berfungsi, menutup sendiri, atau seluruh perangkat hang\", \"created_at\": \"2025-11-21T03:33:56.000000Z\", \"updated_at\": \"2025-11-21T03:33:56.000000Z\", \"kode_kerusakan\": \"K006\", \"nama_kerusakan\": \"crash atau hang\", \"tingkat_kerusakan\": \"sedang\"}, \"total_rules\": 2, \"gejala_terkait\": [4, 3]}], \"total_rules_tertrigger\": 3}', '2025-11-22 08:25:20', '2025-11-22 08:25:20'),
(17, 'Admin', 'admin@diagnosa.com', 1, '[\"1\"]', '[\"1\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}]', 'Overheating', 2, '{\"confidence\": 100, \"total_langkah\": 2, \"fakta_terbukti\": [\"1\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1, \"rules_terpenuhi\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"1\"]}, {\"step\": 1, \"action\": \"Rule triggered: G001 → K004\", \"conclusions\": [4], \"working_memory\": [\"1\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}], \"total_rules_tertrigger\": 1}', '2025-11-30 00:07:14', '2025-11-30 00:07:14');
INSERT INTO `histories` (`id`, `nama_pengguna`, `email`, `user_id`, `gejala_terpilih`, `fakta_terbukti`, `rules_tertrigger`, `hasil_akhir`, `langkah_diagnosa`, `hasil_diagnosa`, `created_at`, `updated_at`) VALUES
(18, 'Admin', 'admin@diagnosa.com', 1, '[\"1\", \"2\"]', '[\"1\", \"2\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}]', 'Overheating', 2, '{\"confidence\": 100, \"total_langkah\": 2, \"fakta_terbukti\": [\"1\", \"2\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1, \"rules_terpenuhi\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"1\", \"2\"]}, {\"step\": 1, \"action\": \"Rule triggered: G001 → K004\", \"conclusions\": [4], \"working_memory\": [\"1\", \"2\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}], \"total_rules_tertrigger\": 1}', '2025-11-30 00:07:44', '2025-11-30 00:07:44'),
(19, 'Admin', 'admin@diagnosa.com', 1, '[\"1\"]', '[\"1\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}, {\"id\": 2, \"rule\": \"IF G001 THEN K002\", \"step\": 2, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 2, \"kerusakan_nama\": \"Software Corruption\"}]', 'Overheating', 3, '{\"confidence\": 100, \"total_langkah\": 3, \"fakta_terbukti\": [\"1\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1, \"rules_terpenuhi\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"1\"]}, {\"step\": 1, \"action\": \"Rule triggered: G001 → K004\", \"conclusions\": [4], \"working_memory\": [\"1\"]}, {\"step\": 2, \"action\": \"Rule triggered: G001 → K002\", \"conclusions\": [4, 2], \"working_memory\": [\"1\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}, {\"id\": 2, \"rule\": \"IF G001 THEN K002\", \"step\": 2, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 2, \"kerusakan_nama\": \"Software Corruption\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}, {\"kerusakan\": {\"id\": 2, \"solusi\": \"Install ulang sistem operasi, update driver\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"Kerusakan sistem operasi atau software\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K002\", \"nama_kerusakan\": \"Software Corruption\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}], \"total_rules_tertrigger\": 2}', '2025-11-30 00:09:51', '2025-11-30 00:09:51'),
(20, 'Admin', 'admin@diagnosa.com', 1, '[\"1\", \"6\", \"8\"]', '[\"1\", \"6\", \"8\"]', '[{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}, {\"id\": 2, \"rule\": \"IF G001 THEN K002\", \"step\": 2, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 2, \"kerusakan_nama\": \"Software Corruption\"}]', 'Overheating', 3, '{\"confidence\": 100, \"total_langkah\": 3, \"fakta_terbukti\": [\"1\", \"6\", \"8\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1, \"rules_terpenuhi\": [1]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"1\", \"6\", \"8\"]}, {\"step\": 1, \"action\": \"Rule triggered: G001 → K004\", \"conclusions\": [4], \"working_memory\": [\"1\", \"6\", \"8\"]}, {\"step\": 2, \"action\": \"Rule triggered: G001 → K002\", \"conclusions\": [4, 2], \"working_memory\": [\"1\", \"6\", \"8\"]}], \"rules_tertrigger\": [{\"id\": 1, \"rule\": \"IF G001 THEN K004\", \"step\": 1, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 4, \"kerusakan_nama\": \"Overheating\"}, {\"id\": 2, \"rule\": \"IF G001 THEN K002\", \"step\": 2, \"gejala_nama\": \"Laptop tidak bisa menyala\", \"kerusakan_id\": 2, \"kerusakan_nama\": \"Software Corruption\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 4, \"solusi\": \"Bersihkan kipas, ganti thermal paste, gunakan cooling pad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Laptop terlalu panas\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Overheating\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}, {\"kerusakan\": {\"id\": 2, \"solusi\": \"Install ulang sistem operasi, update driver\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"Kerusakan sistem operasi atau software\", \"created_at\": \"2025-11-18T07:14:23.000000Z\", \"updated_at\": \"2025-11-18T07:14:23.000000Z\", \"kode_kerusakan\": \"K002\", \"nama_kerusakan\": \"Software Corruption\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 100, \"total_rules\": 1}], \"total_rules_tertrigger\": 2}', '2025-11-30 00:10:22', '2025-11-30 00:10:22'),
(21, 'Admin', 'admin@diagnosa.com', 1, '[\"9\", \"3\", \"10\"]', '[\"9\", \"3\", \"10\"]', '[]', 'Tidak dapat didiagnosa', 1, '{\"confidence\": 0, \"total_langkah\": 1, \"fakta_terbukti\": [\"9\", \"3\", \"10\"], \"kesimpulan_akhir\": null, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"9\", \"3\", \"10\"]}], \"rules_tertrigger\": [], \"semua_kemungkinan\": [], \"total_rules_tertrigger\": 0}', '2025-12-01 07:44:27', '2025-12-01 07:44:27'),
(22, 'Admin', 'admin@diagnosa.com', 1, '[\"10\"]', '[\"10\"]', '[]', 'Tidak dapat didiagnosa', 1, '{\"confidence\": 0, \"total_langkah\": 1, \"fakta_terbukti\": [\"10\"], \"kesimpulan_akhir\": null, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"10\"]}], \"rules_tertrigger\": [], \"semua_kemungkinan\": [], \"total_rules_tertrigger\": 0}', '2025-12-01 07:46:03', '2025-12-01 07:46:03'),
(23, 'Admin', 'admin@diagnosa.com', 1, '[\"10\"]', '[\"10\"]', '[]', 'Tidak dapat didiagnosa', 1, '{\"confidence\": 0, \"total_langkah\": 1, \"fakta_terbukti\": [\"10\"], \"kesimpulan_akhir\": null, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"10\"]}], \"rules_tertrigger\": [], \"semua_kemungkinan\": [], \"total_rules_tertrigger\": 0}', '2025-12-01 08:02:56', '2025-12-01 08:02:56'),
(24, 'Admin', 'admin@diagnosa.com', 1, '[\"10\"]', '[\"10\"]', '[]', 'Tidak dapat didiagnosa', 1, '{\"confidence\": 0, \"total_langkah\": 1, \"fakta_terbukti\": [\"10\"], \"kesimpulan_akhir\": null, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"10\"]}], \"rules_tertrigger\": [], \"semua_kemungkinan\": [], \"total_rules_tertrigger\": 0}', '2025-12-01 08:02:59', '2025-12-01 08:02:59'),
(25, 'User', 'user@diagnosa.com', 2, '[\"11\"]', '[\"11\"]', '[{\"id\": 3, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_nama\": \"Tidak berfungsi tombol keyboard\", \"kerusakan_id\": 7, \"kerusakan_nama\": \"Kerusakan Keyboard\"}]', 'Kerusakan Keyboard', 2, '{\"confidence\": 33.33333333333333, \"total_langkah\": 2, \"fakta_terbukti\": [\"11\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 7, \"solusi\": \"1. Restart laptop\\r\\n2. Cek di Device Manager\\r\\n3. Bersihkan debu keyboard\\r\\n4. Ganti keyboard\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Keyboard tidak berfungsi sebagian atau seluruh tombol\", \"created_at\": \"2025-12-01T16:20:30.000000Z\", \"updated_at\": \"2025-12-01T16:20:30.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Kerusakan Keyboard\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1, \"rules_terpenuhi\": [3]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"11\"]}, {\"step\": 1, \"action\": \"Rule triggered: G001 → K001\", \"conclusions\": [7], \"working_memory\": [\"11\"]}], \"rules_tertrigger\": [{\"id\": 3, \"rule\": \"IF G001 THEN K001\", \"step\": 1, \"gejala_nama\": \"Tidak berfungsi tombol keyboard\", \"kerusakan_id\": 7, \"kerusakan_nama\": \"Kerusakan Keyboard\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 7, \"solusi\": \"1. Restart laptop\\r\\n2. Cek di Device Manager\\r\\n3. Bersihkan debu keyboard\\r\\n4. Ganti keyboard\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Keyboard tidak berfungsi sebagian atau seluruh tombol\", \"created_at\": \"2025-12-01T16:20:30.000000Z\", \"updated_at\": \"2025-12-01T16:20:30.000000Z\", \"kode_kerusakan\": \"K001\", \"nama_kerusakan\": \"Kerusakan Keyboard\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1}], \"total_rules_tertrigger\": 1}', '2025-12-03 01:59:58', '2025-12-03 01:59:58'),
(26, 'User', 'user@diagnosa.com', 2, '[\"15\", \"20\"]', '[\"15\", \"20\"]', '[{\"id\": 7, \"rule\": \"IF G005 THEN K002\", \"step\": 1, \"gejala_nama\": \"Kursor mouse bergerak sendiri\", \"kerusakan_id\": 8, \"kerusakan_nama\": \"Kerusakan Touchpad\"}, {\"id\": 15, \"rule\": \"IF G010 THEN K004\", \"step\": 2, \"gejala_nama\": \"Hard disk tidak terdeteksi BIOS\", \"kerusakan_id\": 10, \"kerusakan_nama\": \"Hard Disk Bad Sector\"}]', 'Kerusakan Touchpad', 3, '{\"confidence\": 50, \"total_langkah\": 3, \"fakta_terbukti\": [\"15\", \"20\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 8, \"solusi\": \"1. Aktifkan touchpad\\r\\n2. Update driver\\r\\n3. Bersihkan touchpad\\r\\n4. Ganti touchpad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Touchpad tidak responsif\", \"created_at\": \"2025-12-01T17:00:53.000000Z\", \"updated_at\": \"2025-12-01T17:02:42.000000Z\", \"kode_kerusakan\": \"K002\", \"nama_kerusakan\": \"Kerusakan Touchpad\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1, \"rules_terpenuhi\": [7]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"15\", \"20\"]}, {\"step\": 1, \"action\": \"Rule triggered: G005 → K002\", \"conclusions\": [8], \"working_memory\": [\"15\", \"20\"]}, {\"step\": 2, \"action\": \"Rule triggered: G010 → K004\", \"conclusions\": [8, 10], \"working_memory\": [\"15\", \"20\"]}], \"rules_tertrigger\": [{\"id\": 7, \"rule\": \"IF G005 THEN K002\", \"step\": 1, \"gejala_nama\": \"Kursor mouse bergerak sendiri\", \"kerusakan_id\": 8, \"kerusakan_nama\": \"Kerusakan Touchpad\"}, {\"id\": 15, \"rule\": \"IF G010 THEN K004\", \"step\": 2, \"gejala_nama\": \"Hard disk tidak terdeteksi BIOS\", \"kerusakan_id\": 10, \"kerusakan_nama\": \"Hard Disk Bad Sector\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 8, \"solusi\": \"1. Aktifkan touchpad\\r\\n2. Update driver\\r\\n3. Bersihkan touchpad\\r\\n4. Ganti touchpad\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Touchpad tidak responsif\", \"created_at\": \"2025-12-01T17:00:53.000000Z\", \"updated_at\": \"2025-12-01T17:02:42.000000Z\", \"kode_kerusakan\": \"K002\", \"nama_kerusakan\": \"Kerusakan Touchpad\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 50, \"total_rules\": 1}, {\"kerusakan\": {\"id\": 10, \"solusi\": \"1. Backup data\\r\\n2. Jalankan chkdsk\\r\\n3. Software repair\\r\\n4. Ganti HDD\", \"is_final\": 1, \"kategori\": \"hardware\", \"deskripsi\": \"Area disk rusak, performa lambat\", \"created_at\": \"2025-12-01T17:02:04.000000Z\", \"updated_at\": \"2025-12-01T17:03:02.000000Z\", \"kode_kerusakan\": \"K004\", \"nama_kerusakan\": \"Hard Disk Bad Sector\", \"tingkat_kerusakan\": \"berat\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1}], \"total_rules_tertrigger\": 2}', '2025-12-03 07:06:18', '2025-12-03 07:06:18'),
(27, 'User', 'user@diagnosa.com', 2, '[\"18\"]', '[\"18\"]', '[{\"id\": 46, \"rule\": \"IF G008 THEN K013\", \"step\": 1, \"gejala_nama\": \"Sering restart sendiri\", \"kerusakan_id\": 19, \"kerusakan_nama\": \"Performa Lambat\"}]', 'Performa Lambat', 2, '{\"confidence\": 33.33333333333333, \"total_langkah\": 2, \"fakta_terbukti\": [\"18\"], \"kesimpulan_akhir\": {\"kerusakan\": {\"id\": 19, \"solusi\": \"1. Upgrade RAM\\r\\n2. HDD ke SSD\\r\\n3. Uninstall program\\r\\n4. Install ulang OS\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"Laptop lemot, loading lama\", \"created_at\": \"2025-12-01T17:17:35.000000Z\", \"updated_at\": \"2025-12-01T17:17:35.000000Z\", \"kode_kerusakan\": \"K013\", \"nama_kerusakan\": \"Performa Lambat\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1, \"rules_terpenuhi\": [46]}, \"langkah_diagnosa\": [{\"step\": 1, \"action\": \"Memulai analisis dengan gejala yang dipilih\", \"conclusions\": [], \"working_memory\": [\"18\"]}, {\"step\": 1, \"action\": \"Rule triggered: G008 → K013\", \"conclusions\": [19], \"working_memory\": [\"18\"]}], \"rules_tertrigger\": [{\"id\": 46, \"rule\": \"IF G008 THEN K013\", \"step\": 1, \"gejala_nama\": \"Sering restart sendiri\", \"kerusakan_id\": 19, \"kerusakan_nama\": \"Performa Lambat\"}], \"semua_kemungkinan\": [{\"kerusakan\": {\"id\": 19, \"solusi\": \"1. Upgrade RAM\\r\\n2. HDD ke SSD\\r\\n3. Uninstall program\\r\\n4. Install ulang OS\", \"is_final\": 1, \"kategori\": \"software\", \"deskripsi\": \"Laptop lemot, loading lama\", \"created_at\": \"2025-12-01T17:17:35.000000Z\", \"updated_at\": \"2025-12-01T17:17:35.000000Z\", \"kode_kerusakan\": \"K013\", \"nama_kerusakan\": \"Performa Lambat\", \"tingkat_kerusakan\": \"sedang\"}, \"confidence\": 33.33333333333333, \"total_rules\": 1}], \"total_rules_tertrigger\": 1}', '2025-12-03 07:07:31', '2025-12-03 07:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `kerusakan`
--

CREATE TABLE `kerusakan` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_kerusakan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kerusakan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `solusi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` enum('hardware','software','battery','display','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_kerusakan` enum('ringan','sedang','berat') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sedang',
  `is_final` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kerusakan`
--

INSERT INTO `kerusakan` (`id`, `kode_kerusakan`, `nama_kerusakan`, `deskripsi`, `solusi`, `kategori`, `tingkat_kerusakan`, `is_final`, `created_at`, `updated_at`) VALUES
(7, 'K001', 'Kerusakan Keyboard', 'Keyboard tidak berfungsi sebagian atau seluruh tombol', '1. Restart laptop\r\n2. Cek di Device Manager\r\n3. Bersihkan debu keyboard\r\n4. Ganti keyboard', 'hardware', 'sedang', 1, '2025-12-01 08:20:30', '2025-12-01 08:20:30'),
(8, 'K002', 'Kerusakan Touchpad', 'Touchpad tidak responsif', '1. Aktifkan touchpad\r\n2. Update driver\r\n3. Bersihkan touchpad\r\n4. Ganti touchpad', 'hardware', 'sedang', 1, '2025-12-01 09:00:53', '2025-12-01 09:02:42'),
(9, 'K003', 'Kerusakan RAM', 'RAM rusak atau tidak terdeteksi', '1. Reseat RAM\r\n2. Coba slot berbeda\r\n3. Test RAM lain\r\n4. Ganti RAM', 'hardware', 'sedang', 1, '2025-12-01 09:01:28', '2025-12-01 09:02:53'),
(10, 'K004', 'Hard Disk Bad Sector', 'Area disk rusak, performa lambat', '1. Backup data\r\n2. Jalankan chkdsk\r\n3. Software repair\r\n4. Ganti HDD', 'hardware', 'berat', 1, '2025-12-01 09:02:04', '2025-12-01 09:03:02'),
(11, 'K005', 'Kerusakan Processor', 'Processor rusak atau overheating', '1. Cek thermal paste\r\n2. Bersihkan heatsink\r\n3. Cek konektor\r\n4. Ganti processor', 'hardware', 'berat', 1, '2025-12-01 09:03:54', '2025-12-01 09:03:54'),
(12, 'K006', 'Kerusakan Baterai Laptop', 'Baterai tidak bisa menyimpan daya', '1. Kalibrasi baterai\r\n2. Cek kesehatan\r\n3. Ganti baterai', 'battery', 'sedang', 1, '2025-12-01 09:04:25', '2025-12-01 09:04:25'),
(13, 'K007', 'Kerusakan LCD Screen', 'Panel LCD rusak fisik', '1. Ganti panel LCD\r\n2. Cek kabel ribbon', 'display', 'berat', 1, '2025-12-01 09:05:01', '2025-12-01 09:05:01'),
(14, 'K008', 'Kerusakan Power Adaptor', 'Adaptor rusak, tidak ada daya', '1. Cek kabel adaptor\r\n2. Test dengan multimeter\r\n3. Ganti adaptor', 'other', 'ringan', 1, '2025-12-01 09:14:21', '2025-12-01 09:14:21'),
(15, 'K009', 'Kerusakan Port Charger', 'Port charger rusak/longgar', '1. Bersihkan port\r\n2. Solder ulang\r\n3. Ganti port', 'hardware', 'sedang', 1, '2025-12-01 09:14:57', '2025-12-01 09:14:57'),
(16, 'K010', 'Kerusakan Webcam', 'Webcam tidak berfungsi', '1. Aktifkan di BIOS\r\n2. Update driver\r\n3. Ganti webcam', 'hardware', 'ringan', 1, '2025-12-01 09:15:34', '2025-12-01 09:15:34'),
(17, 'K011', 'Kerusakan Port Audio', 'Jack audio tidak berfungsi', '1. Update driver audio\r\n2. Bersihkan port\r\n3. Ganti port', 'hardware', 'ringan', 1, '2025-12-01 09:16:21', '2025-12-01 09:16:21'),
(18, 'K012', 'Overheating', 'Suhu laptop terlalu tinggi', '1. Bersihkan kipas\r\n2. Ganti thermal paste\r\n3. Gunakan cooling pad\r\n4. Cek penggunaan CPU', 'hardware', 'sedang', 1, '2025-12-01 09:17:03', '2025-12-01 09:17:03'),
(19, 'K013', 'Performa Lambat', 'Laptop lemot, loading lama', '1. Upgrade RAM\r\n2. HDD ke SSD\r\n3. Uninstall program\r\n4. Install ulang OS', 'software', 'sedang', 1, '2025-12-01 09:17:35', '2025-12-01 09:17:35'),
(20, 'K014', 'Sistem Operasi Error', 'OS corrupt, error system files', '1. System restore\r\n2. Startup repair\r\n3. Clean install OS\r\n4. Recovery backup', 'software', 'sedang', 1, '2025-12-01 09:18:11', '2025-12-01 09:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_11_18_053158_create_kerusakans_table', 1),
(6, '2025_11_18_053506_create_gejala_table', 1),
(7, '2025_11_18_053546_create_basis_pengetahuan_table', 1),
(8, '2025_11_18_053625_create_histories_table', 1),
(9, '2025_11_18_055955_update_histories_table', 1),
(10, '2025_11_18_063041_add_role_to_users_table', 1),
(11, '2025_11_20_162954_fix_histories_table_structure', 2),
(12, '2025_11_20_163654_add_user_id_to_histories_table', 3),
(13, '2025_11_22_130414_update_tables_for_forward_chaining', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@diagnosa.com', NULL, '$2y$12$dBthcvBCDjrhSqu.mqM7O.iG7Bx.UA7IbXHU75RzFlvVfJpMuPLkS', 'd01jnlug14QBMKIeODvjmRGu3S20P6WUQqhgl4AxKmgUlcxH6PUWgW8owPdo', '2025-11-17 23:14:23', '2025-11-17 23:14:23', 'admin'),
(2, 'User', 'user@diagnosa.com', NULL, '$2y$12$EBlDhni0634DvvzlUXkH4OzlRjoqYXOC7OT3940UD8BzL2LJ7KHCe', 'JVe6WimzFW8lXw5F8tgFukRHFcKGGL8SlOqfPJatxdLrKHc9vuXTz3gQABAp', '2025-11-17 23:14:23', '2025-11-20 19:12:06', 'user'),
(3, 'yunitanime', 'yunitanime@gmail.com', NULL, '$2y$12$FIMcKKFj2AJl0BtxaRd8GOBo7JiFrL/POyBWELbcEN6n7zw3hkLZq', 'PFdeuGrRzika3JekXR6uJ7dN1olJL4WvuJ1IYZUDDQEKnOUhFJx1xERTkSLV', '2025-11-22 06:59:04', '2025-11-22 06:59:04', 'user'),
(4, 'pemweb', 'pemweb@gmail.com', NULL, '$2y$12$BKbNBu6rtuWZWU5SjHYC1eHvFJK/aOkH6MykqXwG5vOtDKLuLltbm', 'hWL1Cz9rLSMtuXCW1PgW9c7OPPHN5H1Lcdv9Obi3Yca4SVmo2ZtW5aPb98me', '2025-11-29 21:34:23', '2025-11-29 21:34:23', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kerusakan_id` (`kerusakan_id`),
  ADD KEY `gejala_id` (`gejala_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gejalas_kode_gejala_unique` (`kode_gejala`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kerusakans_kode_kerusakan_unique` (`kode_kerusakan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kerusakan`
--
ALTER TABLE `kerusakan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD CONSTRAINT `basis_pengetahuan_ibfk_1` FOREIGN KEY (`kerusakan_id`) REFERENCES `kerusakan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `basis_pengetahuan_ibfk_2` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
