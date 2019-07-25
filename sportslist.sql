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
INSERT INTO `countries` VALUES (1,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Afghanistan.svg/150px-Flag_of_Afghanistan.svg.png','Afghanistan'),(2,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Albania.svg/140px-Flag_of_Albania.svg.png','Albania'),(3,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/150px-Flag_of_Algeria.svg.png','Algeria'),(4,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Flag_of_American_Samoa.svg/220px-Flag_of_American_Samoa.svg.png','American Samoa'),(5,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Andorra.svg/143px-Flag_of_Andorra.svg.png','Andorra'),(6,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/150px-Flag_of_Angola.svg.png','Angola'),(7,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Antigua_and_Barbuda.svg/150px-Flag_of_Antigua_and_Barbuda.svg.png','Antigua and Barbuda'),(8,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/160px-Flag_of_Argentina.svg.png','Argentina'),(9,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Flag_of_Armenia.svg/180px-Flag_of_Armenia.svg.png','Armenia'),(10,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Aruba.svg/220px-Flag_of_Aruba.svg.png','Aruba'),(11,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/180px-Flag_of_Australia_%28converted%29.svg.png','Australia'),(12,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_Austria.svg/150px-Flag_of_Austria.svg.png','Austria'),(13,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/180px-Flag_of_Azerbaijan.svg.png','Azerbaijan'),(14,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_the_Bahamas.svg/180px-Flag_of_the_Bahamas.svg.png','Bahamas'),(15,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Bahrain.svg/167px-Flag_of_Bahrain.svg.png','Bahrain'),(16,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/167px-Flag_of_Bangladesh.svg.png','Bangladesh'),(17,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Barbados.svg/150px-Flag_of_Barbados.svg.png','Barbados'),(18,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Flag_of_Belarus.svg/180px-Flag_of_Belarus.svg.png','Belarus'),(19,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_Belgium_%28civil%29.svg/150px-Flag_of_Belgium_%28civil%29.svg.png','Belgium'),(20,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Flag_of_Belize.svg/150px-Flag_of_Belize.svg.png','Belize'),(21,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Benin.svg/150px-Flag_of_Benin.svg.png','Benin'),(22,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bermuda.svg/220px-Flag_of_Bermuda.svg.png','Bermuda'),(23,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Flag_of_Bhutan.svg/150px-Flag_of_Bhutan.svg.png','Bhutan'),(24,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Bolivia.svg/147px-Flag_of_Bolivia.svg.png','Bolivia'),(25,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/180px-Flag_of_Bosnia_and_Herzegovina.svg.png','Bosnia and Herzegovina'),(26,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_Botswana.svg/150px-Flag_of_Botswana.svg.png','Botswana'),(27,'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/143px-Flag_of_Brazil.svg.png','Brazil'),(28,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Flag_of_the_British_Virgin_Islands.svg/220px-Flag_of_the_British_Virgin_Islands.svg.png','British Virgin Islands'),(29,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Brunei.svg/180px-Flag_of_Brunei.svg.png','Brunei'),(30,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Bulgaria.svg/167px-Flag_of_Bulgaria.svg.png','Bulgaria'),(31,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Burkina_Faso.svg/150px-Flag_of_Burkina_Faso.svg.png','Burkina Faso'),(32,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Flag_of_Burundi.svg/167px-Flag_of_Burundi.svg.png','Burundi'),(33,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_Cambodia.svg/157px-Flag_of_Cambodia.svg.png','Cambodia'),(34,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/150px-Flag_of_Cameroon.svg.png','Cameroon'),(35,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/180px-Flag_of_Canada_%28Pantone%29.svg.png','Canada'),(36,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Cape_Verde.svg/170px-Flag_of_Cape_Verde.svg.png','Cape Verde'),(37,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_the_Cayman_Islands.svg/220px-Flag_of_the_Cayman_Islands.svg.png','Cayman Islands'),(38,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Flag_of_the_Central_African_Republic.svg/150px-Flag_of_the_Central_African_Republic.svg.png','Central African Republic'),(39,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Flag_of_Chad.svg/150px-Flag_of_Chad.svg.png','Chad'),(40,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/150px-Flag_of_Chile.svg.png','Chile'),(41,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/150px-Flag_of_the_People%27s_Republic_of_China.svg.png','China'),(42,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Flag_of_Chinese_Taipei_for_Olympic_games.svg/220px-Flag_of_Chinese_Taipei_for_Olympic_games.svg.png','Chinese Taipei'),(43,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/150px-Flag_of_Colombia.svg.png','Colombia'),(44,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Flag_of_the_Comoros.svg/167px-Flag_of_the_Comoros.svg.png','Comoros'),(45,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_the_Republic_of_the_Congo.svg/150px-Flag_of_the_Republic_of_the_Congo.svg.png','Republic of the Congo'),(46,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg/133px-Flag_of_the_Democratic_Republic_of_the_Congo.svg.png','Democratic Replublic of the Congo'),(47,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Flag_of_the_Cook_Islands.svg/180px-Flag_of_the_Cook_Islands.svg.png','Cook Islands'),(48,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Costa_Rica.svg/167px-Flag_of_Costa_Rica.svg.png','Costa Rica'),(49,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg/150px-Flag_of_C%C3%B4te_d%27Ivoire.svg.png','Ivory Coast'),(50,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/180px-Flag_of_Croatia.svg.png','Croatia'),(51,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Flag_of_Cuba.svg/180px-Flag_of_Cuba.svg.png','Cuba'),(52,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Cyprus.svg/150px-Flag_of_Cyprus.svg.png','Cyprus'),(53,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_Czech_Republic.svg/150px-Flag_of_the_Czech_Republic.svg.png','Czech Republic'),(54,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/132px-Flag_of_Denmark.svg.png','Denmark'),(55,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_Djibouti.svg/150px-Flag_of_Djibouti.svg.png','Djibouti'),(56,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Flag_of_Dominica.svg/180px-Flag_of_Dominica.svg.png','Dominica'),(57,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_the_Dominican_Republic.svg/150px-Flag_of_the_Dominican_Republic.svg.png','Dominican Republic'),(58,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Flag_of_Ecuador.svg/150px-Flag_of_Ecuador.svg.png','Ecuador'),(59,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/150px-Flag_of_Egypt.svg.png','Egypt'),(60,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_El_Salvador.svg/167px-Flag_of_El_Salvador.svg.png','El Salvador'),(61,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Equatorial_Guinea.svg/150px-Flag_of_Equatorial_Guinea.svg.png','Equatorial Guinea'),(62,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Flag_of_Eritrea.svg/180px-Flag_of_Eritrea.svg.png','Eritrea'),(63,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Flag_of_Estonia.svg/157px-Flag_of_Estonia.svg.png','Estonia'),(64,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/180px-Flag_of_Ethiopia.svg.png','Ethiopia'),(65,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/180px-Flag_of_Fiji.svg.png','Fiji'),(66,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/164px-Flag_of_Finland.svg.png','Finland'),(67,'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/150px-Flag_of_France.svg.png','France'),(68,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Flag_of_Gabon.svg/133px-Flag_of_Gabon.svg.png','Gabon'),(69,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_The_Gambia.svg/150px-Flag_of_The_Gambia.svg.png','The Gambia'),(70,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/150px-Flag_of_Georgia.svg.png','Georgia'),(71,'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/167px-Flag_of_Germany.svg.png','Germany'),(72,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/150px-Flag_of_Ghana.svg.png','Ghana'),(73,'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/180px-Flag_of_the_United_Kingdom.svg.png','Great Britain'),(74,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/150px-Flag_of_Greece.svg.png','Greece'),(75,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Grenada.svg/167px-Flag_of_Grenada.svg.png','Grenada'),(76,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Flag_of_Guam.svg/220px-Flag_of_Guam.svg.png','Guam'),(77,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Flag_of_Guatemala.svg/160px-Flag_of_Guatemala.svg.png','Guatemala'),(78,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Flag_of_Guinea.svg/150px-Flag_of_Guinea.svg.png','Guinea'),(79,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Guinea-Bissau.svg/180px-Flag_of_Guinea-Bissau.svg.png','Guinea-Bissau'),(80,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_Guyana.svg/167px-Flag_of_Guyana.svg.png','Guyana'),(81,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Haiti.svg/167px-Flag_of_Haiti.svg.png','Haiti'),(82,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Flag_of_Honduras.svg/180px-Flag_of_Honduras.svg.png','Honduras'),(83,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Flag_of_Hong_Kong.svg/220px-Flag_of_Hong_Kong.svg.png','Hong Kong'),(84,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/180px-Flag_of_Hungary.svg.png','Hungary'),(85,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/139px-Flag_of_Iceland.svg.png','Iceland'),(86,'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/150px-Flag_of_India.svg.png','India'),(87,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/150px-Flag_of_Indonesia.svg.png','Indonesia'),(88,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Flag_of_Iran.svg/175px-Flag_of_Iran.svg.png','Iran'),(89,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/150px-Flag_of_Iraq.svg.png','Iraq'),(90,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/180px-Flag_of_Ireland.svg.png','Ireland'),(91,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/138px-Flag_of_Israel.svg.png','Israel'),(92,'https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/150px-Flag_of_Italy.svg.png','Italy'),(93,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/180px-Flag_of_Jamaica.svg.png','Jamaica'),(94,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/150px-Flag_of_Japan.svg.png','Japan'),(95,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/180px-Flag_of_Jordan.svg.png','Jordan'),(96,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kazakhstan.svg/180px-Flag_of_Kazakhstan.svg.png','Kazakhstan'),(97,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/150px-Flag_of_Kenya.svg.png','Kenya'),(98,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kiribati.svg/180px-Flag_of_Kiribati.svg.png','Kiribati'),(99,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/180px-Flag_of_North_Korea.svg.png','North Korea'),(100,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/150px-Flag_of_South_Korea.svg.png','South Korea'),(101,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Flag_of_Kosovo.svg/140px-Flag_of_Kosovo.svg.png','Kosovo'),(102,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flag_of_Kuwait.svg/180px-Flag_of_Kuwait.svg.png','Kuwait'),(103,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/167px-Flag_of_Kyrgyzstan.svg.png','Kyrgyzstan'),(104,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/150px-Flag_of_Laos.svg.png','Laos'),(105,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Flag_of_Latvia.svg/180px-Flag_of_Latvia.svg.png','Latvia'),(106,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Flag_of_Lebanon.svg/150px-Flag_of_Lebanon.svg.png','Lebanon'),(107,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Flag_of_Lesotho.svg/150px-Flag_of_Lesotho.svg.png','Lesotho'),(108,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Flag_of_Liberia.svg/180px-Flag_of_Liberia.svg.png','Liberia'),(109,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Libya.svg/180px-Flag_of_Libya.svg.png','Libya'),(110,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Flag_of_Liechtenstein.svg/167px-Flag_of_Liechtenstein.svg.png','Liechtenstein'),(111,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Lithuania.svg/167px-Flag_of_Lithuania.svg.png','Lithuania'),(112,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Luxembourg.svg/167px-Flag_of_Luxembourg.svg.png','Luxembourg'),(113,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_North_Macedonia.svg/180px-Flag_of_North_Macedonia.svg.png','North Macedonia'),(114,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Madagascar.svg/150px-Flag_of_Madagascar.svg.png','Madagascar'),(115,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Flag_of_Malawi.svg/150px-Flag_of_Malawi.svg.png','Malawi'),(116,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/180px-Flag_of_Malaysia.svg.png','Malaysia'),(117,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Maldives.svg/150px-Flag_of_Maldives.svg.png','Maldives'),(118,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_Mali.svg/150px-Flag_of_Mali.svg.png','Mali'),(119,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Malta.svg/150px-Flag_of_Malta.svg.png','Malta'),(120,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flag_of_the_Marshall_Islands.svg/180px-Flag_of_the_Marshall_Islands.svg.png','Marshall Islands'),(121,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Flag_of_Mauritania.svg/150px-Flag_of_Mauritania.svg.png','Mauritania'),(122,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Mauritius.svg/150px-Flag_of_Mauritius.svg.png','Mauritius'),(123,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/175px-Flag_of_Mexico.svg.png','Mexico'),(124,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Flag_of_the_Federated_States_of_Micronesia.svg/180px-Flag_of_the_Federated_States_of_Micronesia.svg.png','Federated States of Micronesia'),(125,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Flag_of_Moldova.svg/180px-Flag_of_Moldova.svg.png','Moldova'),(126,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Flag_of_Monaco.svg/125px-Flag_of_Monaco.svg.png','Monaco'),(127,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Mongolia.svg/180px-Flag_of_Mongolia.svg.png','Mongolia'),(128,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_Montenegro.svg/180px-Flag_of_Montenegro.svg.png','Montenegro'),(129,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/150px-Flag_of_Morocco.svg.png','Morocco'),(130,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Flag_of_Mozambique.svg/150px-Flag_of_Mozambique.svg.png','Mozambique'),(131,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Flag_of_Myanmar.svg/150px-Flag_of_Myanmar.svg.png','Myanmar'),(132,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Namibia.svg/150px-Flag_of_Namibia.svg.png','Namibia'),(133,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Flag_of_Nauru.svg/180px-Flag_of_Nauru.svg.png','Nauru'),(134,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Flag_of_Nepal.svg/82px-Flag_of_Nepal.svg.png','Nepal'),(135,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/150px-Flag_of_the_Netherlands.svg.png','Netherlands'),(136,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/180px-Flag_of_New_Zealand.svg.png','New Zealand'),(137,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Nicaragua.svg/167px-Flag_of_Nicaragua.svg.png','Nicaragua'),(138,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Flag_of_Niger.svg/117px-Flag_of_Niger.svg.png','Niger'),(139,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/180px-Flag_of_Nigeria.svg.png','Nigeria'),(140,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Norway.svg/138px-Flag_of_Norway.svg.png','Norway'),(141,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Oman.svg/180px-Flag_of_Oman.svg.png','Oman'),(142,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/150px-Flag_of_Pakistan.svg.png','Pakistan'),(143,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Palau.svg/160px-Flag_of_Palau.svg.png','Palau'),(144,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Palestine.svg/180px-Flag_of_Palestine.svg.png','Palestine'),(145,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/150px-Flag_of_Panama.svg.png','Panama'),(146,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Flag_of_Papua_New_Guinea.svg/133px-Flag_of_Papua_New_Guinea.svg.png','Papua New Guinea'),(147,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Flag_of_Paraguay.svg/180px-Flag_of_Paraguay.svg.png','Paraguay'),(148,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/150px-Flag_of_Peru.svg.png','Peru'),(149,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/180px-Flag_of_the_Philippines.svg.png','Philippines'),(150,'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Flag_of_Poland.svg/160px-Flag_of_Poland.svg.png','Poland'),(151,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/150px-Flag_of_Portugal.svg.png','Portugal'),(152,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_Puerto_Rico.svg/220px-Flag_of_Puerto_Rico.svg.png','Puerto Rico'),(153,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Qatar.svg/180px-Flag_of_Qatar.svg.png','Qatar'),(154,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Romania.svg/150px-Flag_of_Romania.svg.png','Romania'),(155,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/150px-Flag_of_Russia.svg.png','Russia'),(156,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Flag_of_Rwanda.svg/150px-Flag_of_Rwanda.svg.png','Rwanda'),(157,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Saint_Kitts_and_Nevis.svg/150px-Flag_of_Saint_Kitts_and_Nevis.svg.png','Saint Kitts and Nevis'),(158,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Saint_Lucia.svg/180px-Flag_of_Saint_Lucia.svg.png','Saint Lucia'),(159,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Flag_of_Saint_Vincent_and_the_Grenadines.svg/150px-Flag_of_Saint_Vincent_and_the_Grenadines.svg.png','Saint Vincent and the Grenadines'),(160,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Samoa.svg/180px-Flag_of_Samoa.svg.png','Samoa'),(161,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Flag_of_San_Marino.svg/133px-Flag_of_San_Marino.svg.png','San Marino'),(162,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Sao_Tome_and_Principe.svg/180px-Flag_of_Sao_Tome_and_Principe.svg.png','São Tomé and Príncipe'),(163,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/150px-Flag_of_Saudi_Arabia.svg.png','Saudi Arabia'),(164,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Flag_of_Senegal.svg/150px-Flag_of_Senegal.svg.png','Senegal'),(165,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Flag_of_Serbia.svg/150px-Flag_of_Serbia.svg.png','Serbia'),(166,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Seychelles.svg/180px-Flag_of_Seychelles.svg.png','Seychelles'),(167,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Flag_of_Sierra_Leone.svg/150px-Flag_of_Sierra_Leone.svg.png','Sierra Leone'),(168,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/150px-Flag_of_Singapore.svg.png','Singapore'),(169,'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Flag_of_Slovakia.svg/150px-Flag_of_Slovakia.svg.png','Slovakia'),(170,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Slovenia.svg/180px-Flag_of_Slovenia.svg.png','Slovenia'),(171,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Flag_of_the_Solomon_Islands.svg/180px-Flag_of_the_Solomon_Islands.svg.png','Solomon Islands'),(172,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Flag_of_Somalia.svg/150px-Flag_of_Somalia.svg.png','Somalia'),(173,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/150px-Flag_of_South_Africa.svg.png','South Africa'),(174,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/150px-Flag_of_Spain.svg.png','Spain'),(175,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Sri_Lanka.svg/180px-Flag_of_Sri_Lanka.svg.png','Sri Lanka'),(176,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Sudan.svg/180px-Flag_of_Sudan.svg.png','Sudan'),(177,'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Flag_of_South_Sudan.svg/180px-Flag_of_South_Sudan.svg.png','South Sudan'),(178,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Flag_of_Suriname.svg/150px-Flag_of_Suriname.svg.png','Suriname'),(179,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Flag_of_Eswatini.svg/150px-Flag_of_Eswatini.svg.png','Swaziland'),(180,'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Flag_of_Sweden.svg/160px-Flag_of_Sweden.svg.png','Sweden'),(181,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/100px-Flag_of_Switzerland.svg.png','Switzerland'),(182,'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Flag_of_Syria.svg/150px-Flag_of_Syria.svg.png','Syria'),(183,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Flag_of_Tajikistan.svg/180px-Flag_of_Tajikistan.svg.png','Tajikistan'),(184,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tanzania.svg/150px-Flag_of_Tanzania.svg.png','Tanzania'),(185,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/150px-Flag_of_Thailand.svg.png','Thailand'),(186,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Flag_of_East_Timor.svg/180px-Flag_of_East_Timor.svg.png','East Timor'),(187,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Flag_of_Togo.svg/162px-Flag_of_Togo.svg.png','Togo'),(188,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Tonga.svg/180px-Flag_of_Tonga.svg.png','Tonga'),(189,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_Trinidad_and_Tobago.svg/167px-Flag_of_Trinidad_and_Tobago.svg.png','Trinidad and Tobago'),(190,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Tunisia.svg/150px-Flag_of_Tunisia.svg.png','Tunisia'),(191,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/150px-Flag_of_Turkey.svg.png','Turkey'),(192,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Turkmenistan.svg/150px-Flag_of_Turkmenistan.svg.png','Turkmenistan'),(193,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tuvalu.svg/180px-Flag_of_Tuvalu.svg.png','Tuvalu'),(194,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Flag_of_Uganda.svg/150px-Flag_of_Uganda.svg.png','Uganda'),(195,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/150px-Flag_of_Ukraine.svg.png','Ukraine'),(196,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/180px-Flag_of_the_United_Arab_Emirates.svg.png','United Arab Emirates'),(197,'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/180px-Flag_of_the_United_States.svg.png','United States'),(198,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Uruguay.svg/150px-Flag_of_Uruguay.svg.png','Uruguay'),(199,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Flag_of_Uzbekistan.svg/180px-Flag_of_Uzbekistan.svg.png','Uzbekistan'),(200,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Vanuatu.svg/167px-Flag_of_Vanuatu.svg.png','Vanuatu'),(201,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Venezuela.svg/150px-Flag_of_Venezuela.svg.png','Venezuela'),(202,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/150px-Flag_of_Vietnam.svg.png','Vietnam'),(203,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Flag_of_the_United_States_Virgin_Islands.svg/220px-Flag_of_the_United_States_Virgin_Islands.svg.png','Virgin Islands'),(204,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Yemen.svg/150px-Flag_of_Yemen.svg.png','Yemen'),(205,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Zambia.svg/150px-Flag_of_Zambia.svg.png','Zambia'),(206,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/180px-Flag_of_Zimbabwe.svg.png','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycling`
--

LOCK TABLES `cycling` WRITE;
/*!40000 ALTER TABLE `cycling` DISABLE KEYS */;
INSERT INTO `cycling` VALUES (1,67,41,27,23,91),(2,73,32,30,25,87),(3,92,33,16,10,59),(4,197,16,21,18,55),(5,11,14,19,18,51),(6,135,18,19,12,49),(7,71,25,29,27,81),(8,54,7,9,10,26),(9,19,7,7,11,25),(10,155,16,9,20,45),(11,181,5,8,6,19),(12,180,4,5,8,17),(13,174,5,5,5,15),(14,35,1,5,8,14),(15,150,0,7,4,11);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25 15:19:38
