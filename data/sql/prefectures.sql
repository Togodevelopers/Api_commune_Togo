-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2021 at 05:19 PM
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
-- Table structure for table `prefectures`
--

CREATE TABLE `prefectures` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `chef_lieu` varchar(25) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prefectures`
--

INSERT INTO `prefectures` (`id`, `nom`, `chef_lieu`, `latitude`, `longitude`, `region_id`) VALUES
(1, 'Cinkassé', 'Cinkassé', NULL, NULL, 1),
(2, 'Kpendjal', 'Mandouri', NULL, NULL, 1),
(3, 'Kpendjal-Ouest', 'Naki-Est', NULL, NULL, 1),
(4, 'Oti', 'Mango', NULL, NULL, 1),
(5, 'Oti-Sud', 'Gando', NULL, NULL, 1),
(6, 'Tandjouaré', 'Tandjouaré', NULL, NULL, 1),
(7, 'Tône', 'Dapaong', NULL, NULL, 1),
(8, 'Assoli', 'Bafilo', NULL, NULL, 2),
(9, 'Bassar', 'Bassar', NULL, NULL, 2),
(10, 'Binah', 'Pagouda', NULL, NULL, 2),
(11, 'Dankpen', 'Gérin-kouka', NULL, NULL, 2),
(12, 'Doufelgou', 'Niamtougou', NULL, NULL, 2),
(13, 'Kéran', 'Kanté', NULL, NULL, 2),
(14, 'Kozah', 'Kara', NULL, NULL, 2),
(15, 'Blitta', 'Blitta', NULL, NULL, 3),
(16, 'Sotouboua', 'Sotouboua', NULL, NULL, 3),
(17, 'Tchamba', 'Tchamba', NULL, NULL, 3),
(18, 'Tchaoudjo', 'Sokodé', NULL, NULL, 3),
(19, 'Mô', 'Djarkpanga', NULL, NULL, 3),
(20, 'Agou', 'Agou-Gadzépé', NULL, NULL, 4),
(21, 'Akébou', 'Kougnohou', NULL, NULL, 4),
(22, 'Amou', 'Amlamé', NULL, NULL, 4),
(23, 'Anié', 'Anié', NULL, NULL, 4),
(24, 'Danyi', 'Danyi-Apéyémé', NULL, NULL, 4),
(25, 'Est-Mono', 'Elavagnon', NULL, NULL, 4),
(26, 'Haho', 'Notsè', NULL, NULL, 4),
(27, 'Kloto', 'Kpalimé', NULL, NULL, 4),
(28, 'Kpélé', 'Adéta', NULL, NULL, 4),
(29, 'Moyen-Mono', 'Tohoun', NULL, NULL, 4),
(30, 'Ogou', 'Atakpamé', NULL, NULL, 4),
(31, 'Wawa', 'Badou', NULL, NULL, 4),
(32, 'Agouè-Nyivé', 'Agouè-Nyivé', NULL, NULL, 5),
(33, 'Avé', 'Kévé', NULL, NULL, 5),
(34, 'Bas-Mono', 'Afagnan', NULL, NULL, 5),
(35, 'Golfe', 'Lomé', NULL, NULL, 5),
(36, 'Lacs', 'Aného', NULL, NULL, 5),
(37, 'Vo', 'Vogan', NULL, NULL, 5),
(38, 'Yoto', 'Tabligbo', NULL, NULL, 5),
(39, 'Zio', 'Tsévié', NULL, NULL, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prefectures`
--
ALTER TABLE `prefectures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `region_id` (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prefectures`
--
ALTER TABLE `prefectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prefectures`
--
ALTER TABLE `prefectures`
  ADD CONSTRAINT `prefectures_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
