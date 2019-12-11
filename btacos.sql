-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 11 déc. 2019 à 09:12
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `btacos`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `numero` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `reference_plat` int(11) NOT NULL,
  `id_client` int(8) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id` int(50) NOT NULL,
  `passworde` varchar(10) NOT NULL,
  `adress` varchar(40) NOT NULL,
  `numtel` int(8) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `passworde`, `adress`, `numtel`, `nom`, `prenom`, `role`) VALUES
(99, 'pppp', 'eeeeeeee', 20000124, 'yasmi', 'haaaa', 'admin'),
(123, 'mmm', 'mrj', 20000002, 'yaaaa', 'fffffff', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `numero` int(11) NOT NULL,
  `date_facture` date NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

DROP TABLE IF EXISTS `offre`;
CREATE TABLE IF NOT EXISTS `offre` (
  `numoffre` int(11) NOT NULL,
  `numplat` int(11) NOT NULL,
  `nouvprix` int(11) NOT NULL,
  `ancienprix` int(11) NOT NULL,
  `dateoffre` date NOT NULL,
  PRIMARY KEY (`numoffre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`numoffre`, `numplat`, `nouvprix`, `ancienprix`, `dateoffre`) VALUES
(55, 3, 5, 50, '2019-12-28'),
(5, 2, 5, 44, '2019-12-04');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

DROP TABLE IF EXISTS `plat`;
CREATE TABLE IF NOT EXISTS `plat` (
  `numplat` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL,
  `categorie` varchar(10) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`numplat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
