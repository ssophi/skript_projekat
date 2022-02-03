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
  `password` varchar(200) NOT NULL,
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
  `password` varchar(200) NOT NULL,
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
  `trenerId` int NOT NULL,
  `prostorijaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trenerId` (`trenerId`),
  KEY `prostorijaId` (`prostorijaId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `trening`

LOCK TABLES `trening` WRITE;

INSERT INTO `trening` VALUES (1, 'balet', 3, 1), (2, 'cross-fit', 1, 3), (3,'kick-box', 3, 3), (4, 'penjanje', 1, 2), (5, 'yoga', 3, 1);

UNLOCK TABLES;

-- Table structure for table `masaza`

DROP TABLE IF EXISTS `masaza`;

CREATE TABLE `masaza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(20) DEFAULT NULL,
  `masazerId` int NOT NULL,
  `prostorijaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `masazerId` (`masazerId`),
  KEY `prostorijaId` (`prostorijaId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `masaza`

LOCK TABLES `masaza` WRITE;

INSERT INTO `masaza` VALUES (1, 'relax', 5, 5), (2, 'korektivna', 5, 5), (3, 'lice', 5, 5), (4, 'ledja', 5, 5), (5, 'sportska', 5, 5);

UNLOCK TABLES;

-- Table structure for table `termin`

DROP TABLE IF EXISTS `termin`;

CREATE TABLE `termin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dan` int NOT NULL,
  `sati_od` int NOT NULL,
  `sati_do` int NOT NULL,
  `treningId` int,
  `masazaId` int,
  `slobodna` int,
  PRIMARY KEY (`id`),
  KEY `treningId` (`treningId`),
  KEY `masazaId` (`masazaId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `termin`

LOCK TABLES `termin` WRITE;

INSERT INTO `termin` VALUES (1, 4,19,20,null,1,0), (2,4,18,19,null,2,0), (3,4,20,21,null,3,0), (4, 4, 17,18,null,4,0), (5, 4,16,17,null,5,0), (6, 1,10,12,1,null,0), (7, 1,18,19,2,null,0), (8, 4,18,19,2,null,0), (9,2,10,12,3,null,0), (10,5,10,12,3,null,0), (11,2,16,18,4,null,0), (12,5,18,20,4,null,0), (13,6,7,8,5,null,0), (14,7,8,9,5,null,0);

UNLOCK TABLES;

-- Table structure for table `rezervacija`

DROP TABLE IF EXISTS `rezervacija`;

CREATE TABLE `rezervacija` (
  `id` int NOT NULL AUTO_INCREMENT,
  `korisnikId` int NOT NULL,
  `terminId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `korisnikId` (`korisnikId`),
  KEY `terminId` (`terminId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `rezervacija`

LOCK TABLES `rezervacija` WRITE;

INSERT INTO `rezervacija` VALUES (1, 3, 1), (2, 1, 3), (3, 3, 3), (4, 1, 2), (5, 3, 1);

UNLOCK TABLES;