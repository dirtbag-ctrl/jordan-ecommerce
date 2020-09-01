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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `imagePath` varchar(100) NOT NULL,
  `prod_title` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `size` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'../images/retro 1.png','Jordan 1 Shattered Backboards',400,10,100),(2,'../images/retro 5.png','Jordan 5 Camo',280,9,80),(3,'../images/jordan 3.png','Jordan 3 Black Cement',350,10,20),(4,'../images/retro 6.png','Jordan 6 Cactus Jack',500,9,90),(5,'../images/retro 11.png','Jordan 11 Playoff Breds',450,11,50),(6,'../images/retro 8.png','Jordan 8 Playoffs',340,11,40),(7,'../images/retro 14.png','Jordan 14 Yellow Ferrrari',600,6,30),(8,'../images/retro .png','Jordan 9 Motorboat Jones',900,10,20),(9,'../images/img1.png','Jordan 10 Bulls-Overway',450,11,80),(10,'../images/img5.png','Jordan 14 Oxidised Green',300,8,80),(11,'../images/img6.png','Jordan 5 Trophy Room',550,9,100),(12,'../images/img4.png','Jordan 4 Cactus Jack',400,10,20),(13,'../images/img2.png','Jordan 10 Summit White',300,9,50),(14,'../images/img8.png','Jordan 14 Supreme',600,11,40),(15,'../images/img3.png','Jordan 7 Black Gloss',250,12,100),(16,'../images/img7.png','Jordan 9 Dream It',425,8,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
