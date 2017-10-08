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
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_table` (
  `id_vehicle_table` int(11) NOT NULL AUTO_INCREMENT,
  `model_vehicle_tablecol` varchar(45) DEFAULT NULL,
  `picture_vehicle_tablecol` varchar(200) DEFAULT NULL,
  `name_vehicle_tablecol` varchar(45) DEFAULT NULL,
  `regnumber_vehicle_tablecol` varchar(45) DEFAULT NULL,
  `regdate_vehicle_tablecol` varchar(45) DEFAULT NULL,
  `country_vehicle_tablecol` varchar(45) DEFAULT NULL,
  `videolink_vehicle_tablecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vehicle_table`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_table`
--

LOCK TABLES `vehicle_table` WRITE;
/*!40000 ALTER TABLE `vehicle_table` DISABLE KEYS */;
INSERT INTO `vehicle_table` VALUES (1,'toyota',NULL,'car','gq 3423',NULL,'japan',NULL),(2,'nissan',NULL,'van','ww 2345',NULL,'japan',NULL),(3,'jaguar',NULL,'jag car','ee 2324',NULL,'japan',NULL),(4,'maruti',NULL,'indi car','rr3235',NULL,'japan',NULL);
/*!40000 ALTER TABLE `vehicle_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-05 16:32:57
