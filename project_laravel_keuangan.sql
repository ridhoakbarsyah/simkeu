-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2020 at 08:36 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `project_keuangan_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Tidak Berkategori', '2019-11-20 17:52:05', '2019-11-20 17:52:05'),
(29, 'Traveling', '2020-04-20 08:07:25', '2020-04-20 08:07:25'),
(30, 'Pakaian', '2020-04-20 08:07:33', '2020-04-20 08:07:33'),
(32, 'Gaji Karyawan', '2020-04-20 08:08:05', '2020-04-20 08:08:05'),
(33, 'Gaji Pribadi', '2020-04-20 08:08:12', '2020-04-20 08:08:12'),
(34, 'Entertainment', '2020-04-20 08:08:28', '2020-04-20 08:08:28'),
(35, 'Kebutuhan Kantor', '2020-04-20 08:08:57', '2020-04-20 08:08:57'),
(36, 'Lain-lain', '2020-04-20 08:09:07', '2020-04-20 08:09:07'),
(37, 'Penjualan Kue', '2020-04-20 08:09:31', '2020-04-20 08:09:31'),
(38, 'Belanja Bahan Baku Kue', '2020-04-20 08:09:39', '2020-04-20 08:09:39'),
(40, 'Pembuatan Project Aplikasi', '2020-04-20 08:21:15', '2020-04-20 08:21:15'),
(41, 'Project Pembuatan Website', '2020-04-20 08:21:23', '2020-04-20 08:21:23'),
(42, 'Zakat', '2020-04-20 08:30:52', '2020-04-20 08:30:52'),
(43, 'Tunjangan Karyawan', '2020-04-20 08:31:04', '2020-04-20 08:31:04'),
(44, 'Penjualan Baju', '2020-04-20 09:54:02', '2020-04-20 09:54:02'),
(45, 'Biaya hosting', '2020-04-21 05:11:20', '2020-04-21 05:11:20');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_17_053928_create_kategoris_table', 1),
(5, '2020_04_17_053941_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` enum('Pemasukan','Pengeluaran') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `jenis`, `kategori_id`, `nominal`, `keterangan`, `created_at`, `updated_at`) VALUES
(27, '2020-03-01', 'Pengeluaran', 32, 3000000, 'gaji petugas dapur', '2020-04-20 08:16:09', '2020-04-20 08:16:09'),
(28, '2020-03-02', 'Pemasukan', 37, 1000000, 'penjualan kue bulan 3', '2020-04-20 08:16:38', '2020-04-20 08:20:07'),
(29, '2020-03-02', 'Pengeluaran', 35, 300000, 'Bayar wifi telkom', '2020-04-20 08:18:49', '2020-04-20 08:20:16'),
(30, '2020-03-03', 'Pengeluaran', 34, 300000, 'bayar langgaan netflix', '2020-04-20 08:19:21', '2020-04-20 08:20:34'),
(31, '2020-03-04', 'Pemasukan', 37, 2000000, 'penjualan kue dari otlet A', '2020-04-20 08:19:40', '2020-04-20 08:20:41'),
(32, '2020-03-05', 'Pemasukan', 41, 5000000, 'pembuatan website IAIN kota', '2020-04-20 08:21:47', '2020-04-20 08:21:47'),
(33, '2020-03-06', 'Pemasukan', 40, 20000000, 'pembuatan aplikasi keuangan kementrian pariwisata', '2020-04-20 08:22:35', '2020-04-20 08:22:35'),
(34, '2020-04-01', 'Pemasukan', 40, 10000000, 'pemmbuatan aplikasi absensi iain kota', '2020-04-20 08:28:10', '2020-04-20 08:28:10'),
(35, '2020-04-01', 'Pengeluaran', 35, 500000, 'beli token listrik kantor', '2020-04-20 08:28:35', '2020-04-20 08:28:35'),
(36, '2020-04-03', 'Pemasukan', 41, 5000000, 'pembuatan website fotografer mandiri jaya', '2020-04-20 08:29:19', '2020-04-20 08:29:19'),
(37, '2020-04-04', 'Pengeluaran', 32, 3000000, 'gaji si alex bulan 4', '2020-04-20 08:29:45', '2020-04-20 08:29:45'),
(38, '2020-04-05', 'Pemasukan', 33, 10000000, 'gaji kantor', '2020-04-20 08:31:45', '2020-04-20 08:31:45'),
(39, '2020-04-05', 'Pengeluaran', 35, 100000, 'bayar PDAM', '2020-04-20 08:32:09', '2020-04-20 08:32:09'),
(40, '2020-04-05', 'Pemasukan', 37, 1000000, 'penjualan kue dari otlet b', '2020-04-20 08:33:10', '2020-04-20 08:33:10'),
(41, '2020-04-07', 'Pemasukan', 36, 2000000, 'Adsense blog', '2020-04-20 08:33:53', '2020-04-20 08:33:53'),
(42, '2020-04-08', 'Pengeluaran', 29, 500000, 'jalan jalan ke pantai dengan tim', '2020-04-20 09:50:45', '2020-04-20 09:50:45'),
(43, '2020-04-08', 'Pemasukan', 37, 500000, 'penjualan kue dari otlet B', '2020-04-20 09:51:19', '2020-04-20 09:51:19'),
(44, '2020-04-10', 'Pengeluaran', 42, 1300000, NULL, '2020-04-20 09:52:20', '2020-04-20 10:02:05'),
(45, '2020-04-11', 'Pemasukan', 44, 5000000, 'Penjualan baju dari distro saya', '2020-04-20 09:54:23', '2020-04-20 09:54:23'),
(46, '2020-04-11', 'Pengeluaran', 30, 1000000, 'beli baju kaos 2', '2020-04-20 09:54:42', '2020-04-20 09:54:42'),
(47, '2020-04-19', 'Pemasukan', 40, 50000000, 'pembuatan aplikasi akademik kampus iain kota', '2020-04-20 09:55:17', '2020-04-20 09:55:17'),
(48, '2020-04-20', 'Pengeluaran', 32, 10000000, 'gaji karyawan untuk pembuatan aplikasi siakad bulan 4', '2020-04-20 09:55:53', '2020-04-20 09:55:53'),
(49, '2020-04-20', 'Pengeluaran', 36, 500000, 'makan-makan bersama tim programmer dan marketing', '2020-04-20 09:56:17', '2020-04-20 09:56:17'),
(50, '2020-04-20', 'Pengeluaran', 35, 10000000, 'beli 3 monitor external untuk tim programmer', '2020-04-20 09:57:04', '2020-04-20 09:57:04'),
(51, '2020-04-21', 'Pemasukan', 40, 5500000, 'Pembuatan aplikasi restauran', '2020-04-21 05:20:06', '2020-04-21 05:20:06'),
(52, '2020-04-21', 'Pengeluaran', 45, 1200000, 'perpanjang hosting web tahun 2020', '2020-04-21 05:22:05', '2020-04-21 05:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','bendahara') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Jhony', 'admin@admin.com', NULL, '$2y$10$GOsnIYShDpcYuIvUFNurv.5yODSZC/9fXGSqPwzKMrkoPHP8BzTDq', 'admin', '1587447052_user1.jpg', NULL, '2020-04-16 22:42:15', '2020-04-21 05:38:06'),
(6, 'Bani Santoso', 'bani@gmail.com', NULL, '$2y$10$fhRCz6.ayxttFqrnix4aYeDpBtagMcubXiibzQsywvcfkL3RfcZNm', 'bendahara', '1587447285_user3.jpg', NULL, '2020-04-21 05:34:51', '2020-04-21 05:34:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
