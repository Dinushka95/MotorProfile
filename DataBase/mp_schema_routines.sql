CREATE DATABASE  IF NOT EXISTS `mp_schema` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mp_schema`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com    Database: mp_schema
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Dumping routines for database 'mp_schema'
--
/*!50003 DROP PROCEDURE IF EXISTS `CreateOwner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`motorprofile`@`%` PROCEDURE `CreateOwner`(name varchar(50),
														age varchar(50) ,
														location varchar(50),
                                                        gender varchar(50),
                                                        email varchar(100),
                                                        jdate varchar(50),
                                                        lsdate varchar(50),
                                                        description varchar(500),
                                                        username varchar(50),
														password varchar(100))
BEGIN
INSERT INTO `mp_schema`.`owner_table`
(`name_owner_tablecol`,
`age_owner_tablecol`,
`location_owner_tablecol`,
`gender_owner_tablecol`,
`email_owner_tablecol`,
`jdate_owner_tablecol`,
`lsdate_owner_tablecol`,
`des_owner_tablecol`,
`username_owner_tablecol`,
`password_owner_tablecol`)
VALUES
(name,
age,
location,
gender,
email,
jdate,
lsdate,
description,
username,
password);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LoginOwner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`motorprofile`@`%` PROCEDURE `LoginOwner`(in username varbinary(50),in password varchar(300) ,out id int)
BEGIN
	select id_owner_table into id  FROM `mp_schema`.`owner_table` where  `owner_table`.`username_owner_tablecol`=username and
    `owner_table`.`password_owner_tablecol` = password ;

	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ownersearchtest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`motorprofile`@`%` PROCEDURE `ownersearchtest`(in searcid int, out name1 varchar(50))
BEGIN
	SELECT 
    `owner_table`.`name_owner_tablecol` INTO name1
FROM `mp_schema`.`owner_table`where `owner_table`.`id_owner_table` = searcid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vehicleiown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`motorprofile`@`%` PROCEDURE `vehicleiown`(in username varchar(50))
BEGIN


SELECT 
	`myvehicle_table`.`idowner_myvehicle_tablecol`,
	`vehicle_table`.`id_vehicle_table`,
    `vehicle_table`.`model_vehicle_tablecol`,
    `vehicle_table`.`picture_vehicle_tablecol`,
    `vehicle_table`.`name_vehicle_tablecol`,
    `vehicle_table`.`regnumber_vehicle_tablecol`,
    `vehicle_table`.`regdate_vehicle_tablecol`,
    `vehicle_table`.`country_vehicle_tablecol`,
    `vehicle_table`.`videolink_vehicle_tablecol`,
    `myvehicle_table`.`soldornot_myvehicle_tablecol`
FROM mp_schema.myvehicle_table 
LEFT JOIN mp_schema.vehicle_table 
on idvehicle_myvehicle_tablecol = id_vehicle_table 
group by id_vehicle_table 
having idowner_myvehicle_tablecol =(
    SELECT id_owner_table 
    FROM mp_schema.owner_table 
    where username_owner_tablecol = username);
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

-- Dump completed on 2017-10-11  5:15:29
