-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: skript_dom1
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `prostorija`
--

DROP TABLE IF EXISTS `prostorija`;

CREATE TABLE `prostorija` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(20) DEFAULT NULL,
  `broj_sale` int NOT NULL,
  `povrsina` int NOT NULL,
  `kapacitet` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `prostorija` WRITE;
INSERT INTO `prostorija` VALUES (1, 'balentska', '1', '20', '10'), (2, 'penjacka', '5', '40', '20'), (3, 'cross-fit', '3', '20', '5'), (4, 'teretana', '2', '20', '10'), (5, 'masaza', '7', '10', '2');

UNLOCK TABLES;

-- Table structure for table `user`

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tip_clanarine` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `user`

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'ari','hrana2201','Ari','Aricon','aricon@ari.com', 'clasic'),(2,'goga','goga1228','Goga','Gogicon','goga@ari.com', 'exclusive'),(3,'coka','coka54','Coka','Cokic','coka@ari.com', 'clasic'), (4,'boki','boki149','Boki','Bokicon','boki@ari.com', 'exclusive'), (5,'corto','nikolaus13','Nikola','Corto','corto@ari.com', 'exclusive');
UNLOCK TABLES;

-- Table structure for table `zaposleni`

DROP TABLE IF EXISTS `zaposleni`;

CREATE TABLE `zaposleni` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `zaposleni`

LOCK TABLES `zaposleni` WRITE;
INSERT INTO `zaposleni` VALUES (1,'nikolaus','malteze72','Nikola','Nikic','nik@ari.com', 'trener'),(2,'joca','badza123','Jovan','Jovic','joca@ari.com', 'recepcija'),(3,'maki','freja55','Marija','Maric','maki@ari.com', 'trener'), (4,'kimi','dorcol','Mihajlo','Mikic','kimi@ari.com', 'vlasnik'), (5,'mimi','djura1910','Mimi','Mimic','mimi@ari.com', 'masaza'), (6,'enco','theboss','Enco','Encic','enco@ari.com', 'moderator'), (7,'ari','aritheboss','Ari','Arica','ari@ari.com', 'admin');
UNLOCK TABLES;

-- Table structure for table `trening`

DROP TABLE IF EXISTS `trening`;

CREATE TABLE `trening` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(20) DEFAULT NULL,
  `termini` varchar(200) DEFAULT NULL,
  `trenerId` int NOT NULL,
  `prostorijaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trenerId` (`trenerId`),
  KEY `prostorijaId` (`prostorijaId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `trening`

LOCK TABLES `trening` WRITE;

INSERT INTO `trening` VALUES (1, 'balet', 'ponedeljak 10-12, cetvrtak 10-12', 3, 1), (2, 'cross-fit', 'ponedeljak 18-19, cetvrtak 18-19', 1, 3), (3,'kick-box', 'utorak 10-12, petak 10-12', 3, 3), (4, 'penjanje', 'utorak 16-18, petak 18-20', 1, 2), (5, 'yoga', 'subota 7-8', 3, 1);

UNLOCK TABLES;

-- Table structure for table `trening`

DROP TABLE IF EXISTS `masaza`;

CREATE TABLE `masaza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(20) DEFAULT NULL,
  `termini` varchar(200) DEFAULT NULL,
  `masazerID` int NOT NULL,
  `prostorijaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `masazerId` (`masazerId`),
  KEY `prostorijaId` (`prostorijaId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `masaza`

LOCK TABLES `masaza` WRITE;

INSERT INTO `masaza` VALUES (1, 'relax', 'cetvrtak 19-20', 5, 5), (2, 'korektivna', 'cetvrtak 18-19', 5, 5), (3, 'lice', 'cetvrtak 20-21', 5, 5), (4, 'ledja', 'cetvrtak 17-18', 5, 5), (5, 'sportska', 'cetvrtak 16-17', 5, 5);

UNLOCK TABLES;
