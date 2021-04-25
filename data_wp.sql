-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 12:42 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wajib_pajak`
--

CREATE TABLE `wajib_pajak` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `plat_nomor` varchar(20) NOT NULL,
  `model_kendaraan` varchar(100) NOT NULL,
  `nomor_rangka` varchar(100) NOT NULL,
  `nomor_mesin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wajib_pajak`
--

INSERT INTO `wajib_pajak` (`id`, `nama`, `alamat`, `plat_nomor`, `model_kendaraan`, `nomor_rangka`, `nomor_mesin`) VALUES
(1, 'Lukmanul Hanif', 'Lingk. Wargamulia Rt20/Rw09 Kel/Kec Purwaharja Kota Banjar', 'Z 2513 YH', 'Sepeda Motor', 'MH32P20037k669396', '2P2-667250'),
(2, 'Tasha Aulia Kinanti', 'Lingk. Wargamulia Rt19/Rw10 Kel/Kec Purwaharja Kota Banjar', 'Z 1213 YH', 'Mobil Penumpang', 'UBS52CUK4469891', '790603'),
(3, 'Reihansyah Wijaya', 'Lingk. Wargamulia Rt18/Rw09 Kel/Kec Purwaharja Kota Banjar', 'Z 2113 YH', 'Mobil Penumpang', 'UBS42CKU6459891', '780360'),
(4, 'Lee Jeno', 'Lingk. Wargamulia Rt17/Rw08 Kel/Kec Purwaharja Kota Banjar', 'Z 2313 YH', 'Sepeda Motor', 'MH32P20007k996396', '2P2-677350'),
(5, 'Na Jaemin', 'Lingk. Wargamulia Rt19/Rw10 Kel/Kec Purwaharja Kota Banjar', 'Z 1313 YH', 'Mobil Penumpang', 'UBS52CUK4479789', '791604');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wajib_pajak`
--
ALTER TABLE `wajib_pajak`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wajib_pajak`
--
ALTER TABLE `wajib_pajak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
