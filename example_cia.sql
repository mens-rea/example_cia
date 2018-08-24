-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 25, 2018 at 12:50 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `example_cia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cia_people`
--

CREATE TABLE `cia_people` (
  `people_id` int(100) NOT NULL,
  `people_name` varchar(200) NOT NULL,
  `people_age` int(100) NOT NULL,
  `people_gender` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cia_people`
--

INSERT INTO `cia_people` (`people_id`, `people_name`, `people_age`, `people_gender`) VALUES
(2, 'Iver Asinas', 16, 1),
(3, 'JILLIANE MAE BERNABE', 19, 2),
(12, 'Sean Smith', 24, 1),
(13, 'Sean Smith', 24, 1),
(14, 'Joan', 34, 2),
(15, 'Jertin Motan', 36, 2),
(16, 'Juan Shot Man', 25, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cia_people`
--
ALTER TABLE `cia_people`
  ADD PRIMARY KEY (`people_id`),
  ADD KEY `people_id` (`people_id`),
  ADD KEY `people_id_2` (`people_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cia_people`
--
ALTER TABLE `cia_people`
  MODIFY `people_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
