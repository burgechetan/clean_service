-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logins` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `role_id` int NOT NULL,
  `status` tinyint DEFAULT (0),
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FKt7f0gr2o4iphv61wwgcwuem2e` (`role_id`),
  CONSTRAINT `FKt7f0gr2o4iphv61wwgcwuem2e` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (22,'Clean@123','clean@gmail.com','1111111111','a/p satara , maharshtra',1,1),(36,'LUL8eEpRejd9wDFJV4uM7dRfHsD1i3fS7+AZUNAJXbA=','surseabs@gmail.com','1244212456','A/p kille machindra gad tal : walawa Dist: sangli',1,0),(37,'5+174BPjFHIBioK+8qo4mD94DbcAn39sG+jPuK106Og=','','1','A/p Shere , Tal : Karad , Dist : Satara.',1,0),(39,'huXZ2kZ5RvYm9m28rKQkK6svHJ8O3zFqT1vnglvhFDw=','avishkarpatil11@gmail.com','1111111112','A/p Shere , Tal : Karad , Dist : Satara.',1,0),(43,'GopgyiLk8kh9WtbHspxCn+axA9jH0agBvsH6bdfrP7c=','chetan@gmail.com','9890390411','pune',2,1),(44,'5Tlap+rPdzwdfaK6xWtVWsC+lurBCBJSsuTJCEGshtc=','akshay@gmail.com','7779274791','pune',3,1),(45,'QfmvqUuCFjC/KZMlnehgEgamtW394vFze8aXmwrSv6k=','avishkar@gmail.com','7028857987','A/p Shere , Tal : Karad , Dist : Satara.',1,1),(46,'feOss1cNPFnkFULt6jXDmYjlXnpiDIqGleD75q/34FE=','prajwal@gmail.com','7796428498','pune',2,1),(47,'wE6w/wui4/2AEvVYPwgfsq3mZxRyKT8WwvByLEpIm10=','omkar@gmail.com','9309143125','pune',2,1),(48,'wd7MvN2F7RpE7NsNXRZrDG6u7aq5kBjH9dYrXbmUJe8=','rohit@gmail.com','9850576618','pune',2,1),(49,'0T9beWX4capRhGcXmY0SOAY04dRlukrQdAbU7RPlAbI=','shyam@gmail.com','9975425346','pune',2,1),(50,'+kHcPAPMEaTPkL402CzQFpUcWyx9xvX1rVBBLL0Nlto=','patil@gmail.com','8668614500','pune',2,1),(51,'WWxr/CHCQoRBsMEkIC1pfXUTONmHNitoWSMvig+/Wyo=','suraj@gmail.com','9975425348','pune',2,1);
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 22:55:12
