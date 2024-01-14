-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Dim 17 Décembre 2023 à 21:39
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ECOLE`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `CodeENS` int(11) NOT NULL AUTO_INCREMENT,
  `NomENS` varchar(50) NOT NULL,
  `GradeENS` varchar(50) NOT NULL,
  `CodeMAT` int(11) NOT NULL,
  PRIMARY KEY (`CodeENS`),
  KEY `CodeMAT` (`CodeMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`CodeENS`, `NomENS`, `GradeENS`, `CodeMAT`) VALUES
(1, 'Chergui', 'Professeur', 1),
(2, 'Jalaguier', 'Professeur', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `CodeET` int(11) NOT NULL AUTO_INCREMENT,
  `NomET` varchar(50) NOT NULL,
  `DateEt` date NOT NULL,
  PRIMARY KEY (`CodeET`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`CodeET`, `NomET`, `DateEt`) VALUES
(3, 'TOUITOU', '2004-12-07'),
(4, 'Fourcade', '2004-03-01');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `CodeMAT` int(11) NOT NULL AUTO_INCREMENT,
  `NomMAT` varchar(50) NOT NULL,
  `CoeffMAT` int(11) NOT NULL,
  PRIMARY KEY (`CodeMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`CodeMAT`, `NomMAT`, `CoeffMAT`) VALUES
(1, 'Informatique', 12),
(2, 'CEJM', 6);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `Id_Note` int(11) NOT NULL,
  `CodeET` int(11) NOT NULL,
  `CodeMAT` int(11) NOT NULL,
  `Note` int(11) NOT NULL,
  PRIMARY KEY (`CodeET`,`CodeMAT`),
  KEY `CodeMAT` (`CodeMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`Id_Note`, `CodeET`, `CodeMAT`, `Note`) VALUES
(1, 3, 1, 18),
(2, 4, 2, 12);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`CodeMAT`) REFERENCES `matiere` (`CodeMAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`CodeET`) REFERENCES `etudiant` (`CodeET`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`CodeMAT`) REFERENCES `matiere` (`CodeMAT`) ON DELETE CASCADE ON UPDATE CASCADE;
