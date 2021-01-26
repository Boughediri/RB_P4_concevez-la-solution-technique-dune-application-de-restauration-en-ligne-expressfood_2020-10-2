-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 25, 2020 at 11:26 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodexpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `idadresse` int(11) NOT NULL AUTO_INCREMENT,
  `codepostal` varchar(45) NOT NULL,
  `pays` varchar(45) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `digicode` varchar(45) NOT NULL,
  `adressecol` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `numero_de_rue` varchar(45) NOT NULL,
  `client_idclient` int(11) NOT NULL,
  PRIMARY KEY (`idadresse`,`client_idclient`),
  KEY `fk_adresse_client1_idx` (`client_idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adresse`
--

INSERT INTO `adresse` (`idadresse`, `codepostal`, `pays`, `longitude`, `latitude`, `digicode`, `adressecol`, `phone`, `numero_de_rue`, `client_idclient`) VALUES
(1, '37255', 'France', 78692, 52364, '125692#', '982-4091 Aenean Impasse', '06 66 37 43 76', '125', 1),
(2, '33762', 'France', 94228, 46188, '225692#', '772-2455 Et Rd.', '06 88 04 65 10', '276', 2),
(3, '67413', 'France', 78957, 49301, '325692#', '2228 Ullamcorper, Impasse', '06 54 82 25 32', '341', 3),
(4, '46105', 'France', 60531, 66942, '425692#', 'Appartement 553-2710 Rutrum. Avenue', '06 47 37 00 97', '410', 4),
(5, '88463', 'France', 98118, 83966, '525692#', 'CP 443, 3778 Nullam Ave', '06 14 68 83 61', '546', 5),
(6, '13001', 'France', 49673, 98031, '625692#', 'Appartement 349-2928 Turpis Rd.', '06 23 28 02 02', '600', 6),
(7, '82633', 'France', 7391, 20914, '725692#', '9728 Congue Avenue', '06 62 95 28 09', '763', 7),
(8, '67172', 'France', 81421, 11631, '825692#', 'Appartement 497-5237 Duis Rue', '06 99 97 33 17', '817', 8),
(9, '67173', 'France', 81421, 11631, '925692#', '2965 Porttitor Route', '06 62 11 16 62', '917', 9);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idcategorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `designation` varchar(20) NOT NULL,
  PRIMARY KEY (`idcategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`idcategorie`, `nom`, `designation`) VALUES
(1, 'plat1', 'salade'),
(2, 'plat2', 'plat de resisitance'),
(3, 'dessert', 'dessertdujour'),
(4, 'boisson', 'vin');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `mail`, `login`, `password`) VALUES
(1, 'momo', 'abd', 'momo@hotmail.fr', 'momo13', 'moadf'),
(2, 'Blake', 'Nathan', 'mi.ac.mattis@tempus.com', 'bla1', 'bla2'),
(3, 'Washington', 'Warren', 'at.fringilla.purus@elitfermentum.org', 'was2', 'was3'),
(4, 'Roberts', 'Hayden', 'interdum.Nunc.sollicitudin@eget.edu', 'rob3', 'rob4'),
(5, 'Sexton', 'Jesse', 'Proin.vel@Aliquam.org', 'sex4', 'sex5'),
(6, 'Knox', 'Abraham', 'ultrices.posuere@gravidasit.org', 'kno5', 'kno6'),
(7, 'Monroe', 'Nolan', 'Nunc.sed@ullamcorperviverra.ca', 'mon6', 'mon7'),
(8, 'Koch', 'Ryder', 'ac@cursus.net', 'koc7', 'koc8'),
(9, 'Small', 'Gannon', 'nec.mollis@faucibus.com', 'sma8', 'sma9');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `idcommande` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_plat` varchar(45) NOT NULL,
  `nombre_dessert` varchar(45) NOT NULL,
  `payment` varchar(40) NOT NULL,
  `client_idclient` int(11) NOT NULL,
  PRIMARY KEY (`idcommande`),
  KEY `fk_commande_client1_idx` (`client_idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`idcommande`, `nombre_plat`, `nombre_dessert`, `payment`, `client_idclient`) VALUES
(1, '2', '1', 'paiement accepté', 1),
(2, '3', '1', 'paiement accepté', 2),
(3, '4', '1', 'paiement accepté', 3);

-- --------------------------------------------------------

--
-- Table structure for table `commandeproduit`
--

DROP TABLE IF EXISTS `commandeproduit`;
CREATE TABLE IF NOT EXISTS `commandeproduit` (
  `idcommandeproduit` int(11) NOT NULL AUTO_INCREMENT,
  `quantité` varchar(45) NOT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `commande_idcommande` int(11) NOT NULL,
  PRIMARY KEY (`idcommandeproduit`),
  KEY `fk_commandeproduit_commande1_idx` (`commande_idcommande`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commandeproduit`
--

INSERT INTO `commandeproduit` (`idcommandeproduit`, `quantité`, `detail`, `commande_idcommande`) VALUES
(31, '20', 'Choucroute alsacienne', 1),
(32, '23', 'Aïoli provençal', 2),
(33, '25', 'Panna cotta', 3);

-- --------------------------------------------------------

--
-- Table structure for table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
CREATE TABLE IF NOT EXISTS `livreur` (
  `idlivreur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `statut` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `commande_idcommande` int(11) NOT NULL,
  PRIMARY KEY (`idlivreur`),
  KEY `fk_livreur_commande1_idx` (`commande_idcommande`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livreur`
--

INSERT INTO `livreur` (`idlivreur`, `nom`, `prenom`, `latitude`, `longitude`, `statut`, `commande_idcommande`) VALUES
(1, 'jean', 'fabre', 11.4955, 68.0773, 'nondispo', 1),
(2, 'louis', 'dupond', 6.8504, 84.8504, 'disponible', 2),
(3, 'françois', 'richier', 6.8504, 84.6851, 'disponible', 3);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `idproduit` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(45) NOT NULL,
  `meta` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `dateajout` date NOT NULL,
  `datemodification` date NOT NULL,
  `datepublication` date NOT NULL,
  `categorie_idcategorie` int(11) NOT NULL,
  `commandeproduit_idcommandeproduit` int(11) NOT NULL,
  PRIMARY KEY (`idproduit`,`categorie_idcategorie`) USING BTREE,
  KEY `fk_produit_categorie1_idx` (`categorie_idcategorie`),
  KEY `fk_produit_commandeproduit1_idx` (`commandeproduit_idcommandeproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`idproduit`, `ref`, `meta`, `description`, `dateajout`, `datemodification`, `datepublication`, `categorie_idcategorie`, `commandeproduit_idcommandeproduit`) VALUES
(1, '1001', 'plat1', 'Choucroute alsacienne', '2020-10-25', '2020-10-25', '2020-10-25', 1, 31),
(2, '1002', 'plat2.', 'Aïoli provençal', '2020-10-25', '2020-10-25', '2020-10-25', 2, 32),
(3, '1003', 'dessert.', 'Panna cotta', '2020-10-25', '2020-10-25', '2020-10-25', 3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `stocklivreur`
--

DROP TABLE IF EXISTS `stocklivreur`;
CREATE TABLE IF NOT EXISTS `stocklivreur` (
  `idstocklivreur` int(11) NOT NULL AUTO_INCREMENT,
  `livreur_idlivreur` int(11) NOT NULL,
  `produit_idproduit` int(11) NOT NULL,
  `qte-totale` varchar(11) NOT NULL,
  `qte-restante` varchar(11) NOT NULL,
  PRIMARY KEY (`idstocklivreur`),
  KEY `fk_stocklivreur_livreur1_idx` (`livreur_idlivreur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocklivreur`
--

INSERT INTO `stocklivreur` (`idstocklivreur`, `livreur_idlivreur`, `produit_idproduit`, `qte-totale`, `qte-restante`) VALUES
(1, 1, 1, '10', '8'),
(2, 2, 2, '10', '1'),
(3, 3, 3, '20', '12');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `fk_adresse_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_commande_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  ADD CONSTRAINT `fk_commandeproduit_commande1` FOREIGN KEY (`commande_idcommande`) REFERENCES `commande` (`idcommande`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `livreur`
--
ALTER TABLE `livreur`
  ADD CONSTRAINT `fk_livreur_commande1` FOREIGN KEY (`commande_idcommande`) REFERENCES `commande` (`idcommande`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_produit_categorie1` FOREIGN KEY (`categorie_idcategorie`) REFERENCES `categorie` (`idcategorie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produit_commandeproduit1` FOREIGN KEY (`commandeproduit_idcommandeproduit`) REFERENCES `commandeproduit` (`idcommandeproduit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stocklivreur`
--
ALTER TABLE `stocklivreur`
  ADD CONSTRAINT `fk_stocklivreur_livreur1` FOREIGN KEY (`livreur_idlivreur`) REFERENCES `livreur` (`idlivreur`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
