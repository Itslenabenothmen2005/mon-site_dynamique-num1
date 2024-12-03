-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 mai 2024 à 22:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_lilakalba`
--

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `code` varchar(6) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `tel` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`code`, `adresse`, `tel`) VALUES
('DJB055', 'Rue Mohamed Ali Djerba', '74555666'),
('GAB033', 'Rue de la solidarité Gabes', '76333222'),
('TUN001', 'Rue de la république Tunisie', '71888999');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero` varchar(8) NOT NULL,
  `cin` varchar(8) NOT NULL,
  `type` enum('E','C') NOT NULL,
  `solde` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `code` varchar(6) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `dateop` datetime NOT NULL,
  `nature` varchar(1) NOT NULL,
  `montant` decimal(10,3) NOT NULL
) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`code`,`numero`,`dateop`),
  ADD KEY `numero` (`numero`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`code`) REFERENCES `agence` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`numero`) REFERENCES `compte` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
