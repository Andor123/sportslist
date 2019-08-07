-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: sportslist
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alpine_skiing`
--

DROP TABLE IF EXISTS `alpine_skiing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alpine_skiing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alpine_skiing`
--

LOCK TABLES `alpine_skiing` WRITE;
/*!40000 ALTER TABLE `alpine_skiing` DISABLE KEYS */;
INSERT INTO `alpine_skiing` VALUES (1,12,37,41,43,121),(2,181,22,22,22,66),(3,67,15,16,17,48),(4,197,17,20,10,47),(5,140,11,13,12,36),(6,92,14,9,9,32),(7,71,17,13,10,40),(8,180,7,2,9,18),(9,35,4,1,6,11),(10,50,4,6,0,10),(11,110,2,2,6,10),(12,170,2,2,3,7),(13,53,1,0,2,3),(14,174,1,0,1,2),(15,112,0,2,0,2),(16,165,0,2,0,2),(17,66,0,1,0,1),(18,94,0,1,0,1),(19,136,0,1,0,1),(20,155,0,1,1,2),(21,11,0,0,1,1);
/*!40000 ALTER TABLE `alpine_skiing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archery`
--

DROP TABLE IF EXISTS `archery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archery`
--

LOCK TABLES `archery` WRITE;
/*!40000 ALTER TABLE `archery` DISABLE KEYS */;
INSERT INTO `archery` VALUES (1,100,23,9,7,39),(2,197,14,11,9,34),(3,67,6,11,7,24),(4,19,11,6,3,20),(5,73,2,2,5,9),(6,41,1,6,2,9),(7,92,2,2,3,7),(8,155,1,4,6,11),(9,94,0,3,2,5),(10,66,1,1,2,4),(11,195,1,1,2,4),(12,11,1,0,2,3),(13,71,0,2,1,3),(14,42,0,1,2,3),(15,135,1,0,1,2),(16,180,0,2,0,2),(17,123,0,1,1,2),(18,150,0,1,1,2),(19,174,1,0,0,1),(20,87,0,1,0,1);
/*!40000 ALTER TABLE `archery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistic_swimming`
--

DROP TABLE IF EXISTS `artistic_swimming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistic_swimming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_id_idx` (`country_id`),
  CONSTRAINT `fk_countries_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistic_swimming`
--

LOCK TABLES `artistic_swimming` WRITE;
/*!40000 ALTER TABLE `artistic_swimming` DISABLE KEYS */;
INSERT INTO `artistic_swimming` VALUES (1,94,0,4,10,14),(2,155,10,0,0,10),(3,197,5,2,2,9),(4,35,3,4,1,8),(5,41,0,3,2,5),(6,174,0,3,1,4),(7,67,0,0,1,1);
/*!40000 ALTER TABLE `artistic_swimming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletics`
--

DROP TABLE IF EXISTS `athletics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athletics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletics`
--

LOCK TABLES `athletics` WRITE;
/*!40000 ALTER TABLE `athletics` DISABLE KEYS */;
INSERT INTO `athletics` VALUES (1,197,332,259,204,795),(2,73,55,80,70,205),(3,155,92,86,98,276),(4,66,48,36,30,114),(5,71,72,92,98,262),(6,97,30,37,26,93),(7,180,19,21,41,81),(8,93,22,35,20,77),(9,11,21,26,27,74),(10,67,14,26,29,69),(11,92,19,15,26,60),(12,35,14,15,31,60),(13,150,25,18,14,57),(14,64,22,10,21,53),(15,51,10,14,17,41),(16,84,10,12,18,40),(17,154,11,14,10,35),(18,74,7,12,11,30),(19,173,8,14,6,28),(20,41,8,7,12,27),(21,94,7,9,9,25),(22,53,16,10,12,38),(23,136,10,3,11,24),(24,140,7,5,8,20),(25,30,5,8,6,19),(26,129,6,5,8,19),(27,27,5,3,9,17),(28,195,2,2,13,17),(29,135,6,4,6,16),(30,189,3,4,10,17),(31,18,3,5,6,14),(32,174,3,5,6,14),(33,139,2,4,7,13),(34,14,5,2,5,12),(35,19,5,5,2,12),(36,123,3,6,2,11),(37,151,4,2,4,10),(38,3,4,3,2,9),(39,181,0,6,2,8),(40,12,1,2,4,7),(41,54,0,4,3,7),(42,90,4,2,1,7),(43,63,2,1,3,6),(44,8,2,3,0,6),(45,50,3,1,1,5),(46,105,0,4,1,5),(47,111,3,1,1,5),(48,190,2,2,1,5),(49,96,2,0,2,4),(50,132,0,4,0,4),(51,170,1,2,1,4),(52,15,1,1,1,3),(53,43,1,1,1,3),(54,57,2,1,0,3),(55,145,1,0,2,3),(56,153,0,1,2,3),(57,191,0,0,3,3),(58,194,2,0,1,3),(59,32,1,1,0,2),(60,34,2,0,0,2),(61,40,0,2,0,2),(62,42,0,1,1,2),(63,58,1,1,0,2),(64,75,1,1,0,2),(65,85,0,1,1,2),(66,86,0,2,0,2),(67,130,1,0,1,2),(68,149,0,0,2,2),(69,100,1,1,0,2),(70,175,0,2,0,2),(71,184,0,2,0,2),(72,201,0,1,1,2),(73,165,0,2,1,3),(74,17,0,0,1,1),(75,26,0,1,0,1),(76,55,0,0,1,1),(77,62,0,0,1,1),(78,77,0,1,0,1),(79,81,0,1,0,1),(80,88,0,1,0,1),(81,49,0,1,0,1),(82,112,1,0,0,1),(83,152,0,0,1,1),(84,163,0,1,0,1),(85,164,0,1,0,1),(86,169,1,0,0,1),(87,176,0,1,0,1),(88,182,1,0,0,1),(89,183,1,0,0,1),(90,205,0,1,0,1);
/*!40000 ALTER TABLE `athletics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badminton`
--

DROP TABLE IF EXISTS `badminton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badminton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badminton`
--

LOCK TABLES `badminton` WRITE;
/*!40000 ALTER TABLE `badminton` DISABLE KEYS */;
INSERT INTO `badminton` VALUES (1,41,18,8,15,41),(2,87,7,6,6,19),(3,100,6,7,6,19),(4,54,1,3,4,8),(5,116,0,6,2,8),(6,94,1,1,1,3),(7,73,0,1,2,3),(8,86,0,1,1,2),(9,174,1,0,0,1),(10,135,0,1,0,1),(11,155,0,0,1,1);
/*!40000 ALTER TABLE `badminton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basketball`
--

DROP TABLE IF EXISTS `basketball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketball`
--

LOCK TABLES `basketball` WRITE;
/*!40000 ALTER TABLE `basketball` DISABLE KEYS */;
INSERT INTO `basketball` VALUES (1,197,23,2,3,28),(2,155,5,4,7,16),(3,165,1,6,3,10),(4,174,0,4,1,5),(5,11,0,3,2,5),(6,27,0,1,4,5),(7,67,0,3,0,3),(8,111,0,0,3,3),(9,8,1,0,1,2),(10,92,0,2,0,2),(11,30,0,1,1,2),(12,41,0,1,1,2),(13,198,0,0,2,2),(14,35,0,1,0,1),(15,50,0,1,0,1),(16,100,0,1,0,1),(17,51,0,0,1,1),(18,123,0,0,1,1);
/*!40000 ALTER TABLE `basketball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beach_volleyball`
--

DROP TABLE IF EXISTS `beach_volleyball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beach_volleyball` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beach_volleyball`
--

LOCK TABLES `beach_volleyball` WRITE;
/*!40000 ALTER TABLE `beach_volleyball` DISABLE KEYS */;
INSERT INTO `beach_volleyball` VALUES (1,27,3,7,3,13),(2,197,6,2,2,10),(3,71,2,0,1,3),(4,11,1,0,1,2),(5,41,0,1,1,2),(6,92,0,1,0,1),(7,174,0,1,0,1),(8,35,0,0,1,1),(9,105,0,0,1,1),(10,135,0,0,1,1),(11,181,0,0,1,1);
/*!40000 ALTER TABLE `beach_volleyball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biathlon`
--

DROP TABLE IF EXISTS `biathlon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biathlon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biathlon`
--

LOCK TABLES `biathlon` WRITE;
/*!40000 ALTER TABLE `biathlon` DISABLE KEYS */;
INSERT INTO `biathlon` VALUES (1,71,23,27,18,68),(2,140,16,15,10,41),(3,67,9,5,12,26),(4,155,21,11,15,47),(5,180,5,3,6,14),(6,18,4,3,3,10),(7,169,3,3,1,7),(8,66,0,5,2,7),(9,53,0,4,3,7),(10,12,0,3,3,6),(11,92,0,1,5,6),(12,195,1,1,3,5),(13,35,2,0,1,3),(14,181,1,1,0,2),(15,30,1,0,1,2),(16,170,0,1,1,2),(17,96,0,1,0,1),(18,150,0,1,0,1),(19,50,0,0,1,1);
/*!40000 ALTER TABLE `biathlon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bobsleigh`
--

DROP TABLE IF EXISTS `bobsleigh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bobsleigh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bobsleigh`
--

LOCK TABLES `bobsleigh` WRITE;
/*!40000 ALTER TABLE `bobsleigh` DISABLE KEYS */;
INSERT INTO `bobsleigh` VALUES (1,181,10,10,11,31),(2,71,19,14,11,44),(3,197,7,10,8,25),(4,92,4,4,4,12),(5,35,5,2,2,9),(6,73,1,1,3,5),(7,12,1,2,0,3),(8,105,1,0,2,3),(9,155,1,1,3,5),(10,19,0,1,1,2),(11,100,0,1,0,1),(12,67,0,0,1,1),(13,154,0,0,1,1);
/*!40000 ALTER TABLE `bobsleigh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxing`
--

DROP TABLE IF EXISTS `boxing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxing`
--

LOCK TABLES `boxing` WRITE;
/*!40000 ALTER TABLE `boxing` DISABLE KEYS */;
INSERT INTO `boxing` VALUES (1,197,50,24,40,114),(2,51,37,19,17,73),(3,73,18,13,25,56),(4,155,24,25,34,83),(5,92,15,15,17,47),(6,150,8,9,26,43),(7,67,6,9,11,26),(8,154,1,9,15,25),(9,8,7,7,10,24),(10,71,11,14,23,48),(11,96,7,7,8,22),(12,84,10,2,8,20),(13,100,3,7,10,20),(14,173,6,4,9,19),(15,30,4,5,9,18),(16,35,3,7,7,17),(17,90,2,5,9,16),(18,66,2,1,12,15),(19,185,4,4,6,14),(20,195,4,3,7,14),(21,199,4,2,8,14),(22,123,2,3,8,13),(23,41,3,3,6,12),(24,54,1,5,6,12),(25,180,0,5,6,11),(26,165,3,2,6,11),(27,13,0,1,7,8),(28,99,2,3,3,8),(29,97,1,1,5,7),(30,127,1,2,4,7),(31,135,1,2,4,7),(32,3,1,0,5,6),(33,53,3,2,2,7),(34,139,0,3,3,6),(35,152,0,1,5,6),(36,201,1,2,3,6),(37,27,1,1,3,5),(38,43,0,1,4,5),(39,94,2,0,3,5),(40,140,1,2,2,5),(41,149,0,2,3,5),(42,191,0,2,3,5),(43,11,0,2,3,5),(44,19,1,1,2,4),(45,194,0,3,1,4),(46,174,0,2,2,4),(47,59,0,1,3,4),(48,129,0,0,4,4),(49,136,1,1,1,3),(50,40,0,1,2,3),(51,72,0,1,2,3),(52,57,1,0,1,2),(53,18,0,2,0,2),(54,34,0,1,1,2),(55,86,0,0,2,2),(56,125,0,0,2,2),(57,190,0,0,2,2),(58,63,0,1,0,1),(59,188,0,1,0,1),(60,9,0,0,1,1),(61,22,0,0,1,1),(62,50,0,0,1,1),(63,70,0,0,1,1),(64,80,0,0,1,1),(65,111,0,0,1,1),(66,122,0,0,1,1),(67,138,0,0,1,1),(68,142,0,0,1,1),(69,182,0,0,1,1),(70,183,0,0,1,1),(71,198,0,0,1,1),(72,205,0,0,1,1);
/*!40000 ALTER TABLE `boxing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canoeing`
--

DROP TABLE IF EXISTS `canoeing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canoeing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canoeing`
--

LOCK TABLES `canoeing` WRITE;
/*!40000 ALTER TABLE `canoeing` DISABLE KEYS */;
INSERT INTO `canoeing` VALUES (1,84,25,29,26,80),(2,71,52,36,34,122),(3,155,32,17,17,66),(4,67,8,9,19,36),(5,154,10,10,14,34),(6,180,15,11,4,30),(7,11,3,8,13,24),(8,35,4,10,10,24),(9,150,0,7,13,20),(10,169,8,6,4,18),(11,30,4,5,8,17),(12,73,5,7,5,17),(13,92,6,6,4,16),(14,174,5,7,4,16),(15,197,5,5,6,16),(16,12,3,5,6,14),(17,53,11,9,6,26),(18,54,3,6,5,14),(19,140,6,4,4,14),(20,136,7,3,2,12),(21,66,5,2,3,10),(22,18,2,2,4,8),(23,135,0,3,5,8),(24,195,3,2,3,8),(25,165,2,3,1,6),(26,27,0,2,1,3),(27,51,0,3,0,3),(28,13,0,1,1,2),(29,41,2,0,0,2),(30,105,0,2,0,2),(31,111,0,1,1,2),(32,170,0,2,0,2),(33,91,0,0,1,1),(34,94,0,0,1,1),(35,125,0,1,0,1),(36,151,0,1,0,1),(37,173,0,0,1,1),(38,181,0,1,0,1),(39,187,0,0,1,1);
/*!40000 ALTER TABLE `canoeing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Afghanistan.svg/150px-Flag_of_Afghanistan.svg.png','Afghanistan'),(2,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Albania.svg/140px-Flag_of_Albania.svg.png','Albania'),(3,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/150px-Flag_of_Algeria.svg.png','Algeria'),(4,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Flag_of_American_Samoa.svg/220px-Flag_of_American_Samoa.svg.png','American Samoa'),(5,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Andorra.svg/143px-Flag_of_Andorra.svg.png','Andorra'),(6,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/150px-Flag_of_Angola.svg.png','Angola'),(7,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Antigua_and_Barbuda.svg/150px-Flag_of_Antigua_and_Barbuda.svg.png','Antigua and Barbuda'),(8,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/160px-Flag_of_Argentina.svg.png','Argentina'),(9,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Flag_of_Armenia.svg/180px-Flag_of_Armenia.svg.png','Armenia'),(10,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Aruba.svg/220px-Flag_of_Aruba.svg.png','Aruba'),(11,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/180px-Flag_of_Australia_%28converted%29.svg.png','Australia'),(12,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_Austria.svg/255px-Flag_of_Austria.svg.png','Austria'),(13,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/180px-Flag_of_Azerbaijan.svg.png','Azerbaijan'),(14,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_the_Bahamas.svg/180px-Flag_of_the_Bahamas.svg.png','Bahamas'),(15,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Bahrain.svg/167px-Flag_of_Bahrain.svg.png','Bahrain'),(16,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/167px-Flag_of_Bangladesh.svg.png','Bangladesh'),(17,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Barbados.svg/150px-Flag_of_Barbados.svg.png','Barbados'),(18,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Flag_of_Belarus.svg/180px-Flag_of_Belarus.svg.png','Belarus'),(19,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/196px-Flag_of_Belgium.svg.png','Belgium'),(20,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Flag_of_Belize.svg/150px-Flag_of_Belize.svg.png','Belize'),(21,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Benin.svg/150px-Flag_of_Benin.svg.png','Benin'),(22,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bermuda.svg/220px-Flag_of_Bermuda.svg.png','Bermuda'),(23,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Flag_of_Bhutan.svg/255px-Flag_of_Bhutan.svg.png','Bhutan'),(24,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Bolivia.svg/147px-Flag_of_Bolivia.svg.png','Bolivia'),(25,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/180px-Flag_of_Bosnia_and_Herzegovina.svg.png','Bosnia and Herzegovina'),(26,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_Botswana.svg/255px-Flag_of_Botswana.svg.png','Botswana'),(27,'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/143px-Flag_of_Brazil.svg.png','Brazil'),(28,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Flag_of_the_British_Virgin_Islands.svg/220px-Flag_of_the_British_Virgin_Islands.svg.png','British Virgin Islands'),(29,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Brunei.svg/180px-Flag_of_Brunei.svg.png','Brunei'),(30,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Bulgaria.svg/167px-Flag_of_Bulgaria.svg.png','Bulgaria'),(31,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Burkina_Faso.svg/255px-Flag_of_Burkina_Faso.svg.png','Burkina Faso'),(32,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Flag_of_Burundi.svg/167px-Flag_of_Burundi.svg.png','Burundi'),(33,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_Cambodia.svg/157px-Flag_of_Cambodia.svg.png','Cambodia'),(34,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/150px-Flag_of_Cameroon.svg.png','Cameroon'),(35,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/180px-Flag_of_Canada_%28Pantone%29.svg.png','Canada'),(36,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Cape_Verde.svg/170px-Flag_of_Cape_Verde.svg.png','Cape Verde'),(37,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_the_Cayman_Islands.svg/220px-Flag_of_the_Cayman_Islands.svg.png','Cayman Islands'),(38,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Flag_of_the_Central_African_Republic.svg/150px-Flag_of_the_Central_African_Republic.svg.png','Central African Republic'),(39,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Flag_of_Chad.svg/150px-Flag_of_Chad.svg.png','Chad'),(40,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/150px-Flag_of_Chile.svg.png','Chile'),(41,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/255px-Flag_of_the_People%27s_Republic_of_China.svg.png','China'),(42,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Flag_of_Chinese_Taipei_for_Olympic_games.svg/220px-Flag_of_Chinese_Taipei_for_Olympic_games.svg.png','Chinese Taipei'),(43,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/150px-Flag_of_Colombia.svg.png','Colombia'),(44,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Flag_of_the_Comoros.svg/167px-Flag_of_the_Comoros.svg.png','Comoros'),(45,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_the_Republic_of_the_Congo.svg/255px-Flag_of_the_Republic_of_the_Congo.svg.png','Republic of the Congo'),(46,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg/133px-Flag_of_the_Democratic_Republic_of_the_Congo.svg.png','Democratic Replublic of the Congo'),(47,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Flag_of_the_Cook_Islands.svg/180px-Flag_of_the_Cook_Islands.svg.png','Cook Islands'),(48,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Costa_Rica.svg/167px-Flag_of_Costa_Rica.svg.png','Costa Rica'),(49,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg/150px-Flag_of_C%C3%B4te_d%27Ivoire.svg.png','Ivory Coast'),(50,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/180px-Flag_of_Croatia.svg.png','Croatia'),(51,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Flag_of_Cuba.svg/180px-Flag_of_Cuba.svg.png','Cuba'),(52,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Cyprus.svg/255px-Flag_of_Cyprus.svg.png','Cyprus'),(53,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_Czech_Republic.svg/255px-Flag_of_the_Czech_Republic.svg.png','Czech Republic'),(54,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/132px-Flag_of_Denmark.svg.png','Denmark'),(55,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_Djibouti.svg/150px-Flag_of_Djibouti.svg.png','Djibouti'),(56,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Flag_of_Dominica.svg/180px-Flag_of_Dominica.svg.png','Dominica'),(57,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_the_Dominican_Republic.svg/150px-Flag_of_the_Dominican_Republic.svg.png','Dominican Republic'),(58,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Flag_of_Ecuador.svg/255px-Flag_of_Ecuador.svg.png','Ecuador'),(59,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/150px-Flag_of_Egypt.svg.png','Egypt'),(60,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_El_Salvador.svg/167px-Flag_of_El_Salvador.svg.png','El Salvador'),(61,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Equatorial_Guinea.svg/150px-Flag_of_Equatorial_Guinea.svg.png','Equatorial Guinea'),(62,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Flag_of_Eritrea.svg/180px-Flag_of_Eritrea.svg.png','Eritrea'),(63,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Flag_of_Estonia.svg/157px-Flag_of_Estonia.svg.png','Estonia'),(64,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/180px-Flag_of_Ethiopia.svg.png','Ethiopia'),(65,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/180px-Flag_of_Fiji.svg.png','Fiji'),(66,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/164px-Flag_of_Finland.svg.png','Finland'),(67,'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/150px-Flag_of_France.svg.png','France'),(68,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Flag_of_Gabon.svg/133px-Flag_of_Gabon.svg.png','Gabon'),(69,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_The_Gambia.svg/150px-Flag_of_The_Gambia.svg.png','Gambia'),(70,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/150px-Flag_of_Georgia.svg.png','Georgia'),(71,'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/167px-Flag_of_Germany.svg.png','Germany'),(72,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/255px-Flag_of_Ghana.svg.png','Ghana'),(73,'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/180px-Flag_of_the_United_Kingdom.svg.png','Great Britain'),(74,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/255px-Flag_of_Greece.svg.png','Greece'),(75,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Grenada.svg/167px-Flag_of_Grenada.svg.png','Grenada'),(76,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Flag_of_Guam.svg/220px-Flag_of_Guam.svg.png','Guam'),(77,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Flag_of_Guatemala.svg/160px-Flag_of_Guatemala.svg.png','Guatemala'),(78,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Flag_of_Guinea.svg/255px-Flag_of_Guinea.svg.png','Guinea'),(79,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Guinea-Bissau.svg/180px-Flag_of_Guinea-Bissau.svg.png','Guinea-Bissau'),(80,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_Guyana.svg/167px-Flag_of_Guyana.svg.png','Guyana'),(81,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Haiti.svg/167px-Flag_of_Haiti.svg.png','Haiti'),(82,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Flag_of_Honduras.svg/180px-Flag_of_Honduras.svg.png','Honduras'),(83,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Flag_of_Hong_Kong.svg/220px-Flag_of_Hong_Kong.svg.png','Hong Kong'),(84,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/180px-Flag_of_Hungary.svg.png','Hungary'),(85,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/139px-Flag_of_Iceland.svg.png','Iceland'),(86,'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/150px-Flag_of_India.svg.png','India'),(87,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/150px-Flag_of_Indonesia.svg.png','Indonesia'),(88,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Flag_of_Iran.svg/175px-Flag_of_Iran.svg.png','Iran'),(89,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/150px-Flag_of_Iraq.svg.png','Iraq'),(90,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/180px-Flag_of_Ireland.svg.png','Ireland'),(91,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/138px-Flag_of_Israel.svg.png','Israel'),(92,'https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/150px-Flag_of_Italy.svg.png','Italy'),(93,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/180px-Flag_of_Jamaica.svg.png','Jamaica'),(94,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/150px-Flag_of_Japan.svg.png','Japan'),(95,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/180px-Flag_of_Jordan.svg.png','Jordan'),(96,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kazakhstan.svg/180px-Flag_of_Kazakhstan.svg.png','Kazakhstan'),(97,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/255px-Flag_of_Kenya.svg.png','Kenya'),(98,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kiribati.svg/180px-Flag_of_Kiribati.svg.png','Kiribati'),(99,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/180px-Flag_of_North_Korea.svg.png','North Korea'),(100,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/255px-Flag_of_South_Korea.svg.png','South Korea'),(101,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Flag_of_Kosovo.svg/140px-Flag_of_Kosovo.svg.png','Kosovo'),(102,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flag_of_Kuwait.svg/180px-Flag_of_Kuwait.svg.png','Kuwait'),(103,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/167px-Flag_of_Kyrgyzstan.svg.png','Kyrgyzstan'),(104,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/255px-Flag_of_Laos.svg.png','Laos'),(105,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Flag_of_Latvia.svg/180px-Flag_of_Latvia.svg.png','Latvia'),(106,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Flag_of_Lebanon.svg/150px-Flag_of_Lebanon.svg.png','Lebanon'),(107,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Flag_of_Lesotho.svg/255px-Flag_of_Lesotho.svg.png','Lesotho'),(108,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Flag_of_Liberia.svg/180px-Flag_of_Liberia.svg.png','Liberia'),(109,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Libya.svg/180px-Flag_of_Libya.svg.png','Libya'),(110,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Flag_of_Liechtenstein.svg/167px-Flag_of_Liechtenstein.svg.png','Liechtenstein'),(111,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Lithuania.svg/167px-Flag_of_Lithuania.svg.png','Lithuania'),(112,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Luxembourg.svg/167px-Flag_of_Luxembourg.svg.png','Luxembourg'),(113,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_North_Macedonia.svg/180px-Flag_of_North_Macedonia.svg.png','North Macedonia'),(114,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Madagascar.svg/255px-Flag_of_Madagascar.svg.png','Madagascar'),(115,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Flag_of_Malawi.svg/150px-Flag_of_Malawi.svg.png','Malawi'),(116,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/180px-Flag_of_Malaysia.svg.png','Malaysia'),(117,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Maldives.svg/150px-Flag_of_Maldives.svg.png','Maldives'),(118,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_Mali.svg/150px-Flag_of_Mali.svg.png','Mali'),(119,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Malta.svg/255px-Flag_of_Malta.svg.png','Malta'),(120,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flag_of_the_Marshall_Islands.svg/180px-Flag_of_the_Marshall_Islands.svg.png','Marshall Islands'),(121,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Flag_of_Mauritania.svg/150px-Flag_of_Mauritania.svg.png','Mauritania'),(122,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Mauritius.svg/150px-Flag_of_Mauritius.svg.png','Mauritius'),(123,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/175px-Flag_of_Mexico.svg.png','Mexico'),(124,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Flag_of_the_Federated_States_of_Micronesia.svg/180px-Flag_of_the_Federated_States_of_Micronesia.svg.png','Federated States of Micronesia'),(125,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Flag_of_Moldova.svg/180px-Flag_of_Moldova.svg.png','Moldova'),(126,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Flag_of_Monaco.svg/125px-Flag_of_Monaco.svg.png','Monaco'),(127,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Mongolia.svg/180px-Flag_of_Mongolia.svg.png','Mongolia'),(128,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_Montenegro.svg/180px-Flag_of_Montenegro.svg.png','Montenegro'),(129,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/255px-Flag_of_Morocco.svg.png','Morocco'),(130,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Flag_of_Mozambique.svg/150px-Flag_of_Mozambique.svg.png','Mozambique'),(131,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Flag_of_Myanmar.svg/150px-Flag_of_Myanmar.svg.png','Myanmar'),(132,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Namibia.svg/255px-Flag_of_Namibia.svg.png','Namibia'),(133,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Flag_of_Nauru.svg/180px-Flag_of_Nauru.svg.png','Nauru'),(134,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Flag_of_Nepal.svg/82px-Flag_of_Nepal.svg.png','Nepal'),(135,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/255px-Flag_of_the_Netherlands.svg.png','Netherlands'),(136,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/180px-Flag_of_New_Zealand.svg.png','New Zealand'),(137,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Nicaragua.svg/167px-Flag_of_Nicaragua.svg.png','Nicaragua'),(138,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Flag_of_Niger.svg/117px-Flag_of_Niger.svg.png','Niger'),(139,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/180px-Flag_of_Nigeria.svg.png','Nigeria'),(140,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Norway.svg/138px-Flag_of_Norway.svg.png','Norway'),(141,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Oman.svg/180px-Flag_of_Oman.svg.png','Oman'),(142,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/255px-Flag_of_Pakistan.svg.png','Pakistan'),(143,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Palau.svg/160px-Flag_of_Palau.svg.png','Palau'),(144,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Palestine.svg/180px-Flag_of_Palestine.svg.png','Palestine'),(145,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/150px-Flag_of_Panama.svg.png','Panama'),(146,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Flag_of_Papua_New_Guinea.svg/133px-Flag_of_Papua_New_Guinea.svg.png','Papua New Guinea'),(147,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Flag_of_Paraguay.svg/180px-Flag_of_Paraguay.svg.png','Paraguay'),(148,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_Peru_%28state%29.svg/255px-Flag_of_Peru_%28state%29.svg.png','Peru'),(149,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/180px-Flag_of_the_Philippines.svg.png','Philippines'),(150,'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Flag_of_Poland.svg/160px-Flag_of_Poland.svg.png','Poland'),(151,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/150px-Flag_of_Portugal.svg.png','Portugal'),(152,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_Puerto_Rico.svg/220px-Flag_of_Puerto_Rico.svg.png','Puerto Rico'),(153,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Qatar.svg/180px-Flag_of_Qatar.svg.png','Qatar'),(154,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Romania.svg/255px-Flag_of_Romania.svg.png','Romania'),(155,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/150px-Flag_of_Russia.svg.png','Russia'),(156,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Flag_of_Rwanda.svg/255px-Flag_of_Rwanda.svg.png','Rwanda'),(157,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Saint_Kitts_and_Nevis.svg/255px-Flag_of_Saint_Kitts_and_Nevis.svg.png','Saint Kitts and Nevis'),(158,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Saint_Lucia.svg/180px-Flag_of_Saint_Lucia.svg.png','Saint Lucia'),(159,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Flag_of_Saint_Vincent_and_the_Grenadines.svg/150px-Flag_of_Saint_Vincent_and_the_Grenadines.svg.png','Saint Vincent and the Grenadines'),(160,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Samoa.svg/180px-Flag_of_Samoa.svg.png','Samoa'),(161,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Flag_of_San_Marino.svg/133px-Flag_of_San_Marino.svg.png','San Marino'),(162,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Sao_Tome_and_Principe.svg/180px-Flag_of_Sao_Tome_and_Principe.svg.png','São Tomé and Príncipe'),(163,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/150px-Flag_of_Saudi_Arabia.svg.png','Saudi Arabia'),(164,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Flag_of_Senegal.svg/255px-Flag_of_Senegal.svg.png','Senegal'),(165,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Flag_of_Serbia.svg/150px-Flag_of_Serbia.svg.png','Serbia'),(166,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Seychelles.svg/180px-Flag_of_Seychelles.svg.png','Seychelles'),(167,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Flag_of_Sierra_Leone.svg/150px-Flag_of_Sierra_Leone.svg.png','Sierra Leone'),(168,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/150px-Flag_of_Singapore.svg.png','Singapore'),(169,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Flag_of_Slovakia.svg/255px-Flag_of_Slovakia.svg.png','Slovakia'),(170,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Slovenia.svg/180px-Flag_of_Slovenia.svg.png','Slovenia'),(171,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Flag_of_the_Solomon_Islands.svg/180px-Flag_of_the_Solomon_Islands.svg.png','Solomon Islands'),(172,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Flag_of_Somalia.svg/150px-Flag_of_Somalia.svg.png','Somalia'),(173,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/255px-Flag_of_South_Africa.svg.png','South Africa'),(174,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/150px-Flag_of_Spain.svg.png','Spain'),(175,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Sri_Lanka.svg/180px-Flag_of_Sri_Lanka.svg.png','Sri Lanka'),(176,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Sudan.svg/180px-Flag_of_Sudan.svg.png','Sudan'),(177,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Flag_of_South_Sudan.svg/180px-Flag_of_South_Sudan.svg.png','South Sudan'),(178,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Flag_of_Suriname.svg/150px-Flag_of_Suriname.svg.png','Suriname'),(179,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Flag_of_Eswatini.svg/150px-Flag_of_Eswatini.svg.png','Swaziland'),(180,'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Flag_of_Sweden.svg/160px-Flag_of_Sweden.svg.png','Sweden'),(181,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/170px-Flag_of_Switzerland.svg.png','Switzerland'),(182,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Flag_of_Syria.svg/150px-Flag_of_Syria.svg.png','Syria'),(183,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Flag_of_Tajikistan.svg/180px-Flag_of_Tajikistan.svg.png','Tajikistan'),(184,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tanzania.svg/255px-Flag_of_Tanzania.svg.png','Tanzania'),(185,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/150px-Flag_of_Thailand.svg.png','Thailand'),(186,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Flag_of_East_Timor.svg/180px-Flag_of_East_Timor.svg.png','East Timor'),(187,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Flag_of_Togo.svg/162px-Flag_of_Togo.svg.png','Togo'),(188,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Tonga.svg/180px-Flag_of_Tonga.svg.png','Tonga'),(189,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_Trinidad_and_Tobago.svg/167px-Flag_of_Trinidad_and_Tobago.svg.png','Trinidad and Tobago'),(190,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Tunisia.svg/150px-Flag_of_Tunisia.svg.png','Tunisia'),(191,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/220px-Flag_of_Turkey.svg.png','Turkey'),(192,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Turkmenistan.svg/150px-Flag_of_Turkmenistan.svg.png','Turkmenistan'),(193,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tuvalu.svg/180px-Flag_of_Tuvalu.svg.png','Tuvalu'),(194,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Flag_of_Uganda.svg/150px-Flag_of_Uganda.svg.png','Uganda'),(195,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/255px-Flag_of_Ukraine.svg.png','Ukraine'),(196,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/180px-Flag_of_the_United_Arab_Emirates.svg.png','United Arab Emirates'),(197,'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/180px-Flag_of_the_United_States.svg.png','United States'),(198,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Uruguay.svg/255px-Flag_of_Uruguay.svg.png','Uruguay'),(199,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Flag_of_Uzbekistan.svg/180px-Flag_of_Uzbekistan.svg.png','Uzbekistan'),(200,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Vanuatu.svg/167px-Flag_of_Vanuatu.svg.png','Vanuatu'),(201,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Venezuela.svg/150px-Flag_of_Venezuela.svg.png','Venezuela'),(202,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/255px-Flag_of_Vietnam.svg.png','Vietnam'),(203,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Flag_of_the_United_States_Virgin_Islands.svg/220px-Flag_of_the_United_States_Virgin_Islands.svg.png','Virgin Islands'),(204,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Yemen.svg/150px-Flag_of_Yemen.svg.png','Yemen'),(205,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Zambia.svg/150px-Flag_of_Zambia.svg.png','Zambia'),(206,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/180px-Flag_of_Zimbabwe.svg.png','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cross_country_skiing`
--

DROP TABLE IF EXISTS `cross_country_skiing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cross_country_skiing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cross_country_skiing`
--

LOCK TABLES `cross_country_skiing` WRITE;
/*!40000 ALTER TABLE `cross_country_skiing` DISABLE KEYS */;
INSERT INTO `cross_country_skiing` VALUES (1,140,47,42,32,121),(2,180,31,25,24,80),(3,66,21,25,34,80),(4,155,42,37,39,118),(5,92,9,13,13,35),(6,71,4,10,5,19),(7,53,1,6,7,14),(8,181,4,0,4,8),(9,63,4,2,1,7),(10,150,2,1,2,5),(11,12,1,2,2,5),(12,96,1,2,1,4),(13,67,0,1,3,4),(14,35,2,1,0,3),(15,197,1,1,0,2),(16,170,0,0,2,2),(17,30,0,0,1,1);
/*!40000 ALTER TABLE `cross_country_skiing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curling`
--

DROP TABLE IF EXISTS `curling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curling`
--

LOCK TABLES `curling` WRITE;
/*!40000 ALTER TABLE `curling` DISABLE KEYS */;
INSERT INTO `curling` VALUES (1,35,6,3,2,11),(2,180,3,3,2,8),(3,181,1,3,3,7),(4,73,2,1,1,4),(5,140,1,1,2,4),(6,197,1,0,1,2),(7,54,0,1,0,1),(8,66,0,1,0,1),(9,100,0,1,0,1),(10,41,0,0,1,1),(11,67,0,0,1,1),(12,94,0,0,1,1);
/*!40000 ALTER TABLE `curling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycling`
--

DROP TABLE IF EXISTS `cycling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cycling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycling`
--

LOCK TABLES `cycling` WRITE;
/*!40000 ALTER TABLE `cycling` DISABLE KEYS */;
INSERT INTO `cycling` VALUES (1,67,41,27,23,91),(2,73,32,30,25,87),(3,92,33,16,10,59),(4,197,16,21,18,55),(5,11,14,19,18,51),(6,135,18,19,12,49),(7,71,25,29,27,81),(8,54,7,9,10,26),(9,19,7,7,11,25),(10,155,16,9,20,45),(11,181,5,8,6,19),(12,180,4,5,8,17),(13,174,5,5,5,15),(14,35,1,5,8,14),(15,150,0,7,4,11),(16,173,1,4,3,8),(17,136,1,3,4,8),(18,41,1,3,3,7),(19,43,2,1,3,6),(20,53,3,3,2,8),(21,74,1,3,0,4),(22,94,0,1,3,4),(23,140,2,0,2,4),(24,12,1,0,2,3),(25,105,2,0,1,3),(26,195,0,1,2,3),(27,96,1,1,0,2),(28,123,0,1,1,2),(29,8,1,0,0,1),(30,18,0,0,1,1),(31,51,0,1,0,1),(32,63,1,0,0,1),(33,83,0,0,1,1),(34,93,0,0,1,1),(35,111,0,0,1,1),(36,116,0,0,1,1),(37,151,0,1,0,1),(38,198,0,1,0,1),(39,201,0,0,1,1);
/*!40000 ALTER TABLE `cycling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diving`
--

DROP TABLE IF EXISTS `diving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diving`
--

LOCK TABLES `diving` WRITE;
/*!40000 ALTER TABLE `diving` DISABLE KEYS */;
INSERT INTO `diving` VALUES (1,197,49,44,45,138),(2,41,40,19,10,69),(3,180,6,8,7,21),(4,71,7,11,14,32),(5,155,8,14,13,35),(6,123,1,7,6,14),(7,11,3,3,7,13),(8,35,1,4,8,13),(9,92,3,5,3,11),(10,73,1,3,6,10),(11,53,1,1,0,2),(12,54,1,0,1,2),(13,59,0,1,1,2),(14,116,0,1,1,2),(15,195,0,0,2,2),(16,74,1,0,0,1),(17,67,0,1,0,1);
/*!40000 ALTER TABLE `diving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equestrian`
--

DROP TABLE IF EXISTS `equestrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equestrian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equestrian`
--

LOCK TABLES `equestrian` WRITE;
/*!40000 ALTER TABLE `equestrian` DISABLE KEYS */;
INSERT INTO `equestrian` VALUES (1,71,41,23,27,91),(2,197,11,21,20,52),(3,180,17,12,14,43),(4,67,14,13,10,37),(5,73,11,11,13,35),(6,135,10,13,3,26),(7,92,7,9,7,23),(8,181,5,10,8,23),(9,155,6,5,4,15),(10,11,6,3,3,12),(11,19,4,2,6,12),(12,136,3,2,4,9),(13,35,2,2,3,7),(14,123,2,1,4,7),(15,150,1,3,2,6),(16,54,0,4,2,6),(17,174,1,2,1,4),(18,12,1,1,1,3),(19,27,1,0,2,3),(20,151,0,0,3,3),(21,40,0,2,0,2),(22,154,0,1,1,2),(23,163,0,0,2,2),(24,8,0,1,0,1),(25,30,0,1,0,1),(26,53,1,0,0,1),(27,84,0,0,1,1),(28,90,0,0,1,1),(29,94,1,0,0,1),(30,140,0,1,0,1);
/*!40000 ALTER TABLE `equestrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fencing`
--

DROP TABLE IF EXISTS `fencing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fencing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fencing`
--

LOCK TABLES `fencing` WRITE;
/*!40000 ALTER TABLE `fencing` DISABLE KEYS */;
INSERT INTO `fencing` VALUES (1,92,49,43,33,125),(2,67,42,41,35,118),(3,84,37,23,27,87),(4,155,32,22,26,80),(5,71,14,18,14,46),(6,197,2,9,14,25),(7,150,4,9,9,22),(8,51,5,5,6,16),(9,154,4,5,7,16),(10,41,4,7,3,14),(11,100,4,2,5,11),(12,19,3,3,4,10),(13,73,1,8,0,9),(14,181,1,4,3,8),(15,12,1,1,5,7),(16,180,2,3,2,7),(17,54,1,2,3,6),(18,195,2,1,3,6),(19,135,0,0,5,5),(20,74,2,1,1,4),(21,94,0,2,0,2),(22,53,0,0,2,2),(23,201,1,0,0,1),(24,59,0,1,0,1),(25,123,0,1,0,1),(26,140,0,1,0,1),(27,8,0,0,1,1),(28,151,0,0,1,1),(29,174,0,0,1,1),(30,190,0,0,1,1);
/*!40000 ALTER TABLE `fencing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_hockey`
--

DROP TABLE IF EXISTS `field_hockey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_hockey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_hockey`
--

LOCK TABLES `field_hockey` WRITE;
/*!40000 ALTER TABLE `field_hockey` DISABLE KEYS */;
INSERT INTO `field_hockey` VALUES (1,135,5,6,6,17),(2,11,4,3,5,12),(3,73,4,2,6,12),(4,86,8,1,2,11),(5,71,5,5,5,15),(6,142,3,3,2,8),(7,8,1,2,2,5),(8,174,1,3,1,5),(9,100,0,3,0,3),(10,19,0,1,1,2),(11,155,0,0,2,2),(12,197,0,0,2,2),(13,41,0,1,0,1),(14,53,0,1,0,1),(15,54,0,1,0,1),(16,94,0,1,0,1),(17,136,1,0,0,1),(18,206,1,0,0,1);
/*!40000 ALTER TABLE `field_hockey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `figure_skating`
--

DROP TABLE IF EXISTS `figure_skating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `figure_skating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `figure_skating`
--

LOCK TABLES `figure_skating` WRITE;
/*!40000 ALTER TABLE `figure_skating` DISABLE KEYS */;
INSERT INTO `figure_skating` VALUES (1,197,15,16,20,51),(2,35,6,11,12,29),(3,155,29,21,9,59),(4,12,7,9,4,20),(5,73,5,3,7,15),(6,67,3,3,7,13),(7,180,5,3,2,10),(8,71,8,7,9,24),(9,41,1,3,4,8),(10,94,3,3,1,7),(11,140,3,2,1,6),(12,84,0,2,4,6),(13,53,1,1,3,5),(14,135,1,2,0,3),(15,181,0,2,1,3),(16,66,1,1,0,2),(17,100,1,1,0,2),(18,19,1,0,1,2),(19,195,1,0,1,2),(20,92,0,0,2,2),(21,96,0,0,1,1),(22,174,0,0,1,1);
/*!40000 ALTER TABLE `figure_skating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `football`
--

DROP TABLE IF EXISTS `football`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `football` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `football`
--

LOCK TABLES `football` WRITE;
/*!40000 ALTER TABLE `football` DISABLE KEYS */;
INSERT INTO `football` VALUES (1,27,1,5,2,8),(2,197,4,2,1,7),(3,84,3,1,1,5),(4,71,2,2,6,10),(5,155,2,0,3,5),(6,165,1,3,1,5),(7,8,2,2,0,4),(8,54,0,3,1,4),(9,180,1,1,2,4),(10,35,1,0,2,3),(11,73,3,0,0,3),(12,92,1,0,2,3),(13,135,0,0,3,3),(14,139,1,1,1,3),(15,140,1,0,2,3),(16,150,1,2,0,3),(17,174,1,2,0,3),(18,19,1,0,1,2),(19,30,0,1,1,2),(20,53,1,1,0,2),(21,67,1,1,0,2),(22,94,0,1,1,2),(23,198,2,0,0,2),(24,12,0,1,0,1),(25,34,1,0,0,1),(26,40,0,0,1,1),(27,41,0,1,0,1),(28,72,0,0,1,1),(29,123,1,0,0,1),(30,147,0,1,0,1),(31,100,0,0,1,1),(32,181,0,1,0,1);
/*!40000 ALTER TABLE `football` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freestyle_skiing`
--

DROP TABLE IF EXISTS `freestyle_skiing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freestyle_skiing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freestyle_skiing`
--

LOCK TABLES `freestyle_skiing` WRITE;
/*!40000 ALTER TABLE `freestyle_skiing` DISABLE KEYS */;
INSERT INTO `freestyle_skiing` VALUES (1,35,12,9,4,25),(2,197,9,9,7,25),(3,67,3,5,6,14),(4,41,1,6,4,11),(5,140,3,2,4,9),(6,181,4,2,2,8),(7,11,3,3,2,8),(8,18,4,1,2,7),(9,66,1,2,1,4),(10,94,1,0,3,4),(11,155,0,2,5,7),(12,180,0,1,1,2),(13,53,1,0,0,1),(14,195,1,0,0,1),(15,199,1,0,0,1),(16,12,0,1,0,1),(17,71,0,1,0,1),(18,73,0,0,1,1),(19,96,0,0,1,1),(20,136,0,0,1,1);
/*!40000 ALTER TABLE `freestyle_skiing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golf`
--

DROP TABLE IF EXISTS `golf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golf`
--

LOCK TABLES `golf` WRITE;
/*!40000 ALTER TABLE `golf` DISABLE KEYS */;
INSERT INTO `golf` VALUES (1,197,3,3,5,11),(2,73,1,1,1,3),(3,35,1,0,0,1),(4,100,1,0,0,1),(5,136,0,1,0,1),(6,180,0,1,0,1),(7,41,0,0,1,1);
/*!40000 ALTER TABLE `golf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gymnastics`
--

DROP TABLE IF EXISTS `gymnastics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gymnastics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gymnastics`
--

LOCK TABLES `gymnastics` WRITE;
/*!40000 ALTER TABLE `gymnastics` DISABLE KEYS */;
INSERT INTO `gymnastics` VALUES (1,155,105,93,70,268),(2,197,37,42,35,114),(3,94,31,33,34,98),(4,41,29,21,23,73),(5,154,25,21,26,72),(6,181,16,19,14,49),(7,84,15,11,14,40),(8,71,21,25,34,80),(9,53,12,13,10,35),(10,92,14,6,10,30),(11,66,8,5,12,25),(12,67,3,10,9,22),(13,195,7,4,8,19),(14,73,2,4,9,15),(15,30,2,4,8,14),(16,18,1,4,6,11),(17,74,5,3,3,11),(18,165,5,2,4,11),(19,35,4,3,2,9),(20,100,1,4,4,9),(21,180,5,2,1,8),(22,174,3,3,1,7),(23,27,1,2,1,4),(24,54,1,2,1,4),(25,140,1,2,1,4),(26,150,1,1,2,4),(27,135,3,0,0,3),(28,99,3,0,0,3),(29,19,0,1,1,2),(30,105,1,1,0,2),(31,199,0,0,2,2),(32,11,0,1,0,1),(33,50,0,1,0,1);
/*!40000 ALTER TABLE `gymnastics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handball`
--

DROP TABLE IF EXISTS `handball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handball` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handball`
--

LOCK TABLES `handball` WRITE;
/*!40000 ALTER TABLE `handball` DISABLE KEYS */;
INSERT INTO `handball` VALUES (1,100,2,4,1,7),(2,155,7,2,3,12),(3,140,2,2,2,6),(4,165,3,1,1,5),(5,67,2,2,1,5),(6,54,4,0,0,4),(7,71,2,3,2,7),(8,154,0,1,3,4),(9,174,0,0,4,4),(10,180,0,4,0,4),(11,50,2,0,1,3),(12,84,0,1,2,3),(13,12,0,1,0,1),(14,41,0,0,1,1),(15,53,0,1,0,1),(16,85,0,1,0,1),(17,128,0,1,0,1),(18,150,0,0,1,1),(19,181,0,0,1,1),(20,195,0,0,1,1);
/*!40000 ALTER TABLE `handball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_hockey`
--

DROP TABLE IF EXISTS `ice_hockey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_hockey`
--

LOCK TABLES `ice_hockey` WRITE;
/*!40000 ALTER TABLE `ice_hockey` DISABLE KEYS */;
INSERT INTO `ice_hockey` VALUES (1,35,13,6,3,22),(2,197,4,11,2,17),(3,180,2,4,5,11),(4,155,9,2,2,13),(5,66,0,2,7,9),(6,53,1,4,5,10),(7,181,0,0,3,3),(8,73,1,0,1,2),(9,71,0,1,2,3);
/*!40000 ALTER TABLE `ice_hockey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judo`
--

DROP TABLE IF EXISTS `judo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judo`
--

LOCK TABLES `judo` WRITE;
/*!40000 ALTER TABLE `judo` DISABLE KEYS */;
INSERT INTO `judo` VALUES (1,94,39,19,26,84),(2,67,14,10,25,49),(3,100,11,16,16,43),(4,51,6,14,16,36),(5,155,12,9,22,43),(6,135,4,2,17,23),(7,41,8,3,11,22),(8,27,4,3,15,22),(9,73,0,8,11,19),(10,71,5,9,23,37),(11,92,4,4,7,15),(12,197,2,4,8,14),(13,19,2,1,9,12),(14,84,1,3,5,9),(15,150,3,3,2,8),(16,70,3,2,3,8),(17,99,2,2,4,8),(18,127,1,3,4,8),(19,174,3,1,2,6),(20,154,1,2,3,6),(21,199,0,2,4,6),(22,12,2,2,1,5),(23,170,2,0,3,5),(24,35,0,2,3,5),(25,91,0,1,4,5),(26,13,1,2,1,4),(27,181,1,1,2,4),(28,96,0,2,1,3),(29,30,0,1,2,3),(30,195,0,1,2,3),(31,63,0,0,3,3),(32,8,1,0,1,2),(33,18,1,0,1,2),(34,74,1,0,1,2),(35,191,1,0,1,2),(36,3,0,1,1,2),(37,43,0,1,1,2),(38,59,0,1,1,2),(39,11,0,0,2,2),(40,151,0,0,2,2),(41,165,0,0,2,2),(42,53,1,0,1,2),(43,101,1,0,0,1),(44,169,0,1,0,1),(45,85,0,0,1,1),(46,103,0,0,1,1),(47,105,0,0,1,1),(48,183,0,0,1,1),(49,196,0,0,1,1);
/*!40000 ALTER TABLE `judo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luge`
--

DROP TABLE IF EXISTS `luge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luge`
--

LOCK TABLES `luge` WRITE;
/*!40000 ALTER TABLE `luge` DISABLE KEYS */;
INSERT INTO `luge` VALUES (1,71,34,24,23,81),(2,12,6,8,8,22),(3,92,7,4,6,17),(4,155,1,5,3,9),(5,197,0,3,3,6),(6,105,0,1,3,4),(7,35,0,1,1,2);
/*!40000 ALTER TABLE `luge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modern_pentathlon`
--

DROP TABLE IF EXISTS `modern_pentathlon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modern_pentathlon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modern_pentathlon`
--

LOCK TABLES `modern_pentathlon` WRITE;
/*!40000 ALTER TABLE `modern_pentathlon` DISABLE KEYS */;
INSERT INTO `modern_pentathlon` VALUES (1,84,9,8,5,22),(2,180,9,7,5,21),(3,155,9,7,6,22),(4,197,0,6,3,9),(5,73,2,2,3,7),(6,92,2,2,3,7),(7,66,0,1,4,5),(8,150,3,0,1,4),(9,111,1,2,1,4),(10,71,2,0,1,3),(11,67,0,1,2,3),(12,53,1,1,2,4),(13,18,0,0,2,2),(14,11,1,0,0,1),(15,96,1,0,0,1),(16,41,0,1,0,1),(17,105,0,1,0,1),(18,195,0,1,0,1),(19,27,0,0,1,1),(20,123,0,0,1,1);
/*!40000 ALTER TABLE `modern_pentathlon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nordic_combined`
--

DROP TABLE IF EXISTS `nordic_combined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nordic_combined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nordic_combined`
--

LOCK TABLES `nordic_combined` WRITE;
/*!40000 ALTER TABLE `nordic_combined` DISABLE KEYS */;
INSERT INTO `nordic_combined` VALUES (1,140,13,10,8,31),(2,12,3,2,10,15),(3,71,11,6,9,26),(4,66,4,8,2,14),(5,94,2,3,0,5),(6,67,2,1,1,4),(7,197,1,3,0,4),(8,181,1,2,1,4),(9,155,0,1,3,4),(10,180,0,1,1,2),(11,92,0,0,1,1),(12,150,0,0,1,1);
/*!40000 ALTER TABLE `nordic_combined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rowing`
--

DROP TABLE IF EXISTS `rowing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rowing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rowing`
--

LOCK TABLES `rowing` WRITE;
/*!40000 ALTER TABLE `rowing` DISABLE KEYS */;
INSERT INTO `rowing` VALUES (1,197,33,32,24,89),(2,73,31,24,13,68),(3,71,64,29,29,122),(4,155,13,20,13,46),(5,35,9,17,15,41),(6,11,11,15,14,40),(7,154,19,10,9,38),(8,92,10,14,14,38),(9,67,8,15,14,37),(10,135,7,12,12,31),(11,136,11,3,10,24),(12,181,7,8,9,24),(13,54,7,5,12,24),(14,150,4,3,11,18),(15,140,3,6,8,17),(16,30,3,4,7,14),(17,53,3,5,8,16),(18,41,1,4,4,9),(19,19,0,6,2,8),(20,66,3,1,3,7),(21,18,2,1,4,7),(22,50,1,3,1,5),(23,170,1,1,3,5),(24,165,1,1,3,5),(25,12,0,3,2,5),(26,8,1,1,2,4),(27,198,0,1,3,4),(28,173,1,1,1,3),(29,195,1,1,1,3),(30,63,0,2,1,3),(31,74,0,1,2,3),(32,84,0,1,2,3),(33,111,0,1,2,3),(34,180,0,2,0,2),(35,90,0,1,0,1),(36,174,0,1,0,1);
/*!40000 ALTER TABLE `rowing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rugby_sevens`
--

DROP TABLE IF EXISTS `rugby_sevens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rugby_sevens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rugby_sevens`
--

LOCK TABLES `rugby_sevens` WRITE;
/*!40000 ALTER TABLE `rugby_sevens` DISABLE KEYS */;
INSERT INTO `rugby_sevens` VALUES (1,11,1,0,0,1),(2,65,1,0,0,1),(3,73,0,1,0,1),(4,136,0,1,0,1),(5,35,0,0,1,1),(6,173,0,0,1,1);
/*!40000 ALTER TABLE `rugby_sevens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sailing`
--

DROP TABLE IF EXISTS `sailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sailing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sailing`
--

LOCK TABLES `sailing` WRITE;
/*!40000 ALTER TABLE `sailing` DISABLE KEYS */;
INSERT INTO `sailing` VALUES (1,197,19,23,18,60),(2,73,28,19,11,58),(3,67,12,9,14,35),(4,180,10,12,13,35),(5,140,17,11,3,31),(6,54,12,9,9,30),(7,11,11,9,8,27),(8,136,9,7,6,22),(9,135,7,9,7,23),(10,174,13,5,1,19),(11,27,7,3,8,18),(12,92,3,3,8,14),(13,155,4,6,5,15),(14,71,8,9,10,27),(15,66,2,2,7,11),(16,8,1,4,5,10),(17,19,2,4,3,9),(18,35,0,3,6,9),(19,12,3,4,1,8),(20,74,3,2,3,8),(21,41,2,3,1,6),(22,195,1,2,2,5),(23,150,1,0,3,4),(24,151,0,2,2,4),(25,181,1,1,1,3),(26,91,1,0,2,3),(27,170,0,2,1,3),(28,50,1,1,0,2),(29,14,1,0,1,2),(30,90,0,2,0,2),(31,94,0,1,1,2),(32,63,0,0,2,2),(33,83,1,0,0,1),(34,51,0,1,0,1),(35,52,0,1,0,1),(36,53,0,1,0,1),(37,111,0,1,0,1),(38,203,0,1,0,1),(39,84,0,0,1,1);
/*!40000 ALTER TABLE `sailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shooting`
--

DROP TABLE IF EXISTS `shooting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shooting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shooting`
--

LOCK TABLES `shooting` WRITE;
/*!40000 ALTER TABLE `shooting` DISABLE KEYS */;
INSERT INTO `shooting` VALUES (1,197,54,29,27,110),(2,180,15,24,18,57),(3,41,22,15,19,56),(4,155,29,30,29,88),(5,73,13,15,18,46),(6,92,16,15,11,42),(7,67,9,14,10,33),(8,140,13,8,11,32),(9,71,18,21,14,53),(10,181,6,6,9,21),(11,66,4,7,10,21),(12,54,3,10,5,18),(13,84,7,3,7,17),(14,100,7,8,1,16),(15,30,4,6,6,16),(16,154,6,4,5,15),(17,74,4,4,4,12),(18,150,4,3,5,12),(19,11,5,1,5,11),(20,35,4,3,2,9),(21,53,6,6,6,18),(22,195,4,2,2,8),(23,19,1,4,3,8),(24,12,1,2,5,8),(25,18,1,2,4,7),(26,165,3,4,5,12),(27,94,1,2,3,6),(28,102,1,0,3,4),(29,169,0,2,3,5),(30,27,1,2,1,4),(31,86,1,2,1,4),(32,51,1,0,3,4),(33,50,2,0,1,3),(34,148,1,2,0,3),(35,13,1,0,2,3),(36,99,1,0,2,3),(37,170,1,0,2,3),(38,96,0,2,1,3),(39,174,0,2,1,3),(40,202,1,1,0,2),(41,43,0,2,0,2),(42,127,0,1,1,2),(43,135,0,1,1,2),(44,136,0,1,1,2),(45,111,1,0,0,1),(46,196,1,0,0,1),(47,8,0,1,0,1),(48,40,0,1,0,1),(49,105,0,1,0,1),(50,123,0,1,0,1),(51,125,0,1,0,1),(52,151,0,1,0,1),(53,173,0,1,0,1),(54,70,0,0,1,1),(55,81,0,0,1,1),(56,153,0,0,1,1),(57,201,0,0,1,1);
/*!40000 ALTER TABLE `shooting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `short_track_speed_skating`
--

DROP TABLE IF EXISTS `short_track_speed_skating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `short_track_speed_skating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_track_speed_skating`
--

LOCK TABLES `short_track_speed_skating` WRITE;
/*!40000 ALTER TABLE `short_track_speed_skating` DISABLE KEYS */;
INSERT INTO `short_track_speed_skating` VALUES (1,100,24,13,11,48),(2,41,10,15,8,33),(3,35,9,12,12,33),(4,197,4,7,9,20),(5,92,2,4,5,11),(6,155,3,1,3,7),(7,135,1,2,2,5),(8,94,1,0,2,3),(9,30,0,2,1,3),(10,11,1,0,1,2),(11,84,1,0,0,1),(12,73,0,0,1,1),(13,99,0,0,1,1);
/*!40000 ALTER TABLE `short_track_speed_skating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skeleton`
--

DROP TABLE IF EXISTS `skeleton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skeleton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skeleton`
--

LOCK TABLES `skeleton` WRITE;
/*!40000 ALTER TABLE `skeleton` DISABLE KEYS */;
INSERT INTO `skeleton` VALUES (1,73,3,1,5,9),(2,197,3,4,1,8),(3,35,2,1,1,4),(4,155,1,1,2,4),(5,181,1,0,2,3),(6,71,0,2,1,3),(7,105,0,2,0,2),(8,92,1,0,0,1),(9,100,1,0,0,1),(10,12,0,1,0,1);
/*!40000 ALTER TABLE `skeleton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ski_jumping`
--

DROP TABLE IF EXISTS `ski_jumping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ski_jumping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ski_jumping`
--

LOCK TABLES `ski_jumping` WRITE;
/*!40000 ALTER TABLE `ski_jumping` DISABLE KEYS */;
INSERT INTO `ski_jumping` VALUES (1,140,11,10,14,35),(2,12,6,9,10,25),(3,66,10,8,4,22),(4,71,9,9,4,22),(5,94,3,5,4,12),(6,150,4,3,2,9),(7,53,1,2,4,7),(8,181,4,1,0,5),(9,170,0,1,2,3),(10,180,0,1,1,2),(11,165,0,1,1,2),(12,155,1,0,0,1),(13,67,0,0,1,1),(14,197,0,0,1,1);
/*!40000 ALTER TABLE `ski_jumping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snowboarding`
--

DROP TABLE IF EXISTS `snowboarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snowboarding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snowboarding`
--

LOCK TABLES `snowboarding` WRITE;
/*!40000 ALTER TABLE `snowboarding` DISABLE KEYS */;
INSERT INTO `snowboarding` VALUES (1,197,14,7,10,31),(2,181,8,2,3,13),(3,67,4,4,4,12),(4,35,4,4,3,11),(5,12,2,1,4,7),(6,71,1,4,2,7),(7,155,2,2,1,5),(8,11,1,2,1,4),(9,94,0,3,1,4),(10,140,0,3,1,4),(11,66,0,2,2,4),(12,53,2,0,1,3),(13,92,1,1,1,3),(14,170,0,1,2,3),(15,73,0,0,2,2),(16,135,1,0,0,1),(17,41,0,1,0,1),(18,169,0,1,0,1),(19,100,0,1,0,1),(20,180,0,1,0,1),(21,136,0,0,1,1),(22,174,0,0,1,1);
/*!40000 ALTER TABLE `snowboarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speed_skating`
--

DROP TABLE IF EXISTS `speed_skating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speed_skating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speed_skating`
--

LOCK TABLES `speed_skating` WRITE;
/*!40000 ALTER TABLE `speed_skating` DISABLE KEYS */;
INSERT INTO `speed_skating` VALUES (1,135,42,40,39,121),(2,140,27,29,28,84),(3,197,29,22,17,68),(4,155,27,22,25,74),(5,71,25,28,19,72),(6,35,9,13,15,37),(7,66,7,8,9,24),(8,94,4,7,10,21),(9,180,7,4,5,16),(10,100,5,8,3,16),(11,41,1,3,4,8),(12,53,3,2,2,7),(13,12,1,2,3,6),(14,150,1,2,3,6),(15,92,2,0,2,4),(16,19,0,1,1,2),(17,18,0,1,0,1),(18,99,0,1,0,1),(19,96,0,0,1,1);
/*!40000 ALTER TABLE `speed_skating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summer`
--

DROP TABLE IF EXISTS `summer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `summer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summer`
--

LOCK TABLES `summer` WRITE;
/*!40000 ALTER TABLE `summer` DISABLE KEYS */;
INSERT INTO `summer` VALUES (1,197,1022,795,705,2522),(2,155,589,486,481,1556),(3,73,263,295,293,851),(4,67,212,241,263,716),(5,71,428,444,474,1346),(6,92,206,178,193,577),(7,41,224,167,155,546),(8,11,150,167,192,509),(9,180,145,170,179,494),(10,84,175,147,169,491),(11,94,142,136,161,439),(12,154,89,95,122,306),(13,66,101,85,117,303),(14,35,64,102,136,302),(15,135,85,93,108,286),(16,150,68,83,133,284),(17,100,90,87,90,267),(18,51,78,68,80,226),(19,30,51,87,80,218),(20,54,45,74,75,194),(21,181,50,75,67,192),(22,140,56,49,47,152),(23,174,45,64,41,150),(24,19,40,53,55,148),(25,53,64,67,72,203),(26,27,30,36,63,129),(27,195,35,30,56,121),(28,136,46,27,44,117),(29,74,33,43,40,116),(30,97,31,38,34,103),(31,191,39,24,28,91),(32,165,31,40,39,110),(33,12,18,33,36,87),(34,173,26,31,29,86),(35,18,12,27,39,78),(36,93,22,35,21,78),(37,8,21,25,28,74),(38,88,20,22,27,69),(39,123,13,24,32,69),(40,96,15,21,27,63),(41,64,22,11,21,54),(42,99,16,16,22,54),(43,13,7,11,24,42),(44,63,9,9,16,34),(45,50,11,10,12,33),(46,185,9,8,16,33),(47,59,7,10,15,32),(48,70,8,7,17,32),(49,87,7,13,12,32),(50,90,9,10,12,31),(51,199,7,6,17,30),(52,43,5,9,14,28),(53,86,9,7,12,28),(54,169,9,12,7,28),(55,127,2,10,14,26),(56,111,6,6,13,25),(57,139,3,10,12,25),(58,151,4,8,12,24),(59,42,5,7,12,24),(60,129,6,5,12,23),(61,170,5,8,10,23),(62,105,3,11,5,19),(63,189,3,5,13,21),(64,3,5,4,8,17),(65,201,2,4,9,15),(66,9,2,6,6,14),(67,14,6,2,6,14),(68,40,2,7,4,13),(69,190,4,2,7,13),(70,116,0,7,4,11),(71,142,3,3,4,10),(72,149,0,3,7,10),(73,198,2,2,6,10),(74,91,1,1,7,9),(75,152,1,2,6,9),(76,206,3,4,1,8),(77,57,3,2,2,7),(78,194,2,3,2,7),(79,34,3,1,2,6),(80,125,0,2,3,5),(81,153,0,1,4,5),(82,168,1,2,2,5),(83,48,1,1,2,4),(84,72,0,1,3,4),(85,85,0,2,2,4),(86,103,0,1,3,4),(87,106,0,2,2,4),(88,132,0,4,0,4),(89,148,1,3,0,4),(90,183,1,1,2,4),(91,202,1,3,0,4),(92,15,2,1,0,3),(93,49,1,1,1,3),(94,83,1,1,1,3),(95,145,1,0,2,3),(96,163,0,1,2,3),(97,182,1,1,1,3),(98,1,0,0,2,2),(99,32,1,1,0,2),(100,58,1,1,0,2),(101,75,1,1,0,2),(102,81,0,1,1,2),(103,102,1,0,3,4),(104,112,1,1,0,2),(105,130,1,0,1,2),(106,138,0,1,1,2),(107,175,0,2,0,2),(108,178,1,0,1,2),(109,184,0,2,0,2),(110,196,1,0,1,2),(111,205,0,1,1,2),(112,17,0,0,1,1),(113,22,0,0,1,1),(114,26,0,1,0,1),(115,52,0,1,0,1),(116,55,0,0,1,1),(117,62,0,0,1,1),(118,65,1,0,0,1),(119,68,0,1,0,1),(120,77,0,1,0,1),(121,80,0,0,1,1),(122,89,0,0,1,1),(123,95,1,0,0,1),(124,101,1,0,0,1),(125,113,0,0,1,1),(126,122,0,0,1,1),(127,128,0,1,0,1),(128,147,0,1,0,1),(129,160,0,1,0,1),(130,164,0,1,0,1),(131,176,0,1,0,1),(132,187,0,0,1,1),(133,188,0,1,0,1),(134,203,0,1,0,1);
/*!40000 ALTER TABLE `summer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swimming`
--

DROP TABLE IF EXISTS `swimming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swimming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swimming`
--

LOCK TABLES `swimming` WRITE;
/*!40000 ALTER TABLE `swimming` DISABLE KEYS */;
INSERT INTO `swimming` VALUES (1,197,246,172,135,553),(2,11,62,67,67,196),(3,71,55,61,71,187),(4,94,22,26,32,80),(5,73,16,28,30,74),(6,84,28,25,20,73),(7,135,22,18,19,59),(8,155,23,33,36,92),(9,35,8,15,26,49),(10,41,13,19,11,43),(11,67,8,15,20,43),(12,180,9,15,14,38),(13,92,5,5,12,22),(14,173,6,6,6,18),(15,27,1,4,9,14),(16,54,3,5,6,14),(17,12,1,6,5,12),(18,154,3,2,4,9),(19,74,1,4,3,8),(20,174,2,2,4,8),(21,195,4,2,1,7),(22,206,2,4,1,7),(23,136,2,1,3,6),(24,150,1,3,2,6),(25,19,1,2,2,5),(26,90,3,0,1,4),(27,100,1,3,0,4),(28,48,1,1,2,4),(29,66,0,1,3,4),(30,190,2,0,1,3),(31,8,1,1,1,3),(32,30,1,1,1,3),(33,18,0,2,1,3),(34,165,1,2,0,3),(35,123,1,0,1,2),(36,178,1,0,1,2),(37,169,0,2,0,2),(38,51,0,1,1,2),(39,140,0,1,1,2),(40,149,0,0,2,2),(41,96,1,0,0,1),(42,111,1,0,0,1),(43,168,1,0,0,1),(44,50,0,1,0,1),(45,170,0,1,0,1),(46,181,0,0,1,1),(47,189,0,0,1,1),(48,201,0,0,1,1);
/*!40000 ALTER TABLE `swimming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_tennis`
--

DROP TABLE IF EXISTS `table_tennis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_tennis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_tennis`
--

LOCK TABLES `table_tennis` WRITE;
/*!40000 ALTER TABLE `table_tennis` DISABLE KEYS */;
INSERT INTO `table_tennis` VALUES (1,41,28,17,8,53),(2,100,3,3,12,18),(3,71,0,3,4,7),(4,94,0,2,2,4),(5,99,0,1,3,4),(6,180,1,1,1,3),(7,168,0,1,2,3),(8,42,0,1,1,2),(9,67,0,1,1,2),(10,165,0,1,1,2),(11,83,0,1,0,1),(12,54,0,0,1,1);
/*!40000 ALTER TABLE `table_tennis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taekwondo`
--

DROP TABLE IF EXISTS `taekwondo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taekwondo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taekwondo`
--

LOCK TABLES `taekwondo` WRITE;
/*!40000 ALTER TABLE `taekwondo` DISABLE KEYS */;
INSERT INTO `taekwondo` VALUES (1,100,12,2,5,19),(2,41,7,1,2,10),(3,197,2,2,5,9),(4,42,2,1,5,8),(5,123,2,2,3,7),(6,191,1,3,3,7),(7,67,0,3,4,7),(8,73,2,1,3,6),(9,88,2,1,3,6),(10,174,1,4,1,6),(11,51,1,2,2,5),(12,185,0,2,3,5),(13,74,1,3,0,4),(14,155,0,2,2,4),(15,92,1,1,1,3),(16,13,1,0,2,3),(17,50,0,0,3,3),(18,11,1,1,0,2),(19,165,1,1,0,2),(20,49,1,0,1,2),(21,140,0,2,0,2),(22,35,0,1,1,2),(23,57,0,1,1,2),(24,71,0,1,1,2),(25,1,0,0,2,2),(26,27,0,0,2,2),(27,59,0,0,2,2),(28,201,0,0,2,2),(29,8,1,0,0,1),(30,95,1,0,0,1),(31,68,0,1,0,1),(32,138,0,1,0,1),(33,202,0,1,0,1),(34,43,0,0,1,1),(35,94,0,0,1,1),(36,96,0,0,1,1),(37,139,0,0,1,1),(38,190,0,0,1,1);
/*!40000 ALTER TABLE `taekwondo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tennis`
--

DROP TABLE IF EXISTS `tennis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tennis`
--

LOCK TABLES `tennis` WRITE;
/*!40000 ALTER TABLE `tennis` DISABLE KEYS */;
INSERT INTO `tennis` VALUES (1,73,17,14,12,43),(2,197,21,6,12,39),(3,67,5,6,8,19),(4,174,2,7,3,12),(5,71,3,6,3,12),(6,155,3,3,4,10),(7,180,0,3,5,8),(8,53,1,4,7,12),(9,173,3,2,1,6),(10,8,0,2,4,6),(11,11,1,1,4,6),(12,181,2,2,0,4),(13,40,2,1,1,4),(14,94,0,2,1,3),(15,50,0,0,3,3),(16,18,1,0,1,2),(17,19,1,0,1,2),(18,41,1,0,1,2),(19,74,0,1,1,2),(20,135,0,1,1,2),(21,35,1,0,0,1),(22,152,1,0,0,1),(23,12,0,1,0,1),(24,54,0,1,0,1),(25,154,0,1,0,1),(26,30,0,0,1,1),(27,84,0,0,1,1),(28,86,0,0,1,1),(29,92,0,0,1,1),(30,140,0,0,1,1),(31,165,0,0,1,1);
/*!40000 ALTER TABLE `tennis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES (1,197,1127,907,793,2827),(2,155,725,593,592,1910),(3,73,274,299,310,883),(4,71,578,589,587,1754),(5,67,248,276,316,840),(6,92,246,214,241,701),(7,180,202,216,234,652),(8,41,237,195,176,608),(9,140,188,174,158,520),(10,11,155,172,197,524),(11,35,137,166,198,501),(12,84,176,149,173,498),(13,94,156,158,183,497),(14,66,144,148,178,470),(15,135,130,137,149,416),(16,181,106,120,119,345),(17,100,121,112,104,337),(18,12,82,114,123,319),(19,154,89,95,123,307),(20,150,75,90,141,306),(21,51,78,68,80,226),(22,30,52,89,83,224),(23,54,45,75,75,195),(24,53,75,86,98,259),(25,19,41,55,58,154),(26,174,46,64,44,154),(27,27,30,36,63,129),(28,195,38,31,60,129),(29,136,46,28,46,120),(30,74,33,43,40,116),(31,97,31,38,34,103),(32,18,20,32,44,96),(33,165,31,43,40,114),(34,191,39,24,28,91),(35,173,26,31,29,86),(36,93,22,35,21,78),(37,8,21,25,28,74),(38,96,16,24,31,71),(39,88,20,22,27,69),(40,123,13,24,32,69),(41,99,16,17,23,56),(42,64,22,11,21,54),(43,50,15,16,13,44),(44,13,7,11,24,42),(45,63,13,11,17,41),(46,170,7,13,20,40),(47,169,12,16,8,36),(48,185,9,8,16,33),(49,59,7,10,15,32),(50,70,8,7,17,32),(51,87,7,13,12,32),(52,90,9,10,12,31),(53,199,8,6,17,31),(54,43,5,9,14,28),(55,86,9,7,12,28),(56,105,4,14,10,28),(57,127,2,10,14,26),(58,111,6,6,13,25),(59,139,3,10,12,25),(60,151,4,8,12,24),(61,42,5,7,12,24),(62,129,6,5,12,23),(63,189,3,5,13,21),(64,3,5,4,8,17),(65,201,2,4,9,15),(66,9,2,6,6,14),(67,14,6,2,6,14),(68,40,2,7,4,13),(69,190,4,2,7,13),(70,116,0,7,4,11),(71,110,2,2,6,10),(72,142,3,3,4,10),(73,149,0,3,7,10),(74,198,2,2,6,10),(75,91,1,1,7,9),(76,152,1,2,6,9),(77,206,3,4,1,8),(78,57,3,2,2,7),(79,194,2,3,2,7),(80,34,3,1,2,6),(81,125,0,2,3,5),(82,153,0,1,4,5),(83,168,1,2,2,5),(84,48,1,1,2,4),(85,72,0,1,3,4),(86,85,0,2,2,4),(87,103,0,1,3,4),(88,106,0,2,2,4),(89,112,1,3,0,4),(90,132,0,4,0,4),(91,148,1,3,0,4),(92,183,1,1,2,4),(93,202,1,3,0,4),(94,15,2,1,0,3),(95,49,1,1,1,3),(96,83,1,1,1,3),(97,145,1,0,2,3),(98,163,0,1,2,3),(99,182,1,1,1,3),(100,1,0,0,2,2);
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triathlon`
--

DROP TABLE IF EXISTS `triathlon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triathlon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triathlon`
--

LOCK TABLES `triathlon` WRITE;
/*!40000 ALTER TABLE `triathlon` DISABLE KEYS */;
INSERT INTO `triathlon` VALUES (1,73,2,1,2,5),(2,181,2,1,2,5),(3,11,1,2,2,5),(4,136,1,1,1,3),(5,35,1,1,0,2),(6,71,1,1,0,2),(7,197,1,0,1,2),(8,12,1,0,0,1),(9,151,0,1,0,1),(10,174,0,1,0,1),(11,180,0,1,0,1),(12,53,0,0,1,1),(13,173,0,0,1,1);
/*!40000 ALTER TABLE `triathlon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volleyball`
--

DROP TABLE IF EXISTS `volleyball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volleyball` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volleyball`
--

LOCK TABLES `volleyball` WRITE;
/*!40000 ALTER TABLE `volleyball` DISABLE KEYS */;
INSERT INTO `volleyball` VALUES (1,155,8,8,3,19),(2,27,5,3,2,10),(3,197,3,3,4,10),(4,94,3,3,3,9),(5,41,3,1,2,6),(6,92,0,3,3,6),(7,51,3,0,2,5),(8,150,1,0,2,3),(9,135,1,1,0,2),(10,165,1,1,1,3),(11,71,0,2,0,2),(12,30,0,1,1,2),(13,53,0,1,1,2),(14,148,0,1,0,1),(15,8,0,0,1,1),(16,99,0,0,1,1),(17,154,0,0,1,1),(18,100,0,0,1,1);
/*!40000 ALTER TABLE `volleyball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_polo`
--

DROP TABLE IF EXISTS `water_polo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_polo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_polo`
--

LOCK TABLES `water_polo` WRITE;
/*!40000 ALTER TABLE `water_polo` DISABLE KEYS */;
INSERT INTO `water_polo` VALUES (1,84,9,3,3,15),(2,197,2,5,4,11),(3,92,4,3,3,10),(4,165,4,5,3,12),(5,155,2,3,7,12),(6,19,0,4,2,6),(7,73,4,0,0,4),(8,67,1,0,3,4),(9,50,1,2,0,3),(10,71,1,2,1,4),(11,174,1,2,0,3),(12,11,1,0,2,3),(13,135,1,0,2,3),(14,180,0,1,2,3),(15,74,0,1,0,1);
/*!40000 ALTER TABLE `water_polo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weightlifting`
--

DROP TABLE IF EXISTS `weightlifting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weightlifting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weightlifting`
--

LOCK TABLES `weightlifting` WRITE;
/*!40000 ALTER TABLE `weightlifting` DISABLE KEYS */;
INSERT INTO `weightlifting` VALUES (1,155,48,32,9,89),(2,41,31,15,8,54),(3,197,16,16,12,44),(4,30,12,17,8,37),(5,150,6,5,23,34),(6,71,9,13,16,38),(7,84,2,9,9,20),(8,88,8,6,5,19),(9,99,5,7,5,17),(10,67,9,3,3,15),(11,74,6,5,4,15),(12,92,5,4,5,14),(13,94,2,3,9,14),(14,154,2,7,4,13),(15,185,5,2,5,12),(16,100,3,4,5,12),(17,191,8,1,2,11),(18,59,5,2,4,11),(19,87,0,5,5,10),(20,12,3,4,2,9),(21,53,3,2,3,8),(22,51,2,1,5,8),(23,18,1,4,3,8),(24,96,1,4,3,8),(25,42,1,2,5,8),(26,43,2,3,2,7),(27,63,1,3,3,7),(28,73,1,3,3,7),(29,195,3,1,1,5),(30,9,0,3,2,5),(31,70,2,0,2,4),(32,19,1,2,1,4),(33,35,1,2,1,4),(34,11,1,1,2,4),(35,181,0,2,2,4),(36,180,0,0,4,4),(37,54,1,2,0,3),(38,66,1,0,2,3),(39,123,1,0,2,3),(40,189,0,1,2,3),(41,135,0,0,3,3),(42,50,1,0,1,2),(43,8,0,1,1,2),(44,105,0,1,1,2),(45,140,1,0,0,1),(46,199,1,0,0,1),(47,106,0,1,0,1),(48,112,0,1,0,1),(49,139,0,1,0,1),(50,149,0,1,0,1),(51,168,0,1,0,1),(52,202,0,1,0,1),(53,13,0,0,1,1),(54,34,0,0,1,1),(55,86,0,0,1,1),(56,89,0,0,1,1),(57,111,0,0,1,1),(58,153,0,0,1,1),(59,174,0,0,1,1),(60,201,0,0,1,1);
/*!40000 ALTER TABLE `weightlifting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winter`
--

DROP TABLE IF EXISTS `winter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winter`
--

LOCK TABLES `winter` WRITE;
/*!40000 ALTER TABLE `winter` DISABLE KEYS */;
INSERT INTO `winter` VALUES (1,140,132,125,111,368),(2,197,105,112,88,305),(3,71,150,145,113,408),(4,12,64,81,87,232),(5,35,73,64,62,199),(6,155,136,107,111,354),(7,66,43,63,61,167),(8,180,57,46,55,158),(9,181,56,45,52,153),(10,135,45,44,41,130),(11,67,36,35,53,124),(12,92,40,36,48,124),(13,100,31,25,14,70),(14,41,13,28,21,62),(15,94,14,22,22,58),(16,73,11,4,17,32),(17,53,11,19,26,56),(18,150,7,7,8,22),(19,18,8,5,5,18),(20,170,2,5,10,17),(21,11,5,5,5,15),(22,50,4,6,1,11),(23,110,2,2,6,10),(24,105,1,3,5,9),(25,96,1,3,4,8),(26,169,3,4,1,8),(27,195,3,1,4,8),(28,63,4,2,1,7),(29,84,1,2,4,7),(30,19,1,2,3,6),(31,30,1,2,3,6),(32,174,1,0,3,4),(33,165,0,3,1,4),(34,136,0,1,2,3),(35,99,0,1,1,2),(36,112,0,2,0,2),(37,54,0,1,0,1),(38,154,0,0,1,1),(39,199,1,0,0,1);
/*!40000 ALTER TABLE `winter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wrestling`
--

DROP TABLE IF EXISTS `wrestling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wrestling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wrestling`
--

LOCK TABLES `wrestling` WRITE;
/*!40000 ALTER TABLE `wrestling` DISABLE KEYS */;
INSERT INTO `wrestling` VALUES (1,197,54,43,35,132),(2,155,98,47,43,188),(3,180,28,27,31,86),(4,66,26,28,29,83),(5,94,32,20,17,69),(6,30,16,32,21,69),(7,191,29,18,16,63),(8,84,19,16,19,54),(9,88,9,14,20,43),(10,100,11,11,14,36),(11,154,7,8,18,33),(12,150,5,9,12,26),(13,71,8,24,18,50),(14,51,9,6,7,22),(15,13,4,7,11,22),(16,92,7,4,10,21),(17,67,4,4,10,18),(18,70,3,4,11,18),(19,35,3,7,7,17),(20,73,3,4,10,17),(21,165,5,6,6,17),(22,53,1,7,7,15),(23,96,1,5,9,15),(24,181,4,4,6,14),(25,195,3,5,6,14),(26,63,5,2,4,11),(27,74,1,3,7,11),(28,18,0,4,7,11),(29,99,3,2,5,10),(30,41,2,3,5,10),(31,127,0,4,5,9),(32,54,0,3,6,9),(33,199,3,2,3,8),(34,9,2,3,3,8),(35,59,2,3,2,7),(36,140,2,2,2,6),(37,86,0,1,4,5),(38,19,0,3,0,3),(39,11,0,1,2,3),(40,106,0,1,2,3),(41,111,0,1,1,2),(42,12,0,0,2,2),(43,43,0,0,2,2),(44,105,0,1,0,1),(45,123,0,1,0,1),(46,182,0,1,0,1),(47,113,0,0,1,1),(48,125,0,0,1,1),(49,142,0,0,1,1),(50,190,0,0,1,1);
/*!40000 ALTER TABLE `wrestling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-07 15:06:24
