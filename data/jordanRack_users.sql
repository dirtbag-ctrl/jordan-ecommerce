CREATE DATABASE  IF NOT EXISTS `jordanRack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jordanRack`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: jordanRack
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `firstName` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'not set',
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jdirtbag20@gmail.com','Gilbert','$2b$10$95iv45kBmpOs3Rj4KxS5QuExNjgOEnlqk7dsYdlqMmRv3dO2yoLZa'),(2,'gilbertxyoung1@hotmail.com','James','$2b$10$yFhzFANSVIUaFU5/zQxpK.DEC/mZzXCQUYyX6j7WNAg3iEl.W4hlC'),(3,'dealerspike@gmail.com','Dealer Spike','$2b$10$nat6gd6QHMyCOODYRyCLDe.GQO3QhJ2JxRWeksJguu0giaK/4QEHO'),(4,'trial@gmail.com','Trial12','$2b$10$/AP6Y9vLteRlQ8DW1ICtfe.QsgZrxH9K91axw0zAwQqWcKhtPMYYC'),(5,'vernelle@gmail.com','Vernelle','$2b$10$BiMdFzXjKNWuiIEeoLAYne93i5394XRg3eufrtB1yn6gsuU1ZAkCu'),(6,'zane12@gmail.com','zane1','$2b$10$N3W./GtSglO1fTYEBL1ICeGfUVeZb7xHYaVBdjLRxEd8zpDJCbZMe'),(7,'tester@gmail.com','Carlos ','$2b$10$S4baTMRSNOjZ60WaJnAcOuYSkQnarvLhXdCV12cBuowSExW8zUC.q'),(8,'adolfoolivera15@gmail.com','Adolfo','$2b$10$bkjT/Kup4y.DzRmhwq5o0.7UKHgXpN2hGAxhxHRHszL1V5mrP1Gdm');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01 11:52:35
