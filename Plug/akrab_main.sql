-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 04:55 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akrab_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_item` int(111) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `barcode` varchar(11) NOT NULL,
  `idsatuan` int(11) NOT NULL,
  `hargaumum` varchar(11) NOT NULL,
  `hargagrosir` varchar(11) NOT NULL,
  `id` int(11) NOT NULL,
  `qty` varchar(11) NOT NULL,
  `idsup` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_item`, `barang`, `barcode`, `idsatuan`, `hargaumum`, `hargagrosir`, `id`, `qty`, `idsup`, `status`) VALUES
(9, 'Baju', '2314312', 7, '2000', '1000', 9, '1', 6, 'Aktif'),
(10, 'Nama Barang', 'Barcode', 6, 'Harga Umum', '2000', 14, '3', 10, 'Aktif'),
(11, 'Jam Tangan', '312423123', 7, '80.000', '200000', 13, '22', 10, 'Aktif'),
(12, 'Kue', '2312312412', 8, '20000', '300000', 14, '1', 10, 'Aktif'),
(13, 'Fredddd', '34234324', 7, '20000', '300000', 13, '222', 8, 'Tidak Aktif'),
(14, 'Kue kita', '4123', 6, '20000', '300000', 9, '33', 10, 'Tidak Aktif'),
(15, 'Freddddku', '34234324', 6, '20000', '300000', 9, '222', 6, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `status`) VALUES
(9, 'uang', 'Tidak Aktif'),
(13, 'Ciki', 'Aktif'),
(14, 'Apa ajah', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(111) NOT NULL,
  `user_id` varchar(111) NOT NULL,
  `kode_penjualan` varchar(111) NOT NULL,
  `keterangan` text NOT NULL,
  `kode_pembayaran` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kode_pembayaran` int(111) NOT NULL,
  `user_id` varchar(111) NOT NULL,
  `kode_barang` varchar(111) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `dibayar` varchar(111) NOT NULL,
  `kembalian` varchar(111) NOT NULL,
  `total` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_penjualan` int(11) NOT NULL,
  `kode_barang` int(111) NOT NULL,
  `tanggal` date NOT NULL,
  `modal` varchar(111) NOT NULL,
  `jumlah` varchar(111) NOT NULL,
  `untung` varchar(111) NOT NULL,
  `user_id` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `idsatuan` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`idsatuan`, `satuan`, `status`) VALUES
(6, 'PCS', 'Aktif'),
(7, 'BOX', 'Aktif'),
(8, 'SLOP', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `suplayer`
--

CREATE TABLE `suplayer` (
  `idsup` int(11) NOT NULL,
  `suplayer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `alamatsup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplayer`
--

INSERT INTO `suplayer` (`idsup`, `suplayer`, `status`, `alamatsup`) VALUES
(6, 'Yoan', 'Aktif', 'Majalengka'),
(8, 'Niken', 'Aktif', 'Jember'),
(10, 'Dana', 'Tidak Aktif', 'Jember'),
(12, 'Suwardi', 'Aktif', 'Sigong');

-- --------------------------------------------------------

--
-- Table structure for table `wo_users`
--

CREATE TABLE `wo_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(70) CHARACTER SET utf8 NOT NULL,
  `Usertype` varchar(111) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Nickname` varchar(111) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wo_users`
--

INSERT INTO `wo_users` (`user_id`, `username`, `password`, `Usertype`, `Nickname`) VALUES
(1, 'yoannikaros', 'jawabarat123', 'Admin', 'Yoan Nikaros'),
(2, 'yoan2', 'jawabarat123', 'Kasir', 'Yoan Kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_item`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`idsatuan`);

--
-- Indexes for table `suplayer`
--
ALTER TABLE `suplayer`
  ADD PRIMARY KEY (`idsup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_item` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `idsatuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suplayer`
--
ALTER TABLE `suplayer`
  MODIFY `idsup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
