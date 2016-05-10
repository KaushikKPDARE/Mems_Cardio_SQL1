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
-- Table structure for table `patient_msg_table`
--

DROP TABLE IF EXISTS `patient_msg_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_msg_table` (
  `TIME` timestamp NULL DEFAULT NULL,
  `VITAL_SIGN_ID` int(11) DEFAULT NULL,
  `ALERT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE_ID` int(11) DEFAULT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ALERT_ID`),
  KEY `VITAL_SIGN_IDFKP_idx` (`VITAL_SIGN_ID`),
  KEY `EMPLOYEE_IDFKP_idx` (`EMPLOYEE_ID`),
  KEY `PATIENT_IDFKP_idx` (`PATIENT_ID`),
  CONSTRAINT `EMPLOYEE_IDFKPM` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `hosp_employee` (`EMPLOYEE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PATIENT_IDFKPM` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `VITAL_SIGN_IDFKPM` FOREIGN KEY (`VITAL_SIGN_ID`) REFERENCES `deduced_vital_data` (`VITAL_SIGN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_msg_table`
--

LOCK TABLES `patient_msg_table` WRITE;
/*!40000 ALTER TABLE `patient_msg_table` DISABLE KEYS */;
INSERT INTO `patient_msg_table` VALUES ('2015-09-05 16:40:00',15,1,1,1,1);
/*!40000 ALTER TABLE `patient_msg_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 20:09:39