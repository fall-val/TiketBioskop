-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 02:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Id_Pegawai` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id_Pegawai`, `password`) VALUES
('Alea_', 'alea123'),
('Aurel_', 'aurel123'),
('luna_', 'luna123'),
('Rifda_', 'rifda123'),
('Syalasa_', 'syalasa123');

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `Id_Barang` varchar(35) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jumlah` varchar(100) NOT NULL,
  `Harga_Satuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`Id_Barang`, `Nama`, `Jumlah`, `Harga_Satuan`) VALUES
('BAR001', 'Baygon', '20', 20000),
('BAR002', 'Pocari', '20', 5000),
('BAR003', 'Rinso', '20', 12000),
('BAR004', 'Teh Gelas', '50', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `No_Transaksi` int(11) NOT NULL,
  `Id_Transaksi` varchar(35) NOT NULL,
  `Id_Barang` varchar(35) NOT NULL,
  `Id_Pegawai` varchar(35) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Sub_Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`No_Transaksi`, `Id_Transaksi`, `Id_Barang`, `Id_Pegawai`, `Jumlah`, `Sub_Total`) VALUES
(1, '1', 'BAR002', 'Rifda_', 100, 500000),
(2, '1', 'BAR002', 'Rifda_', 2, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id_Pegawai`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`Id_Barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No_Transaksi`),
  ADD KEY `Id_Barang` (`Id_Barang`),
  ADD KEY `Id_Pegawai` (`Id_Pegawai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Id_Barang`) REFERENCES `stok_barang` (`Id_Barang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`Id_Pegawai`) REFERENCES `login` (`Id_Pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
