-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 24 Janvier 2024 à 15:54
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `zoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE IF NOT EXISTS `animaux` (
  `Id_Animaux` int(11) NOT NULL AUTO_INCREMENT,
  `Date_De_Naissance` date NOT NULL,
  `Nom_Animal` varchar(50) NOT NULL,
  `Commentaire` text NOT NULL,
  `Id_Espece` int(11) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Animaux`),
  KEY `Id_Espece` (`Id_Espece`,`Sexe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `animaux`
--


-- --------------------------------------------------------

--
-- Structure de la table `enclos`
--

CREATE TABLE IF NOT EXISTS `enclos` (
  `Id_Enclos` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Enclos` varchar(50) NOT NULL,
  `Capacite_Max` int(11) NOT NULL,
  `Eau` tinyint(1) NOT NULL,
  `Taille` float NOT NULL,
  `Id_Personnel` int(11) NOT NULL,
  `Id_Personnel_Concerner` int(11) NOT NULL,
  PRIMARY KEY (`Id_Enclos`),
  KEY `Id_Personnel` (`Id_Personnel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `enclos`
--


-- --------------------------------------------------------

--
-- Structure de la table `especes`
--

CREATE TABLE IF NOT EXISTS `especes` (
  `Id_Espece` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Race` varchar(50) NOT NULL,
  `Duree_Vie_Moyenne` int(11) NOT NULL,
  `Aquatique` tinyint(4) NOT NULL,
  `Type_Nourriture` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Espece`),
  KEY `Type_Nourriture` (`Type_Nourriture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `especes`
--


-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

CREATE TABLE IF NOT EXISTS `fonctions` (
  `Fonction` varchar(50) NOT NULL,
  PRIMARY KEY (`Fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fonctions`
--


-- --------------------------------------------------------

--
-- Structure de la table `loc_animaux`
--

CREATE TABLE IF NOT EXISTS `loc_animaux` (
  `Id_Loc_Animaux` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Arrivee` date NOT NULL,
  `Date_Sortie` date NOT NULL,
  `Id_Animaux` int(11) NOT NULL,
  `Id_Enclos` int(11) NOT NULL,
  PRIMARY KEY (`Id_Loc_Animaux`),
  KEY `Id_Animaux` (`Id_Animaux`,`Id_Enclos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `loc_animaux`
--


-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE IF NOT EXISTS `personnels` (
  `Id_Personnel` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_De_Naissance` date NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Salaire` decimal(15,3) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `Fonction` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Personnel`),
  KEY `Sexe` (`Sexe`,`Fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `personnels`
--


-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE IF NOT EXISTS `sexe` (
  `Sexe` varchar(50) NOT NULL,
  PRIMARY KEY (`Sexe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sexe`
--


-- --------------------------------------------------------

--
-- Structure de la table `type_nourriture`
--

CREATE TABLE IF NOT EXISTS `type_nourriture` (
  `Type_Nourriture` varchar(50) NOT NULL,
  PRIMARY KEY (`Type_Nourriture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_nourriture`
--

