-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 11:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distropedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin'),
('romi', '123'),
('si', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `Id_Pakaian` int(11) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Warna` varchar(20) DEFAULT NULL,
  `Ukuran` int(11) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`Id_Pakaian`, `Nama`, `Warna`, `Ukuran`, `Harga`) VALUES
(10051, 'Baju H&M', 'Putih', 41, 100000),
(10052, 'T-Shirt Nike', 'Abu-abu', 36, 500000),
(10053, 'Topi Converse', 'Putih', 38, 200000),
(10054, 'Sepatu Alseo', 'Hijau', 37, 1000000),
(10055, 'Baju Puma', 'Merah', 38, 300000),
(10056, 'Baju Vans', 'Hitam', 41, 500000),
(10057, 'Hoodie H&M', 'Biru', 39, 200000),
(10058, 'T-Shirt Quicksilver', 'Abu-abu', 36, 400000),
(10059, 'Baju H&M', 'Putih', 35, 500000),
(10060, 'Hoodie Adidas', 'Hijau', 37, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id` int(11) NOT NULL,
  `Nama_Pelanggan` varchar(30) DEFAULT NULL,
  `Jenis_Kelamin` char(1) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `Id_Pakaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id`, `Nama_Pelanggan`, `Jenis_Kelamin`, `Tanggal_Lahir`, `Id_Pakaian`) VALUES
(101, 'Nazwa', 'P', '2004-12-08', 10051),
(102, 'Rizq', 'L', '2003-04-04', 10055),
(103, 'Harist', 'L', '2003-12-25', 10060),
(104, 'Dhea', 'P', '2003-11-17', 10052);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`Id_Pakaian`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Pakaian` (`Id_Pakaian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `Id_Pakaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10062;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`Id_Pakaian`) REFERENCES `pakaian` (`Id_Pakaian`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
