-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: phount
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `novices`
--

DROP TABLE IF EXISTS `novices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novices` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novices`
--

LOCK TABLES `novices` WRITE;
/*!40000 ALTER TABLE `novices` DISABLE KEYS */;
INSERT INTO `novices` VALUES (1,'sLannen','test1234','shuddhabha@lannen.com','123-098-7654','Shuddhabha','Lannen','123 Main St','#5','Missoula',30,'59801','USA'),(6,'eAker','test123','eric@janes.com','+15555559999','Eric','Aker','123 Janes Boulevard','#15','Long Beach',1,'90712','United States'),(7,'bCanty','test1234','brendan@fugazi.com','9995551234','Brendan','Canty','567 Main','Circle','Washington',9,'00001','United States'),(8,'bCanty','test1234','brendan@fugazi.com','9995551234','Brendan','Canty','567 Main','Circle','Washington',9,'00001','United States'),(9,'MarkLannen','test123','mark@lannen.com','867 5309','Mark','Lannen','656 Main St','#5','Missoula',27,'59801','USA'),(10,'nPeart','test123','neal@rush.com','3456789012','Neal','Peart','123 Main','#4','Santa Cruz',5,'11111','USA'),(11,'nPeart','test123','neal@rush.com','3456789012','Neal','Peart','123 Main','#4','Santa Cruz',5,'11111','USA'),(12,'MarkLannen','test123','mark@lannen.com','867 5309','Mark','Lannen','656 Main St','#5','Missoula',27,'59801','USA'),(13,'MarkLannen','test123','mark@lannen.com','867 5309','Mark','Lannen','656 Main St','#5','Missoula',27,'59801','USA'),(14,'MarkLannen','test123','mark@lannen.com','867 5309','Mark','Lannen','656 Main St','#5','Missoula',27,'59801','USA'),(15,'MarkLannen','test123','mark@lannen.com','867 5309','Mark','Lannen','656 Main St','#5','Missoula',27,'59801','USA'),(16,'jRotten','test123','johnny@pistols.com','1234565789','Johnny','Rotten','76 Anarchy Way','Apt. 15','Los Angeles',5,'12335','United States'),(17,'jRotten','test123','johnny@pistols.com','1234565789','Johnny','Rotten','76 Anarchy Way','Apt. 15','Los Angeles',5,'12335','United States'),(18,'jRamone','test123','joey@ramones.com','1234565789','Joey','Ramone','#1 End of Century Way','Apt. 15','New York',33,'12335','United States');
/*!40000 ALTER TABLE `novices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 19:34:40
