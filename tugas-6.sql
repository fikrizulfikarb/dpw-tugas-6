-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 09:17 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-6`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(11, 'SAMSUNG GALAXY A52S 5G 8/256 GARANSI RESMI SEIN SEGEL BNIB', 6000000, 176, 10, 'Kondisi: Baru\r\nBerat: 500 Gram\r\nKategori: Android OS\r\nEtalase: Handphone\r\nPilih sesuai warna dan varian ya, harga sesuai varian warna', '2022-01-15 20:01:33', '2022-01-16 05:51:33'),
(12, 'Samsung Galaxy A12 6/128 GB Garansi Resmi SEIN', 2400000, 150, 20, 'SIM Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)\r\nSize 6.5 inches,\r\nPLATFORM OS Android 10\r\nChipset Mediatek MT6765 Helio P35 (12nm)\r\nCPU Octa-core (4x2.35 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)\r\nGPU PowerVR GE8320\r\nInternal 128GB 6GB RAM\r\nMAIN CAMERA Quad 48 MP, 5 MP, 2 MP, 2 MP,\r\nSELFIE CAMERA Single 8 MP, f/2.2\r\nBATTERY Type Li-Po 5000 mAh, non-removable', '2022-01-15 23:15:35', '2022-01-15 23:15:35'),
(13, 'Samsung Galaxy A32 6/128 8/128 Kamera 4K GB RAM 6 8 ROM 128 Resmi SEIN - Awesome Black, A32 6/128', 3500000, 178, 15, 'Spesifikasi:\r\n- CPU Type : Mediatek Helio G80\r\n- Size : 6.4\"\r\n- Technology : Super AMOLED\r\n- Resolution : FHD+', '2022-01-16 06:32:04', '2022-01-16 06:32:04'),
(14, 'SAMSUNG A72 Ram 8/256GB Baru Segel Resmi Samsung Sein', 5800000, 220, 22, 'SAMSUNG A72 Ram 8/256GB\r\nWarna Hitam, Biru\r\nBaru Segel\r\nGaransi Resmi Samsung Sein Indonesia', '2022-01-16 06:33:50', '2022-01-16 06:33:50'),
(15, 'SAMSUNG GALAXY M02 - 5000mAh Battery - 2GB 32GB 2/32', 2000000, 200, 23, 'Spesifikasi :\r\n\r\nNETWORK Technology\r\nGSM / HSPA / LTE\r\nLAUNCH Announced 2021, February 02\r\nStatus Available. Released 2021, February 09\r\nBODY Dimensions 164 x 75.9 x 9.1 mm (6.46 x 2.99 x 0.36 in)\r\nWeight 206 g (7.27 oz)', '2022-01-16 06:37:06', '2022-01-16 06:37:06'),
(16, 'Samsung Galaxy Note 10+ 12GB / 256GB', 7000000, 150, 17, 'NETWORK Technology\r\nGSM / CDMA / HSPA / EVDO / LTE\r\nLAUNCH Announced 2019, August 07\r\nStatus Available. Released 2019, August 23\r\nBODY Dimensions 162.3 x 77.2 x 7.9 mm (6.39 x 3.04 x 0.31 in)\r\nWeight 196 g (6.91 oz)\r\nBuild Glass front (Gorilla Glass 6), glass back (Gorilla Glass 6), aluminum frame', '2022-01-16 06:46:20', '2022-01-16 06:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'fikrizulfikarb', 'fikri.zb10@gmail.com', 'fikri brandan', '$2y$10$XNIYyREk6A4hjoXLlVj.ZeiWIm2ql9ZHutFEcIbJ.z32/0jfQ9Nve', NULL, '2021-12-24 01:13:18', '2021-12-24 01:13:18'),
(4, 'mutiaraa', 'mutiara@gmail.com', 'mutiara', '$2y$10$VqVDBDBWryKY62kb3DmJg.9oNJRDvJme.3MJb0XkSwj9cgEJGnh36', NULL, '2022-01-16 20:22:55', '2022-01-16 20:22:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
