-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2023 pada 10.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `VISITOR_NO` varchar(191) NOT NULL,
  `FULL_NAME` varchar(191) NOT NULL,
  `ID_CARD_NO` varchar(191) NOT NULL,
  `COMPANY_NAME` varchar(191) NOT NULL,
  `LICENSE_PLATE` varchar(191) NOT NULL,
  `PURPOSE` varchar(191) NOT NULL,
  `MEET_WITH` varchar(191) NOT NULL,
  `SELFIE_PHOTO_URL` varchar(191) NOT NULL,
  `ID_CARD_PHOTO_URL` varchar(191) NOT NULL,
  `CREATED_AT` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `UPDATED_AT` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`USER_ID`, `VISITOR_NO`, `FULL_NAME`, `ID_CARD_NO`, `COMPANY_NAME`, `LICENSE_PLATE`, `PURPOSE`, `MEET_WITH`, `SELFIE_PHOTO_URL`, `ID_CARD_PHOTO_URL`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, '001', 'John Doe', '1234567890', 'ABC Company', 'XYZ 123', 'Meeting', 'Jane Smith', 'https://example.com/selfie.jpg', 'https://example.com/idcard.jpg', '2023-07-10 07:42:09.102', '2023-07-10 07:42:09.102'),
(2, '002', 'James', '1234567890', 'ABC Company', 'XYZ 123', 'Meeting', 'Jane Smith', 'https://example.com/selfie.jpg', 'https://example.com/idcard.jpg', '2023-07-10 07:49:10.293', '2023-07-10 07:49:10.293');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('844ecee8-8cb7-4854-841e-542088c44775', '9ae1e2e1e79c6649df3b30ea65ace23e8c03511d3e935a85b07b504272bd65a0', '2023-07-10 07:22:42.349', '20230710072241_init', NULL, NULL, '2023-07-10 07:22:42.296', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indeks untuk tabel `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
