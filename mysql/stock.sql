-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 04:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `122`
--

CREATE TABLE `122` (
  `code_rice` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `rice_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `num_in` int(10) NOT NULL,
  `datein` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `122`
--

INSERT INTO `122` (`code_rice`, `rice_type`, `rice`, `price`, `num_in`, `datein`) VALUES
('001', 'ข้าวจ้าว', 'ข้าวจ้าวท่อน', 450, 5, '2021-07-01'),
('002', 'ข้าวเหนียว', 'ข้าวเหนียวท่อน', 470, 8, '2021-07-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `122`
--
ALTER TABLE `122`
  ADD PRIMARY KEY (`code_rice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
