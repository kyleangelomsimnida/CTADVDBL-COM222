-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: grab
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `reference_number`
--

DROP TABLE IF EXISTS `reference_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_number` (
  `reference_numberID` int NOT NULL,
  `ref_num_driver` int NOT NULL,
  `ref_num_customer` int NOT NULL,
  `ref_num_vehicle` int NOT NULL,
  `date` date NOT NULL,
  `time` varchar(45) NOT NULL,
  `location` varchar(255) NOT NULL,
  `decsription` varchar(255) NOT NULL,
  PRIMARY KEY (`reference_numberID`),
  KEY `ref_num_vehicle_idx` (`ref_num_vehicle`),
  KEY `ref_num_customer_idx` (`ref_num_customer`),
  KEY `ref_num_driver_idx` (`ref_num_driver`),
  CONSTRAINT `ref_num_customer` FOREIGN KEY (`ref_num_customer`) REFERENCES `customer` (`cus_id`),
  CONSTRAINT `ref_num_driver` FOREIGN KEY (`ref_num_driver`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `ref_num_vehicle` FOREIGN KEY (`ref_num_vehicle`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_number`
--

LOCK TABLES `reference_number` WRITE;
/*!40000 ALTER TABLE `reference_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23 19:12:19
