-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2026 at 07:13 AM
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
-- Database: `warung_madura`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(2, 'K001', 'Snack'),
(3, 'K002', 'Mie Instan'),
(4, 'K003', 'Minuman'),
(5, 'K004', 'Kendaraan'),
(6, 'K005', 'Bahan Bangunan');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `min_stock` int DEFAULT '5',
  `price` int DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 3, 'P001', 'Indomie Goreng', 160, 48, 4000, 'bb18c27cd84bc2fa92d73c066327e30c.jpg', '2026-06-05 04:47:36', NULL),
(2, 3, 'P002', 'Indomie Rebus', 200, 50, 4000, '69cfdf2d52232ffbae0616735241cf71.jpg', '2026-06-05 04:55:40', NULL),
(3, 3, 'P003', 'mie sedap goreng', 150, 30, 3500, 'ef2619b1d2a32aac594c65e2206d4e19.jpg', '2026-06-05 04:57:27', NULL),
(4, 3, 'P004', 'Mie Sedap Rebus', 150, 30, 3500, 'f83de38725385099681568054d75aeff.jpg', '2026-06-05 04:58:47', NULL),
(6, 2, 'P006', 'Better', 312, 50, 2000, 'b173c9c8fd6e61ddcf0e2235c2e3a7fc.jpg', '2026-06-05 05:02:58', NULL),
(7, 2, 'P007', 'Super Star', 300, 50, 1000, 'aef02c9c045f7d77af1d65c7e1728164.jpg', '2026-06-05 05:05:00', NULL),
(8, 2, 'P008', 'Taro', 200, 53, 3000, '05acf367efc724f353fec0fa19a72ea7.jpg', '2026-06-05 05:07:06', NULL),
(9, 2, 'P009', 'Chocolatos', 169, 49, 1000, '5cb7168406ad9006caf178ef87833b9c.jpg', '2026-06-05 05:10:34', NULL),
(10, 4, 'P010', 'Teh Pucuk', 135, 20, 3000, 'e5fe0fa767c5687081b8d2ee434c1517.jpg', '2026-06-05 05:12:34', NULL),
(11, 4, 'P011', 'Aqua', 100, 20, 4000, 'f9a78baeaede7ffe39210cda3ad283e3.jpg', '2026-06-05 05:14:26', NULL),
(12, 5, 'P012', 'LeMineral', 100, 30, 5000, '06db63bf5ba7a2f74c44633f92e5c46e.jpg', '2026-06-05 05:16:27', NULL),
(13, 4, 'P013', 'Oli Motor', 100, 30, 70000, '2d0602bdb204a57df6d0f1939db68d6e.jpg', '2026-06-05 05:18:39', NULL),
(14, 5, 'P014', 'CBR 250', 50, 5, 90000000, 'ad2f9fa57b1566bb20f9620b74f09901.jpg', '2026-06-05 05:20:48', NULL),
(15, 5, 'P015', 'Honda Beat', 50, 4, 6000000, '25bc567ca4cd98bf5f0d3a86854abb51.jpg', '2026-06-05 05:23:19', NULL),
(16, 5, 'P016', 'RX-King', 30, 2, 15000000, '1a6e404c61918792e60ad6c84cce2c53.jpg', '2026-06-05 05:27:01', NULL),
(17, 5, 'P017', 'XSR', 50, 9, 30000000, 'a14f411122bc781b1a3c67985b950e36.jpg', '2026-06-05 05:29:33', NULL),
(18, 6, 'P018', 'Semen', 100, 30, 50000, '66535a4423ab2f4b7cc9775c7cd355c4.jpg', '2026-06-05 05:44:46', NULL),
(19, 6, 'P019', 'Palu', 100, 19, 30000, '9142ba365a14e660ea4304ed4acf8a93.jpg', '2026-06-05 05:46:10', NULL),
(20, 6, 'P020', 'Asbes', 80, 19, 20000, 'd73382d9e1ababa16f63906d87306d39.jpg', '2026-06-05 05:48:46', NULL),
(21, 6, 'P021', 'Helm Proyek', 100, 29, 100000, '8e76c9f58b298ff7f08cf3a09298bdd0.jpg', '2026-06-05 05:51:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `stock_before` int DEFAULT NULL,
  `stock_after` int DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 1, 'REDUCE', 20, 200, 180, '', '2026-06-05 05:52:22', 3),
(2, 1, 'REDUCE', 20, 180, 160, '', '2026-06-05 05:52:47', 3),
(3, 6, 'ADD', 12, 300, 312, '', '2026-06-05 06:00:45', 3),
(4, 9, 'REDUCE', 32, 201, 169, '', '2026-06-05 06:01:07', 3),
(5, 10, 'ADD', 34, 101, 135, '', '2026-06-05 06:01:24', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(3, 'Satria Fahri Arullah', 'satriafahri@gmail.com', '$2y$10$h6usFVHtWdH1Rj445uOYAudsqafbPuJqkntIO9T9nTZww/6qgi73G', 'admin', 1, '2026-06-03 04:42:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_ket` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
