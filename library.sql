-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 10:55 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmaster`
--

CREATE TABLE `bookmaster` (
  `bookid` int(4) NOT NULL,
  `booktitle` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `year` int(10) NOT NULL,
  `bookcategory` varchar(35) NOT NULL,
  `copies` int(4) NOT NULL,
  `language` varchar(35) NOT NULL,
  `avacopies` int(6) NOT NULL,
  `edition` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmaster`
--

INSERT INTO `bookmaster` (`bookid`, `booktitle`, `author`, `publisher`, `year`, `bookcategory`, `copies`, `language`, `avacopies`, `edition`) VALUES
(2, 'Romeo and Juliot', 'William Shakesphere', 'current books', 1955, 'Drama', 6, 'English', 5, '2'),
(3, 'Ram c/o Anandhi', 'Akhil P Dharmajan', 'DC Books', 2020, 'Novel', 5, 'Malayalam', 5, '1.0'),
(4, 'Kali', 'Aswathi Sreekanth', 'DCB', 2024, 'Novel', 3, 'Malayalam', 2, '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `lib_login`
--

CREATE TABLE `lib_login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lib_login`
--

INSERT INTO `lib_login` (`username`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `lib_transaction`
--

CREATE TABLE `lib_transaction` (
  `tid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `idate` date NOT NULL,
  `rdate` date DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lib_transaction`
--

INSERT INTO `lib_transaction` (`tid`, `memid`, `bookid`, `idate`, `rdate`, `fine`, `charges`) VALUES
(1, 3, 2, '2024-08-18', '2024-08-19', 0, 10),
(2, 3, 2, '2024-08-18', NULL, NULL, NULL),
(3, 4, 4, '2024-08-18', NULL, NULL, NULL),
(4, 5, 3, '2024-08-19', '2024-08-19', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `membermaster`
--

CREATE TABLE `membermaster` (
  `memid` int(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `redate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membermaster`
--

INSERT INTO `membermaster` (`memid`, `name`, `address`, `email`, `mobile`, `redate`) VALUES
(1, 'Anu', 'Anu nivas,pathiripala', 'anu@gmail.com', '3456789456', '2024-08-18'),
(3, 'mini', 'mini nivas', 'mini@gmail.com', '3765428765', '2024-08-18'),
(4, 'rinu', 'reena nivas,palakkad', 'rinu@gmail.com', '879574533', '2024-08-18'),
(5, 'Veena', 'veena nivas', 'veena@gmail.com', '3454675757', '2024-08-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmaster`
--
ALTER TABLE `bookmaster`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `membermaster`
--
ALTER TABLE `membermaster`
  ADD PRIMARY KEY (`memid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmaster`
--
ALTER TABLE `bookmaster`
  MODIFY `bookid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membermaster`
--
ALTER TABLE `membermaster`
  MODIFY `memid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
