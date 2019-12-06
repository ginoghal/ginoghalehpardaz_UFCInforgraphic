-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2019 at 11:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ufctitles-country`
--

-- --------------------------------------------------------

--
-- Table structure for table `ufc_titles`
--

CREATE TABLE `ufc_titles` (
  `id` int(30) NOT NULL,
  `country` varchar(50) NOT NULL,
  `titles` varchar(50) NOT NULL,
  `fun_fact` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ufc_titles`
--

INSERT INTO `ufc_titles` (`id`, `country`, `titles`, `fun_fact`) VALUES
(1, 'USA', '57', 'USA has more titles than the rest of the other countries combined.'),
(2, 'Brazil', '16', 'UFC 1 was won by a Brazillian named Royce Gracie using Brazillian Jiu Jitsu.'),
(3, 'Canada', '3', 'Canada has won 2 titles at Welterweight and one at middleweight.'),
(4, 'Netherlands', '2', 'The Netherlands was the country of origin for the first female Featherweight Champion.'),
(5, 'Nigeria', '2', 'Both titles were won on back to back events (UFC 235 and UFC 236).'),
(6, 'Ireland', '2', 'Both Titles were won by the same person - Conor Mcgregor - and he held both simultaneously.'),
(7, 'Russia', '1', 'The Russian champion is undefeated: 28-0.'),
(8, 'Belarus', '1', 'The belt was won by Andrei Arlovski back in 2005 (UFC 53).'),
(9, 'England', '1', 'Michael Bisping of England won the belt while being mostly blind in one eye.'),
(10, 'Australia', '1', 'Robert Whitaker won the belt shortly after winning the reality show (TUF) at a lower weight class.'),
(11, 'Kyrgystan', '1', 'Valentina Shevchenko is the first and only champion in her weight class.'),
(12, 'Poland', '1', 'The polish champion (Joanna Jedrzejczyk) was the first female Straw weight champion.'),
(13, 'China', '1', 'Zhang Weili won the belt in China.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ufc_titles`
--
ALTER TABLE `ufc_titles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ufc_titles`
--
ALTER TABLE `ufc_titles`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
