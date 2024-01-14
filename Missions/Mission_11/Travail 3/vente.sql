-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 20 Décembre 2023 à 11:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `vente`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `NumCli` int(11) NOT NULL,
  `NomCli` varchar(50) NOT NULL,
  `PrenomCli` varchar(50) NOT NULL,
  `AdresseCli` varchar(50) NOT NULL,
  `MailCli` varchar(50) NOT NULL,
  `VilleCli` varchar(50) NOT NULL,
  `PaysCli` varchar(50) NOT NULL,
  PRIMARY KEY (`NumCli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--


-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `NumCom` int(11) NOT NULL,
  `NumCli` int(11) NOT NULL,
  `IdVendeur` int(11) NOT NULL,
  `NumProd` int(11) NOT NULL,
  `Date_Com` date NOT NULL,
  `Qte_Com` int(11) NOT NULL,
  PRIMARY KEY (`NumCom`),
  KEY `NumCli` (`NumCli`,`IdVendeur`,`NumProd`),
  KEY `IdVendeur` (`IdVendeur`),
  KEY `NumProd` (`NumProd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `NumProd` int(11) NOT NULL,
  `DesignationProd` varchar(50) NOT NULL,
  `PrixProd` int(11) NOT NULL,
  `Qte_StockProd` int(11) NOT NULL,
  PRIMARY KEY (`NumProd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`NumProd`, `DesignationProd`, `PrixProd`, `Qte_StockProd`) VALUES
(123, 'Banane', 12, 2),
(456, 'Patate', 25, 7);

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE IF NOT EXISTS `vendeur` (
  `IdVendeur` int(11) NOT NULL AUTO_INCREMENT,
  `NomVendeur` varchar(50) NOT NULL,
  `AdresseVendeur` varchar(50) NOT NULL,
  PRIMARY KEY (`IdVendeur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `vendeur`
--

INSERT INTO `vendeur` (`IdVendeur`, `NomVendeur`, `AdresseVendeur`) VALUES
(1, 'Fourcade', '6 Rue Verlaine'),
(2, 'Michel', '12 rue Paul Vaillant');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`NumCli`) REFERENCES `client` (`NumCli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`IdVendeur`) REFERENCES `vendeur` (`IdVendeur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_ibfk_3` FOREIGN KEY (`NumProd`) REFERENCES `produit` (`NumProd`) ON DELETE CASCADE ON UPDATE CASCADE;
