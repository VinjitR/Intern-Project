-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 68.178.217.52    Database: marauto
-- ------------------------------------------------------
-- Server version	5.5.43-37.2-log

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
-- Table structure for table `Tariff`
--

DROP TABLE IF EXISTS `Tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tariff` (
  `TariffId` int(11) NOT NULL,
  `disno` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `dcharge` float DEFAULT NULL,
  `echarge` float DEFAULT NULL,
  PRIMARY KEY (`TariffId`),
  KEY `DisNo` (`disno`),
  KEY `SID` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tariff`
--

LOCK TABLES `Tariff` WRITE;
/*!40000 ALTER TABLE `Tariff` DISABLE KEYS */;
INSERT INTO `Tariff` VALUES (1,1,1,475,6.72),(2,1,2,475,6.98),(3,1,3,475,7.66),(4,2,1,475,6.72),(5,2,2,475,6.98),(6,2,3,475,7.66),(7,3,4,250,6.72),(8,3,5,250,3.75),(9,4,1,235,11.35),(10,4,2,235,11.35),(11,4,3,235,11.35),(12,5,1,540,5.5),(13,5,2,430,6.1),(14,5,3,300,6.3),(15,6,6,100,0),(16,6,7,200,0),(17,6,8,270,0),(18,6,18,0,3.9),(19,6,19,0,4.1),(20,6,20,0,4.2),(21,7,6,150,NULL),(22,7,7,260,NULL),(23,7,8,475,NULL),(24,7,18,NULL,4),(25,7,19,NULL,4.2),(26,7,20,NULL,4.3),(27,8,6,150,NULL),(28,8,7,260,NULL),(29,8,8,475,NULL),(30,8,18,NULL,4),(31,8,19,NULL,4.2),(32,8,20,NULL,4.3),(33,9,6,150,NULL),(34,9,7,260,NULL),(35,9,8,475,NULL),(36,9,18,NULL,4),(37,9,19,NULL,4.2),(38,9,20,NULL,7.3),(39,10,9,220,7.8),(40,11,9,200,7.7),(41,12,10,384,6.965),(42,12,2,384,6.47),(43,13,9,400,NULL),(44,13,21,NULL,6.3),(45,13,22,NULL,7.3),(46,14,23,120,5.1),(47,14,11,110,4.85),(48,14,12,170,4.75),(49,15,9,60,6.98),(50,16,3,136.5,2.95),(51,16,2,136.2,2.86),(52,17,3,320,7.5),(53,17,2,360,7.8),(54,18,3,360,7.8),(55,18,13,400,8.15),(56,19,14,350,5.91),(57,19,1,350,6.01),(58,19,2,350,6.36),(59,19,3,350,6.71),(60,20,3,250,4.3),(61,20,2,250,4.3),(62,20,5,250,4.2),(63,21,9,190,8.35),(64,22,9,185,7.3),(65,23,9,190,8.35),(66,24,3,300,6.2),(67,24,2,300,6.15),(68,24,1,300,6.1),(69,25,3,270,5.85),(70,25,2,270,5.65),(71,25,1,270,5.55),(72,26,9,200,6.6),(73,27,9,250,8),(74,28,9,250,8),(75,29,9,70,5.5),(76,30,9,160,7.6),(77,31,9,170,6.3),(78,32,3,170,6.65),(79,32,2,170,6.56),(80,32,25,170,6.45),(81,32,14,170,6.35),(82,32,15,170,6.25),(83,33,16,75,5.6),(84,33,17,75,5.45),(85,34,9,50,7.12);
/*!40000 ALTER TABLE `Tariff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-11 11:18:26