-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 08:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `NIP` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`NIP`, `Nama`, `Tanggal`, `Status`) VALUES
(23434, 'koko', '2022-09-09', 'Hadir'),
(343456, 'jassy', '2022-09-09', 'Izin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `NIP` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jabatan` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`NIP`, `Nama`, `Jabatan`, `Jenis_Kelamin`, `Agama`, `Alamat`, `Status`) VALUES
(3253, 'jassy', 'Karyawan', 'Perempuan', 'Islam', 'Kayu tangin', 'Belum menikah'),
(243546, 'koko', 'CEO', 'Laki-Laki', 'Islam', 'eryf', 'Sudah Menikah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penggajian`
--

CREATE TABLE `tb_penggajian` (
  `NIP` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tanggal` date NOT NULL,
  `Gaji` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penggajian`
--

INSERT INTO `tb_penggajian` (`NIP`, `Nama`, `Tanggal`, `Gaji`, `Status`) VALUES
(12132, 'jsyy', '2023-01-13', '6.000.000', 'Belum Menerima Gaji'),
(23141, 'koko', '2023-01-13', '2.000.000', 'Sudah Menerima Gaji');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tb_penggajian`
--
ALTER TABLE `tb_penggajian`
  ADD PRIMARY KEY (`NIP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `NIP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343457;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `NIP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243547;

--
-- AUTO_INCREMENT for table `tb_penggajian`
--
ALTER TABLE `tb_penggajian`
  MODIFY `NIP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231424;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
