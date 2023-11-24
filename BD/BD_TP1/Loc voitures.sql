-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Ven 24 Novembre 2023 à 14:56
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Loc voitures`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `NCIN` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` varchar(50) NOT NULL,
  PRIMARY KEY (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`NCIN`, `Email`, `Nom`, `Prenom`, `Adresse`, `tel`, `date_naissance`, `num_permis`) VALUES
('147147', 'Kokoko@kabyle.com', 'Djouadi', 'Koceila', '6 Rue de l''espoir', '06 06 06 06 06', '2023-11-15', '21'),
('369369369', 'fourchade@gmail.com', 'Fourchade', 'William', '7 Avenue du désespoir', '07 07 07 07 07', '2023-11-12', '19');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `Num_location` int(11) NOT NULL AUTO_INCREMENT,
  `Prix_location` float NOT NULL,
  `duree` int(11) NOT NULL,
  `Caution` float NOT NULL,
  `Date_location` date NOT NULL,
  `Immatriculation` varchar(15) NOT NULL,
  `NCIN` varchar(50) NOT NULL,
  PRIMARY KEY (`Num_location`),
  KEY `Immatriculation` (`Immatriculation`,`NCIN`),
  KEY `NCIN` (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `location`
--


-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `Immatriculation` varchar(15) NOT NULL,
  `Marque` varchar(50) NOT NULL,
  `Couleur` varchar(50) NOT NULL,
  `Nbre_porte` int(11) NOT NULL,
  `Kilometrage` int(11) NOT NULL,
  `Boite_vitesse` varchar(50) NOT NULL,
  `Energie` varchar(50) NOT NULL,
  `Puissance` int(11) NOT NULL,
  PRIMARY KEY (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`Immatriculation`, `Marque`, `Couleur`, `Nbre_porte`, `Kilometrage`, `Boite_vitesse`, `Energie`, `Puissance`) VALUES
('123123123', 'Volkswagen', 'Bleu', 5, 20, 'Automatique', 'Hybride', 200),
('456456456', 'Lamborguini', 'Jaune', 3, 40, 'Manuelle', 'Essence', 350);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`NCIN`) REFERENCES `client` (`NCIN`),
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Immatriculation`) REFERENCES `voiture` (`Immatriculation`);
