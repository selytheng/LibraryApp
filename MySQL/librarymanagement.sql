-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 02:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Page` varchar(30) NOT NULL,
  `Public` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`ID`, `Name`, `Description`, `Author`, `Page`, `Public`) VALUES
(20200001, 'MouyLang Pom', 'Controller', 'VS Code', '250', 'April-2023'),
(20200002, 'Sivmuy Pin', 'Controller', 'VS Code', '220', 'April-2023'),
(20200003, 'Jefferson Sim', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200004, 'Rin Singh', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200005, 'Techchhiv Lim', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200449, 'LyTheng Se', 'Data Base', 'IntelIJ', '300', 'May-2023');

-- --------------------------------------------------------

--
-- Table structure for table `studentboorrow`
--

CREATE TABLE `studentboorrow` (
  `StudentID` varchar(10) NOT NULL,
  `StudentName` varchar(20) NOT NULL,
  `BookID` varchar(10) NOT NULL,
  `BookName` varchar(20) NOT NULL,
  `BorrowDate` varchar(20) NOT NULL,
  `ReturnDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentboorrow`
--

INSERT INTO `studentboorrow` (`StudentID`, `StudentName`, `BookID`, `BookName`, `BorrowDate`, `ReturnDate`) VALUES
('20200449', 'LyTheng', '1122', 'Love', '12-April-2023', '21-May-2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `studentboorrow`
--
ALTER TABLE `studentboorrow`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booklist`
--
ALTER TABLE `booklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263871264;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
