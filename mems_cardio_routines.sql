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
-- Temporary view structure for view `doc_view`
--

DROP TABLE IF EXISTS `doc_view`;
/*!50001 DROP VIEW IF EXISTS `doc_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `doc_view` AS SELECT 
 1 AS `NAME`,
 1 AS `TIME`,
 1 AS `PLAQUE_SIZE`,
 1 AS `PLAQUE_OCCURENCE`,
 1 AS `BP`,
 1 AS `HEART_BEAT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pat_view`
--

DROP TABLE IF EXISTS `pat_view`;
/*!50001 DROP VIEW IF EXISTS `pat_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pat_view` AS SELECT 
 1 AS `MECH_SYS_ID`,
 1 AS `TIME`,
 1 AS `BP`,
 1 AS `HEART_BEAT`,
 1 AS `MESSAGE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `doc_view`
--

/*!50001 DROP VIEW IF EXISTS `doc_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doc_view` AS (select distinct `per`.`NAME` AS `NAME`,`d`.`TIME` AS `TIME`,`d`.`PLAQUE_SIZE` AS `PLAQUE_SIZE`,`d`.`PLAQUE_OCCURENCE` AS `PLAQUE_OCCURENCE`,`d`.`BP` AS `BP`,`p`.`HEART_BEAT` AS `HEART_BEAT` from ((`patient_side_app` `p` join `deduced_vital_data` `d` on((`p`.`P_ID` = `d`.`VITAL_SIGN_ID`))) join `person` `per` on((`p`.`PERSON_ID` = `per`.`PERSON_ID`))) where `per`.`PERSON_ID` in (select `patient`.`PERSON_ID` from `patient`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pat_view`
--

/*!50001 DROP VIEW IF EXISTS `pat_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pat_view` AS (select `d`.`MECH_SYS_ID` AS `MECH_SYS_ID`,`d`.`TIME` AS `TIME`,`d`.`BP` AS `BP`,`p`.`HEART_BEAT` AS `HEART_BEAT`,`p`.`MESSAGE` AS `MESSAGE` from (`deduced_vital_data` `d` join `patient_side_app` `p` on((`d`.`VITAL_SIGN_ID` = `p`.`P_ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'mems_cardio'
--

--
-- Dumping routines for database 'mems_cardio'
--
/*!50003 DROP FUNCTION IF EXISTS `NanoSurgery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NanoSurgery`(diameter int) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE plaque_removal int;
    DECLARE Cardiac_op decimal(8,2);
   WHILE diameter<2900 DO
    
    SET plaque_removal=1;
    set diameter = diameter+1;
  END WHILE;
  SET Cardiac_op= ((Select bp from deduced_data)/(Select resis from deduced_data));
 
 RETURN (Cardiac_op);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `navigation2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `navigation2`(cardiac_op int) RETURNS varchar(45) CHARSET utf8
    DETERMINISTIC
BEGIN
DECLARE DIRECTION varchar(45);
DECLARE dia INT;
IF cardiac_op > 7 THEN
SET DIRECTION = ‘LEFT’;
while(dia>=2900) do
SET   dia= microsonar.getDiamater();
SET cardiac_op = nano_surgery(diameter);
END WHILE;

ELSEIF cardiac_op < 4 THEN
while(dia>=2900)do
SET   dia= microsonar.getDiamater();
SET cardiac_op = function_nanoSurgery();
 END WHILE;
 SET DIRECTION = ‘RIGHT’;
END IF;
RETURN (DIRECTION);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(SSN INT,NAME VARCHAR(45),AGE INT(11), ADDRESS VARCHAR(45), CONTACT VARCHAR(45), PATIENT_TYPE VARCHAR(45), 
EMPLOYEE_TYPE VARCHAR(45))
BEGIN

 INSERT INTO PERSON VALUES(SSN,'NAME',AGE,'ADDRESS','CONTACT');

   

    SELECT *FROM PERSON WHERE PERSON_ID = (SELECT MAX(PERSON_ID) FROM PERSON);

    IF (PATIENT_TYPE!=NULL and EMPLOYEE_TYPE=NULL) THEN

    INSERT INTO PATIENT VALUES (PATIENT_TYPE,PERSON_ID);

    ELSEIF (PATIENT_TYPE!=NULL and EMPLOYEE_TYPE is NULL) THEN

    INSERT INTO EMPLOYEE VALUES (EMPLOYEE_TYPE,PERSON_ID);
    
    
 END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `compareTables_bloodTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `compareTables_bloodTest`(IN GENDER VARCHAR(30), IN AGE int, HDL float, LDL float)
BEGIN 
DECLARE patient_status varchar(100);
IF GENDER like "M" THEN 
	IF (AGE > 30 && AGE < 44) THEN
		IF ( HDL<60,20 && LDL>110.10)
		THEN SET patient_status='Arteriosceloris';
		END IF;

	ELSEIF (AGE > 45 && AGE < 59) THEN
		IF ( HDL<43.30 && LDL>150.60)
		THEN SET patient_status= 'Arteriosceloris';
        END IF;

	ELSEIF ( AGE> 60 && AGE < 100) THEN
		IF ( HDL<40.40 && LDL>155.50)
		THEN SET patient_status='Arteriosceloris';
        END IF;
END IF;
ELSEIF GENDER like "F" THEN 
	IF (AGE > 30 && AGE < 44) THEN
		IF ( HDL<60.20 && LDL>100.40)
		THEN SET patient_status='Arteriosceloris';
		END IF;

	ELSEIF (AGE > 45 && AGE < 59) THEN
		IF ( HDL<43.30 && LDL>135.60)
		THEN SET patient_status='Arteriosceloris';
		END IF;

	ELSEIF (AGE > 60 && AGE < 100) THEN
		IF ( HDL<40.40 && LDL>150.20)
		THEN SET patient_status='Arteriosceloris';    
		END IF; 
END IF;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MAIN_OPERATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MAIN_OPERATION`(IN diameter int,  IN cardiac_op int)
BEGIN

CALL Navigation2(cardiac_op);
CALL NanoSurgery(diameter);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 20:09:47
