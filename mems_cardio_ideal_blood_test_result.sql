CREATE DATABASE  IF NOT EXISTS `mems_cardio` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mems_cardio`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mems_cardio
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `ideal_blood_test_result`
--

DROP TABLE IF EXISTS `ideal_blood_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideal_blood_test_result` (
  `REF_ID` int(11) NOT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `MAX_AGE` int(11) DEFAULT NULL,
  `MIN_AGE` int(11) DEFAULT NULL,
  `TEMPERATURE` decimal(8,2) DEFAULT NULL,
  `HDL` decimal(8,2) DEFAULT NULL,
  `LDL` decimal(8,2) DEFAULT NULL,
  `TROPONIN` decimal(8,2) DEFAULT NULL,
  `CREATINE_KINASE` decimal(8,2) DEFAULT NULL,
  `MYGLOBIN` decimal(8,2) DEFAULT NULL,
  `BP` int(11) DEFAULT NULL,
  PRIMARY KEY (`REF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ideal_blood_test_result`
--

LOCK TABLES `ideal_blood_test_result` WRITE;
/*!40000 ALTER TABLE `ideal_blood_test_result` DISABLE KEYS */;
INSERT INTO `ideal_blood_test_result` VALUES (1,'MALE',44,30,98.40,60.20,110.10,13.20,309.24,35.20,106),(2,'MALE',59,45,97.20,43.30,150.60,15.30,224.22,70.70,110),(3,'MALE',100,60,96.00,40.40,155.50,17.40,130.85,80.90,116),(4,'FEMALE',44,30,98.40,60.20,100.40,9.60,309.24,31.60,101),(5,'FEMALE',59,45,97.20,43.30,135.60,13.70,224.22,55.40,105),(6,'FEMALE',100,60,96.00,40.40,150.20,15.80,130.85,75.50,112);
/*!40000 ALTER TABLE `ideal_blood_test_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 20:09:46
