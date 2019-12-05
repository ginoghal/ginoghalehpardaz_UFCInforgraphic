-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2019 at 03:56 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ufctitles`
--

-- --------------------------------------------------------

--
-- Table structure for table `ufctitles-country`
--

CREATE TABLE `ufctitles-country` (
  `id` int(30) NOT NULL,
  `country` varchar(50) NOT NULL,
  `stats` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ufctitles-country`
--

INSERT INTO `ufctitles-country` (`id`, `country`, `stats`) VALUES
(1, 'USA', '57'),
(2, 'Brazil', '16'),
(3, 'Canada', '3'),
(4, 'Netherlands', '2'),
(5, 'Nigeria', '2'),
(6, 'Ireland', '2'),
(7, 'Russia', '1'),
(8, 'Belarus', '1'),
(9, 'England', '1'),
(10, 'Australia', '1'),
(11, 'Kyrgystan', '1'),
(12, 'Poland', '1'),
(13, 'China', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ufctitles-country`
--
ALTER TABLE `ufctitles-country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ufctitles-country`
--
ALTER TABLE `ufctitles-country`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
