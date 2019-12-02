-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 01, 2019 at 10:50 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ufc_titles`
--

-- --------------------------------------------------------

--
-- Table structure for table `ufc_titles-stats`
--

CREATE TABLE `ufc_titles-stats` (
  `ID` int(20) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Titles` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ufc_titles-stats`
--

INSERT INTO `ufc_titles-stats` (`ID`, `Country`, `Titles`) VALUES
(0, 'USA', '57'),
(1, 'Brazil', '16'),
(2, 'Canada', '3'),
(3, 'Netherlands', '2'),
(4, 'Nigeria', '2'),
(5, 'Ireland', '2'),
(6, 'Russia', '1'),
(7, 'Belarus', '1'),
(8, 'England', '1'),
(9, 'Australia', '1'),
(10, 'Kyrgystan', '1'),
(11, 'Poland', '1'),
(12, 'China', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ufc_titles-stats`
--
ALTER TABLE `ufc_titles-stats`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
