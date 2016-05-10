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
-- Table structure for table `ideal_pre-diagnosis_test_result`
--

DROP TABLE IF EXISTS `ideal_pre-diagnosis_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideal_pre-diagnosis_test_result` (
  `REF_ID` int(11) NOT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `MAX_AGE` int(11) DEFAULT NULL,
  `MIN_AGE` int(11) DEFAULT NULL,
  `CHEST_PAIN` varchar(45) DEFAULT NULL,
  `DYSPNEA` varchar(45) DEFAULT NULL,
  `HEART_BEAT` int(11) DEFAULT NULL,
  `FATIGUE` varchar(45) DEFAULT NULL,
  `SWEATING` varchar(45) DEFAULT NULL,
  `DIABETES` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`REF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ideal_pre-diagnosis_test_result`
--

LOCK TABLES `ideal_pre-diagnosis_test_result` WRITE;
/*!40000 ALTER TABLE `ideal_pre-diagnosis_test_result` DISABLE KEYS */;
INSERT INTO `ideal_pre-diagnosis_test_result` VALUES (1,'MALE',44,30,'YES','NO',85,'YES','YES','NO'),(2,'MALE',59,45,'YES','YES',65,'YES','YES','NO'),(3,'MALE',100,60,'YES','YES',60,'YES','YES','YES'),(4,'FEMALE',44,30,'NO','NO',74,'NO','NO','NO'),(5,'FEMALE',59,45,'YES','YES',64,'YES','YES','NO'),(6,'FEMALE',100,60,'YES','YES',58,'YES','YES','YES');
/*!40000 ALTER TABLE `ideal_pre-diagnosis_test_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 20:09:43
