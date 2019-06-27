-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 27 juin 2019 à 22:56
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
-- Base de données :  `projet_devlogiciel`
--

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

DROP TABLE IF EXISTS `plante`;
CREATE TABLE IF NOT EXISTS `plante` (
  `Id` int(2) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Catégorisation` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `Humidite_opti` int(3) NOT NULL,
  `Temperature_opti` int(3) NOT NULL,
  `Lumi_opti` int(3) NOT NULL,
  `Periode_floraison` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plante`
--

INSERT INTO `plante` (`Id`, `Nom`, `Catégorisation`, `Description`, `Photo`, `Humidite_opti`, `Temperature_opti`, `Lumi_opti`, `Periode_floraison`) VALUES
(1, 'Ficus Carica', 'Arbuste de 2-5mètres', 'odorant, à suc laiteux abondant \r\n', 'https://api.tela-botanica.org/img:000159292CRS.jpg', 50, 75, 75, 'Juin - Septembre'),
(3, 'Datura Stramonium', 'Plante vénéneuse', 'Plante annuelle de 40 cm à 1 mètre, verte, glabrescente, à odeur vireuse ', 'https://api.tela-botanica.org/img:000094764L.jpg', 50, 60, 90, 'Juillet - Octobre'),
(4, 'Papaver rhoeas - Coquelicot', 'Plante pectorale', ' Plante annuelle, velue-hérissée \r\n- tige de 20-60 cm, dressée, rameuse \r\n- feuilles pennatipartites, à segments lancéolés-aigus, incisés-dentés, les caulinaires sessiles, à segment terminal très développé ', 'https://api.tela-botanica.org/img:000244988CRS.jpg', 50, 50, 90, 'Mai - Juillet'),
(5, 'Atropa Belladona', ' Poison redoutable et narcotique puissant.', ' . Plante vivace atteignant 1 mètre et plus, verte, finement pubescente, fétide \r\n- feuilles supérieures géminées, inégales, toutes pétiolées, ovales-acuminées, nervées, entières ou un peu sinuées', 'https://api.tela-botanica.org/img:000853831CRS.jpg', 50, 50, 60, 'Juin - Août'),
(6, 'Hyoscyamus niger', 'velue-visqueuse, à odeur vireuse ', ' feuilles molles et douces au toucher, les radicales pétiolées, en rosette, les caulinaires sessiles ou embrassantes, ovales-oblongues, sinuées-pennatifides, à lobes inégaux, triangulaires-lancéolés ', 'https://api.tela-botanica.org/img:000172206CRS.jpg', 40, 60, 90, ''),
(7, 'Papaver somniferum', 'Plante vénéneuse', 'Plante rouge', 'https://api.tela-botanica.org/img:000174362CRS.jpg', 50, 90, 90, 'Quand il fait chaud et beau'),
(8, 'Lactuca', 'Plante sèche', 'Petite plante jaune', 'https://api.tela-botanica.org/img:000044270CRS.jpg', 40, 50, 80, 'Inconnue'),
(9, 'Bituminaria bituminosa', 'Plante normale', 'Plante vivace de 50 cm à 1 mètre, herbacée, pubescente-glanduleuse, dressée, à forte odeur de bitume \r\n- feuilles trifoliolées, à folioles elliptiques ou lancéolées, entières, ponctuées-glanduleuses ', 'https://api.tela-botanica.org/img:000192159CRS.jpg', 50, 80, 80, ''),
(10, 'Plantago afra', 'Plante vivace', ' feuilles opposées ou verticillées, linéaires en alêne, triquètres au sommet \r\n- fleurs en têtes ovoïdes sur des pédoncules axillaires plus longs que les feuilles ', 'https://api.tela-botanica.org/img:000117382CRS.jpg', 50, 50, 50, 'Mai - Août');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
