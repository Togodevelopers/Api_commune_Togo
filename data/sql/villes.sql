-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2021 at 05:17 PM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `togo_subdivisions`
--

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `superficie` double DEFAULT NULL,
  `population` double DEFAULT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `superficie`, `population`, `region_id`) VALUES
(1, 'Lomé', 90, 2133579, 5),
(2, 'Sokodé', NULL, 117811, 3),
(3, 'Kara', 11630, 	104207, 2),
(4, 'Kpalimé', NULL, 95974, 4),
(5, 'Atakpamé', NULL, 80683, 4),
(6, 'Bassar', NULL, 61845, 2),
(7, 'Tsévié', NULL, 55775, 5),
(8, 'Aného', NULL, 47579, 5),
(9, 'Mango', NULL, 37748, 1),
(10, 'Dapaong', NULL, 33324, 1),
(11, 'Tchamba', NULL, NULL, 3),
(12, 'Niamtougou', NULL, NULL, 2),
(13, 'Bafilo', NULL, NULL, 2),
(14, 'Notsé', NULL, NULL, 4),
(15, 'Sotouboua', NULL, NULL, 3),
(16, 'Vogan', NULL, NULL, 5),
(17, 'Badou', NULL, NULL, 4),
(18, 'Biankouri', NULL, NULL, 1),
(19, 'Tabligbo', NULL, NULL, 5),
(20, 'Kanté', NULL, NULL, 2),
(21, 'Amlamé', NULL, NULL, 4),
(22, 'Galangachi', NULL, NULL, 1),
(23, 'Kpagouda', NULL, NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
