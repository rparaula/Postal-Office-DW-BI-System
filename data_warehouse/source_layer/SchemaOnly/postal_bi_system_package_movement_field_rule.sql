CREATE DATABASE  IF NOT EXISTS `postal_bi_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `postal_bi_system`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: post-office-mysql.mysql.database.azure.com    Database: postal_bi_system
-- ------------------------------------------------------
-- Server version	8.0.44-azure

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
-- Table structure for table `package_movement_field_rule`
--

DROP TABLE IF EXISTS `package_movement_field_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_movement_field_rule` (
  `package_movement_event_type_id` int NOT NULL,
  `requires_facility_id` tinyint(1) NOT NULL DEFAULT '1',
  `requires_from_facility_id` tinyint(1) NOT NULL DEFAULT '0',
  `requires_to_facility_id` tinyint(1) NOT NULL DEFAULT '0',
  `allows_from_facility_id` tinyint(1) NOT NULL DEFAULT '1',
  `allows_to_facility_id` tinyint(1) NOT NULL DEFAULT '1',
  `facility_id_must_equal_from_facility_id` tinyint(1) NOT NULL DEFAULT '0',
  `facility_id_must_equal_to_facility_id` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`package_movement_event_type_id`),
  CONSTRAINT `fk_pmfr_event_type` FOREIGN KEY (`package_movement_event_type_id`) REFERENCES `package_movement_event_type` (`package_movement_event_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_pmfr_allows_from_facility_id` CHECK ((`allows_from_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_allows_to_facility_id` CHECK ((`allows_to_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_facility_equals_from_flag` CHECK ((`facility_id_must_equal_from_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_facility_equals_from_requires_from` CHECK (((`facility_id_must_equal_from_facility_id` = 0) or (`requires_from_facility_id` = 1))),
  CONSTRAINT `chk_pmfr_facility_equals_to_flag` CHECK ((`facility_id_must_equal_to_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_facility_equals_to_requires_to` CHECK (((`facility_id_must_equal_to_facility_id` = 0) or (`requires_to_facility_id` = 1))),
  CONSTRAINT `chk_pmfr_requires_facility_id` CHECK ((`requires_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_requires_from_facility_id` CHECK ((`requires_from_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_requires_from_implies_allowed_from` CHECK (((`requires_from_facility_id` = 0) or (`allows_from_facility_id` = 1))),
  CONSTRAINT `chk_pmfr_requires_to_facility_id` CHECK ((`requires_to_facility_id` in (0,1))),
  CONSTRAINT `chk_pmfr_requires_to_implies_allowed_to` CHECK (((`requires_to_facility_id` = 0) or (`allows_to_facility_id` = 1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-21 14:45:23
