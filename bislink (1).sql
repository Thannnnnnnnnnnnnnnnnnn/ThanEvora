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
-- Database: `bislink`
--

-- --------------------------------------------------------

--
-- Table structure for table `2222`
--

CREATE TABLE `2222` (
  `Reservation_id` int(11) NOT NULL,
  `Vehicle_type` varchar(25) NOT NULL,
  `Vehicle_color` varchar(25) NOT NULL,
  `Vehicle_brand` varchar(25) NOT NULL,
  `Plate_no` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Time` varchar(25) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2222`
--

INSERT INTO `2222` (`Reservation_id`, `Vehicle_type`, `Vehicle_color`, `Vehicle_brand`, `Plate_no`, `Date`, `Time`, `Status`) VALUES
(6761, '2 Wheel', 'black', 'toyota', 'asdwads', '2024-05-07', '5:19 AM', 'Approved'),
(6763, '4 Wheel', 'pink', 'toyota', 'AAA-1234', '2024-05-06', '5:24 AM', 'Rejected'),
(6765, '2 Wheel', 'black', 'nissan', 'AAA-123444dd', '2024-05-07', '5:25 AM', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `adi`
--

CREATE TABLE `adi` (
  `tbl_id` int(69) NOT NULL,
  `Email` varchar(69) NOT NULL,
  `password` varchar(69) NOT NULL,
  `account_type` varchar(69) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adi`
--

INSERT INTO `adi` (`tbl_id`, `Email`, `password`, `account_type`) VALUES
(1, 'admin@gmail.com', 'admin', '1'),
(2, 'user@gmail.com', 'user', '2'),
(9, 'hehehe@gmail.com', 'admin', ''),
(10, 'paula@gmail.com', 'admin', ''),
(11, 'ako@gmail.com', 'hdhdhdhd', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2222`
--
ALTER TABLE `2222`
  ADD PRIMARY KEY (`Reservation_id`);

--
-- Indexes for table `adi`
--
ALTER TABLE `adi`
  ADD PRIMARY KEY (`tbl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2222`
--
ALTER TABLE `2222`
  MODIFY `Reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6774;

--
-- AUTO_INCREMENT for table `adi`
--
ALTER TABLE `adi`
  MODIFY `tbl_id` int(69) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
