-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 07, 2024 at 07:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ingente`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingente_rin_to`
--

CREATE TABLE `ingente_rin_to` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Skills` varchar(255) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `Profession` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingente_rin_to`
--

INSERT INTO `ingente_rin_to` (`ID`, `Name`, `Skills`, `Qualification`, `Profession`, `Time`, `Date`) VALUES
(3, 'Ingente', 'Hatdog', 'Student kineme', 'Governor', '12:45 PM', '2024-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `ingente_to`
--

CREATE TABLE `ingente_to` (
  `tbl_id` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingente_to`
--

INSERT INTO `ingente_to` (`tbl_id`, `Email`, `password`, `account_type`) VALUES
(1, 'admin@gmail.com', 'admin', 1),
(2, 'user@gmail.com', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingente_rin_to`
--
ALTER TABLE `ingente_rin_to`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ingente_to`
--
ALTER TABLE `ingente_to`
  ADD PRIMARY KEY (`tbl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingente_rin_to`
--
ALTER TABLE `ingente_rin_to`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ingente_to`
--
ALTER TABLE `ingente_to`
  MODIFY `tbl_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
