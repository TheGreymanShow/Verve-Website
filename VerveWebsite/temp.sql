-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 05:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verve`
--

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `Event` varchar(75) NOT NULL,
  `Name` varchar(75) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `Phone` varchar(75) NOT NULL,
  `College` varchar(75) NOT NULL,
  `Ambassador` varchar(75) NOT NULL,
  `Amount Paid` varchar(75) DEFAULT NULL,
  `Status` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`Event`, `Name`, `Email`, `Phone`, `College`, `Ambassador`, `Amount Paid`, `Status`) VALUES
('event', 'name', 'email', 'phone', 'college', 'amba', 'amount_paid', 'status'),
('', '', '', '', '', '', '', ''),
(' android ', ' android ', ' android ', ' android ', ' android ', ' android ', '0', 'Hold'),
(' android ', ' android ', ' android1 ', ' android ', ' android ', ' android ', '0', 'Hold'),
(' android ', ' android ', ' android2 ', ' android ', ' android ', ' android ', '0', 'Hold'),
(' android ', ' android ', ' android2 ', ' android ', ' android ', ' android ', '0', 'Hold'),
(' Code Hoax ', ' Akshay ', ' dangareakshay@gmail.com ', ' 9619500815 ', ' Vidyalankar ', ' Ash ', '0', 'Hold');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
