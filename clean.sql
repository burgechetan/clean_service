CREATE DATABASE  IF NOT EXISTS `project_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_db`;
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `fka_login_id` (`login_id`),
  CONSTRAINT `fka_login_id` FOREIGN KEY (`login_id`) REFERENCES `logins` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'akshay','surse',7),(2,'avishkar','patil',8),(3,'chetan','burge',9),(4,'chinmay','sambrekar',10);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fkc_login_id` (`login_id`),
  CONSTRAINT `fkc_login_id` FOREIGN KEY (`login_id`) REFERENCES `logins` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'amit','patil',4),(2,'nishant','dhole',5),(3,'akshay','surve',1),(4,'chetan','borade',3),(5,'chinmay','samb',6),(6,'avishkar','pawar',2);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

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
  `address` varchar(45) NOT NULL,
  `role_id` int NOT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (1,'akshay123','akshaybs@gmail.com','7789456123','165, dattawadi, pune 411030',103,NULL),(2,'avishkar123','avishkarp@gmail.com','9685745698','65, shinde house, shaniwar peth, pune 411033',103,NULL),(3,'chetan123','chetanb@gmail.com','8795642565','87, CB home, sadashiv peth, pune 411030',103,NULL),(4,'amit123','amitp@gmail.com','7654823213','patil villa, shivajinagr, mumbai 411122',103,NULL),(5,'nishant123','nishantd@gmail.com','8755698574','ghokhale nagar , mumbai 411545',103,NULL),(6,'chinmay123','chinmays@gmail.com','9876589785','shanti vihar, vadgao sheri, pune 402030',103,NULL),(7,'akshays123','akshay123@gmail.com','7875274795','sadashiv peth, pune 411030',101,NULL),(8,'avishkarp123','avishkar123@gmail.com','8798529637','karad, satara',101,NULL),(9,'chetanb123','chetan123@gmail.com','7896541236','ambejogai, beed',101,NULL),(10,'chinmays123','chinmay123@gmail.com','9874568527','kankawali, sindhudurg',101,NULL),(11,'patel123','patelcs00@gmail.com','8768754954','shivajinagar, pune',102,NULL),(12,'shaha123','shahacs00@gmail.com','9876547896','cst, near cst station, mumbai',102,NULL),(13,'kartik123','kartikcs00@gmail.com','7531598264','datta nagar, pune ',102,NULL),(14,'gadekar123','gadekarcs00@gmail.com','9874569870','dattawadi, pune 411030',102,NULL);
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `s_id` int NOT NULL,
  `sp_id` int NOT NULL,
  `c_id` int NOT NULL,
  `status_id` int NOT NULL,
  `order_date` datetime DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `fko_spid` (`sp_id`),
  KEY `fko_c_id` (`c_id`),
  KEY `fko_status_id` (`status_id`),
  KEY `fko_s_id` (`s_id`),
  CONSTRAINT `fko_c_id` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  CONSTRAINT `fko_s_id` FOREIGN KEY (`s_id`) REFERENCES `services` (`s_id`),
  CONSTRAINT `fko_spid` FOREIGN KEY (`sp_id`) REFERENCES `service_providers` (`sp_id`),
  CONSTRAINT `fko_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `o_id` int NOT NULL,
  `c_id` int NOT NULL,
  `charges` decimal(9,2) DEFAULT NULL,
  `discount` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `fkp_o_id` (`o_id`),
  KEY `_id` (`c_id`),
  CONSTRAINT `_id` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  CONSTRAINT `fkp_o_id` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (101,'admin'),(102,'service_provider'),(103,'customer');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_providers`
--

DROP TABLE IF EXISTS `service_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_providers` (
  `sp_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `fks_login_id` (`login_id`),
  CONSTRAINT `fks_login_id` FOREIGN KEY (`login_id`) REFERENCES `logins` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_providers`
--

LOCK TABLES `service_providers` WRITE;
/*!40000 ALTER TABLE `service_providers` DISABLE KEYS */;
INSERT INTO `service_providers` VALUES (1,'patel cleaning service',11),(2,'shaha cleaning service',12),(3,'karkik cleaning service',13),(4,'gadekar cleaning service',14);
/*!40000 ALTER TABLE `service_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(45) NOT NULL,
  `descriptions` varchar(350) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `cost` decimal(9,2) NOT NULL,
  `sp_id` int NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `fk_spid` (`sp_id`),
  CONSTRAINT `fk_spid` FOREIGN KEY (`sp_id`) REFERENCES `service_providers` (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1001,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','1 Hr',399.00,1),(1002,'kitchen cleaning','Deep Cleaning Of Kitchen, cleaning of Kitchen tiles and floor. ','1 Hr',489.00,2),(1003,'Home cleaning','Machine scrubbing of the walls and floor.','3 Hr',1799.00,4),(1004,'Kitchen Tops & Tiles cleaning','kitchen deep cleaning, Wiping and mopping of complete floor area.','1 Hr',989.00,1),(1005,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','4 Hr',4999.00,3),(1006,'Home cleaning','Bathroom and kitchen deep cleaning, Wiping and mopping of complete floor area, Cobweb removal and wall dry dusting.','4 Hr',4599.00,3),(1007,'Washroom cleaning','Black spots and dirt stain removal of the complete bathroom,Deep Cleaning Of Bathroom, cleaning of Bathroom tiles and floor.  ','1 Hr',699.00,2),(1008,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','3 Hr',5499.00,4),(1009,'Floor Cleaning','Machine scrubbing of the floor,Wiping and mopping of complete floor area.','2 Hr',2499.00,3),(1010,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','1 Hr',399.00,2),(1011,'kitchen cleaning','Deep Cleaning Of Kitchen, cleaning of Kitchen tiles and floor. ','1 Hr',489.00,3),(1012,'Home cleaning','Machine scrubbing of the walls and floor.','3 Hr',1799.00,2),(1013,'Kitchen Tops & Tiles cleaning','kitchen deep cleaning, Wiping and mopping of complete floor area.','1 Hr',989.00,4),(1014,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','4 Hr',4999.00,2),(1015,'Home cleaning(deep)','Bathroom and kitchen deep cleaning, Wiping and mopping of complete floor area, Cobweb removal and wall dry dusting.','4 Hr',4599.00,4),(1016,'Washroom cleaning','Black spots and dirt stain removal of the complete bathroom,Deep Cleaning Of Bathroom, cleaning of Bathroom tiles and floor.','1 Hr',699.00,1),(1017,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','1 Hr',399.00,3),(1018,'Home cleaning','Machine scrubbing of the walls and floor.','3 Hr',1799.00,1),(1019,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','1 Hr',399.00,4),(1020,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','4 Hr',4999.00,1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Booked'),(2,'Completed'),(3,'Cancelled');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 15:41:32
