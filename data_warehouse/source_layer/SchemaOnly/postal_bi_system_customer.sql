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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` binary(16) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `county` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state_code` char(2) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `territory_id` int DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `preferred_facility_id` int DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `marital_status` char(1) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `annual_income` decimal(10,2) DEFAULT NULL,
  `total_children` tinyint unsigned DEFAULT NULL,
  `education_level` varchar(30) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `home_owner` char(1) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `uq_customer_email` (`email`),
  UNIQUE KEY `uq_customer_user` (`user_id`),
  KEY `UserID` (`user_id`),
  KEY `idx_customer_preferred_facility_id` (`preferred_facility_id`),
  KEY `idx_customer_territory_id` (`territory_id`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_logins` (`user_id`),
  CONSTRAINT `fk_customer_preferred_facility` FOREIGN KEY (`preferred_facility_id`) REFERENCES `facility` (`facility_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_territory` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`territory_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `chk_customer_annual_income_demo` CHECK (((`annual_income` is null) or (`annual_income` >= 0))),
  CONSTRAINT `chk_customer_education_demo` CHECK (((`education_level` is null) or (`education_level` in (_utf8mb4'Partial High School',_utf8mb4'High School',_utf8mb4'Partial College',_utf8mb4'Bachelors',_utf8mb4'Graduate Degree')))),
  CONSTRAINT `chk_customer_gender_demo` CHECK (((`gender` is null) or (`gender` in (_utf8mb4'F',_utf8mb4'M')))),
  CONSTRAINT `chk_customer_home_owner_demo` CHECK (((`home_owner` is null) or (`home_owner` in (_utf8mb4'Y',_utf8mb4'N')))),
  CONSTRAINT `chk_customer_marital_status_demo` CHECK (((`marital_status` is null) or (`marital_status` in (_utf8mb4'M',_utf8mb4'S')))),
  CONSTRAINT `chk_customer_occupation_demo` CHECK (((`occupation` is null) or (`occupation` in (_utf8mb4'Manual',_utf8mb4'Clerical',_utf8mb4'Management',_utf8mb4'Professional',_utf8mb4'Skilled Manual')))),
  CONSTRAINT `chk_customer_state` CHECK ((char_length(`state_code`) = 2)),
  CONSTRAINT `chk_customer_total_children_demo` CHECK (((`total_children` is null) or (`total_children` between 0 and 5))),
  CONSTRAINT `chk_customer_zipcode` CHECK ((char_length(`zip_code`) in (5,10)))
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

-- Dump completed on 2026-06-21 14:45:43
