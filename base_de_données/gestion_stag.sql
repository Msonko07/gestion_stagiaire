-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 28 oct. 2022 à 13:55
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_stag`
--drop database if exists gestion_stag;
create database if not exists gestion_stag;
use gestion_stag;

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `idFiliere` int(4) NOT NULL,
  `nomFiliere` varchar(50) DEFAULT NULL,
  `niveau` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`idFiliere`, `nomFiliere`, `niveau`) VALUES
(1, 'GENIE LOGICIEL', 'LICENCE'),
(2, 'RESEAUX TELECOM', 'MASTER'),
(3, 'MULTIMEDIA', 'LICENCE'),
(4, 'GESTION', 'MASTER'),
(5, 'AGRONOMIE', 'LICENCE');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE `stagiaire` (
  `idStagiaire` int(4) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `civilite` varchar(1) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `idFiliere` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stagiaire`
--

INSERT INTO `stagiaire` (`idStagiaire`, `nom`, `prenom`, `civilite`, `photo`, `idFiliere`) VALUES
(1, 'SONKO', 'MOHAMMED', 'M', 'Chrysantheme.jpg', 1),
(2, 'NDIAYE', 'OMAR', 'M', 'Desert.jpg', 2),
(3, 'SALIM', 'RACHID', 'F', 'Hortensias.jpg', 3),
(4, 'MOUSTAPHA', 'NABIL', 'F', 'Meduses.jpg', 1),
(5, 'BA', 'SAMBA', 'M', 'Penguins.jpg', 2),
(6, 'DIOP', 'ABDOU', 'M', 'Tulipes.jpg', 3),
(7, 'SARR', 'MOHAMMED', 'M', 'Chrysantheme.jpg', 1),
(8, 'SENE', 'OMAR', 'M', 'Desert.jpg', 2),
(9, 'DIA', 'IDRISS', 'F', 'Hortensias.jpg', 3),
(10, 'SOW', 'BABA', 'F', 'Meduses.jpg', 1),
(11, 'BENN', 'KAMAL', 'M', 'Penguins.jpg', 2),
(12, 'SAGNA', 'KARIM', 'M', 'Tulipes.jpg', 3),
(13, 'SAADAOUI', 'MOHAMMED', 'M', 'Chrysantheme.jpg', 1),
(14, 'FAYE', 'OMAR', 'M', 'Desert.jpg', 2),
(15, 'DEME', 'BAMBA', 'F', 'Hortensias.jpg', 3),
(16, 'SARR', 'AMADOU', 'F', 'Meduses.jpg', 1),
(17, 'SENE', 'PAPE', 'M', 'Penguins.jpg', 2),
(18, 'NDOYE', 'KHALIFA', 'M', 'Tulipes.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `iduser` int(4) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `etat` int(1) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`iduser`, `login`, `email`, `role`, `etat`, `pwd`) VALUES
(1, 'admin', 'admin@gmail.com', 'ADMIN', 1, '202cb962ac59075b964b07152d234b70'),
(2, 'user1', 'user1@gmail.com', 'VISITEUR', 0, '202cb962ac59075b964b07152d234b70'),
(3, 'user2', 'user2@gmail.com', 'VISITEUR', 1, '202cb962ac59075b964b07152d234b70'),
(4, 'gucci', 'mouhamedsonko07@gmail.com', 'VISITEUR', 1, 'e7247759c1633c0f9f1485f3690294a9');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`idFiliere`);

--
-- Index pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD PRIMARY KEY (`idStagiaire`),
  ADD KEY `idFiliere` (`idFiliere`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `idFiliere` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `idStagiaire` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `iduser` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD CONSTRAINT `stagiaire_ibfk_1` FOREIGN KEY (`idFiliere`) REFERENCES `filiere` (`idFiliere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
