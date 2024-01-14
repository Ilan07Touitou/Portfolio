-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 20 Décembre 2023 à 12:01
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ecole2`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `Numero_Carte_Etudiant` varchar(50) NOT NULL,
  `Nom_Etudiant` varchar(50) NOT NULL,
  `Prenom_Etudiant` varchar(50) NOT NULL,
  `Date_Naissance_Etudiant` date NOT NULL,
  `Section_Etudiant` varchar(50) NOT NULL,
  PRIMARY KEY (`Numero_Carte_Etudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`Numero_Carte_Etudiant`, `Nom_Etudiant`, `Prenom_Etudiant`, `Date_Naissance_Etudiant`, `Section_Etudiant`) VALUES
('123123', 'Fourcacde', 'Wiliam', '2004-03-16', 'Mathématique'),
('777', 'Touitou', 'Ilan', '2004-12-07', 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `Code_Matiere` varchar(50) NOT NULL,
  `Nom_Matiere` varchar(50) NOT NULL,
  `Coefficient_Matiere` int(11) NOT NULL,
  PRIMARY KEY (`Code_Matiere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`Code_Matiere`, `Nom_Matiere`, `Coefficient_Matiere`) VALUES
('1', 'Mathématique', 1),
('2', 'Informatique', 2);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `Id_Note` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Carte_Etudiant` varchar(50) NOT NULL,
  `Code_Matiere` varchar(50) NOT NULL,
  `Note_Examen` int(11) NOT NULL,
  PRIMARY KEY (`Id_Note`),
  KEY `Numero_Carte_Etudiant` (`Numero_Carte_Etudiant`,`Code_Matiere`),
  KEY `Code_Matiere` (`Code_Matiere`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`Id_Note`, `Numero_Carte_Etudiant`, `Code_Matiere`, `Note_Examen`) VALUES
(1, '123123', '1', 7),
(2, '123123', '1', 12),
(3, '777', '2', 20),
(4, '777', '2', 19);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`Numero_Carte_Etudiant`) REFERENCES `etudiant` (`Numero_Carte_Etudiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`Code_Matiere`) REFERENCES `matiere` (`Code_Matiere`) ON DELETE CASCADE ON UPDATE CASCADE;
