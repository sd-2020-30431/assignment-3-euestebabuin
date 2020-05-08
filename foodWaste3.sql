-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: foodwaste
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `user_UNIQUE` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Luca Manea','asdfghj'),(2,'ilinca','ilinca2020');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groceries`
--

DROP TABLE IF EXISTS `groceries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `groceries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` int(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `kcal` int(10) unsigned NOT NULL,
  `buydate` varchar(45) DEFAULT NULL,
  `expdate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groceries`
--

LOCK TABLES `groceries` WRITE;
/*!40000 ALTER TABLE `groceries` DISABLE KEYS */;
INSERT INTO `groceries` VALUES (6,2,'cartof',24,150,'04-04-2020','12-04-2020'),(10,2,'martinii',1,400,'04-04-2020','05-04-2020'),(11,2,'jeleuri',4,800,'04-04-2020','12-02-2021'),(14,1,'Cheese',1,300,'12-03-2020','14-03-2020'),(21,1,'Big Burger',3,1500,'25-04-2020','27-04-2020'),(38,1,'Big Pizza',2,2500,'25-04-2020','26-04-2020'),(40,1,'Fries',5,200,'26-04-2020','31-04-2020'),(41,1,'Bread',2,500,'26-04-2020','01-05-2020'),(43,2,'lapte',1,150,'26-04-2020','12-02-2021'),(68,1,'Potatoes',2,100,'08-05-2020','08-07-2020'),(69,1,'Huge Pizza',2,5000,'08-05-2020','15-05-2020'),(70,1,'Expired cheese',1,300,'08-05-2020','07-05-2020');
/*!40000 ALTER TABLE `groceries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-08 20:44:03
