-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 19 mai 2024 à 20:50
-- Version du serveur : 8.0.36-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `togo_subdivisions`
--

-- --------------------------------------------------------

--
-- Structure de la table `quartiers`
--

CREATE TABLE `quartiers` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `superficie` double DEFAULT NULL,
  `population` double DEFAULT NULL,
  `commune_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `nom`, `latitude`, `longitude`, `superficie`, `population`, `commune_id`) VALUES
(1, 'Adjouyiko', NULL, NULL, NULL, NULL, 85),
(2, 'Ahonga-Kopé', NULL, NULL, NULL, NULL, 85),
(3, 'Adougba', NULL, NULL, NULL, NULL, 85),
(4, 'Anokoui-Komékopé', NULL, NULL, NULL, NULL, 85),
(5, 'Anokoui-Ahokopé', NULL, NULL, NULL, NULL, 85),
(6, 'Anomegblé', NULL, NULL, NULL, NULL, 85),
(7, 'Anonkui-Nogo', NULL, NULL, NULL, NULL, 85),
(8, 'Apenyigbi', NULL, NULL, NULL, NULL, 85),
(9, 'Démakpoè', NULL, NULL, NULL, NULL, 85),
(10, 'Djingble', NULL, NULL, NULL, NULL, 85),
(11, 'Fiovi', NULL, NULL, NULL, NULL, 85),
(12, 'Gbonvié-Anomé', NULL, NULL, NULL, NULL, 85),
(13, 'Gnamassigan', NULL, NULL, NULL, NULL, 85),
(14, 'Kitidjan', NULL, NULL, NULL, NULL, 85),
(15, 'Klévé-Apégnigbi', NULL, NULL, NULL, NULL, 85),
(16, 'Klévé-Assiyéyé', NULL, NULL, NULL, NULL, 85),
(17, 'Kové', NULL, NULL, NULL, NULL, 85),
(18, 'Logope-Agbanyokopé', NULL, NULL, NULL, NULL, 85),
(19, 'Logopé-Atsanvé', NULL, NULL, NULL, NULL, 85),
(20, 'Logopé-Houmbigblé', NULL, NULL, NULL, NULL, 85),
(21, 'Logopé-Kpatefi', NULL, NULL, NULL, NULL, 85),
(22, 'Netimé', NULL, NULL, NULL, NULL, 85),
(23, 'Nyavimé-Aveyimé', NULL, NULL, NULL, NULL, 85),
(24, 'Sogbossito', NULL, NULL, NULL, NULL, 85),
(25, 'Sogbossito-Apelebuimé', NULL, NULL, NULL, NULL, 85),
(26, 'Sogbossito-Aziasikopé', NULL, NULL, NULL, NULL, 85),
(27, 'Télessou-Adokpokopé', NULL, NULL, NULL, NULL, 85),
(28, 'Télessou-Agbodekakopé', NULL, NULL, NULL, NULL, 85),
(29, 'Togomé', NULL, NULL, NULL, NULL, 85),
(30, 'Totsi-Nyivémé', NULL, NULL, NULL, NULL, 85),
(31, 'Totsi-Kpatefi-Cacavéli', NULL, NULL, NULL, NULL, 85),
(32, 'Zogbégan', NULL, NULL, NULL, NULL, 85),
(33, 'Atsanvé', NULL, NULL, NULL, NULL, 85),
(34, 'Houmbi', NULL, NULL, NULL, NULL, 85),
(35, 'Kpatefi', NULL, NULL, NULL, NULL, 85),
(36, 'Klévé', NULL, NULL, NULL, NULL, 85),
(37, 'Apelebuimé', NULL, NULL, NULL, NULL, 85),
(38, 'Adidodokpo', NULL, NULL, NULL, NULL, 85),
(39, 'Nyivémé', NULL, NULL, NULL, NULL, 85),
(40, 'Legbassito', NULL, NULL, NULL, NULL, 86),
(41, 'Yohonou', NULL, NULL, NULL, NULL, 86),
(42, 'Ahonkpoe', NULL, NULL, NULL, NULL, 86),
(43, 'Agossito', NULL, NULL, NULL, NULL, 86),
(44, 'Zovadjin', NULL, NULL, NULL, NULL, 86),
(45, 'Madjikpeto', NULL, NULL, NULL, NULL, 86),
(46, 'Avinato', NULL, NULL, NULL, NULL, 86),
(47, 'Silivikope (Adidomé)', NULL, NULL, NULL, NULL, 86),
(48, 'Athieme ahonpkoe', NULL, NULL, NULL, NULL, 86),
(49, 'Assikor', NULL, NULL, NULL, NULL, 86),
(50, 'Bokpokor', NULL, NULL, NULL, NULL, 86),
(51, 'Amadenta anaglikope', NULL, NULL, NULL, NULL, 86),
(52, 'Amadenta douthekope', NULL, NULL, NULL, NULL, 86),
(53, 'Amadenta akikope', NULL, NULL, NULL, NULL, 86),
(54, 'Athieme', NULL, NULL, NULL, NULL, 86),
(55, 'Kove sivanyo', NULL, NULL, NULL, NULL, 86),
(56, 'Kove kpokplovime', NULL, NULL, NULL, NULL, 86),
(57, 'Ahondjokope', NULL, NULL, NULL, NULL, 86),
(58, 'Dalime', NULL, NULL, NULL, NULL, 86),
(59, 'Danliko', NULL, NULL, NULL, NULL, 86),
(60, 'Hossoukopé', NULL, NULL, NULL, NULL, 87),
(61, 'Logogomé', NULL, NULL, NULL, NULL, 87),
(62, 'Elavagno-Atsanvé', NULL, NULL, NULL, NULL, 87),
(63, 'Elavagno-Klévé', NULL, NULL, NULL, NULL, 87),
(64, 'Awoudja-Kopé', NULL, NULL, NULL, NULL, 87),
(65, 'Dansakopé', NULL, NULL, NULL, NULL, 87),
(66, 'Afiadényigban', NULL, NULL, NULL, NULL, 89),
(67, 'Agbléliko', NULL, NULL, NULL, NULL, 89),
(68, 'Anyigbé', NULL, NULL, NULL, NULL, 89),
(69, 'Attigankopé', NULL, NULL, NULL, NULL, 89),
(70, 'Dangbéssito', NULL, NULL, NULL, NULL, 89),
(71, 'Dékpor', NULL, NULL, NULL, NULL, 89),
(72, 'Elavanyo', NULL, NULL, NULL, NULL, 89),
(73, 'Klémé', NULL, NULL, NULL, NULL, 89),
(74, 'Klikamé', NULL, NULL, NULL, NULL, 89),
(75, 'Kohé', NULL, NULL, NULL, NULL, 89),
(76, 'Kopégan', NULL, NULL, NULL, NULL, 89),
(77, 'Sanguéra', NULL, NULL, NULL, NULL, 89),
(78, 'Nanégbé', NULL, NULL, NULL, NULL, 89),
(79, 'Sanyrakor', NULL, NULL, NULL, NULL, 89),
(80, 'Tagakopé', NULL, NULL, NULL, NULL, 89),
(81, 'Vogomé', NULL, NULL, NULL, NULL, 89),
(82, 'Zion-kopé', NULL, NULL, NULL, NULL, 89),
(83, 'Zopomahé', NULL, NULL, NULL, NULL, 89),
(84, 'Zossimé', NULL, NULL, NULL, NULL, 89),
(85, 'Adétikope centre', NULL, NULL, NULL, NULL, 90),
(86, 'Adoglove', NULL, NULL, NULL, NULL, 90),
(87, 'Anyave', NULL, NULL, NULL, NULL, 90),
(88, 'Agoute-kpokpome', NULL, NULL, NULL, NULL, 90),
(89, 'Devime', NULL, NULL, NULL, NULL, 90),
(90, 'Dzove', NULL, NULL, NULL, NULL, 90),
(91, 'Kladzeme', NULL, NULL, NULL, NULL, 90),
(92, 'Kpotave', NULL, NULL, NULL, NULL, 90),
(93, 'Lomenyokop', NULL, NULL, NULL, NULL, 90),
(94, 'Tonoukouti', NULL, NULL, NULL, NULL, 90),
(95, 'Tsikplonoukondzi', NULL, NULL, NULL, NULL, 90),
(96, 'Bè-Hédjé', NULL, NULL, NULL, NULL, 95),
(97, 'Bè-Apéyémé', NULL, NULL, NULL, NULL, 95),
(98, 'Bè-Dangbuipé', NULL, NULL, NULL, NULL, 95),
(99, 'Bè-Adzrométi', NULL, NULL, NULL, NULL, 95),
(100, 'Bè-Agodo', NULL, NULL, NULL, NULL, 95),
(101, 'Bè-Agodogan', NULL, NULL, NULL, NULL, 95),
(102, 'Bè-Allaglo', NULL, NULL, NULL, NULL, 95),
(103, 'Bè-Ahligo', NULL, NULL, NULL, NULL, 95),
(104, 'Bè-Hounvémé', NULL, NULL, NULL, NULL, 95),
(105, 'Bè-Adanlékpossi', NULL, NULL, NULL, NULL, 95),
(106, 'Bè-Wété-Komé', NULL, NULL, NULL, NULL, 95),
(107, 'Bè-Akodessewa', NULL, NULL, NULL, NULL, 95),
(108, 'Bè-Kotokou-Kondji', NULL, NULL, NULL, NULL, 95),
(109, 'Bè-Ablogamé', NULL, NULL, NULL, NULL, 95),
(110, 'Bè-Kanyikopé', NULL, NULL, NULL, NULL, 95),
(111, 'Bè-Adakpamé', NULL, NULL, NULL, NULL, 95),
(112, 'Bè-Adakpamé-Dangbuipé', NULL, NULL, NULL, NULL, 95),
(113, 'Bè-Adakpamé-Apéyémé', NULL, NULL, NULL, NULL, 95),
(114, 'Bè-Adakpamé-KpotaColas', NULL, NULL, NULL, NULL, 95),
(115, 'Bè-Kpota-Adidomé', NULL, NULL, NULL, NULL, 95),
(116, 'Bè-Akodessewa-Kpota', NULL, NULL, NULL, NULL, 95),
(117, 'Bè-Akodessewa-Kponou', NULL, NULL, NULL, NULL, 95),
(118, 'Bè-Anfamé', NULL, NULL, NULL, NULL, 95),
(119, 'Bè-Kpota-Dénouvimé', NULL, NULL, NULL, NULL, 95),
(120, 'Bè-Kpota-Atchantimé', NULL, NULL, NULL, NULL, 95),
(121, 'Bè-Kpota', NULL, NULL, NULL, NULL, 95),
(122, 'Bè-Kpota-Tokoin', NULL, NULL, NULL, NULL, 95),
(123, 'N’tifafa Komé-Nord', NULL, NULL, NULL, NULL, 95),
(124, 'Bè-Attiégou', NULL, NULL, NULL, NULL, 95),
(125, 'Bè-Souza-Nétimé N°1', NULL, NULL, NULL, NULL, 95),
(126, 'Bè-Souza-Nétimé N°2', NULL, NULL, NULL, NULL, 95),
(127, 'Bè-Souza-Nétimé N°3', NULL, NULL, NULL, NULL, 95),
(128, 'Bè-Anthony-Nétimé', NULL, NULL, NULL, NULL, 95),
(129, 'Katanga', NULL, NULL, NULL, NULL, 95),
(130, 'Kélégougan', NULL, NULL, NULL, NULL, 95),
(131, 'Klobatème', NULL, NULL, NULL, NULL, 95),
(132, 'Tokoin Wuiti', NULL, NULL, NULL, NULL, 96),
(134, 'Tokoin Tamé', NULL, NULL, NULL, NULL, 96),
(135, 'Tokoin Enyonam', NULL, NULL, NULL, NULL, 96),
(136, 'Hédzranawoé 1', NULL, NULL, NULL, NULL, 96),
(137, 'Hédzranaoé 2 (Togo 2000)', NULL, NULL, NULL, NULL, 96),
(138, 'Tokoin Aviation', NULL, NULL, NULL, NULL, 96),
(139, 'Kégué', NULL, NULL, NULL, NULL, 96),
(140, 'Atiégouvi', NULL, NULL, NULL, NULL, 96),
(141, 'Tokoin Elavagnon Lycée (Camp Général Gnassingbé Eyadéma, CICA TOYOTA, SOTED)', NULL, NULL, NULL, NULL, 97),
(142, 'Tokoin-Gbonvié', NULL, NULL, NULL, NULL, 97),
(143, 'Doumasséssé (Adewi et l’Université de Lomé)', NULL, NULL, NULL, NULL, 97),
(144, 'Tokoin klévé (cité OUA)', NULL, NULL, NULL, NULL, 97),
(145, 'Tokoin Atchanti (Lomé II, Nouvelle Présidence, Habitats de la Caisse)', NULL, NULL, NULL, NULL, 97),
(146, 'Kélégouvi (Stade de Kégué)', NULL, NULL, NULL, NULL, 97),
(147, 'Massouhoin', NULL, NULL, NULL, NULL, 97),
(148, 'Hanoukopé-Est (Camp Gendarmerie)', NULL, NULL, NULL, NULL, 97),
(149, 'Amoutivé', NULL, NULL, NULL, NULL, 98),
(150, 'Bassadji', NULL, NULL, NULL, NULL, 98),
(151, 'N’tifafa-komé-sud', NULL, NULL, NULL, NULL, 98),
(152, 'Doulassame', NULL, NULL, NULL, NULL, 98),
(153, 'Lom-nava', NULL, NULL, NULL, NULL, 98),
(154, 'Hanoukopé', NULL, NULL, NULL, NULL, 98),
(155, 'Adoboukomé', NULL, NULL, NULL, NULL, 98),
(156, 'Aguiakomé', NULL, NULL, NULL, NULL, 98),
(157, 'Anagokomé', NULL, NULL, NULL, NULL, 98),
(158, 'Adawlato', NULL, NULL, NULL, NULL, 98),
(159, 'Béniglato', NULL, NULL, NULL, NULL, 98),
(160, 'Biossé', NULL, NULL, NULL, NULL, 98),
(161, 'Assivito', NULL, NULL, NULL, NULL, 98),
(175, 'Hétrivikondji', NULL, NULL, NULL, NULL, 98),
(176, 'Octavia-nétimé', NULL, NULL, NULL, NULL, 98),
(177, 'Kodjoviakopé', NULL, NULL, NULL, NULL, 98),
(178, 'Nyékonakpoè', NULL, NULL, NULL, NULL, 98),
(179, 'Adjololo', NULL, NULL, NULL, NULL, 98),
(180, 'Kodomé', NULL, NULL, NULL, NULL, 98),
(181, 'Tokoin Gbadago', NULL, NULL, NULL, NULL, 98),
(182, 'CHU Sylvanus OLYMPIO', NULL, NULL, NULL, NULL, 98),
(183, 'Dogbéavu', NULL, NULL, NULL, NULL, 98),
(184, 'Bè-Klikamé', NULL, NULL, NULL, NULL, 98),
(185, 'Atikoumé-Adjomayi', NULL, NULL, NULL, NULL, 98),
(186, 'Djidjolé', NULL, NULL, NULL, NULL, 99),
(187, 'Tokoin Casablanca', NULL, NULL, NULL, NULL, 99),
(188, 'Akosombo Tamé', NULL, NULL, NULL, NULL, 99),
(189, 'Akosombo Atikoumé', NULL, NULL, NULL, NULL, 99),
(190, 'Agbalépedogan', NULL, NULL, NULL, NULL, 99),
(191, 'Agbalépedo Dabla Kopé', NULL, NULL, NULL, NULL, 99),
(192, 'Totsigan', NULL, NULL, NULL, NULL, 99),
(193, 'Totsivi Gblenkomé', NULL, NULL, NULL, NULL, 99),
(194, 'Adidoadin', NULL, NULL, NULL, NULL, 99),
(195, 'Soviépé', NULL, NULL, NULL, NULL, 99),
(196, 'Avenou Batomé', NULL, NULL, NULL, NULL, 99),
(197, 'Avedji Telessou', NULL, NULL, NULL, NULL, 99),
(198, 'Avedji Anyigbe', NULL, NULL, NULL, NULL, 99),
(199, 'Adigomé Teshie', NULL, NULL, NULL, NULL, 99),
(200, 'Wessome Hetchavi', NULL, NULL, NULL, NULL, 99),
(201, 'Apedokoè Legbanou', NULL, NULL, NULL, NULL, 99),
(202, 'Avedji Kpodji', NULL, NULL, NULL, NULL, 99),
(203, 'Avedji Awounogbé', NULL, NULL, NULL, NULL, 99),
(204, 'Avedji Adidome', NULL, NULL, NULL, NULL, 99),
(205, 'Amadahomé', NULL, NULL, NULL, NULL, 99),
(206, 'Adidogomé', NULL, NULL, NULL, NULL, 99),
(207, 'Apedokoè Molèdji', NULL, NULL, NULL, NULL, 99),
(208, 'Avedji Anyigbe Sud', NULL, NULL, NULL, NULL, 99),
(209, 'Avenou Kletigomé', NULL, NULL, NULL, NULL, 99),
(210, 'Gbétsogbé', NULL, NULL, NULL, NULL, 100),
(211, 'Noudokope', NULL, NULL, NULL, NULL, 100),
(212, 'Adamavo', NULL, NULL, NULL, NULL, 100),
(213, 'Logoti', NULL, NULL, NULL, NULL, 100),
(214, 'Doèvi-Kopé', NULL, NULL, NULL, NULL, 100),
(215, 'Avépozo', NULL, NULL, NULL, NULL, 100),
(216, 'Dévégo', NULL, NULL, NULL, NULL, 100),
(217, 'Kpogan', NULL, NULL, NULL, NULL, 100),
(218, 'Boboloè', NULL, NULL, NULL, NULL, 100),
(219, 'Baguida', NULL, NULL, NULL, NULL, 100),
(220, 'Akato-viepé', NULL, NULL, NULL, NULL, 101),
(221, 'Avoème', NULL, NULL, NULL, NULL, 101),
(222, 'Akato-déme', NULL, NULL, NULL, NULL, 101),
(223, 'Segbegan', NULL, NULL, NULL, NULL, 101),
(224, 'Segbe douane', NULL, NULL, NULL, NULL, 101),
(225, 'Klémé-Agokpanou', NULL, NULL, NULL, NULL, 101),
(226, 'Klémé Yewepé', NULL, NULL, NULL, NULL, 101),
(227, 'Wougomé Dékpo', NULL, NULL, NULL, NULL, 101),
(228, 'Wougomé', NULL, NULL, NULL, NULL, 101),
(229, 'Sagbado Avoème', NULL, NULL, NULL, NULL, 101),
(230, 'Sagbado Logoté', NULL, NULL, NULL, NULL, 101),
(231, 'Sagbado Sakani', NULL, NULL, NULL, NULL, 101),
(232, 'Sagbado Kpéssoudji', NULL, NULL, NULL, NULL, 101),
(233, 'Sagbado Avoèm', NULL, NULL, NULL, NULL, 101),
(234, 'Lankouvi Avoèm', NULL, NULL, NULL, NULL, 101),
(235, 'Lankouvi Kpéssoudji', NULL, NULL, NULL, NULL, 101),
(236, 'Lankouvi Hodor', NULL, NULL, NULL, NULL, 101),
(237, 'Yokoè Kopégan', NULL, NULL, NULL, NULL, 101),
(238, 'Yokoè Agblégan', NULL, NULL, NULL, NULL, 101),
(239, 'Gblinkomegan', NULL, NULL, NULL, NULL, 101),
(240, 'Apédokoè Gbomame', NULL, NULL, NULL, NULL, 101),
(241, 'Apédokoè Agokpanou', NULL, NULL, NULL, NULL, 101),
(242, 'Awatame', NULL, NULL, NULL, NULL, 101),
(243, 'Wonyome', NULL, NULL, NULL, NULL, 101),
(244, 'Agotime', NULL, NULL, NULL, NULL, 101),
(245, 'Zanvi', NULL, NULL, NULL, NULL, 101),
(246, 'Ablogome', NULL, NULL, NULL, NULL, 101),
(247, 'Didaure', NULL, NULL, NULL, NULL, 48),
(248, 'Kpangalam', NULL, NULL, NULL, NULL, 48),
(249, 'Komah 1', NULL, NULL, NULL, NULL, 48),
(250, 'Komah 2', NULL, NULL, NULL, NULL, 48),
(251, 'Komah 3', NULL, NULL, NULL, NULL, 48),
(252, 'Koulounde 1', NULL, NULL, NULL, NULL, 48),
(253, 'Koulounde 2', NULL, NULL, NULL, NULL, 48),
(254, 'Koulounde 3', NULL, NULL, NULL, NULL, 48),
(255, 'Salimde 1', NULL, NULL, NULL, NULL, 48),
(256, 'Salimde 2', NULL, NULL, NULL, NULL, 48),
(257, 'Salimde 3', NULL, NULL, NULL, NULL, 48),
(258, 'Tchawanda', NULL, NULL, NULL, NULL, 48),
(259, 'Zongo', NULL, NULL, NULL, NULL, 48),
(260, 'Kwawoi-Woro', NULL, NULL, NULL, NULL, 48),
(261, 'Kpangalam-Zaire', NULL, NULL, NULL, NULL, 48),
(262, 'Kédia', NULL, NULL, NULL, NULL, 48),
(263, 'Akokodè', NULL, NULL, NULL, NULL, 48),
(264, 'Bamabodolo', NULL, NULL, NULL, NULL, 48),
(265, 'Bariki', NULL, NULL, NULL, NULL, 48),
(266, 'Akamade', NULL, NULL, NULL, NULL, 48),
(267, 'Kossobio', NULL, NULL, NULL, NULL, 48),
(268, 'Barrière', NULL, NULL, NULL, NULL, 48);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `commune_id` (`commune_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `quartiers`
--
ALTER TABLE `quartiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD CONSTRAINT `quartiers_ibfk_1` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
