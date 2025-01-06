-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 06:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpesanan`
--

CREATE TABLE `detailpesanan` (
  `iddetailpesanan` int(11) NOT NULL,
  `idpesanan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailpesanan`
--

INSERT INTO `detailpesanan` (`iddetailpesanan`, `idpesanan`, `idproduk`, `qty`) VALUES
(17, 2021000005, 4, 30),
(20, 2021000006, 6, 10),
(21, 2021000007, 7, 10),
(22, 2021000008, 7, 10),
(23, 2021000009, 10, 20),
(24, 2021000006, 10, 3),
(25, 2021000006, 8, 10),
(26, 2021000007, 11, 5),
(27, 2021000007, 10, 20),
(28, 2021000007, 9, 5),
(29, 2021000008, 12, 7),
(30, 2021000011, 16, 70),
(32, 2021000012, 18, 50),
(33, 2021000012, 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggalmasuk` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idproduk`, `qty`, `tanggalmasuk`) VALUES
(5, 6, 10, '2022-01-18 02:37:24'),
(6, 7, 20, '2022-01-18 02:38:37'),
(7, 8, 90, '2022-01-20 07:37:55'),
(8, 11, 10, '2022-01-20 07:39:17'),
(9, 12, 20, '2022-01-20 07:42:24'),
(10, 13, 20, '2022-01-20 07:42:46'),
(11, 10, 20, '2022-01-25 11:32:15'),
(12, 13, 12, '2022-05-08 09:37:22'),
(13, 13, 12, '2022-05-08 09:37:25'),
(14, 13, 12, '2022-05-08 09:37:27'),
(15, 13, 12, '2022-05-08 09:37:28'),
(16, 13, 12, '2022-05-08 09:37:28'),
(17, 13, 12, '2022-05-08 09:37:29'),
(18, 13, 12, '2022-05-08 09:37:30'),
(19, 13, 12, '2022-05-08 09:37:30'),
(20, 13, 12, '2022-05-08 09:37:30'),
(21, 10, 5, '2022-06-05 23:20:08'),
(22, 16, 50, '2022-07-10 15:18:08'),
(23, 16, 55, '2022-07-10 15:20:40'),
(24, 17, 4, '2022-07-10 15:21:35'),
(25, 14, 2, '2022-07-10 16:02:16'),
(26, 18, 20, '2022-07-10 16:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `namapelanggan` varchar(30) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `namapelanggan`, `notelp`, `alamat`) VALUES
(8, 'Waldi', '085345678345', 'Jakarta pusat '),
(12, 'Waldi', '123456789012', 'Jakarta pusat '),
(16, 'Amri', '012345678901', 'Jayapura');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `idorder` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `idpelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`idorder`, `tanggal`, `idpelanggan`) VALUES
(2021000006, '2022-01-18 02:35:03', 7),
(2021000007, '2022-01-18 02:39:38', 8),
(2021000008, '2022-01-18 16:16:28', 9),
(2021000009, '2022-01-20 07:29:56', 10),
(2021000010, '2022-01-25 10:41:09', 8),
(2021000011, '2022-07-10 15:18:33', 15),
(2021000012, '2022-07-10 16:09:11', 16);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(20) NOT NULL,
  `deskripsi` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `deskripsi`, `harga`, `stock`) VALUES
(14, 'Buku Novel', 'Harry Potter', 20000, 5),
(15, 'Penggaris', '2B', 20000, 20),
(18, 'Gelas Plastik', 'Sangat serbaguna', 5000, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpesanan`
--
ALTER TABLE `detailpesanan`
  ADD PRIMARY KEY (`iddetailpesanan`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idorder`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpesanan`
--
ALTER TABLE `detailpesanan`
  MODIFY `iddetailpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021000013;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
