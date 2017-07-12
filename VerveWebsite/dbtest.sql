-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 02:05 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `edesc` varchar(200) NOT NULL,
  `eimage` varchar(120) DEFAULT NULL,
  `erule` mediumtext NOT NULL,
  `eprize` varchar(120) DEFAULT NULL,
  `eparticipants` int(11) DEFAULT NULL,
  `ecost` varchar(200) DEFAULT NULL,
  `ecategory` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `ename`, `edesc`, `eimage`, `erule`, `eprize`, `eparticipants`, `ecost`, `ecategory`) VALUES
(1, 'Event 1', 'Event 1 Desc', 'images/portfolio/1.jpg', 'Event 1 Rule', NULL, 2, '20', 'fa'),
(2, 'Event 2', 'Event 2 Desc', 'images/portfolio/2.jpg', 'Event 2 Rule', NULL, 3, '30', 'la'),
(3, 'Event 3', 'Event desc ', 'images/portfolio/3.jpg', 'event rule', NULL, 40, '50', 'fa'),
(4, 'Event 4', 'Event desc ', 'images/portfolio/4.jpg', 'event rule', NULL, 40, '50', 'pa'),
(5, 'Event 5', 'Event desc ', 'images/portfolio/5.jpg', 'event rule', NULL, 40, '50', 'la'),
(6, 'Mr. And Ms. VIT', 'Personality Contest ', 'images/pa/mrmrsvit.png', '<h3 style="color: black;">Rules:</h3>\nRound 1 : Group discussion and a surprise section. Time limit for Group discussion will be 3 mins. <br>\nRound 2 : Talent Round. Time limit for this will be 3 mins. <br>\nRound 3 : Final Round. It will have ramp walk, questionnaire and talent display. Time limit for talent display will be 4 mins.<br> \n Participants must keep in mind that in case they get selected in round 1, they will have to appear for round 2 on the very next day.<br> Failure to be present will result in disqualification.', '<h3 style="color: black;">Prizes:</h3>\nWinner (Mr VIT): Vouchers<br>\nWinner (Ms VIT): Vouchers', NULL, NULL, 'pa'),
(7, 'Event 7', 'Event desc ', 'images/portfolio/7.jpg', 'event rule', NULL, 40, '50', 'fa'),
(8, 'Event 8', 'Event desc ', 'images/portfolio/8.jpg', 'event rule', NULL, 40, '50', 'vl'),
(11, 'Event 6+', 'Event desc ', 'images/portfolio/6.jpg', 'event rule', NULL, 40, '50', 'fa');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `Event` varchar(60) DEFAULT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Phone` varchar(60) DEFAULT NULL,
  `College` varchar(60) DEFAULT NULL,
  `Ambassador` varchar(60) DEFAULT NULL,
  `Amount Paid` varchar(60) DEFAULT NULL,
  `Status` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `Event`, `Name`, `Email`, `Phone`, `College`, `Ambassador`, `Amount Paid`, `Status`) VALUES
(1, ' dgfdlgl ', ' asdfsdfsdf ', '  ', ' gdfjkghskjg ', ' gdfgjdsg ', ' fdkghdfg ', '0', 'Hold'),
(2, ' sdfjsdlkfjl ', ' sdhfsdhfkj ', '  ', ' sdfkjsdlf ', ' dsfkjsdlf ', ' fsdklfjlsd ', '0', 'Hold');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
