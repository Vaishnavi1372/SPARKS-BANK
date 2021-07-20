-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 03:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `SNO` int(10) NOT NULL,
  `SENDER` varchar(25) NOT NULL,
  `RECEIVER` varchar(25) NOT NULL,
  `CURRENT BALANCE` int(30) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`SNO`, `SENDER`, `RECEIVER`, `CURRENT BALANCE`, `DATETIME`) VALUES
(1, 'Chethan M', 'Vedha Prasad', 45200, '2021-07-17 23:40:21'),
(2, 'Nidha Rao', 'Amritha Das', 5455, '2021-07-17 23:42:31'),
(3, 'Amritha Das', 'Anushree G', 32000, '2021-07-17 23:44:12'),
(4, 'Kiara T', 'Parth', 4755, '2021-07-17 23:45:21'),
(5, 'Vedh Prasad', 'Nidha Rishi', 8566, '2021-07-17 23:46:18'),
(6, 'Anushree G', 'Rishi Vasist', 5000, '2021-07-17 23:47:14'),
(7, 'Kiara T', 'Chethan M', 10000, '2021-07-17 20:18:05'),
(8, 'Pari Kapoor', 'Reema Gupta', 2588, '2021-07-17 23:49:27'),
(9, 'Anushree G', 'Pari Kapoor', 20000, '2021-07-17 23:50:23');
(10, 'Nidha Rao', 'Parth', 11001, '2021-07-17 20:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `SNO` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `CURRENT BALANCE` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`SNO`, `NAME`, `EMAIL`, `CURRENT BALANCE`) VALUES
(1, 'Amritha Das', 'amritha@gmail.com',50000),
(2, 'Chethan M', 'mchethan@gmail.com', 46000),
(3, 'Reema Gupta', 'reema@gmail.com', 100000),
(4, 'Vedh Prsad', 'vedhprasad1352@gmail.com', 23008),
(5, 'Rishi Vasist', 'rishi12@gmail.com', 200430),
(6, 'Nidha Rao', 'nidha@gmail.com', 29000),
(7, 'Parth', '1234parth@gmail.com', 55000),
(8,  'Kiara', 'kiara@gmail.com', 408520),
(9, 'Pari Kapoor', 'pari000@gmail.com', 85000),
(10, 'Anushree G', 'anug@gmail.com', 73200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `SNO` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `SNO` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
