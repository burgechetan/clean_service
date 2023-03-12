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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(45) NOT NULL,
  `description` varchar(350) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `cost` decimal(9,2) NOT NULL,
  `sp_id` int DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1001,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','00:00:01',399.00,1),(1002,'kitchen cleaning','Deep Cleaning Of Kitchen, cleaning of Kitchen tiles and floor. ','00:00:01',489.00,2),(1003,'Home cleaning','Machine scrubbing of the walls and floor.','00:00:03',1799.00,4),(1004,'Kitchen Tops & Tiles cleaning','kitchen deep cleaning, Wiping and mopping of complete floor area.','00:00:01',989.00,1),(1005,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','00:00:04',4999.00,3),(1006,'Home cleaning','Bathroom and kitchen deep cleaning, Wiping and mopping of complete floor area, Cobweb removal and wall dry dusting.','00:00:04',4599.00,3),(1007,'Washroom cleaning','Black spots and dirt stain removal of the complete bathroom,Deep Cleaning Of Bathroom, cleaning of Bathroom tiles and floor.  ','00:00:01',699.00,2),(1008,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','00:00:03',5499.00,4),(1009,'Floor Cleaning','Machine scrubbing of the floor,Wiping and mopping of complete floor area.','00:00:02',2499.00,3),(1011,'kitchen cleaning','Deep Cleaning Of Kitchen, cleaning of Kitchen tiles and floor. ','00:00:01',489.00,3),(1012,'Home cleaning','Machine scrubbing of the walls and floor.','00:00:03',1799.00,2),(1013,'Kitchen Tops & Tiles cleaning','kitchen deep cleaning, Wiping and mopping of complete floor area.','00:00:01',989.00,4),(1014,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','00:00:04',4999.00,2),(1015,'Home cleaning(deep)','Bathroom and kitchen deep cleaning, Wiping and mopping of complete floor area, Cobweb removal and wall dry dusting.','00:00:04',4599.00,4),(1016,'Washroom cleaning','Black spots and dirt stain removal of the complete bathroom,Deep Cleaning Of Bathroom, cleaning of Bathroom tiles and floor.','00:00:01',699.00,1),(1017,'Bathroom cleaning','Black spots and dirt stain removal of the complete bathroom','00:00:01',399.00,3),(1018,'Home cleaning','Machine scrubbing of the walls and floor.','00:00:03',1799.00,1),(1020,'Office cleaning','Furniture and appliances dusting and wet wiping, also Machine cleaning of floors, doors and windows.','00:00:04',4999.00,1),(1072,'Kitchen Tops & Tiles cleaning','bathroom cleaning','3:03',34.00,25);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 22:55:13
