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
-- Table structure for table `owner_table`
--

DROP TABLE IF EXISTS `owner_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_table` (
  `id_owner_table` int(11) NOT NULL AUTO_INCREMENT,
  `name_owner_tablecol` varchar(45) DEFAULT NULL,
  `age_owner_tablecol` varchar(45) DEFAULT NULL,
  `location_owner_tablecol` varchar(45) DEFAULT NULL,
  `gender_owner_tablecol` varchar(45) DEFAULT NULL,
  `email_owner_tablecol` varchar(45) DEFAULT NULL,
  `jdate_owner_tablecol` varchar(45) DEFAULT NULL,
  `lsdate_owner_tablecol` varchar(45) DEFAULT NULL,
  `des_owner_tablecol` varchar(500) DEFAULT NULL,
  `username_owner_tablecol` varchar(45) DEFAULT NULL,
  `password_owner_tablecol` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_owner_table`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_table`
--

LOCK TABLES `owner_table` WRITE;
/*!40000 ALTER TABLE `owner_table` DISABLE KEYS */;
INSERT INTO `owner_table` VALUES (1,'ann','10','kottawa',NULL,'admin',NULL,NULL,NULL,NULL,NULL),(2,'bob','11','nugegoda',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'cat','12','malabe',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'dayana','14','dehiwela',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'din','din','din','male','din',NULL,NULL,NULL,NULL,NULL),(6,'x','x','x','male','x',NULL,NULL,NULL,NULL,NULL),(7,'','','','female','',NULL,NULL,NULL,NULL,NULL),(8,'q','q','q','male','sdsfd',NULL,NULL,NULL,NULL,NULL),(9,'w','w','w','male','w',NULL,NULL,NULL,NULL,NULL),(10,'wwww','2222','wwww','ffff','wwww','www','ww','wwwwwwwwwwwwwwwww','wwww','wwwww'),(11,'v','v','v','female','v','10/5/2017',NULL,'v','v',NULL);
/*!40000 ALTER TABLE `owner_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-05 16:33:14