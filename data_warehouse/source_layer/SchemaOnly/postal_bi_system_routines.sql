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
-- Temporary view structure for view `vw_package_incident_delay_summary`
--

DROP TABLE IF EXISTS `vw_package_incident_delay_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_package_incident_delay_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_incident_delay_summary` AS SELECT 
 1 AS `package_id`,
 1 AS `operational_package_status_id`,
 1 AS `operational_package_status_name`,
 1 AS `effective_package_status_id`,
 1 AS `effective_package_status_name`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `oldest_open_blocking_incident_at`,
 1 AS `latest_open_blocking_incident_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_smartlocker`
--

DROP TABLE IF EXISTS `dim_smartlocker`;
/*!50001 DROP VIEW IF EXISTS `dim_smartlocker`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_smartlocker` AS SELECT 
 1 AS `locker_id`,
 1 AS `locker_location_id`,
 1 AS `location_name`,
 1 AS `facility_id`,
 1 AS `facility_territory_id`,
 1 AS `facility_name`,
 1 AS `locker_status`,
 1 AS `locker_created_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_employee_facility_assignment`
--

DROP TABLE IF EXISTS `vw_employee_facility_assignment`;
/*!50001 DROP VIEW IF EXISTS `vw_employee_facility_assignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_employee_facility_assignment` AS SELECT 
 1 AS `employee_id`,
 1 AS `full_name`,
 1 AS `email`,
 1 AS `phone_number`,
 1 AS `job_title`,
 1 AS `department_id`,
 1 AS `department_name`,
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `manager_employee_id`,
 1 AS `manager_name`,
 1 AS `salary`,
 1 AS `hours_worked`,
 1 AS `user_id`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_locker_location`
--

DROP TABLE IF EXISTS `dim_locker_location`;
/*!50001 DROP VIEW IF EXISTS `dim_locker_location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_locker_location` AS SELECT 
 1 AS `locker_location_id`,
 1 AS `location_name`,
 1 AS `facility_id`,
 1 AS `facility_territory_id`,
 1 AS `facility_name`,
 1 AS `city`,
 1 AS `state_code`,
 1 AS `zip_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_employee`
--

DROP TABLE IF EXISTS `dim_employee`;
/*!50001 DROP VIEW IF EXISTS `dim_employee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_employee` AS SELECT 
 1 AS `employee_id`,
 1 AS `employee_name`,
 1 AS `job_title`,
 1 AS `department_id`,
 1 AS `department_name`,
 1 AS `facility_id`,
 1 AS `facility_territory_id`,
 1 AS `facility_name`,
 1 AS `manager_employee_id`,
 1 AS `is_manager`,
 1 AS `hours_worked`,
 1 AS `employee_created_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_package_route_history`
--

DROP TABLE IF EXISTS `vw_package_route_history`;
/*!50001 DROP VIEW IF EXISTS `vw_package_route_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_route_history` AS SELECT 
 1 AS `package_movement_id`,
 1 AS `package_id`,
 1 AS `event_timestamp`,
 1 AS `event_type_name`,
 1 AS `package_status`,
 1 AS `movement_package_status_id`,
 1 AS `operational_package_status_id`,
 1 AS `operational_status_name`,
 1 AS `effective_package_status_id`,
 1 AS `effective_status_name`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `from_facility_id`,
 1 AS `from_facility_name`,
 1 AS `to_facility_id`,
 1 AS `to_facility_name`,
 1 AS `processed_by_employee_id`,
 1 AS `processed_by_employee`,
 1 AS `movement_note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_department`
--

DROP TABLE IF EXISTS `dim_department`;
/*!50001 DROP VIEW IF EXISTS `dim_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_department` AS SELECT 
 1 AS `department_id`,
 1 AS `department_name`,
 1 AS `facility_id`,
 1 AS `facility_territory_id`,
 1 AS `facility_name`,
 1 AS `manager_employee_id`,
 1 AS `manager_start_date`,
 1 AS `department_created_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_package_status`
--

DROP TABLE IF EXISTS `dim_package_status`;
/*!50001 DROP VIEW IF EXISTS `dim_package_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_package_status` AS SELECT 
 1 AS `package_status_id`,
 1 AS `status_name`,
 1 AS `status_category`,
 1 AS `sort_order`,
 1 AS `is_final_status`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_incident_summary`
--

DROP TABLE IF EXISTS `vw_incident_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_incident_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_incident_summary` AS SELECT 
 1 AS `incident_id`,
 1 AS `incident_date`,
 1 AS `description`,
 1 AS `incident_type`,
 1 AS `type_category`,
 1 AS `severity_name`,
 1 AS `severity_order`,
 1 AS `incident_status`,
 1 AS `is_closed_status`,
 1 AS `reported_by_employee_id`,
 1 AS `reported_by_employee`,
 1 AS `package_id`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `facility_id`,
 1 AS `facility_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_incident`
--

DROP TABLE IF EXISTS `fact_incident`;
/*!50001 DROP VIEW IF EXISTS `fact_incident`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_incident` AS SELECT 
 1 AS `incident_id`,
 1 AS `package_id`,
 1 AS `customer_id`,
 1 AS `reported_by_employee_id`,
 1 AS `resolved_by_employee_id`,
 1 AS `facility_id`,
 1 AS `package_movement_id`,
 1 AS `incident_type_id`,
 1 AS `incident_severity_id`,
 1 AS `incident_status_id`,
 1 AS `incident_datetime`,
 1 AS `incident_date`,
 1 AS `incident_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_customer_id_hex_lookup`
--

DROP TABLE IF EXISTS `vw_customer_id_hex_lookup`;
/*!50001 DROP VIEW IF EXISTS `vw_customer_id_hex_lookup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_customer_id_hex_lookup` AS SELECT 
 1 AS `customer_id_hex`,
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `city`,
 1 AS `state_code`,
 1 AS `zip_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_incident_status`
--

DROP TABLE IF EXISTS `dim_incident_status`;
/*!50001 DROP VIEW IF EXISTS `dim_incident_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_incident_status` AS SELECT 
 1 AS `incident_status_id`,
 1 AS `status_name`,
 1 AS `sort_order`,
 1 AS `is_closed_status`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_refund`
--

DROP TABLE IF EXISTS `fact_refund`;
/*!50001 DROP VIEW IF EXISTS `fact_refund`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_refund` AS SELECT 
 1 AS `refund_id`,
 1 AS `package_id`,
 1 AS `customer_id`,
 1 AS `incident_id`,
 1 AS `reviewed_by_employee_id`,
 1 AS `service_type_id`,
 1 AS `package_flow_type_id`,
 1 AS `refund_datetime`,
 1 AS `refund_date`,
 1 AS `refund_amount`,
 1 AS `refund_status`,
 1 AS `reviewed_at`,
 1 AS `paid_at`,
 1 AS `is_approved_or_paid`,
 1 AS `is_paid`,
 1 AS `refund_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_package_overview`
--

DROP TABLE IF EXISTS `vw_package_overview`;
/*!50001 DROP VIEW IF EXISTS `vw_package_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_overview` AS SELECT 
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `recipient_customer_name`,
 1 AS `recipient_customer_email`,
 1 AS `package_flow_type_name`,
 1 AS `sender_customer_id`,
 1 AS `sender_customer_name`,
 1 AS `sender_business_id`,
 1 AS `sender_business_name`,
 1 AS `package_status`,
 1 AS `operational_package_status_id`,
 1 AS `operational_status_name`,
 1 AS `effective_package_status_id`,
 1 AS `effective_status_name`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `service_type_name`,
 1 AS `received_date`,
 1 AS `contents`,
 1 AS `weight_oz`,
 1 AS `length_in`,
 1 AS `width_in`,
 1 AS `height_in`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_territory`
--

DROP TABLE IF EXISTS `dim_territory`;
/*!50001 DROP VIEW IF EXISTS `dim_territory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_territory` AS SELECT 
 1 AS `territory_id`,
 1 AS `state`,
 1 AS `city`,
 1 AS `county`,
 1 AS `zip_code`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_shipping_revenue`
--

DROP TABLE IF EXISTS `fact_shipping_revenue`;
/*!50001 DROP VIEW IF EXISTS `fact_shipping_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_shipping_revenue` AS SELECT 
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `sender_customer_id`,
 1 AS `sender_business_id`,
 1 AS `package_flow_type_id`,
 1 AS `service_type_id`,
 1 AS `operational_package_status_id`,
 1 AS `package_received_datetime`,
 1 AS `charge_recorded_datetime`,
 1 AS `charge_recorded_date`,
 1 AS `gross_shipping_revenue`,
 1 AS `material_cost`,
 1 AS `transportation_cost`,
 1 AS `total_internal_shipping_cost`,
 1 AS `estimated_shipping_margin`,
 1 AS `charge_source`,
 1 AS `shipping_charge_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_package_id_hex_lookup`
--

DROP TABLE IF EXISTS `vw_package_id_hex_lookup`;
/*!50001 DROP VIEW IF EXISTS `vw_package_id_hex_lookup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_id_hex_lookup` AS SELECT 
 1 AS `package_id_hex`,
 1 AS `package_id`,
 1 AS `recipient_customer_id_hex`,
 1 AS `recipient_customer_id`,
 1 AS `package_flow_type_id`,
 1 AS `package_flow_type_name`,
 1 AS `sender_customer_id_hex`,
 1 AS `sender_customer_id`,
 1 AS `sender_business_id_hex`,
 1 AS `sender_business_id`,
 1 AS `package_status_id`,
 1 AS `service_type_id`,
 1 AS `received_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_customer_accounts`
--

DROP TABLE IF EXISTS `vw_customer_accounts`;
/*!50001 DROP VIEW IF EXISTS `vw_customer_accounts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_customer_accounts` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `customer_email`,
 1 AS `preferred_facility_id`,
 1 AS `preferred_facility_name`,
 1 AS `user_id`,
 1 AS `username`,
 1 AS `login_email`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_service_type`
--

DROP TABLE IF EXISTS `dim_service_type`;
/*!50001 DROP VIEW IF EXISTS `dim_service_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_service_type` AS SELECT 
 1 AS `service_type_id`,
 1 AS `service_type_name`,
 1 AS `service_category`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_delivery`
--

DROP TABLE IF EXISTS `fact_delivery`;
/*!50001 DROP VIEW IF EXISTS `fact_delivery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_delivery` AS SELECT 
 1 AS `delivery_fact_key`,
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `sender_customer_id`,
 1 AS `sender_business_id`,
 1 AS `package_flow_type_id`,
 1 AS `service_type_id`,
 1 AS `operational_package_status_id`,
 1 AS `sender_territory_id`,
 1 AS `recipient_territory_id`,
 1 AS `package_received_datetime`,
 1 AS `shippingdetails_created_datetime`,
 1 AS `expected_delivery_date`,
 1 AS `delivered_date`,
 1 AS `shippingdetails_updated_datetime`,
 1 AS `distance_traveled`,
 1 AS `is_delivered`,
 1 AS `delivery_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_facility`
--

DROP TABLE IF EXISTS `dim_facility`;
/*!50001 DROP VIEW IF EXISTS `dim_facility`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_facility` AS SELECT 
 1 AS `facility_id`,
 1 AS `territory_id`,
 1 AS `facility_name`,
 1 AS `facility_type_id`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `facility_type_description`,
 1 AS `city`,
 1 AS `state_code`,
 1 AS `zip_code`,
 1 AS `manager_employee_id`,
 1 AS `is_customer_facing`,
 1 AS `handles_retail`,
 1 AS `handles_processing`,
 1 AS `handles_distribution`,
 1 AS `handles_local_delivery`,
 1 AS `facility_type_is_active`,
 1 AS `is_retail_office`,
 1 AS `is_processing_or_distribution_center`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_incident_type`
--

DROP TABLE IF EXISTS `dim_incident_type`;
/*!50001 DROP VIEW IF EXISTS `dim_incident_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_incident_type` AS SELECT 
 1 AS `incident_type_id`,
 1 AS `type_name`,
 1 AS `type_category`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_p2p_packages_ready_for_middle_mile`
--

DROP TABLE IF EXISTS `vw_p2p_packages_ready_for_middle_mile`;
/*!50001 DROP VIEW IF EXISTS `vw_p2p_packages_ready_for_middle_mile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_p2p_packages_ready_for_middle_mile` AS SELECT 
 1 AS `package_id`,
 1 AS `service_type`,
 1 AS `sender_customer_id`,
 1 AS `recipient_customer_id`,
 1 AS `sender_territory_id`,
 1 AS `recipient_territory_id`,
 1 AS `current_or_origin_facility_id`,
 1 AS `latest_movement_timestamp`,
 1 AS `operational_package_status_id`,
 1 AS `operational_status_name`,
 1 AS `effective_package_status_id`,
 1 AS `effective_status_name`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `weight_oz`,
 1 AS `length_in`,
 1 AS `width_in`,
 1 AS `height_in`,
 1 AS `estimated_delivery_distance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_package`
--

DROP TABLE IF EXISTS `fact_package`;
/*!50001 DROP VIEW IF EXISTS `fact_package`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_package` AS SELECT 
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `sender_customer_id`,
 1 AS `sender_business_id`,
 1 AS `package_flow_type_id`,
 1 AS `service_type_id`,
 1 AS `operational_package_status_id`,
 1 AS `effective_package_status_id`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `received_datetime`,
 1 AS `received_date`,
 1 AS `weight_oz`,
 1 AS `length_in`,
 1 AS `width_in`,
 1 AS `height_in`,
 1 AS `package_volume_cubic_in`,
 1 AS `package_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_smartlocker_assignment`
--

DROP TABLE IF EXISTS `fact_smartlocker_assignment`;
/*!50001 DROP VIEW IF EXISTS `fact_smartlocker_assignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_smartlocker_assignment` AS SELECT 
 1 AS `locker_assignment_id`,
 1 AS `package_id`,
 1 AS `locker_customer_id`,
 1 AS `locker_id`,
 1 AS `locker_location_id`,
 1 AS `assigned_datetime`,
 1 AS `assigned_date`,
 1 AS `expiration_datetime`,
 1 AS `expiration_date`,
 1 AS `retrieved_datetime`,
 1 AS `retrieved_date`,
 1 AS `is_active_assignment`,
 1 AS `is_expired_unretrieved`,
 1 AS `locker_assignment_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facility_map`
--

DROP TABLE IF EXISTS `vw_facility_map`;
/*!50001 DROP VIEW IF EXISTS `vw_facility_map`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facility_map` AS SELECT 
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `street_address`,
 1 AS `city`,
 1 AS `county`,
 1 AS `state_code`,
 1 AS `zip_code`,
 1 AS `map_zip_code`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `full_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_user_account_roles`
--

DROP TABLE IF EXISTS `vw_user_account_roles`;
/*!50001 DROP VIEW IF EXISTS `vw_user_account_roles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_user_account_roles` AS SELECT 
 1 AS `user_id`,
 1 AS `username`,
 1 AS `email`,
 1 AS `is_active`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `role_id`,
 1 AS `role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_incident_movement_summary`
--

DROP TABLE IF EXISTS `vw_incident_movement_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_incident_movement_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_incident_movement_summary` AS SELECT 
 1 AS `incident_id`,
 1 AS `incident_date`,
 1 AS `description`,
 1 AS `incident_type`,
 1 AS `type_category`,
 1 AS `severity_name`,
 1 AS `incident_status`,
 1 AS `reported_by_employee_id`,
 1 AS `reported_by_employee`,
 1 AS `package_id`,
 1 AS `package_movement_id`,
 1 AS `movement_event_type`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facility_incident_delay_totals`
--

DROP TABLE IF EXISTS `vw_facility_incident_delay_totals`;
/*!50001 DROP VIEW IF EXISTS `vw_facility_incident_delay_totals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facility_incident_delay_totals` AS SELECT 
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `open_blocking_incident_count`,
 1 AS `delayed_package_count`,
 1 AS `oldest_open_blocking_incident_at`,
 1 AS `latest_open_blocking_incident_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_package_flow_type`
--

DROP TABLE IF EXISTS `dim_package_flow_type`;
/*!50001 DROP VIEW IF EXISTS `dim_package_flow_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_package_flow_type` AS SELECT 
 1 AS `package_flow_type_id`,
 1 AS `package_flow_type_name`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facility_lane_counts`
--

DROP TABLE IF EXISTS `vw_facility_lane_counts`;
/*!50001 DROP VIEW IF EXISTS `vw_facility_lane_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facility_lane_counts` AS SELECT 
 1 AS `from_facility_id`,
 1 AS `from_facility_name`,
 1 AS `to_facility_id`,
 1 AS `to_facility_name`,
 1 AS `movement_event_count`,
 1 AS `package_count`,
 1 AS `first_moved_at`,
 1 AS `last_moved_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_incident_severity`
--

DROP TABLE IF EXISTS `dim_incident_severity`;
/*!50001 DROP VIEW IF EXISTS `dim_incident_severity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_incident_severity` AS SELECT 
 1 AS `incident_severity_id`,
 1 AS `severity_name`,
 1 AS `sort_order`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_package_revenue`
--

DROP TABLE IF EXISTS `vw_package_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_package_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_revenue` AS SELECT 
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `recipient_customer_name`,
 1 AS `package_flow_type_name`,
 1 AS `sender_customer_id`,
 1 AS `sender_customer_name`,
 1 AS `sender_business_id`,
 1 AS `sender_business_name`,
 1 AS `service_type_id`,
 1 AS `service_type_name`,
 1 AS `package_status_id`,
 1 AS `package_status`,
 1 AS `operational_package_status_id`,
 1 AS `operational_status_name`,
 1 AS `effective_package_status_id`,
 1 AS `effective_status_name`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`,
 1 AS `received_date`,
 1 AS `expected_delivery_date`,
 1 AS `delivered_date`,
 1 AS `actual_shipping_charge`,
 1 AS `charge_source`,
 1 AS `charge_recorded_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facility_processing_counts`
--

DROP TABLE IF EXISTS `vw_facility_processing_counts`;
/*!50001 DROP VIEW IF EXISTS `vw_facility_processing_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facility_processing_counts` AS SELECT 
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `movement_event_count`,
 1 AS `processing_event_count`,
 1 AS `packages_processed`,
 1 AS `most_recent_processed_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_package_effective_status`
--

DROP TABLE IF EXISTS `v_package_effective_status`;
/*!50001 DROP VIEW IF EXISTS `v_package_effective_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_package_effective_status` AS SELECT 
 1 AS `package_id`,
 1 AS `operational_package_status_id`,
 1 AS `operational_package_status_name`,
 1 AS `operational_is_final_status`,
 1 AS `effective_package_status_id`,
 1 AS `effective_package_status_name`,
 1 AS `has_open_incident`,
 1 AS `has_open_blocking_incident`,
 1 AS `open_incident_count`,
 1 AS `open_blocking_incident_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fact_package_movement`
--

DROP TABLE IF EXISTS `fact_package_movement`;
/*!50001 DROP VIEW IF EXISTS `fact_package_movement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fact_package_movement` AS SELECT 
 1 AS `package_movement_id`,
 1 AS `package_id`,
 1 AS `package_movement_event_type_id`,
 1 AS `package_status_id`,
 1 AS `facility_id`,
 1 AS `from_facility_id`,
 1 AS `to_facility_id`,
 1 AS `processed_by_employee_id`,
 1 AS `event_datetime`,
 1 AS `event_date`,
 1 AS `movement_event_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_package`
--

DROP TABLE IF EXISTS `dim_package`;
/*!50001 DROP VIEW IF EXISTS `dim_package`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_package` AS SELECT 
 1 AS `package_id`,
 1 AS `recipient_customer_id`,
 1 AS `package_flow_type_id`,
 1 AS `package_flow_type_name`,
 1 AS `sender_customer_id`,
 1 AS `sender_business_id`,
 1 AS `service_type_id`,
 1 AS `package_status_id`,
 1 AS `received_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_locker_occupancy`
--

DROP TABLE IF EXISTS `vw_locker_occupancy`;
/*!50001 DROP VIEW IF EXISTS `vw_locker_occupancy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_locker_occupancy` AS SELECT 
 1 AS `locker_id`,
 1 AS `locker_location_id`,
 1 AS `location_name`,
 1 AS `locker_status`,
 1 AS `locker_assignment_id`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `package_id`,
 1 AS `assigned_at`,
 1 AS `expires_at`,
 1 AS `retrieved_at`,
 1 AS `is_expired`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_customer`
--

DROP TABLE IF EXISTS `dim_customer`;
/*!50001 DROP VIEW IF EXISTS `dim_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_customer` AS SELECT 
 1 AS `customer_id`,
 1 AS `territory_id`,
 1 AS `first_name`,
 1 AS `middle_initial`,
 1 AS `last_name`,
 1 AS `customer_name`,
 1 AS `city`,
 1 AS `state_code`,
 1 AS `zip_code`,
 1 AS `preferred_facility_id`,
 1 AS `preferred_facility_territory_id`,
 1 AS `birth_date`,
 1 AS `age_years`,
 1 AS `marital_status`,
 1 AS `gender`,
 1 AS `email_address`,
 1 AS `annual_income`,
 1 AS `total_children`,
 1 AS `education_level`,
 1 AS `occupation`,
 1 AS `home_owner`,
 1 AS `customer_created_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dim_movement_event_type`
--

DROP TABLE IF EXISTS `dim_movement_event_type`;
/*!50001 DROP VIEW IF EXISTS `dim_movement_event_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dim_movement_event_type` AS SELECT 
 1 AS `package_movement_event_type_id`,
 1 AS `event_type_name`,
 1 AS `description`,
 1 AS `default_package_status_name`,
 1 AS `is_entry_event`,
 1 AS `is_exit_event`,
 1 AS `is_processing_event`,
 1 AS `is_final_event`,
 1 AS `sort_order`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_package_facility_stays`
--

DROP TABLE IF EXISTS `vw_package_facility_stays`;
/*!50001 DROP VIEW IF EXISTS `vw_package_facility_stays`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_package_facility_stays` AS SELECT 
 1 AS `package_id`,
 1 AS `entry_package_movement_id`,
 1 AS `facility_id`,
 1 AS `facility_name`,
 1 AS `facility_type_code`,
 1 AS `facility_type_name`,
 1 AS `arrived_at`,
 1 AS `departed_at`,
 1 AS `dwell_minutes`,
 1 AS `is_current_facility`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_package_incident_delay_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_incident_delay_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_incident_delay_summary` AS select `ves`.`package_id` AS `package_id`,`ves`.`operational_package_status_id` AS `operational_package_status_id`,`ves`.`operational_package_status_name` AS `operational_package_status_name`,`ves`.`effective_package_status_id` AS `effective_package_status_id`,`ves`.`effective_package_status_name` AS `effective_package_status_name`,`ves`.`open_incident_count` AS `open_incident_count`,`ves`.`open_blocking_incident_count` AS `open_blocking_incident_count`,min(`i`.`incident_date`) AS `oldest_open_blocking_incident_at`,max(`i`.`incident_date`) AS `latest_open_blocking_incident_at` from (((`v_package_effective_status` `ves` left join `incident` `i` on((`i`.`package_id` = unhex(`ves`.`package_id`)))) left join `incident_status` `ist` on((`ist`.`incident_status_id` = `i`.`incident_status_id`))) left join `incident_type` `it` on(((`it`.`incident_type_id` = `i`.`incident_type_id`) and (coalesce(`it`.`blocks_package_movement`,1) = 1)))) where ((`ves`.`open_blocking_incident_count` > 0) and (`ist`.`is_closed_status` = 0) and (`it`.`incident_type_id` is not null)) group by `ves`.`package_id`,`ves`.`operational_package_status_id`,`ves`.`operational_package_status_name`,`ves`.`effective_package_status_id`,`ves`.`effective_package_status_name`,`ves`.`open_incident_count`,`ves`.`open_blocking_incident_count` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_smartlocker`
--

/*!50001 DROP VIEW IF EXISTS `dim_smartlocker`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_smartlocker` AS select `sl`.`locker_id` AS `locker_id`,`sl`.`locker_location_id` AS `locker_location_id`,`ll`.`location_name` AS `location_name`,`ll`.`facility_id` AS `facility_id`,`f`.`territory_id` AS `facility_territory_id`,`f`.`facility_name` AS `facility_name`,`sl`.`locker_status` AS `locker_status`,cast(`sl`.`created_at` as date) AS `locker_created_date` from ((`smartlocker` `sl` left join `lockerlocations` `ll` on((`ll`.`locker_location_id` = `sl`.`locker_location_id`))) left join `facility` `f` on((`f`.`facility_id` = `ll`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_employee_facility_assignment`
--

/*!50001 DROP VIEW IF EXISTS `vw_employee_facility_assignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_employee_facility_assignment` AS select `e`.`employee_id` AS `employee_id`,`e`.`full_name` AS `full_name`,`e`.`email` AS `email`,`e`.`phone_number` AS `phone_number`,`e`.`job_title` AS `job_title`,`e`.`department_id` AS `department_id`,`d`.`department_name` AS `department_name`,`d`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,`e`.`manager_employee_id` AS `manager_employee_id`,`m`.`full_name` AS `manager_name`,`e`.`salary` AS `salary`,`e`.`hours_worked` AS `hours_worked`,`e`.`user_id` AS `user_id`,`e`.`created_at` AS `created_at`,`e`.`updated_at` AS `updated_at` from ((((`employee` `e` join `departments` `d` on((`e`.`department_id` = `d`.`department_id`))) left join `facility` `f` on((`d`.`facility_id` = `f`.`facility_id`))) left join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) left join `employee` `m` on((`e`.`manager_employee_id` = `m`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_locker_location`
--

/*!50001 DROP VIEW IF EXISTS `dim_locker_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_locker_location` AS select `ll`.`locker_location_id` AS `locker_location_id`,`ll`.`location_name` AS `location_name`,`ll`.`facility_id` AS `facility_id`,`f`.`territory_id` AS `facility_territory_id`,`f`.`facility_name` AS `facility_name`,`f`.`city` AS `city`,`f`.`state_code` AS `state_code`,`f`.`zip_code` AS `zip_code` from (`lockerlocations` `ll` left join `facility` `f` on((`f`.`facility_id` = `ll`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_employee`
--

/*!50001 DROP VIEW IF EXISTS `dim_employee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_employee` AS select `e`.`employee_id` AS `employee_id`,`e`.`full_name` AS `employee_name`,`e`.`job_title` AS `job_title`,`e`.`department_id` AS `department_id`,`d`.`department_name` AS `department_name`,`d`.`facility_id` AS `facility_id`,`f`.`territory_id` AS `facility_territory_id`,`f`.`facility_name` AS `facility_name`,`e`.`manager_employee_id` AS `manager_employee_id`,(case when (exists(select 1 from `employee` `e2` where (`e2`.`manager_employee_id` = `e`.`employee_id`)) or exists(select 1 from `departments` `d2` where (`d2`.`manager_employee_id` = `e`.`employee_id`)) or (`f`.`manager_employee_id` = `e`.`employee_id`)) then 1 else 0 end) AS `is_manager`,`e`.`hours_worked` AS `hours_worked`,cast(`e`.`created_at` as date) AS `employee_created_date` from ((`employee` `e` left join `departments` `d` on((`d`.`department_id` = `e`.`department_id`))) left join `facility` `f` on((`f`.`facility_id` = `d`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_package_route_history`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_route_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_route_history` AS select `pm`.`package_movement_id` AS `package_movement_id`,cast(hex(`pm`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`pm`.`event_timestamp` AS `event_timestamp`,`met`.`event_type_name` AS `event_type_name`,`ps`.`status_name` AS `package_status`,`pm`.`package_status_id` AS `movement_package_status_id`,`vpes`.`operational_package_status_id` AS `operational_package_status_id`,`vpes`.`operational_package_status_name` AS `operational_status_name`,`vpes`.`effective_package_status_id` AS `effective_package_status_id`,`vpes`.`effective_package_status_name` AS `effective_status_name`,`vpes`.`has_open_incident` AS `has_open_incident`,`vpes`.`has_open_blocking_incident` AS `has_open_blocking_incident`,`vpes`.`open_incident_count` AS `open_incident_count`,`vpes`.`open_blocking_incident_count` AS `open_blocking_incident_count`,`pm`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,`pm`.`from_facility_id` AS `from_facility_id`,`from_f`.`facility_name` AS `from_facility_name`,`pm`.`to_facility_id` AS `to_facility_id`,`to_f`.`facility_name` AS `to_facility_name`,`pm`.`processed_by_employee_id` AS `processed_by_employee_id`,`e`.`full_name` AS `processed_by_employee`,`pm`.`movement_note` AS `movement_note` from ((((((((`package_movement` `pm` join `package_movement_event_type` `met` on((`pm`.`package_movement_event_type_id` = `met`.`package_movement_event_type_id`))) join `package_status` `ps` on((`pm`.`package_status_id` = `ps`.`package_status_id`))) left join `facility` `f` on((`pm`.`facility_id` = `f`.`facility_id`))) left join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) left join `facility` `from_f` on((`pm`.`from_facility_id` = `from_f`.`facility_id`))) left join `facility` `to_f` on((`pm`.`to_facility_id` = `to_f`.`facility_id`))) left join `employee` `e` on((`pm`.`processed_by_employee_id` = `e`.`employee_id`))) left join `v_package_effective_status` `vpes` on((unhex(`vpes`.`package_id`) = `pm`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_department`
--

/*!50001 DROP VIEW IF EXISTS `dim_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_department` AS select `d`.`department_id` AS `department_id`,`d`.`department_name` AS `department_name`,`d`.`facility_id` AS `facility_id`,`f`.`territory_id` AS `facility_territory_id`,`f`.`facility_name` AS `facility_name`,`d`.`manager_employee_id` AS `manager_employee_id`,`d`.`manager_start_date` AS `manager_start_date`,cast(`d`.`created_at` as date) AS `department_created_date` from (`departments` `d` left join `facility` `f` on((`f`.`facility_id` = `d`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_package_status`
--

/*!50001 DROP VIEW IF EXISTS `dim_package_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_package_status` AS select `ps`.`package_status_id` AS `package_status_id`,`ps`.`status_name` AS `status_name`,`ps`.`status_category` AS `status_category`,`ps`.`sort_order` AS `sort_order`,`ps`.`is_final_status` AS `is_final_status`,`ps`.`is_active` AS `is_active` from `package_status` `ps` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_incident_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_incident_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_incident_summary` AS select `i`.`incident_id` AS `incident_id`,`i`.`incident_date` AS `incident_date`,`i`.`description` AS `description`,`it`.`type_name` AS `incident_type`,`it`.`type_category` AS `type_category`,`sev`.`severity_name` AS `severity_name`,`sev`.`sort_order` AS `severity_order`,`ist`.`status_name` AS `incident_status`,`ist`.`is_closed_status` AS `is_closed_status`,`i`.`reported_by_employee_id` AS `reported_by_employee_id`,`e`.`full_name` AS `reported_by_employee`,cast(hex(`i`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`i`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,`i`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name` from ((((((`incident` `i` join `incident_type` `it` on((`i`.`incident_type_id` = `it`.`incident_type_id`))) join `incident_severity` `sev` on((`i`.`incident_severity_id` = `sev`.`incident_severity_id`))) join `incident_status` `ist` on((`i`.`incident_status_id` = `ist`.`incident_status_id`))) join `employee` `e` on((`i`.`reported_by_employee_id` = `e`.`employee_id`))) left join `customer` `c` on((`i`.`customer_id` = `c`.`customer_id`))) left join `facility` `f` on((`i`.`facility_id` = `f`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_incident`
--

/*!50001 DROP VIEW IF EXISTS `fact_incident`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_incident` AS select `i`.`incident_id` AS `incident_id`,cast(hex(`i`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`i`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,`i`.`reported_by_employee_id` AS `reported_by_employee_id`,`i`.`resolved_by_employee_id` AS `resolved_by_employee_id`,`i`.`facility_id` AS `facility_id`,`i`.`package_movement_id` AS `package_movement_id`,`i`.`incident_type_id` AS `incident_type_id`,`i`.`incident_severity_id` AS `incident_severity_id`,`i`.`incident_status_id` AS `incident_status_id`,`i`.`incident_date` AS `incident_datetime`,cast(`i`.`incident_date` as date) AS `incident_date`,1 AS `incident_count` from `incident` `i` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_customer_id_hex_lookup`
--

/*!50001 DROP VIEW IF EXISTS `vw_customer_id_hex_lookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_customer_id_hex_lookup` AS select cast(hex(`customer`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id_hex`,cast(hex(`customer`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,`customer`.`first_name` AS `first_name`,`customer`.`last_name` AS `last_name`,`customer`.`email` AS `email`,`customer`.`city` AS `city`,`customer`.`state_code` AS `state_code`,`customer`.`zip_code` AS `zip_code` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_incident_status`
--

/*!50001 DROP VIEW IF EXISTS `dim_incident_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_incident_status` AS select `ist`.`incident_status_id` AS `incident_status_id`,`ist`.`status_name` AS `status_name`,`ist`.`sort_order` AS `sort_order`,`ist`.`is_closed_status` AS `is_closed_status`,`ist`.`is_active` AS `is_active` from `incident_status` `ist` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_refund`
--

/*!50001 DROP VIEW IF EXISTS `fact_refund`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_refund` AS select `r`.`refund_id` AS `refund_id`,cast(hex(`r`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`r`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,`r`.`incident_id` AS `incident_id`,`r`.`reviewed_by_employee_id` AS `reviewed_by_employee_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`r`.`refund_date` AS `refund_datetime`,cast(`r`.`refund_date` as date) AS `refund_date`,`r`.`refund_amount` AS `refund_amount`,`r`.`refund_status` AS `refund_status`,`r`.`reviewed_at` AS `reviewed_at`,`r`.`paid_at` AS `paid_at`,(case when (`r`.`refund_status` in ('Approved','Paid')) then 1 else 0 end) AS `is_approved_or_paid`,(case when (`r`.`refund_status` = 'Paid') then 1 else 0 end) AS `is_paid`,1 AS `refund_count` from (`refunds` `r` join `package` `p` on((`p`.`package_id` = `r`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_package_overview`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_overview` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,trim(concat(`c`.`first_name`,' ',`c`.`last_name`)) AS `recipient_customer_name`,`c`.`email` AS `recipient_customer_email`,`pft`.`package_flow_type_name` AS `package_flow_type_name`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,trim(concat(`sc`.`first_name`,' ',`sc`.`last_name`)) AS `sender_customer_name`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`b`.`business_name` AS `sender_business_name`,`vpes`.`effective_package_status_name` AS `package_status`,`vpes`.`operational_package_status_id` AS `operational_package_status_id`,`vpes`.`operational_package_status_name` AS `operational_status_name`,`vpes`.`effective_package_status_id` AS `effective_package_status_id`,`vpes`.`effective_package_status_name` AS `effective_status_name`,`vpes`.`has_open_incident` AS `has_open_incident`,`vpes`.`has_open_blocking_incident` AS `has_open_blocking_incident`,`vpes`.`open_incident_count` AS `open_incident_count`,`vpes`.`open_blocking_incident_count` AS `open_blocking_incident_count`,`st`.`service_type_name` AS `service_type_name`,`p`.`received_date` AS `received_date`,`p`.`contents` AS `contents`,`p`.`weight_oz` AS `weight_oz`,`p`.`length_in` AS `length_in`,`p`.`width_in` AS `width_in`,`p`.`height_in` AS `height_in`,`p`.`created_at` AS `created_at`,`p`.`updated_at` AS `updated_at` from ((((((`package` `p` join `customer` `c` on((`c`.`customer_id` = `p`.`recipient_customer_id`))) join `package_flow_type` `pft` on((`pft`.`package_flow_type_id` = `p`.`package_flow_type_id`))) left join `service_type` `st` on((`st`.`service_type_id` = `p`.`service_type_id`))) left join `customer` `sc` on((`sc`.`customer_id` = `p`.`sender_customer_id`))) left join `business` `b` on((`b`.`business_id` = `p`.`sender_business_id`))) left join `v_package_effective_status` `vpes` on((unhex(`vpes`.`package_id`) = `p`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_territory`
--

/*!50001 DROP VIEW IF EXISTS `dim_territory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `dim_territory` AS select `t`.`territory_id` AS `territory_id`,`t`.`state` AS `state`,`t`.`city` AS `city`,`t`.`county` AS `county`,`t`.`zip_code` AS `zip_code`,`z`.`latitude` AS `latitude`,`z`.`longitude` AS `longitude`,`t`.`created_at` AS `created_at`,`t`.`updated_at` AS `updated_at` from (`territory` `t` left join `zip_geo` `z` on((`z`.`zip_code` = `t`.`zip_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_shipping_revenue`
--

/*!50001 DROP VIEW IF EXISTS `fact_shipping_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_shipping_revenue` AS select cast(hex(`sc`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`package_status_id` AS `operational_package_status_id`,`p`.`received_date` AS `package_received_datetime`,`sc`.`charge_recorded_at` AS `charge_recorded_datetime`,cast(`sc`.`charge_recorded_at` as date) AS `charge_recorded_date`,`sc`.`actual_shipping_charge` AS `gross_shipping_revenue`,`sc`.`material_cost` AS `material_cost`,`sc`.`transportation_cost` AS `transportation_cost`,round((coalesce(`sc`.`material_cost`,0) + coalesce(`sc`.`transportation_cost`,0)),2) AS `total_internal_shipping_cost`,round(((`sc`.`actual_shipping_charge` - coalesce(`sc`.`material_cost`,0)) - coalesce(`sc`.`transportation_cost`,0)),2) AS `estimated_shipping_margin`,`sc`.`charge_source` AS `charge_source`,1 AS `shipping_charge_count` from (`shipping_cost` `sc` join `package` `p` on((`p`.`package_id` = `sc`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_package_id_hex_lookup`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_id_hex_lookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_id_hex_lookup` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id_hex`,cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id_hex`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`pft`.`package_flow_type_name` AS `package_flow_type_name`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id_hex`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id_hex`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`p`.`package_status_id` AS `package_status_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`received_date` AS `received_date` from (`package` `p` join `package_flow_type` `pft` on((`pft`.`package_flow_type_id` = `p`.`package_flow_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_customer_accounts`
--

/*!50001 DROP VIEW IF EXISTS `vw_customer_accounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_customer_accounts` AS select cast(hex(`c`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,`c`.`email` AS `customer_email`,`c`.`preferred_facility_id` AS `preferred_facility_id`,`f`.`facility_name` AS `preferred_facility_name`,`ul`.`user_id` AS `user_id`,`ul`.`username` AS `username`,`ul`.`email` AS `login_email`,`ul`.`is_active` AS `is_active` from ((`customer` `c` left join `user_logins` `ul` on((`c`.`user_id` = `ul`.`user_id`))) left join `facility` `f` on((`c`.`preferred_facility_id` = `f`.`facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_service_type`
--

/*!50001 DROP VIEW IF EXISTS `dim_service_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_service_type` AS select `st`.`service_type_id` AS `service_type_id`,`st`.`service_type_name` AS `service_type_name`,(case when (lower(`st`.`service_type_name`) like '%delivery%') then 'Delivery' when (lower(`st`.`service_type_name`) like '%locker%') then 'SmartLocker' when (lower(`st`.`service_type_name`) like '%pickup%') then 'Pickup' else 'Other' end) AS `service_category`,`st`.`is_active` AS `is_active` from `service_type` `st` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_delivery`
--

/*!50001 DROP VIEW IF EXISTS `fact_delivery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_delivery` AS select cast(hex(`sd`.`package_id`) as char(32) charset utf8mb4) AS `delivery_fact_key`,cast(hex(`sd`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`package_status_id` AS `operational_package_status_id`,`sd`.`sender_territory_id` AS `sender_territory_id`,`sd`.`recipient_territory_id` AS `recipient_territory_id`,`p`.`received_date` AS `package_received_datetime`,`sd`.`created_at` AS `shippingdetails_created_datetime`,`sd`.`expected_delivery_date` AS `expected_delivery_date`,`sd`.`delivered_date` AS `delivered_date`,`sd`.`updated_at` AS `shippingdetails_updated_datetime`,`sd`.`estimated_delivery_distance` AS `distance_traveled`,(case when (`sd`.`delivered_date` is not null) then 1 else 0 end) AS `is_delivered`,1 AS `delivery_count` from (`shippingdetails` `sd` join `package` `p` on((`p`.`package_id` = `sd`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_facility`
--

/*!50001 DROP VIEW IF EXISTS `dim_facility`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_facility` AS select `f`.`facility_id` AS `facility_id`,`f`.`territory_id` AS `territory_id`,`f`.`facility_name` AS `facility_name`,`f`.`facility_type_id` AS `facility_type_id`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,`ft`.`description` AS `facility_type_description`,`f`.`city` AS `city`,`f`.`state_code` AS `state_code`,`f`.`zip_code` AS `zip_code`,`f`.`manager_employee_id` AS `manager_employee_id`,`ft`.`is_customer_facing` AS `is_customer_facing`,`ft`.`handles_retail` AS `handles_retail`,`ft`.`handles_processing` AS `handles_processing`,`ft`.`handles_distribution` AS `handles_distribution`,`ft`.`handles_local_delivery` AS `handles_local_delivery`,`ft`.`is_active` AS `facility_type_is_active`,(case when (`ft`.`handles_retail` = 1) then 1 else 0 end) AS `is_retail_office`,(case when ((`ft`.`handles_processing` = 1) or (`ft`.`handles_distribution` = 1)) then 1 else 0 end) AS `is_processing_or_distribution_center` from (`facility` `f` left join `facility_type` `ft` on((`ft`.`facility_type_id` = `f`.`facility_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_incident_type`
--

/*!50001 DROP VIEW IF EXISTS `dim_incident_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_incident_type` AS select `it`.`incident_type_id` AS `incident_type_id`,`it`.`type_name` AS `type_name`,`it`.`type_category` AS `type_category`,`it`.`is_active` AS `is_active` from `incident_type` `it` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_p2p_packages_ready_for_middle_mile`
--

/*!50001 DROP VIEW IF EXISTS `vw_p2p_packages_ready_for_middle_mile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_p2p_packages_ready_for_middle_mile` AS with `latest_movement` as (select `pm`.`package_id` AS `package_id`,`pm`.`facility_id` AS `facility_id`,`pm`.`event_timestamp` AS `event_timestamp`,`pm`.`package_status_id` AS `package_status_id`,`met`.`event_type_name` AS `event_type_name`,row_number() OVER (PARTITION BY `pm`.`package_id` ORDER BY `pm`.`event_timestamp` desc,`pm`.`package_movement_id` desc )  AS `rn` from (`package_movement` `pm` join `package_movement_event_type` `met` on((`met`.`package_movement_event_type_id` = `pm`.`package_movement_event_type_id`)))) select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`st`.`service_type_name` AS `service_type`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,`sd`.`sender_territory_id` AS `sender_territory_id`,`sd`.`recipient_territory_id` AS `recipient_territory_id`,`lm`.`facility_id` AS `current_or_origin_facility_id`,`lm`.`event_timestamp` AS `latest_movement_timestamp`,`vpes`.`operational_package_status_id` AS `operational_package_status_id`,`vpes`.`operational_package_status_name` AS `operational_status_name`,`vpes`.`effective_package_status_id` AS `effective_package_status_id`,`vpes`.`effective_package_status_name` AS `effective_status_name`,`vpes`.`has_open_incident` AS `has_open_incident`,`vpes`.`has_open_blocking_incident` AS `has_open_blocking_incident`,`vpes`.`open_incident_count` AS `open_incident_count`,`vpes`.`open_blocking_incident_count` AS `open_blocking_incident_count`,`p`.`weight_oz` AS `weight_oz`,`p`.`length_in` AS `length_in`,`p`.`width_in` AS `width_in`,`p`.`height_in` AS `height_in`,`sd`.`estimated_delivery_distance` AS `estimated_delivery_distance` from (((((`package` `p` join `package_flow_type` `pft` on((`pft`.`package_flow_type_id` = `p`.`package_flow_type_id`))) left join `service_type` `st` on((`st`.`service_type_id` = `p`.`service_type_id`))) left join `shippingdetails` `sd` on((`sd`.`package_id` = `p`.`package_id`))) left join `latest_movement` `lm` on(((`lm`.`package_id` = `p`.`package_id`) and (`lm`.`rn` = 1)))) left join `v_package_effective_status` `vpes` on((unhex(`vpes`.`package_id`) = `p`.`package_id`))) where ((`pft`.`package_flow_type_name` = 'P2P') and ((`lm`.`event_type_name` = 'Sent To Facility') or (`vpes`.`operational_package_status_name` = 'In Transit'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_package`
--

/*!50001 DROP VIEW IF EXISTS `fact_package`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_package` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`package_status_id` AS `operational_package_status_id`,(case when (`ops`.`is_final_status` = 1) then `p`.`package_status_id` when (coalesce(`inc`.`open_blocking_incident_count`,0) > 0) then `delayed_status`.`package_status_id` else `p`.`package_status_id` end) AS `effective_package_status_id`,(case when (coalesce(`inc`.`open_incident_count`,0) > 0) then 1 else 0 end) AS `has_open_incident`,(case when ((`ops`.`is_final_status` = 0) and (coalesce(`inc`.`open_blocking_incident_count`,0) > 0)) then 1 else 0 end) AS `has_open_blocking_incident`,coalesce(`inc`.`open_incident_count`,0) AS `open_incident_count`,coalesce(`inc`.`open_blocking_incident_count`,0) AS `open_blocking_incident_count`,`p`.`received_date` AS `received_datetime`,cast(`p`.`received_date` as date) AS `received_date`,`p`.`weight_oz` AS `weight_oz`,`p`.`length_in` AS `length_in`,`p`.`width_in` AS `width_in`,`p`.`height_in` AS `height_in`,(case when ((`p`.`length_in` is not null) and (`p`.`width_in` is not null) and (`p`.`height_in` is not null)) then ((`p`.`length_in` * `p`.`width_in`) * `p`.`height_in`) else NULL end) AS `package_volume_cubic_in`,1 AS `package_count` from (((`package` `p` join `package_status` `ops` on((`ops`.`package_status_id` = `p`.`package_status_id`))) left join `package_status` `delayed_status` on((`delayed_status`.`status_name` = 'Delayed'))) left join (select `i`.`package_id` AS `package_id`,count(0) AS `open_incident_count`,sum((case when (coalesce(`it`.`blocks_package_movement`,1) = 1) then 1 else 0 end)) AS `open_blocking_incident_count` from ((`incident` `i` join `incident_status` `ist` on((`ist`.`incident_status_id` = `i`.`incident_status_id`))) join `incident_type` `it` on((`it`.`incident_type_id` = `i`.`incident_type_id`))) where ((`i`.`package_id` is not null) and (`ist`.`is_closed_status` = 0)) group by `i`.`package_id`) `inc` on((`inc`.`package_id` = `p`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_smartlocker_assignment`
--

/*!50001 DROP VIEW IF EXISTS `fact_smartlocker_assignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_smartlocker_assignment` AS select `la`.`locker_assignment_id` AS `locker_assignment_id`,cast(hex(`ptl`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`ptl`.`customer_id`) as char(32) charset utf8mb4) AS `locker_customer_id`,`la`.`locker_id` AS `locker_id`,`sl`.`locker_location_id` AS `locker_location_id`,`la`.`assigned_at` AS `assigned_datetime`,cast(`la`.`assigned_at` as date) AS `assigned_date`,`la`.`expires_at` AS `expiration_datetime`,cast(`la`.`expires_at` as date) AS `expiration_date`,`la`.`retrieved_at` AS `retrieved_datetime`,cast(`la`.`retrieved_at` as date) AS `retrieved_date`,(case when (`la`.`retrieved_at` is null) then 1 else 0 end) AS `is_active_assignment`,(case when ((`la`.`retrieved_at` is null) and (`la`.`expires_at` is not null) and (`la`.`expires_at` <= now())) then 1 else 0 end) AS `is_expired_unretrieved`,1 AS `locker_assignment_count` from ((`package_to_locker` `ptl` join `lockerassignment` `la` on((`la`.`locker_assignment_id` = `ptl`.`locker_assignment_id`))) join `smartlocker` `sl` on((`sl`.`locker_id` = `la`.`locker_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facility_map`
--

/*!50001 DROP VIEW IF EXISTS `vw_facility_map`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facility_map` AS select `f`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,`f`.`street_address` AS `street_address`,`f`.`city` AS `city`,`f`.`county` AS `county`,`f`.`state_code` AS `state_code`,`f`.`zip_code` AS `zip_code`,coalesce(`t`.`zip_code`,left(`f`.`zip_code`,5)) AS `map_zip_code`,`zg`.`latitude` AS `latitude`,`zg`.`longitude` AS `longitude`,concat(`f`.`street_address`,', ',`f`.`city`,', ',`f`.`state_code`,' ',`f`.`zip_code`) AS `full_address` from (((`facility` `f` join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) left join `territory` `t` on((`f`.`territory_id` = `t`.`territory_id`))) left join `zip_geo` `zg` on((`zg`.`zip_code` = coalesce(`t`.`zip_code`,left(`f`.`zip_code`,5))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_account_roles`
--

/*!50001 DROP VIEW IF EXISTS `vw_user_account_roles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `vw_user_account_roles` AS select `ul`.`user_id` AS `user_id`,`ul`.`username` AS `username`,`ul`.`email` AS `email`,`ul`.`is_active` AS `is_active`,`ul`.`first_name` AS `first_name`,`ul`.`last_name` AS `last_name`,`r`.`role_id` AS `role_id`,`r`.`role_name` AS `role_name` from ((`user_logins` `ul` join `user_roles` `ur` on((`ul`.`user_id` = `ur`.`user_id`))) join `roles` `r` on((`ur`.`role_id` = `r`.`role_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_incident_movement_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_incident_movement_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_incident_movement_summary` AS select `i`.`incident_id` AS `incident_id`,`i`.`incident_date` AS `incident_date`,`i`.`description` AS `description`,`it`.`type_name` AS `incident_type`,`it`.`type_category` AS `type_category`,`sev`.`severity_name` AS `severity_name`,`ist`.`status_name` AS `incident_status`,`i`.`reported_by_employee_id` AS `reported_by_employee_id`,`e`.`full_name` AS `reported_by_employee`,cast(hex(`i`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`i`.`package_movement_id` AS `package_movement_id`,`met`.`event_type_name` AS `movement_event_type`,cast(hex(`i`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,`i`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name` from (((((((((`incident` `i` join `incident_type` `it` on((`i`.`incident_type_id` = `it`.`incident_type_id`))) join `incident_severity` `sev` on((`i`.`incident_severity_id` = `sev`.`incident_severity_id`))) join `incident_status` `ist` on((`i`.`incident_status_id` = `ist`.`incident_status_id`))) join `employee` `e` on((`i`.`reported_by_employee_id` = `e`.`employee_id`))) left join `package_movement` `pm` on((`i`.`package_movement_id` = `pm`.`package_movement_id`))) left join `package_movement_event_type` `met` on((`pm`.`package_movement_event_type_id` = `met`.`package_movement_event_type_id`))) left join `customer` `c` on((`i`.`customer_id` = `c`.`customer_id`))) left join `facility` `f` on((`i`.`facility_id` = `f`.`facility_id`))) left join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facility_incident_delay_totals`
--

/*!50001 DROP VIEW IF EXISTS `vw_facility_incident_delay_totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facility_incident_delay_totals` AS select `i`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,count(0) AS `open_blocking_incident_count`,count(distinct `i`.`package_id`) AS `delayed_package_count`,min(`i`.`incident_date`) AS `oldest_open_blocking_incident_at`,max(`i`.`incident_date`) AS `latest_open_blocking_incident_at` from (((`incident` `i` join `incident_status` `ist` on((`ist`.`incident_status_id` = `i`.`incident_status_id`))) join `incident_type` `it` on((`it`.`incident_type_id` = `i`.`incident_type_id`))) left join `facility` `f` on((`f`.`facility_id` = `i`.`facility_id`))) where ((`ist`.`is_closed_status` = 0) and (coalesce(`it`.`blocks_package_movement`,1) = 1) and (`i`.`facility_id` is not null)) group by `i`.`facility_id`,`f`.`facility_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_package_flow_type`
--

/*!50001 DROP VIEW IF EXISTS `dim_package_flow_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_package_flow_type` AS select `package_flow_type`.`package_flow_type_id` AS `package_flow_type_id`,`package_flow_type`.`package_flow_type_name` AS `package_flow_type_name`,`package_flow_type`.`is_active` AS `is_active` from `package_flow_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facility_lane_counts`
--

/*!50001 DROP VIEW IF EXISTS `vw_facility_lane_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facility_lane_counts` AS select `pm`.`from_facility_id` AS `from_facility_id`,`from_f`.`facility_name` AS `from_facility_name`,`pm`.`to_facility_id` AS `to_facility_id`,`to_f`.`facility_name` AS `to_facility_name`,count(0) AS `movement_event_count`,count(distinct `pm`.`package_id`) AS `package_count`,min(`pm`.`event_timestamp`) AS `first_moved_at`,max(`pm`.`event_timestamp`) AS `last_moved_at` from ((`package_movement` `pm` join `facility` `from_f` on((`pm`.`from_facility_id` = `from_f`.`facility_id`))) join `facility` `to_f` on((`pm`.`to_facility_id` = `to_f`.`facility_id`))) group by `pm`.`from_facility_id`,`from_f`.`facility_name`,`pm`.`to_facility_id`,`to_f`.`facility_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_incident_severity`
--

/*!50001 DROP VIEW IF EXISTS `dim_incident_severity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_incident_severity` AS select `ise`.`incident_severity_id` AS `incident_severity_id`,`ise`.`severity_name` AS `severity_name`,`ise`.`sort_order` AS `sort_order`,`ise`.`is_active` AS `is_active` from `incident_severity` `ise` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_package_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_revenue` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,trim(concat(`c`.`first_name`,' ',`c`.`last_name`)) AS `recipient_customer_name`,`pft`.`package_flow_type_name` AS `package_flow_type_name`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,trim(concat(`scust`.`first_name`,' ',`scust`.`last_name`)) AS `sender_customer_name`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`b`.`business_name` AS `sender_business_name`,`p`.`service_type_id` AS `service_type_id`,`st`.`service_type_name` AS `service_type_name`,`vpes`.`operational_package_status_id` AS `package_status_id`,`vpes`.`effective_package_status_name` AS `package_status`,`vpes`.`operational_package_status_id` AS `operational_package_status_id`,`vpes`.`operational_package_status_name` AS `operational_status_name`,`vpes`.`effective_package_status_id` AS `effective_package_status_id`,`vpes`.`effective_package_status_name` AS `effective_status_name`,`vpes`.`has_open_incident` AS `has_open_incident`,`vpes`.`has_open_blocking_incident` AS `has_open_blocking_incident`,`vpes`.`open_incident_count` AS `open_incident_count`,`vpes`.`open_blocking_incident_count` AS `open_blocking_incident_count`,`p`.`received_date` AS `received_date`,`sd`.`expected_delivery_date` AS `expected_delivery_date`,`sd`.`delivered_date` AS `delivered_date`,`ship_cost`.`actual_shipping_charge` AS `actual_shipping_charge`,`ship_cost`.`charge_source` AS `charge_source`,`ship_cost`.`charge_recorded_at` AS `charge_recorded_at` from ((((((((`package` `p` join `customer` `c` on((`c`.`customer_id` = `p`.`recipient_customer_id`))) join `package_flow_type` `pft` on((`pft`.`package_flow_type_id` = `p`.`package_flow_type_id`))) left join `customer` `scust` on((`scust`.`customer_id` = `p`.`sender_customer_id`))) left join `business` `b` on((`b`.`business_id` = `p`.`sender_business_id`))) left join `service_type` `st` on((`st`.`service_type_id` = `p`.`service_type_id`))) left join `shippingdetails` `sd` on((`sd`.`package_id` = `p`.`package_id`))) left join `shipping_cost` `ship_cost` on((`ship_cost`.`package_id` = `p`.`package_id`))) left join `v_package_effective_status` `vpes` on((unhex(`vpes`.`package_id`) = `p`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facility_processing_counts`
--

/*!50001 DROP VIEW IF EXISTS `vw_facility_processing_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facility_processing_counts` AS select `pm`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,count(0) AS `movement_event_count`,sum((case when (`met`.`is_processing_event` = 1) then 1 else 0 end)) AS `processing_event_count`,count(distinct `pm`.`package_id`) AS `packages_processed`,max(`pm`.`event_timestamp`) AS `most_recent_processed_at` from (((`package_movement` `pm` join `package_movement_event_type` `met` on((`pm`.`package_movement_event_type_id` = `met`.`package_movement_event_type_id`))) join `facility` `f` on((`pm`.`facility_id` = `f`.`facility_id`))) join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) group by `pm`.`facility_id`,`f`.`facility_name`,`ft`.`facility_type_code`,`ft`.`facility_type_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_package_effective_status`
--

/*!50001 DROP VIEW IF EXISTS `v_package_effective_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_package_effective_status` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`ops`.`package_status_id` AS `operational_package_status_id`,`ops`.`status_name` AS `operational_package_status_name`,`ops`.`is_final_status` AS `operational_is_final_status`,(case when (`ops`.`is_final_status` = 1) then `ops`.`package_status_id` when (coalesce(`inc`.`open_blocking_incident_count`,0) > 0) then `delayed_status`.`package_status_id` else `ops`.`package_status_id` end) AS `effective_package_status_id`,(case when (`ops`.`is_final_status` = 1) then `ops`.`status_name` when (coalesce(`inc`.`open_blocking_incident_count`,0) > 0) then `delayed_status`.`status_name` else `ops`.`status_name` end) AS `effective_package_status_name`,(case when (coalesce(`inc`.`open_incident_count`,0) > 0) then 1 else 0 end) AS `has_open_incident`,(case when ((`ops`.`is_final_status` = 0) and (coalesce(`inc`.`open_blocking_incident_count`,0) > 0)) then 1 else 0 end) AS `has_open_blocking_incident`,coalesce(`inc`.`open_incident_count`,0) AS `open_incident_count`,coalesce(`inc`.`open_blocking_incident_count`,0) AS `open_blocking_incident_count` from (((`package` `p` join `package_status` `ops` on((`ops`.`package_status_id` = `p`.`package_status_id`))) left join `package_status` `delayed_status` on((`delayed_status`.`status_name` = 'Delayed'))) left join (select `i`.`package_id` AS `package_id`,count(0) AS `open_incident_count`,sum((case when (coalesce(`it`.`blocks_package_movement`,1) = 1) then 1 else 0 end)) AS `open_blocking_incident_count` from ((`incident` `i` join `incident_status` `ist` on((`ist`.`incident_status_id` = `i`.`incident_status_id`))) join `incident_type` `it` on((`it`.`incident_type_id` = `i`.`incident_type_id`))) where ((`i`.`package_id` is not null) and (`ist`.`is_closed_status` = 0)) group by `i`.`package_id`) `inc` on((`inc`.`package_id` = `p`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fact_package_movement`
--

/*!50001 DROP VIEW IF EXISTS `fact_package_movement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `fact_package_movement` AS select `pm`.`package_movement_id` AS `package_movement_id`,cast(hex(`pm`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`pm`.`package_movement_event_type_id` AS `package_movement_event_type_id`,`pm`.`package_status_id` AS `package_status_id`,`pm`.`facility_id` AS `facility_id`,`pm`.`from_facility_id` AS `from_facility_id`,`pm`.`to_facility_id` AS `to_facility_id`,`pm`.`processed_by_employee_id` AS `processed_by_employee_id`,`pm`.`event_timestamp` AS `event_datetime`,cast(`pm`.`event_timestamp` as date) AS `event_date`,1 AS `movement_event_count` from `package_movement` `pm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_package`
--

/*!50001 DROP VIEW IF EXISTS `dim_package`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_package` AS select cast(hex(`p`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,cast(hex(`p`.`recipient_customer_id`) as char(32) charset utf8mb4) AS `recipient_customer_id`,`p`.`package_flow_type_id` AS `package_flow_type_id`,`pft`.`package_flow_type_name` AS `package_flow_type_name`,cast(hex(`p`.`sender_customer_id`) as char(32) charset utf8mb4) AS `sender_customer_id`,cast(hex(`p`.`sender_business_id`) as char(32) charset utf8mb4) AS `sender_business_id`,`p`.`service_type_id` AS `service_type_id`,`p`.`package_status_id` AS `package_status_id`,`p`.`received_date` AS `received_date` from (`package` `p` join `package_flow_type` `pft` on((`pft`.`package_flow_type_id` = `p`.`package_flow_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_locker_occupancy`
--

/*!50001 DROP VIEW IF EXISTS `vw_locker_occupancy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_locker_occupancy` AS select `sl`.`locker_id` AS `locker_id`,`ll`.`locker_location_id` AS `locker_location_id`,`ll`.`location_name` AS `location_name`,`sl`.`locker_status` AS `locker_status`,`la`.`locker_assignment_id` AS `locker_assignment_id`,cast(hex(`la`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,cast(hex(`ptl`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`la`.`assigned_at` AS `assigned_at`,`la`.`expires_at` AS `expires_at`,`la`.`retrieved_at` AS `retrieved_at`,(case when ((`la`.`locker_assignment_id` is not null) and (`la`.`expires_at` is not null) and (`la`.`expires_at` <= now())) then 1 else 0 end) AS `is_expired` from ((((`smartlocker` `sl` left join `lockerlocations` `ll` on((`sl`.`locker_location_id` = `ll`.`locker_location_id`))) left join `lockerassignment` `la` on(((`sl`.`locker_id` = `la`.`locker_id`) and (`la`.`retrieved_at` is null)))) left join `customer` `c` on((`la`.`customer_id` = `c`.`customer_id`))) left join `package_to_locker` `ptl` on((`la`.`locker_assignment_id` = `ptl`.`locker_assignment_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_customer`
--

/*!50001 DROP VIEW IF EXISTS `dim_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_customer` AS select cast(hex(`c`.`customer_id`) as char(32) charset utf8mb4) AS `customer_id`,`c`.`territory_id` AS `territory_id`,`c`.`first_name` AS `first_name`,`c`.`middle_initial` AS `middle_initial`,`c`.`last_name` AS `last_name`,trim(concat(`c`.`first_name`,' ',coalesce(concat(`c`.`middle_initial`,'. '),''),`c`.`last_name`)) AS `customer_name`,`c`.`city` AS `city`,`c`.`state_code` AS `state_code`,`c`.`zip_code` AS `zip_code`,`c`.`preferred_facility_id` AS `preferred_facility_id`,`pf`.`territory_id` AS `preferred_facility_territory_id`,`c`.`birth_date` AS `birth_date`,timestampdiff(YEAR,`c`.`birth_date`,curdate()) AS `age_years`,`c`.`marital_status` AS `marital_status`,`c`.`gender` AS `gender`,`c`.`email_address` AS `email_address`,`c`.`annual_income` AS `annual_income`,`c`.`total_children` AS `total_children`,`c`.`education_level` AS `education_level`,`c`.`occupation` AS `occupation`,`c`.`home_owner` AS `home_owner`,cast(`c`.`created_at` as date) AS `customer_created_date` from (`customer` `c` left join `facility` `pf` on((`pf`.`facility_id` = `c`.`preferred_facility_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dim_movement_event_type`
--

/*!50001 DROP VIEW IF EXISTS `dim_movement_event_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dim_movement_event_type` AS select `met`.`package_movement_event_type_id` AS `package_movement_event_type_id`,`met`.`event_type_name` AS `event_type_name`,`met`.`description` AS `description`,`met`.`default_package_status_name` AS `default_package_status_name`,`met`.`is_entry_event` AS `is_entry_event`,`met`.`is_exit_event` AS `is_exit_event`,`met`.`is_processing_event` AS `is_processing_event`,`met`.`is_final_event` AS `is_final_event`,`met`.`sort_order` AS `sort_order`,`met`.`is_active` AS `is_active` from `package_movement_event_type` `met` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_package_facility_stays`
--

/*!50001 DROP VIEW IF EXISTS `vw_package_facility_stays`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ryan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_package_facility_stays` AS select cast(hex(`x`.`package_id`) as char(32) charset utf8mb4) AS `package_id`,`x`.`entry_package_movement_id` AS `entry_package_movement_id`,`x`.`facility_id` AS `facility_id`,`x`.`facility_name` AS `facility_name`,`x`.`facility_type_code` AS `facility_type_code`,`x`.`facility_type_name` AS `facility_type_name`,`x`.`arrived_at` AS `arrived_at`,`x`.`departed_at` AS `departed_at`,timestampdiff(MINUTE,`x`.`arrived_at`,coalesce(`x`.`departed_at`,now())) AS `dwell_minutes`,(case when (`x`.`departed_at` is null) then 1 else 0 end) AS `is_current_facility` from (select `pm`.`package_id` AS `package_id`,`pm`.`package_movement_id` AS `entry_package_movement_id`,`pm`.`facility_id` AS `facility_id`,`f`.`facility_name` AS `facility_name`,`ft`.`facility_type_code` AS `facility_type_code`,`ft`.`facility_type_name` AS `facility_type_name`,`pm`.`event_timestamp` AS `arrived_at`,(select min(`pm2`.`event_timestamp`) from (`package_movement` `pm2` join `package_movement_event_type` `met2` on((`pm2`.`package_movement_event_type_id` = `met2`.`package_movement_event_type_id`))) where ((`pm2`.`package_id` = `pm`.`package_id`) and (`met2`.`is_exit_event` = 1) and (`pm2`.`event_timestamp` > `pm`.`event_timestamp`) and ((`pm2`.`facility_id` = `pm`.`facility_id`) or (`pm2`.`from_facility_id` = `pm`.`facility_id`)))) AS `departed_at` from (((`package_movement` `pm` join `package_movement_event_type` `met` on((`pm`.`package_movement_event_type_id` = `met`.`package_movement_event_type_id`))) join `facility` `f` on((`pm`.`facility_id` = `f`.`facility_id`))) join `facility_type` `ft` on((`f`.`facility_type_id` = `ft`.`facility_type_id`))) where (`met`.`is_entry_event` = 1)) `x` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'postal_bi_system'
--

--
-- Dumping routines for database 'postal_bi_system'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_facility_dept_prefix` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` FUNCTION `fn_facility_dept_prefix`(
    p_county VARCHAR(45),
    p_city VARCHAR(60),
    p_facility_name VARCHAR(100),
    p_zip_code VARCHAR(10)
) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE name_part VARCHAR(100);
    DECLARE cleaned VARCHAR(100);
    DECLARE token VARCHAR(40);
    DECLARE initials VARCHAR(20) DEFAULT '';

    SET name_part = TRIM(
        CASE
            WHEN LOCATE('-', p_facility_name) > 0
                THEN SUBSTRING_INDEX(p_facility_name, '-', -1)
            ELSE p_facility_name
        END
    );

    SET name_part = SUBSTRING_INDEX(name_part, ';', 1);
    SET cleaned = REGEXP_REPLACE(UPPER(name_part), '[^A-Z0-9]+', ' ');

    WHILE LENGTH(TRIM(cleaned)) > 0 DO
        SET token = SUBSTRING_INDEX(TRIM(cleaned), ' ', 1);
        SET initials = CONCAT(initials, LEFT(token, 1));

        IF LOCATE(' ', TRIM(cleaned)) = 0 THEN
            SET cleaned = '';
        ELSE
            SET cleaned = SUBSTRING(TRIM(cleaned), LOCATE(' ', TRIM(cleaned)) + 1);
        END IF;
    END WHILE;

    RETURN CONCAT(
        LEFT(REGEXP_REPLACE(UPPER(p_county), '[^A-Z]', ''), 2),
        LEFT(REGEXP_REPLACE(UPPER(p_city), '[^A-Z]', ''), 2),
        initials,
        RIGHT(REGEXP_REPLACE(p_zip_code, '[^0-9]', ''), 3)
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `b_NewBusiness` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `b_NewBusiness`(
    IN p_business_name VARCHAR(150),
    IN p_street_address VARCHAR(150),
    IN p_county VARCHAR(50),
    IN p_city VARCHAR(50),
    IN p_state_code CHAR(2),
    IN p_zip_code VARCHAR(10),
    IN p_territory_id INT,
    IN p_phone_number VARCHAR(20),
    IN p_email VARCHAR(100),
    IN p_preferred_facility_id INT,
    OUT p_business_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_business_id BINARY(16);
    DECLARE v_business_name VARCHAR(150);
    DECLARE v_street_address VARCHAR(150);
    DECLARE v_county VARCHAR(50);
    DECLARE v_city VARCHAR(50);
    DECLARE v_state_code CHAR(2);
    DECLARE v_zip_code VARCHAR(10);
    DECLARE v_phone_number VARCHAR(20);
    DECLARE v_email VARCHAR(100);
    DECLARE v_territory_exists INT DEFAULT 0;
    DECLARE v_mail_processing_facility_exists INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET v_business_name = NULLIF(TRIM(p_business_name), '');
    SET v_street_address = NULLIF(TRIM(p_street_address), '');
    SET v_county = NULLIF(UPPER(TRIM(p_county)), '');
    SET v_city = NULLIF(UPPER(TRIM(p_city)), '');
    SET v_state_code = UPPER(TRIM(p_state_code));
    SET v_zip_code = NULLIF(TRIM(p_zip_code), '');
    SET v_phone_number = NULLIF(TRIM(p_phone_number), '');
    SET v_email = LOWER(NULLIF(TRIM(p_email), ''));

    IF v_business_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business name is required.';
    END IF;

    IF v_state_code IS NULL OR CHAR_LENGTH(v_state_code) <> 2 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business state code must be a 2-character value.';
    END IF;

    IF v_state_code <> 'TX' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business state code must be TX.';
    END IF;

    IF v_email IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business email is required.';
    END IF;

    IF v_email NOT REGEXP '^[^[:space:]@]+@[^[:space:]@]+\\.[^[:space:]@]+$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business email format is invalid.';
    END IF;

    IF v_zip_code IS NOT NULL AND CHAR_LENGTH(v_zip_code) NOT IN (5, 10) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business ZIP code must be 5 or 10 characters.';
    END IF;

    START TRANSACTION;

    IF p_territory_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_territory_exists
        FROM `territory`
        WHERE `territory_id` = p_territory_id;

        IF v_territory_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business territory does not exist.';
        END IF;
    END IF;

    IF p_preferred_facility_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_mail_processing_facility_exists
        FROM `facility` f
        JOIN `facility_type` ft
            ON ft.`facility_type_id` = f.`facility_type_id`
        WHERE f.`facility_id` = p_preferred_facility_id
          AND UPPER(ft.`facility_type_name`) = 'MAIL PROCESSING';

        IF v_mail_processing_facility_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business preferred facility must be an existing Mail Processing facility.';
        END IF;
    END IF;

    IF EXISTS (
        SELECT 1
        FROM `business`
        WHERE `email` = v_email
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business email already exists.';
    END IF;

    SET v_business_id = UUID_TO_BIN(UUID());

    INSERT INTO `business` (
        `business_id`,
        `business_name`,
        `street_address`,
        `county`,
        `city`,
        `state_code`,
        `zip_code`,
        `territory_id`,
        `phone_number`,
        `email`,
        `preferred_facility_id`
    )
    VALUES (
        v_business_id,
        v_business_name,
        v_street_address,
        v_county,
        v_city,
        v_state_code,
        v_zip_code,
        p_territory_id,
        v_phone_number,
        v_email,
        p_preferred_facility_id
    );

    COMMIT;

    SET p_business_id = v_business_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `b_ValidateBusinessExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `b_ValidateBusinessExists`(
    IN p_business_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    IF p_business_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `business`
        WHERE `business_id` = p_business_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business does not exist.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `c_NewCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `c_NewCustomer`(
    IN p_first_name VARCHAR(50),
    IN p_middle_initial CHAR(1),
    IN p_last_name VARCHAR(50),
    IN p_street_address VARCHAR(100),
    IN p_county VARCHAR(50),
    IN p_city VARCHAR(50),
    IN p_state_code CHAR(2),
    IN p_zip_code VARCHAR(10),
    IN p_territory_id INT,
    IN p_phone_number VARCHAR(15),
    IN p_email VARCHAR(100),
    IN p_user_id INT,
    IN p_preferred_facility_id INT,
    IN p_birth_date DATE,
    IN p_marital_status CHAR(1),
    IN p_gender CHAR(1),
    IN p_email_address VARCHAR(150),
    IN p_annual_income DECIMAL(10,2),
    IN p_total_children TINYINT UNSIGNED,
    IN p_education_level VARCHAR(30),
    IN p_occupation VARCHAR(30),
    IN p_home_owner CHAR(1),
    OUT p_customer_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_customer_id BINARY(16);
    DECLARE v_first_name VARCHAR(50);
    DECLARE v_middle_initial CHAR(1);
    DECLARE v_last_name VARCHAR(50);
    DECLARE v_street_address VARCHAR(100);
    DECLARE v_county VARCHAR(50);
    DECLARE v_city VARCHAR(50);
    DECLARE v_state_code CHAR(2);
    DECLARE v_zip_code VARCHAR(10);
    DECLARE v_phone_number VARCHAR(15);
    DECLARE v_email VARCHAR(100);
    DECLARE v_email_address VARCHAR(150);
    DECLARE v_gender CHAR(1);
    DECLARE v_marital_status CHAR(1);
    DECLARE v_home_owner CHAR(1);
    DECLARE v_territory_exists INT DEFAULT 0;
    DECLARE v_user_exists INT DEFAULT 0;
    DECLARE v_facility_is_post_office INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET v_first_name = NULLIF(TRIM(p_first_name), '');
    SET v_middle_initial = NULLIF(UPPER(TRIM(p_middle_initial)), '');
    SET v_last_name = NULLIF(TRIM(p_last_name), '');
    SET v_street_address = NULLIF(TRIM(p_street_address), '');
    SET v_county = NULLIF(TRIM(p_county), '');
    SET v_city = NULLIF(TRIM(p_city), '');
    SET v_state_code = UPPER(TRIM(p_state_code));
    SET v_zip_code = NULLIF(TRIM(p_zip_code), '');
    SET v_phone_number = NULLIF(TRIM(p_phone_number), '');
    SET v_email = LOWER(NULLIF(TRIM(p_email), ''));
    SET v_email_address = LOWER(COALESCE(NULLIF(TRIM(p_email_address), ''), v_email));
    SET v_gender = NULLIF(UPPER(TRIM(p_gender)), '');
    SET v_marital_status = NULLIF(UPPER(TRIM(p_marital_status)), '');
    SET v_home_owner = NULLIF(UPPER(TRIM(p_home_owner)), '');

    IF v_first_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'First name is required.';
    END IF;

    IF v_last_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Last name is required.';
    END IF;

    IF v_street_address IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Street address is required.';
    END IF;

    IF v_city IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'City is required.';
    END IF;

    IF v_state_code IS NULL OR CHAR_LENGTH(v_state_code) <> 2 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'State code must be a 2-character value.';
    END IF;

    IF v_state_code <> 'TX' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer state code must be TX.';
    END IF;

    IF v_zip_code IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'ZIP code is required.';
    END IF;

    IF CHAR_LENGTH(v_zip_code) NOT IN (5, 10) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'ZIP code must be 5 or 10 characters.';
    END IF;

    IF v_phone_number IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Phone number is required.';
    END IF;

    IF v_email IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Email is required.';
    END IF;

    IF v_email NOT REGEXP '^[^[:space:]@]+@[^[:space:]@]+\\.[^[:space:]@]+$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer email format is invalid.';
    END IF;

    IF v_email_address IS NOT NULL
       AND v_email_address NOT REGEXP '^[^[:space:]@]+@[^[:space:]@]+\\.[^[:space:]@]+$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer email_address format is invalid.';
    END IF;

    IF v_gender IS NOT NULL AND v_gender NOT IN ('M', 'F') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer gender must be M, F, or NULL.';
    END IF;

    IF v_marital_status IS NOT NULL AND v_marital_status NOT IN ('M', 'S') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer marital status must be M, S, or NULL.';
    END IF;

    IF v_home_owner IS NOT NULL AND v_home_owner NOT IN ('Y', 'N') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer home owner must be Y, N, or NULL.';
    END IF;

    IF p_annual_income IS NOT NULL AND p_annual_income < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer annual income cannot be negative.';
    END IF;

    IF p_total_children IS NOT NULL AND p_total_children > 5 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer total children must be between 0 and 5.';
    END IF;

    START TRANSACTION;

    IF p_territory_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_territory_exists
        FROM `territory`
        WHERE `territory_id` = p_territory_id;

        IF v_territory_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Customer territory does not exist.';
        END IF;
    END IF;

    IF p_user_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_user_exists
        FROM `user_logins`
        WHERE `user_id` = p_user_id;

        IF v_user_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Customer user account does not exist.';
        END IF;
    END IF;

    IF p_preferred_facility_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_facility_is_post_office
        FROM `facility` f
        JOIN `facility_type` ft
            ON ft.`facility_type_id` = f.`facility_type_id`
        WHERE f.`facility_id` = p_preferred_facility_id
          AND UPPER(ft.`facility_type_name`) = 'POST OFFICE';

        IF v_facility_is_post_office = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Customer preferred facility must be an existing Post Office.';
        END IF;
    END IF;

    IF EXISTS (
        SELECT 1
        FROM `customer`
        WHERE `email` = v_email
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer email already exists.';
    END IF;

    IF p_user_id IS NOT NULL AND EXISTS (
        SELECT 1
        FROM `customer`
        WHERE `user_id` = p_user_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer user account is already assigned.';
    END IF;

    SET v_customer_id = UUID_TO_BIN(UUID());

    INSERT INTO `customer` (
        `customer_id`,
        `first_name`,
        `middle_initial`,
        `last_name`,
        `street_address`,
        `county`,
        `city`,
        `state_code`,
        `zip_code`,
        `territory_id`,
        `phone_number`,
        `email`,
        `user_id`,
        `preferred_facility_id`,
        `birth_date`,
        `marital_status`,
        `gender`,
        `email_address`,
        `annual_income`,
        `total_children`,
        `education_level`,
        `occupation`,
        `home_owner`
    )
    VALUES (
        v_customer_id,
        v_first_name,
        v_middle_initial,
        v_last_name,
        v_street_address,
        v_county,
        v_city,
        v_state_code,
        v_zip_code,
        p_territory_id,
        v_phone_number,
        v_email,
        p_user_id,
        p_preferred_facility_id,
        p_birth_date,
        v_marital_status,
        v_gender,
        v_email_address,
        p_annual_income,
        p_total_children,
        p_education_level,
        p_occupation,
        v_home_owner
    );

    COMMIT;

    SET p_customer_id = v_customer_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `c_ValidateCustomerExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `c_ValidateCustomerExists`(
    IN p_customer_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    IF p_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer`
        WHERE `customer_id` = p_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer does not exist.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DetermineNextFacilityForPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `DetermineNextFacilityForPackage`(
    IN p_package_id BINARY(16),
    OUT p_current_facility_id INT,
    OUT p_next_facility_id INT,
    OUT p_next_facility_type_name VARCHAR(80),
    OUT p_route_decision_reason VARCHAR(500),
    OUT p_is_final_transfer TINYINT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_movement_count INT DEFAULT 0;
    DECLARE v_send_count INT DEFAULT 0;

    DECLARE v_package_flow_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_current_facility_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_destination_facility_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    DECLARE v_route_plan_count INT DEFAULT 0;
    DECLARE v_planned_origin_facility_id INT DEFAULT NULL;
    DECLARE v_planned_destination_facility_id INT DEFAULT NULL;

    DECLARE v_current_zip5 VARCHAR(5) DEFAULT NULL;
    DECLARE v_destination_zip5 VARCHAR(5) DEFAULT NULL;
    DECLARE v_current_territory_id INT DEFAULT NULL;
    DECLARE v_destination_territory_id INT DEFAULT NULL;
    DECLARE v_current_lat DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_current_lon DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_destination_lat DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_destination_lon DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_current_to_destination_distance_m DOUBLE DEFAULT NULL;

    DECLARE v_post_office_type_id INT DEFAULT NULL;
    DECLARE v_network_type_id INT DEFAULT NULL;
    DECLARE v_mail_processing_type_id INT DEFAULT NULL;
    DECLARE v_type_lookup_count INT DEFAULT 0;

    SET p_current_facility_id = NULL;
    SET p_next_facility_id = NULL;
    SET p_next_facility_type_name = NULL;
    SET p_route_decision_reason = NULL;
    SET p_is_final_transfer = 0;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    SELECT COUNT(*)
      INTO v_package_count
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id does not reference an existing package.';
    END IF;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    SELECT COUNT(*)
      INTO v_movement_count
    FROM `package_movement` pm
    WHERE pm.`package_id` = p_package_id;

    IF v_movement_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must first have a current facility through a received or sorted movement before recommended transfer can be determined.';
    END IF;

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        p_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF p_current_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must first have a current facility through a received or sorted movement before recommended transfer can be determined.';
    END IF;

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at the open destination facility before another recommended send can be determined.';
    END IF;

    SELECT
        COUNT(*),
        MAX(prp.`planned_origin_facility_id`),
        MAX(prp.`planned_destination_facility_id`)
    INTO
        v_route_plan_count,
        v_planned_origin_facility_id,
        v_planned_destination_facility_id
    FROM `package_route_plan` prp
    WHERE prp.`package_id` = p_package_id;

    IF v_route_plan_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package is missing a package_route_plan.';
    END IF;

    IF v_planned_origin_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package route plan is missing the planned origin facility.';
    END IF;

    IF v_planned_destination_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package route plan is missing the planned destination facility.';
    END IF;

    SELECT
        MAX(pft.`package_flow_type_name`)
    INTO
        v_package_flow_type_name
    FROM `package` p
    JOIN `package_flow_type` pft
        ON pft.`package_flow_type_id` = p.`package_flow_type_id`
    WHERE p.`package_id` = p_package_id;

    IF v_package_flow_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unsupported package flow type for recommended routing.';
    END IF;

    SELECT COUNT(*)
      INTO v_type_lookup_count
    FROM `facility_type` ft
    WHERE ft.`facility_type_name` IN ('Post Office', 'Network Facilities', 'Mail Processing')
      AND ft.`is_active` = 1;

    IF v_type_lookup_count <> 3 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Required active facility types could not be resolved for recommended routing.';
    END IF;

    SELECT MAX(ft.`facility_type_id`)
      INTO v_post_office_type_id
    FROM `facility_type` ft
    WHERE ft.`facility_type_name` = 'Post Office'
      AND ft.`is_active` = 1;

    SELECT MAX(ft.`facility_type_id`)
      INTO v_network_type_id
    FROM `facility_type` ft
    WHERE ft.`facility_type_name` = 'Network Facilities'
      AND ft.`is_active` = 1;

    SELECT MAX(ft.`facility_type_id`)
      INTO v_mail_processing_type_id
    FROM `facility_type` ft
    WHERE ft.`facility_type_name` = 'Mail Processing'
      AND ft.`is_active` = 1;

    SELECT
        MAX(ft.`facility_type_name`),
        MAX(LEFT(TRIM(f.`zip_code`), 5)),
        MAX(f.`territory_id`),
        MAX(zg.`latitude`),
        MAX(zg.`longitude`)
    INTO
        v_current_facility_type_name,
        v_current_zip5,
        v_current_territory_id,
        v_current_lat,
        v_current_lon
    FROM `facility` f
    JOIN `facility_type` ft
        ON ft.`facility_type_id` = f.`facility_type_id`
    LEFT JOIN `zip_geo` zg
        ON zg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
    WHERE f.`facility_id` = p_current_facility_id;

    IF v_current_facility_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Current facility could not be resolved for recommended routing.';
    END IF;

    SELECT
        MAX(ft.`facility_type_name`),
        MAX(LEFT(TRIM(f.`zip_code`), 5)),
        MAX(f.`territory_id`),
        MAX(zg.`latitude`),
        MAX(zg.`longitude`)
    INTO
        v_destination_facility_type_name,
        v_destination_zip5,
        v_destination_territory_id,
        v_destination_lat,
        v_destination_lon
    FROM `facility` f
    JOIN `facility_type` ft
        ON ft.`facility_type_id` = f.`facility_type_id`
    LEFT JOIN `zip_geo` zg
        ON zg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
    WHERE f.`facility_id` = v_planned_destination_facility_id;

    IF v_destination_facility_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Planned destination facility could not be resolved for recommended routing.';
    END IF;

    SELECT COUNT(*)
      INTO v_package_count
    FROM `facility` f
    WHERE f.`facility_id` = v_planned_origin_facility_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Planned origin facility does not exist.';
    END IF;

    SELECT COUNT(*)
      INTO v_package_count
    FROM `facility` f
    WHERE f.`facility_id` = v_planned_destination_facility_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Planned destination facility does not exist.';
    END IF;

    IF p_current_facility_id = v_planned_destination_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package is already at the planned destination facility and should use the appropriate final delivery, pickup, or smartlocker procedure.';
    END IF;

    SELECT COUNT(*)
      INTO v_send_count
    FROM `package_movement` pm
    JOIN `package_movement_event_type` met
        ON met.`package_movement_event_type_id` = pm.`package_movement_event_type_id`
    WHERE pm.`package_id` = p_package_id
      AND met.`event_type_name` = 'Sent To Facility';

    IF v_current_lat IS NOT NULL
       AND v_current_lon IS NOT NULL
       AND v_destination_lat IS NOT NULL
       AND v_destination_lon IS NOT NULL THEN
        SET v_current_to_destination_distance_m = ST_Distance_Sphere(
            POINT(v_current_lon, v_current_lat),
            POINT(v_destination_lon, v_destination_lat)
        );
    ELSE
        SET v_current_to_destination_distance_m = NULL;
    END IF;

    IF v_package_flow_type_name = 'B2C' THEN
        IF v_send_count = 0 THEN
            IF p_current_facility_id <> v_planned_origin_facility_id THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility for B2C routing stage: package with zero prior sends must be at the planned origin facility.';
            END IF;

            IF v_current_facility_type_name <> 'Mail Processing' THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for B2C routing stage: planned origin must be a Mail Processing facility.';
            END IF;

            SELECT
                c.`facility_id`,
                ft.`facility_type_name`
            INTO
                p_next_facility_id,
                p_next_facility_type_name
            FROM `facility` c
            JOIN `facility_type` ft
                ON ft.`facility_type_id` = c.`facility_type_id`
            LEFT JOIN `zip_geo` zgc
                ON zgc.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
            WHERE c.`facility_id` <> p_current_facility_id
              AND c.`facility_id` <> v_planned_destination_facility_id
              AND c.`facility_type_id` IN (v_network_type_id, v_mail_processing_type_id)
              AND ft.`is_active` = 1
            ORDER BY
                CASE
                    WHEN v_destination_territory_id IS NOT NULL
                         AND c.`territory_id` = v_destination_territory_id THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_current_to_destination_distance_m IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL
                         AND ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         ) < v_current_to_destination_distance_m THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_destination_lat IS NOT NULL
                         AND v_destination_lon IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL THEN ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         )
                    ELSE 999999999999
                END,
                c.`facility_id`
            LIMIT 1;

            IF p_next_facility_id IS NULL THEN
                SET p_next_facility_id = v_planned_destination_facility_id;
                SET p_next_facility_type_name = v_destination_facility_type_name;
                SET p_route_decision_reason = 'B2C package at planned Mail Processing origin with no prior sends; no usable middle-mile candidate was found, so the planned destination facility was selected.';
            ELSE
                SET p_route_decision_reason = CONCAT(
                    'B2C package at planned Mail Processing origin with no prior sends; selected middle-mile ',
                    p_next_facility_type_name,
                    ' facility closest to planned destination.'
                );
            END IF;
        ELSE
            IF v_current_facility_type_name NOT IN ('Network Facilities', 'Mail Processing') THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for B2C routing stage: package must be at a Network Facilities or Mail Processing facility before final transfer to destination.';
            END IF;

            SET p_next_facility_id = v_planned_destination_facility_id;
            SET p_next_facility_type_name = v_destination_facility_type_name;

            IF v_send_count = 1 THEN
                SET p_route_decision_reason = 'B2C package has completed middle-mile transfer; selected planned destination facility for final facility transfer.';
            ELSE
                SET p_route_decision_reason = 'B2C package is already past the origin middle-mile stage; selected planned destination facility for final facility transfer.';
            END IF;
        END IF;
    ELSEIF v_package_flow_type_name = 'P2P' THEN
        IF v_send_count = 0 THEN
            IF v_current_facility_type_name <> 'Post Office' THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for expected P2P stage: package with zero prior sends must be at a Post Office.';
            END IF;

            SELECT
                c.`facility_id`,
                ft.`facility_type_name`
            INTO
                p_next_facility_id,
                p_next_facility_type_name
            FROM `facility` c
            JOIN `facility_type` ft
                ON ft.`facility_type_id` = c.`facility_type_id`
            LEFT JOIN `zip_geo` zgc
                ON zgc.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
            WHERE c.`facility_id` <> p_current_facility_id
              AND c.`facility_id` <> v_planned_destination_facility_id
              AND c.`facility_type_id` = v_network_type_id
              AND ft.`is_active` = 1
            ORDER BY
                CASE
                    WHEN v_current_territory_id IS NOT NULL
                         AND c.`territory_id` = v_current_territory_id THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_current_lat IS NOT NULL
                         AND v_current_lon IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL THEN ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_current_lon, v_current_lat)
                         )
                    ELSE 999999999999
                END,
                CASE
                    WHEN v_destination_lat IS NOT NULL
                         AND v_destination_lon IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL THEN ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         )
                    ELSE 999999999999
                END,
                c.`facility_id`
            LIMIT 1;

            IF p_next_facility_id IS NULL THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Unable to find candidate next facility for P2P first middle-mile leg.';
            END IF;

            SET p_route_decision_reason = 'P2P package at origin Post Office with no prior sends; selected nearest Network Facility for first middle-mile leg.';
        ELSEIF v_send_count = 1 THEN
            IF v_current_facility_type_name <> 'Network Facilities' THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for expected P2P stage: package with one prior send must be at a Network Facilities facility.';
            END IF;

            SELECT
                c.`facility_id`,
                ft.`facility_type_name`
            INTO
                p_next_facility_id,
                p_next_facility_type_name
            FROM `facility` c
            JOIN `facility_type` ft
                ON ft.`facility_type_id` = c.`facility_type_id`
            LEFT JOIN `zip_geo` zgc
                ON zgc.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
            WHERE c.`facility_id` <> p_current_facility_id
              AND c.`facility_id` <> v_planned_destination_facility_id
              AND c.`facility_type_id` = v_mail_processing_type_id
              AND ft.`is_active` = 1
            ORDER BY
                CASE
                    WHEN v_destination_territory_id IS NOT NULL
                         AND c.`territory_id` = v_destination_territory_id THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_current_to_destination_distance_m IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL
                         AND ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         ) < v_current_to_destination_distance_m THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_destination_lat IS NOT NULL
                         AND v_destination_lon IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL THEN ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         )
                    ELSE 999999999999
                END,
                c.`facility_id`
            LIMIT 1;

            IF p_next_facility_id IS NULL THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Unable to find candidate next facility for P2P mail processing stage.';
            END IF;

            SET p_route_decision_reason = 'P2P package has one prior send; selected Mail Processing facility closest to planned destination.';
        ELSEIF v_send_count = 2 THEN
            IF v_current_facility_type_name <> 'Mail Processing' THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for expected P2P stage: package with two prior sends must be at a Mail Processing facility.';
            END IF;

            SELECT
                c.`facility_id`,
                ft.`facility_type_name`
            INTO
                p_next_facility_id,
                p_next_facility_type_name
            FROM `facility` c
            JOIN `facility_type` ft
                ON ft.`facility_type_id` = c.`facility_type_id`
            LEFT JOIN `zip_geo` zgc
                ON zgc.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
            WHERE c.`facility_id` <> p_current_facility_id
              AND c.`facility_id` <> v_planned_destination_facility_id
              AND c.`facility_type_id` = v_network_type_id
              AND ft.`is_active` = 1
            ORDER BY
                CASE
                    WHEN v_destination_territory_id IS NOT NULL
                         AND c.`territory_id` = v_destination_territory_id THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_current_to_destination_distance_m IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL
                         AND ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         ) < v_current_to_destination_distance_m THEN 0
                    ELSE 1
                END,
                CASE
                    WHEN v_destination_lat IS NOT NULL
                         AND v_destination_lon IS NOT NULL
                         AND zgc.`latitude` IS NOT NULL
                         AND zgc.`longitude` IS NOT NULL THEN ST_Distance_Sphere(
                             POINT(zgc.`longitude`, zgc.`latitude`),
                             POINT(v_destination_lon, v_destination_lat)
                         )
                    ELSE 999999999999
                END,
                c.`facility_id`
            LIMIT 1;

            IF p_next_facility_id IS NULL THEN
                SET p_next_facility_id = v_planned_destination_facility_id;
                SET p_next_facility_type_name = v_destination_facility_type_name;
                SET p_route_decision_reason = 'P2P package has two prior sends; no usable Network Facilities candidate was found, so the planned destination Post Office was selected.';
            ELSE
                SET p_route_decision_reason = 'P2P package has two prior sends; selected Network Facility closest to planned destination.';
            END IF;
        ELSE
            IF v_current_facility_type_name <> 'Network Facilities' THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Invalid current facility type for expected P2P stage: package with three or more prior sends must be at a Network Facilities facility before final transfer.';
            END IF;

            SET p_next_facility_id = v_planned_destination_facility_id;
            SET p_next_facility_type_name = v_destination_facility_type_name;
            SET p_route_decision_reason = 'P2P package has completed required middle-mile stages; selected planned destination Post Office.';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unsupported package flow type for recommended routing.';
    END IF;

    IF p_next_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to find candidate next facility for recommended routing.';
    END IF;

    IF p_next_facility_id = v_planned_destination_facility_id THEN
        SET p_is_final_transfer = 1;
    ELSE
        SET p_is_final_transfer = 0;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `e_NewEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `e_NewEmployee`(
    IN p_department_id INT,
    IN p_full_name VARCHAR(50),
    IN p_phone_number VARCHAR(15),
    IN p_email VARCHAR(100),
    IN p_street_address VARCHAR(100),
    IN p_job_title VARCHAR(50),
    IN p_salary DECIMAL(10,2),
    IN p_hours_worked SMALLINT,
    IN p_manager_employee_id INT,
    IN p_user_id INT,
    OUT p_employee_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_full_name VARCHAR(50);
    DECLARE v_phone_number VARCHAR(15);
    DECLARE v_email VARCHAR(100);
    DECLARE v_street_address VARCHAR(100);
    DECLARE v_job_title VARCHAR(50);
    DECLARE v_department_facility_id INT;
    DECLARE v_manager_facility_id INT;
    DECLARE v_manager_salary DECIMAL(10,2);
    DECLARE v_user_exists INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET v_full_name = NULLIF(TRIM(p_full_name), '');
    SET v_phone_number = NULLIF(TRIM(p_phone_number), '');
    SET v_email = LOWER(NULLIF(TRIM(p_email), ''));
    SET v_street_address = NULLIF(TRIM(p_street_address), '');
    SET v_job_title = NULLIF(TRIM(p_job_title), '');

    IF p_department_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department ID is required.';
    END IF;

    IF v_full_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee full name is required.';
    END IF;

    IF v_phone_number IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee phone number is required.';
    END IF;

    IF v_email IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee email is required.';
    END IF;

    IF v_email NOT REGEXP '^[^[:space:]@]+@[^[:space:]@]+\\.[^[:space:]@]+$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee email format is invalid.';
    END IF;

    IF v_street_address IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee street address is required.';
    END IF;

    IF v_job_title IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee job title is required.';
    END IF;

    IF p_salary IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee salary is required.';
    END IF;

    IF p_salary < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee salary cannot be negative.';
    END IF;

    IF p_hours_worked IS NOT NULL AND p_hours_worked < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee hours worked cannot be negative.';
    END IF;

    START TRANSACTION;

    CALL `f_ValidateDepartmentExists`(p_department_id, NULL, NULL);

    IF EXISTS (
        SELECT 1
        FROM `employee`
        WHERE `email` = v_email
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee email already exists.';
    END IF;

    IF p_user_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_user_exists
        FROM `user_logins`
        WHERE `user_id` = p_user_id;

        IF v_user_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Employee user account does not exist.';
        END IF;

        IF EXISTS (
            SELECT 1
            FROM `employee`
            WHERE `user_id` = p_user_id
        ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Employee user account is already assigned.';
        END IF;
    END IF;

    SELECT d.`facility_id`
    INTO v_department_facility_id
    FROM `departments` d
    WHERE d.`department_id` = p_department_id;

    IF p_manager_employee_id IS NOT NULL THEN
        CALL `e_ValidateEmployeeExists`(p_manager_employee_id);

        IF p_manager_employee_id = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Manager employee ID is invalid.';
        END IF;

        SELECT d.`facility_id`,
               e.`salary`
        INTO v_manager_facility_id,
             v_manager_salary
        FROM `employee` e
        JOIN `departments` d
            ON d.`department_id` = e.`department_id`
        WHERE e.`employee_id` = p_manager_employee_id;

        IF v_manager_facility_id <> v_department_facility_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Employee manager must work at the same facility.';
        END IF;

        IF p_salary > v_manager_salary THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Employee salary cannot exceed manager salary.';
        END IF;
    END IF;

    INSERT INTO `employee` (
        `department_id`,
        `full_name`,
        `phone_number`,
        `email`,
        `street_address`,
        `job_title`,
        `salary`,
        `hours_worked`,
        `manager_employee_id`,
        `user_id`
    )
    VALUES (
        p_department_id,
        v_full_name,
        v_phone_number,
        v_email,
        v_street_address,
        v_job_title,
        p_salary,
        p_hours_worked,
        p_manager_employee_id,
        p_user_id
    );

    SET p_employee_id = LAST_INSERT_ID();

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `e_ValidateEmployeeExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `e_ValidateEmployeeExists`(
    IN p_employee_id INT
)
    SQL SECURITY INVOKER
BEGIN
    IF p_employee_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `employee`
        WHERE `employee_id` = p_employee_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Employee does not exist.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `f_NewDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `f_NewDepartment`(
    IN p_department_name VARCHAR(40),
    IN p_department_type_id INT,
    IN p_manager_employee_id INT,
    IN p_facility_id INT,
    OUT p_department_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_department_name VARCHAR(40);
    DECLARE v_facility_type_id INT;
    DECLARE v_department_type_name VARCHAR(50);
    DECLARE v_facility_prefix VARCHAR(30);
    DECLARE v_department_type_is_active INT DEFAULT 0;
    DECLARE v_rule_exists INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET v_department_name = NULLIF(TRIM(p_department_name), '');

    IF p_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility ID is required.';
    END IF;

    IF p_department_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department type ID is required.';
    END IF;

    START TRANSACTION;

    CALL `f_ValidateFacilityExists`(p_facility_id, NULL);

    SELECT COUNT(*)
    INTO v_department_type_is_active
    FROM `department_type`
    WHERE `department_type_id` = p_department_type_id
      AND `is_active` = 1;

    IF v_department_type_is_active = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department type does not exist or is inactive.';
    END IF;

    SELECT f.`facility_type_id`,
           f.`facility_department_prefix`
    INTO v_facility_type_id,
         v_facility_prefix
    FROM `facility` f
    WHERE f.`facility_id` = p_facility_id;

    SELECT dt.`department_type_name`
    INTO v_department_type_name
    FROM `department_type` dt
    WHERE dt.`department_type_id` = p_department_type_id;

    SELECT COUNT(*)
    INTO v_rule_exists
    FROM `facility_type_department_rule`
    WHERE `facility_type_id` = v_facility_type_id
      AND `department_type_id` = p_department_type_id;

    IF v_rule_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department type is not allowed for this facility type.';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM `departments`
        WHERE `facility_id` = p_facility_id
          AND `department_type_id` = p_department_type_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility already has a department of this type.';
    END IF;

    IF p_manager_employee_id IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'New departments must be created with manager_employee_id set to NULL.';
    END IF;

    IF v_department_name IS NULL THEN
        SET v_department_name = CONCAT(v_facility_prefix, '_', v_department_type_name);
    END IF;

    INSERT INTO `departments` (
        `department_name`,
        `department_type_id`,
        `manager_employee_id`,
        `facility_id`
    )
    VALUES (
        v_department_name,
        p_department_type_id,
        NULL,
        p_facility_id
    );

    SET p_department_id = LAST_INSERT_ID();

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `f_NewFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `f_NewFacility`(
    IN p_facility_type_id INT,
    IN p_manager_employee_id INT,
    IN p_facility_name VARCHAR(100),
    IN p_street_address VARCHAR(120),
    IN p_county VARCHAR(45),
    IN p_city VARCHAR(60),
    IN p_state_code CHAR(2),
    IN p_zip_code VARCHAR(10),
    IN p_facility_department_prefix VARCHAR(30),
    IN p_territory_id INT,
    OUT p_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_facility_name VARCHAR(100);
    DECLARE v_street_address VARCHAR(120);
    DECLARE v_county VARCHAR(45);
    DECLARE v_city VARCHAR(60);
    DECLARE v_state_code CHAR(2);
    DECLARE v_zip_code VARCHAR(10);
    DECLARE v_prefix_candidate VARCHAR(30);
    DECLARE v_base_prefix VARCHAR(30);
    DECLARE v_territory_exists INT DEFAULT 0;
    DECLARE v_manager_exists INT DEFAULT 0;
    DECLARE v_facility_type_is_active INT DEFAULT 0;
    DECLARE v_prefix_suffix INT DEFAULT 1;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET v_facility_name = NULLIF(TRIM(p_facility_name), '');
    SET v_street_address = NULLIF(TRIM(p_street_address), '');
    SET v_county = NULLIF(UPPER(TRIM(p_county)), '');
    SET v_city = NULLIF(UPPER(TRIM(p_city)), '');
    SET v_state_code = UPPER(TRIM(p_state_code));
    SET v_zip_code = NULLIF(TRIM(p_zip_code), '');
    SET v_prefix_candidate = NULLIF(UPPER(TRIM(p_facility_department_prefix)), '');

    IF p_facility_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility type ID is required.';
    END IF;

    IF v_facility_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility name is required.';
    END IF;

    IF v_street_address IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility street address is required.';
    END IF;

    IF v_county IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility county is required.';
    END IF;

    IF v_city IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility city is required.';
    END IF;

    IF v_state_code IS NULL OR CHAR_LENGTH(v_state_code) <> 2 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility state code must be a 2-character value.';
    END IF;

    IF v_zip_code IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility ZIP code is required.';
    END IF;

    IF CHAR_LENGTH(v_zip_code) NOT IN (5, 10) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility ZIP code must be 5 or 10 characters.';
    END IF;

    START TRANSACTION;

    SELECT COUNT(*)
    INTO v_facility_type_is_active
    FROM `facility_type`
    WHERE `facility_type_id` = p_facility_type_id
      AND `is_active` = 1;

    IF v_facility_type_is_active = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility type does not exist or is inactive.';
    END IF;

    IF p_territory_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_territory_exists
        FROM `territory`
        WHERE `territory_id` = p_territory_id;

        IF v_territory_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Facility territory does not exist.';
        END IF;
    END IF;

    IF p_manager_employee_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_manager_exists
        FROM `employee`
        WHERE `employee_id` = p_manager_employee_id;

        IF v_manager_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Facility manager employee does not exist.';
        END IF;
    END IF;

    IF v_prefix_candidate IS NULL THEN
        SET v_base_prefix = REGEXP_REPLACE(UPPER(v_facility_name), '[^A-Z0-9]+', '');
        SET v_base_prefix = NULLIF(v_base_prefix, '');

        IF v_base_prefix IS NULL THEN
            SET v_base_prefix = 'FACILITY';
        END IF;

        SET v_base_prefix = LEFT(v_base_prefix, 30);
        SET v_prefix_candidate = v_base_prefix;

        WHILE EXISTS (
            SELECT 1
            FROM `facility`
            WHERE `facility_department_prefix` = v_prefix_candidate
        ) DO
            SET v_prefix_suffix = v_prefix_suffix + 1;
            SET v_prefix_candidate = CONCAT(
                LEFT(v_base_prefix, 30 - CHAR_LENGTH(CAST(v_prefix_suffix AS CHAR))),
                CAST(v_prefix_suffix AS CHAR)
            );
        END WHILE;
    ELSE
        IF EXISTS (
            SELECT 1
            FROM `facility`
            WHERE `facility_department_prefix` = v_prefix_candidate
        ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Facility department prefix already exists.';
        END IF;
    END IF;

    INSERT INTO `facility` (
        `facility_type_id`,
        `manager_employee_id`,
        `facility_name`,
        `street_address`,
        `county`,
        `city`,
        `state_code`,
        `zip_code`,
        `facility_department_prefix`,
        `territory_id`
    )
    VALUES (
        p_facility_type_id,
        p_manager_employee_id,
        v_facility_name,
        v_street_address,
        v_county,
        v_city,
        v_state_code,
        v_zip_code,
        v_prefix_candidate,
        p_territory_id
    );

    SET p_facility_id = LAST_INSERT_ID();

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `f_ValidateDepartmentExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `f_ValidateDepartmentExists`(
    IN p_department_id INT,
    IN p_required_facility_id INT,
    IN p_required_department_type_id INT
)
    SQL SECURITY INVOKER
BEGIN
    IF p_department_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `departments`
        WHERE `department_id` = p_department_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department does not exist.';
    END IF;

    IF p_required_facility_id IS NOT NULL
       AND NOT EXISTS (
           SELECT 1
           FROM `departments`
           WHERE `department_id` = p_department_id
             AND `facility_id` = p_required_facility_id
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department does not belong to the required facility.';
    END IF;

    IF p_required_department_type_id IS NOT NULL
       AND NOT EXISTS (
           SELECT 1
           FROM `departments`
           WHERE `department_id` = p_department_id
             AND `department_type_id` = p_required_department_type_id
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Department does not match the required department type.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `f_ValidateFacilityExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `f_ValidateFacilityExists`(
    IN p_facility_id INT,
    IN p_required_facility_type_name VARCHAR(80)
)
    SQL SECURITY INVOKER
BEGIN
    IF p_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `facility`
        WHERE `facility_id` = p_facility_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility does not exist.';
    END IF;

    IF p_required_facility_type_name IS NOT NULL
       AND NOT EXISTS (
           SELECT 1
           FROM `facility` f
           JOIN `facility_type` ft
               ON ft.`facility_type_id` = f.`facility_type_id`
           WHERE f.`facility_id` = p_facility_id
             AND UPPER(ft.`facility_type_name`) = UPPER(TRIM(p_required_facility_type_name))
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Facility does not match the required facility type.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailableLocker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `GetAvailableLocker`(
    IN p_locker_location_id INT,
    OUT p_available_locker_id INT
)
BEGIN
    SELECT locker_id
    INTO p_available_locker_id
    FROM smartlocker
    WHERE locker_location_id = p_locker_location_id
      AND locker_status = 'Available'
    ORDER BY locker_id
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `my_signal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `my_signal`(
    IN p_notification_code INT
)
BEGIN
    CASE p_notification_code
        WHEN 0 THEN
            SELECT 'No notification found' AS message;
        WHEN 1 THEN
            SELECT 'Employee has more than 5 errors' AS message;
        WHEN 2 THEN
            SELECT 'Package has been received' AS message;
        WHEN 3 THEN
            SELECT 'Package has been delivered' AS message;
        WHEN 4 THEN
            SELECT 'Refund has been requested' AS message;
        WHEN 5 THEN
            SELECT 'Invalid delivery type' AS message;
        WHEN 6 THEN
            SELECT 'Inventory is low' AS message;
        WHEN 7 THEN
            SELECT 'Inventory is properly stocked' AS message;
        ELSE
            SELECT 'Unknown notification code' AS message;
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_CalculateActualShippingCharge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_CalculateActualShippingCharge`(
    IN p_package_id BINARY(16),
    IN p_material_cost DECIMAL(12,2),
    IN p_transportation_cost DECIMAL(12,2),
    OUT p_actual_shipping_charge DECIMAL(8,2)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_internal_cost DECIMAL(18,4) DEFAULT NULL;

    SET p_actual_shipping_charge = NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_CalculateActualShippingCharge requires a package_id.';
    END IF;

    IF p_material_cost IS NULL OR p_material_cost < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Actual shipping charge calculation requires a nonnegative material cost.';
    END IF;

    IF p_transportation_cost IS NULL OR p_transportation_cost < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Actual shipping charge calculation requires a nonnegative transportation cost.';
    END IF;

    SET v_internal_cost = p_material_cost + p_transportation_cost;

    SET p_actual_shipping_charge = ROUND(
        GREATEST(v_internal_cost + 1.00, v_internal_cost * 1.25),
        2
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_CalculateMaterialCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_CalculateMaterialCost`(
    IN p_package_id BINARY(16),
    OUT p_material_cost DECIMAL(12,2)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_weight_oz DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_length_in DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_width_in DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_height_in DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_longest_dim DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_shortest_dim DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_volume_cubic_in DECIMAL(18,4) DEFAULT NULL;
    DECLARE v_material_cost_raw DECIMAL(18,4) DEFAULT NULL;

    SET p_material_cost = NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_CalculateMaterialCost requires a package_id.';
    END IF;

    SELECT
        p.`weight_oz`,
        p.`length_in`,
        p.`width_in`,
        p.`height_in`
    INTO
        v_weight_oz,
        v_length_in,
        v_width_in,
        v_height_in
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_weight_oz IS NULL OR v_weight_oz <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Material cost calculation requires package.weight_oz to be present and greater than 0.';
    END IF;

    IF v_length_in IS NULL OR v_length_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Material cost calculation requires package.length_in to be present and greater than 0.';
    END IF;

    IF v_width_in IS NULL OR v_width_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Material cost calculation requires package.width_in to be present and greater than 0.';
    END IF;

    IF v_height_in IS NULL OR v_height_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Material cost calculation requires package.height_in to be present and greater than 0.';
    END IF;

    SET v_volume_cubic_in = v_length_in * v_width_in * v_height_in;
    SET v_longest_dim = GREATEST(v_length_in, v_width_in, v_height_in);
    SET v_shortest_dim = LEAST(v_length_in, v_width_in, v_height_in);

    SET v_material_cost_raw = 0.75
        + (v_volume_cubic_in * 0.0008)
        + (v_weight_oz * 0.015);

    IF v_shortest_dim > 0 AND (v_longest_dim / v_shortest_dim) >= 4.0 THEN
        SET v_material_cost_raw = v_material_cost_raw + 1.25;
    END IF;

    SET p_material_cost = ROUND(v_material_cost_raw, 2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_CalculateTransportationCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_CalculateTransportationCost`(
    IN p_package_id BINARY(16),
    OUT p_transportation_cost DECIMAL(12,2)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_weight_oz DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_service_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_distance_miles DECIMAL(10,2) DEFAULT NULL;
    DECLARE v_transportation_cost_raw DECIMAL(18,4) DEFAULT NULL;

    SET p_transportation_cost = NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_CalculateTransportationCost requires a package_id.';
    END IF;

    SELECT
        p.`weight_oz`,
        st.`service_type_name`
    INTO
        v_weight_oz,
        v_service_type_name
    FROM `package` p
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = p.`service_type_id`
    WHERE p.`package_id` = p_package_id;

    IF v_weight_oz IS NULL OR v_weight_oz <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Transportation cost calculation requires package.weight_oz to be present and greater than 0.';
    END IF;

    CALL `pkg_cost_GetDistanceMilesForPackage`(p_package_id, v_distance_miles);

    SET v_transportation_cost_raw = 1.50
        + (v_distance_miles * 0.035)
        + ((v_weight_oz / 16.0) * 0.12);

    SET v_transportation_cost_raw = v_transportation_cost_raw
        + CASE
            WHEN v_service_type_name = 'Delivery' THEN 1.50
            WHEN v_service_type_name = 'Pickup' THEN 0.40
            WHEN v_service_type_name = 'SmartLocker' THEN 0.75
            ELSE 0.75
          END;

    SET p_transportation_cost = ROUND(v_transportation_cost_raw, 2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_GetDistanceMilesForPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_GetDistanceMilesForPackage`(
    IN p_package_id BINARY(16),
    OUT p_distance_miles DECIMAL(10,2)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_estimated_delivery_distance DECIMAL(10,2) DEFAULT NULL;
    DECLARE v_planned_origin_facility_id INT DEFAULT NULL;
    DECLARE v_planned_destination_facility_id INT DEFAULT NULL;
    DECLARE v_origin_facility_id INT DEFAULT NULL;
    DECLARE v_destination_facility_id INT DEFAULT NULL;
    DECLARE v_package_flow_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_service_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_sender_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_sender_business_id BINARY(16) DEFAULT NULL;
    DECLARE v_recipient_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_sender_territory_id INT DEFAULT NULL;
    DECLARE v_recipient_territory_id INT DEFAULT NULL;
    DECLARE v_sender_business_territory_id INT DEFAULT NULL;
    DECLARE v_sender_customer_preferred_facility_id INT DEFAULT NULL;
    DECLARE v_sender_business_preferred_facility_id INT DEFAULT NULL;
    DECLARE v_recipient_preferred_facility_id INT DEFAULT NULL;
    DECLARE v_mail_processing_type_id INT DEFAULT NULL;
    DECLARE v_post_type_id INT DEFAULT NULL;
    DECLARE v_origin_lat DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_origin_lon DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_destination_lat DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_destination_lon DECIMAL(10,6) DEFAULT NULL;
    DECLARE v_distance_meters DECIMAL(18,4) DEFAULT NULL;

    SET p_distance_miles = NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_GetDistanceMilesForPackage requires a package_id.';
    END IF;

    SELECT
        sd.`estimated_delivery_distance`,
        prp.`planned_origin_facility_id`,
        prp.`planned_destination_facility_id`,
        pft.`package_flow_type_name`,
        st.`service_type_name`,
        p.`sender_customer_id`,
        p.`sender_business_id`,
        p.`recipient_customer_id`,
        sd.`sender_territory_id`,
        sd.`recipient_territory_id`
    INTO
        v_estimated_delivery_distance,
        v_planned_origin_facility_id,
        v_planned_destination_facility_id,
        v_package_flow_type_name,
        v_service_type_name,
        v_sender_customer_id,
        v_sender_business_id,
        v_recipient_customer_id,
        v_sender_territory_id,
        v_recipient_territory_id
    FROM `package` p
    LEFT JOIN `shippingdetails` sd
        ON sd.`package_id` = p.`package_id`
    LEFT JOIN `package_route_plan` prp
        ON prp.`package_id` = p.`package_id`
    LEFT JOIN `package_flow_type` pft
        ON pft.`package_flow_type_id` = p.`package_flow_type_id`
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = p.`service_type_id`
    WHERE p.`package_id` = p_package_id;

    IF v_package_flow_type_name IS NULL
       AND v_service_type_name IS NULL
       AND v_sender_customer_id IS NULL
       AND v_sender_business_id IS NULL
       AND v_recipient_customer_id IS NULL
       AND v_estimated_delivery_distance IS NULL
       AND v_planned_origin_facility_id IS NULL
       AND v_planned_destination_facility_id IS NULL
       AND v_sender_territory_id IS NULL
       AND v_recipient_territory_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Distance calculation requires an existing package and related shipping metadata.';
    END IF;

    IF v_estimated_delivery_distance IS NOT NULL AND v_estimated_delivery_distance > 0 THEN
        SET p_distance_miles = ROUND(v_estimated_delivery_distance, 2);
    END IF;

    IF p_distance_miles IS NULL THEN
        IF v_planned_origin_facility_id IS NOT NULL AND v_planned_destination_facility_id IS NOT NULL THEN
            SET v_origin_facility_id = v_planned_origin_facility_id;
            SET v_destination_facility_id = v_planned_destination_facility_id;
        END IF;
    END IF;

    IF p_distance_miles IS NULL
       AND (v_origin_facility_id IS NULL OR v_destination_facility_id IS NULL) THEN
        SELECT ft.`facility_type_id`
        INTO v_mail_processing_type_id
        FROM `facility_type` ft
        WHERE ft.`is_active` = 1
          AND (
              ft.`facility_type_code` = 'MAIL_PROC'
              OR ft.`facility_type_name` = 'Mail Processing'
          )
        ORDER BY (ft.`facility_type_code` = 'MAIL_PROC') DESC, ft.`facility_type_id`
        LIMIT 1;

        SELECT ft.`facility_type_id`
        INTO v_post_type_id
        FROM `facility_type` ft
        WHERE ft.`is_active` = 1
          AND (
              ft.`facility_type_code` = 'POST'
              OR ft.`facility_type_name` = 'Post Office'
          )
        ORDER BY (ft.`facility_type_code` = 'POST') DESC, ft.`facility_type_id`
        LIMIT 1;

        IF v_sender_customer_id IS NOT NULL THEN
            SELECT
                c.`preferred_facility_id`
            INTO
                v_sender_customer_preferred_facility_id
            FROM `customer` c
            WHERE c.`customer_id` = v_sender_customer_id;
        END IF;

        IF v_sender_business_id IS NOT NULL THEN
            SELECT
                b.`preferred_facility_id`,
                b.`territory_id`
            INTO
                v_sender_business_preferred_facility_id,
                v_sender_business_territory_id
            FROM `business` b
            WHERE b.`business_id` = v_sender_business_id;
        END IF;

        IF v_recipient_customer_id IS NOT NULL THEN
            SELECT
                c.`preferred_facility_id`
            INTO
                v_recipient_preferred_facility_id
            FROM `customer` c
            WHERE c.`customer_id` = v_recipient_customer_id;
        END IF;

        IF v_origin_facility_id IS NULL THEN
            IF v_package_flow_type_name = 'B2C' THEN
                IF v_sender_business_preferred_facility_id IS NOT NULL THEN
                    SELECT f.`facility_id`
                    INTO v_origin_facility_id
                    FROM `facility` f
                    WHERE f.`facility_id` = v_sender_business_preferred_facility_id
                      AND f.`facility_type_id` = v_mail_processing_type_id;
                END IF;

                IF v_origin_facility_id IS NULL THEN
                    SELECT f.`facility_id`
                    INTO v_origin_facility_id
                    FROM `facility` f
                    LEFT JOIN `territory` t
                        ON t.`territory_id` = f.`territory_id`
                    LEFT JOIN `zip_geo` zgf
                        ON zgf.`zip_code` = LEFT(TRIM(t.`zip_code`), 5)
                    LEFT JOIN `territory` src_t
                        ON src_t.`territory_id` = COALESCE(v_sender_territory_id, v_sender_business_territory_id)
                    LEFT JOIN `zip_geo` zgs
                        ON zgs.`zip_code` = LEFT(TRIM(src_t.`zip_code`), 5)
                    WHERE f.`facility_type_id` = v_mail_processing_type_id
                    ORDER BY
                        CASE
                            WHEN COALESCE(v_sender_territory_id, v_sender_business_territory_id) IS NOT NULL
                                 AND f.`territory_id` = COALESCE(v_sender_territory_id, v_sender_business_territory_id)
                            THEN 0
                            ELSE 1
                        END,
                        CASE
                            WHEN zgs.`latitude` IS NOT NULL
                                 AND zgs.`longitude` IS NOT NULL
                                 AND zgf.`latitude` IS NOT NULL
                                 AND zgf.`longitude` IS NOT NULL
                            THEN ST_Distance_Sphere(
                                POINT(zgf.`longitude`, zgf.`latitude`),
                                POINT(zgs.`longitude`, zgs.`latitude`)
                            )
                            ELSE NULL
                        END,
                        f.`facility_id`
                    LIMIT 1;
                END IF;
            ELSEIF v_package_flow_type_name = 'P2P' THEN
                IF v_sender_customer_preferred_facility_id IS NOT NULL THEN
                    SELECT f.`facility_id`
                    INTO v_origin_facility_id
                    FROM `facility` f
                    WHERE f.`facility_id` = v_sender_customer_preferred_facility_id
                      AND f.`facility_type_id` = v_post_type_id;
                END IF;

                IF v_origin_facility_id IS NULL THEN
                    SELECT f.`facility_id`
                    INTO v_origin_facility_id
                    FROM `facility` f
                    LEFT JOIN `territory` t
                        ON t.`territory_id` = f.`territory_id`
                    LEFT JOIN `zip_geo` zgf
                        ON zgf.`zip_code` = LEFT(TRIM(t.`zip_code`), 5)
                    LEFT JOIN `territory` src_t
                        ON src_t.`territory_id` = v_sender_territory_id
                    LEFT JOIN `zip_geo` zgs
                        ON zgs.`zip_code` = LEFT(TRIM(src_t.`zip_code`), 5)
                    WHERE f.`facility_type_id` = v_post_type_id
                    ORDER BY
                        CASE
                            WHEN v_sender_territory_id IS NOT NULL AND f.`territory_id` = v_sender_territory_id THEN 0
                            ELSE 1
                        END,
                        CASE
                            WHEN zgs.`latitude` IS NOT NULL
                                 AND zgs.`longitude` IS NOT NULL
                                 AND zgf.`latitude` IS NOT NULL
                                 AND zgf.`longitude` IS NOT NULL
                            THEN ST_Distance_Sphere(
                                POINT(zgf.`longitude`, zgf.`latitude`),
                                POINT(zgs.`longitude`, zgs.`latitude`)
                            )
                            ELSE NULL
                        END,
                        f.`facility_id`
                    LIMIT 1;
                END IF;
            END IF;
        END IF;

        IF v_destination_facility_id IS NULL THEN
            IF v_recipient_preferred_facility_id IS NOT NULL THEN
                SELECT f.`facility_id`
                INTO v_destination_facility_id
                FROM `facility` f
                WHERE f.`facility_id` = v_recipient_preferred_facility_id;
            END IF;

            IF v_destination_facility_id IS NULL THEN
                /*
                The current schema has service types Delivery, Pickup, and SmartLocker.
                For cost fallback we prefer a customer-facing destination facility and
                use Post Office geography when no route plan is available.
                */
                SELECT f.`facility_id`
                INTO v_destination_facility_id
                FROM `facility` f
                LEFT JOIN `territory` t
                    ON t.`territory_id` = f.`territory_id`
                LEFT JOIN `zip_geo` zgf
                    ON zgf.`zip_code` = LEFT(TRIM(t.`zip_code`), 5)
                LEFT JOIN `territory` dst_t
                    ON dst_t.`territory_id` = v_recipient_territory_id
                LEFT JOIN `zip_geo` zgd
                    ON zgd.`zip_code` = LEFT(TRIM(dst_t.`zip_code`), 5)
                WHERE f.`facility_type_id` = v_post_type_id
                ORDER BY
                    CASE
                        WHEN v_recipient_territory_id IS NOT NULL AND f.`territory_id` = v_recipient_territory_id THEN 0
                        ELSE 1
                    END,
                    CASE
                        WHEN zgd.`latitude` IS NOT NULL
                             AND zgd.`longitude` IS NOT NULL
                             AND zgf.`latitude` IS NOT NULL
                             AND zgf.`longitude` IS NOT NULL
                        THEN ST_Distance_Sphere(
                            POINT(zgf.`longitude`, zgf.`latitude`),
                            POINT(zgd.`longitude`, zgd.`latitude`)
                        )
                        ELSE NULL
                    END,
                    f.`facility_id`
                LIMIT 1;
            END IF;
        END IF;
    END IF;

    IF p_distance_miles IS NULL THEN
        SELECT
            zgo.`latitude`,
            zgo.`longitude`
        INTO
            v_origin_lat,
            v_origin_lon
        FROM `facility` fo
        LEFT JOIN `territory` to_territory
            ON to_territory.`territory_id` = fo.`territory_id`
        LEFT JOIN `zip_geo` zgo
            ON zgo.`zip_code` = LEFT(TRIM(to_territory.`zip_code`), 5)
        WHERE fo.`facility_id` = v_origin_facility_id;

        SELECT
            zgd.`latitude`,
            zgd.`longitude`
        INTO
            v_destination_lat,
            v_destination_lon
        FROM `facility` fd
        LEFT JOIN `territory` td_territory
            ON td_territory.`territory_id` = fd.`territory_id`
        LEFT JOIN `zip_geo` zgd
            ON zgd.`zip_code` = LEFT(TRIM(td_territory.`zip_code`), 5)
        WHERE fd.`facility_id` = v_destination_facility_id;

        IF v_origin_lat IS NOT NULL
           AND v_origin_lon IS NOT NULL
           AND v_destination_lat IS NOT NULL
           AND v_destination_lon IS NOT NULL THEN
            SET v_distance_meters = ST_Distance_Sphere(
                POINT(v_origin_lon, v_origin_lat),
                POINT(v_destination_lon, v_destination_lat)
            );

            SET p_distance_miles = ROUND(v_distance_meters / 1609.344, 2);
        END IF;
    END IF;

    IF p_distance_miles IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to resolve package transportation distance from shippingdetails, route plan, or facility geography.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_RecalculateShippingCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_RecalculateShippingCost`(
    IN p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    CALL `pkg_cost_UpsertShippingCost`(p_package_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_RepairMissingShippingCosts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_RepairMissingShippingCosts`(
    IN p_batch_size INT,
    IN p_replace_existing TINYINT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_run_id CHAR(36) DEFAULT UUID();
    DECLARE v_effective_batch_size INT DEFAULT 100;
    DECLARE v_missing_before INT DEFAULT 0;
    DECLARE v_missing_after INT DEFAULT 0;
    DECLARE v_candidates_staged INT DEFAULT 0;
    DECLARE v_valid_candidates INT DEFAULT 0;
    DECLARE v_unresolved_candidates INT DEFAULT 0;
    DECLARE v_shipping_cost_rows_inserted INT DEFAULT 0;
    DECLARE v_shipping_cost_rows_replaced INT DEFAULT 0;
    DECLARE v_existing_at_merge INT DEFAULT 0;
    DECLARE v_sqlstate CHAR(5) DEFAULT '00000';
    DECLARE v_mysql_errno INT DEFAULT 0;
    DECLARE v_message_text TEXT DEFAULT NULL;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_sqlstate = RETURNED_SQLSTATE,
            v_mysql_errno = MYSQL_ERRNO,
            v_message_text = MESSAGE_TEXT;

        ROLLBACK;

        INSERT INTO `pkg_cost_repair_unresolved` (
            `run_id`,
            `package_id`,
            `stage_name`,
            `reason_code`,
            `reason_detail`
        )
        VALUES (
            v_run_id,
            NULL,
            'PROCEDURE',
            'procedure_error',
            LEFT(
                CONCAT(
                    'Repair procedure failed [',
                    COALESCE(v_mysql_errno, 0),
                    '/',
                    COALESCE(v_sqlstate, '00000'),
                    ']: ',
                    COALESCE(v_message_text, 'Unknown SQL exception.')
                ),
                255
            )
        );

        RESIGNAL;
    END;

    IF p_batch_size IS NOT NULL AND p_batch_size > 0 THEN
        SET v_effective_batch_size = p_batch_size;
    END IF;

    IF p_replace_existing IS NULL THEN
        SET p_replace_existing = 0;
    END IF;

    DELETE FROM `pkg_cost_repair_stage_candidate`
    WHERE `created_at` < (CURRENT_TIMESTAMP - INTERVAL 7 DAY);

    DELETE FROM `pkg_cost_repair_stage_calculated`
    WHERE `created_at` < (CURRENT_TIMESTAMP - INTERVAL 7 DAY);

    DELETE FROM `pkg_cost_repair_unresolved`
    WHERE `created_at` < (CURRENT_TIMESTAMP - INTERVAL 7 DAY);

    SELECT COUNT(*)
    INTO v_missing_before
    FROM `package` p
    LEFT JOIN `shipping_cost` sc
        ON sc.`package_id` = p.`package_id`
    WHERE sc.`package_id` IS NULL;

    START TRANSACTION;

    INSERT INTO `pkg_cost_repair_stage_candidate` (
        `run_id`,
        `package_id`,
        `package_status_id`,
        `service_type_id`,
        `service_type_name`,
        `package_flow_type_id`,
        `package_flow_type_name`,
        `weight_oz`,
        `length_in`,
        `width_in`,
        `height_in`,
        `sender_customer_id`,
        `sender_business_id`,
        `recipient_customer_id`,
        `sender_territory_id`,
        `recipient_territory_id`,
        `sender_business_territory_id`,
        `estimated_delivery_distance`,
        `planned_origin_facility_id`,
        `planned_destination_facility_id`,
        `sender_customer_preferred_facility_id`,
        `sender_business_preferred_facility_id`,
        `recipient_preferred_facility_id`,
        `has_shippingdetails`,
        `has_package_route_plan`,
        `validation_status`
    )
    SELECT
        v_run_id,
        p.`package_id`,
        p.`package_status_id`,
        p.`service_type_id`,
        st.`service_type_name`,
        p.`package_flow_type_id`,
        pft.`package_flow_type_name`,
        p.`weight_oz`,
        p.`length_in`,
        p.`width_in`,
        p.`height_in`,
        p.`sender_customer_id`,
        p.`sender_business_id`,
        p.`recipient_customer_id`,
        sd.`sender_territory_id`,
        sd.`recipient_territory_id`,
        sbiz.`territory_id`,
        sd.`estimated_delivery_distance`,
        prp.`planned_origin_facility_id`,
        prp.`planned_destination_facility_id`,
        scust.`preferred_facility_id`,
        sbiz.`preferred_facility_id`,
        rcust.`preferred_facility_id`,
        CASE WHEN sd.`package_id` IS NULL THEN 0 ELSE 1 END,
        CASE WHEN prp.`package_id` IS NULL THEN 0 ELSE 1 END,
        'PENDING'
    FROM `package` p
    LEFT JOIN `shipping_cost` sc
        ON sc.`package_id` = p.`package_id`
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = p.`service_type_id`
    LEFT JOIN `package_flow_type` pft
        ON pft.`package_flow_type_id` = p.`package_flow_type_id`
    LEFT JOIN `shippingdetails` sd
        ON sd.`package_id` = p.`package_id`
    LEFT JOIN `package_route_plan` prp
        ON prp.`package_id` = p.`package_id`
    LEFT JOIN `customer` scust
        ON scust.`customer_id` = p.`sender_customer_id`
    LEFT JOIN `business` sbiz
        ON sbiz.`business_id` = p.`sender_business_id`
    LEFT JOIN `customer` rcust
        ON rcust.`customer_id` = p.`recipient_customer_id`
    WHERE sc.`package_id` IS NULL
    ORDER BY p.`package_id`
    LIMIT v_effective_batch_size;

    SELECT COUNT(*)
    INTO v_candidates_staged
    FROM `pkg_cost_repair_stage_candidate`
    WHERE `run_id` = v_run_id;

    UPDATE `pkg_cost_repair_stage_candidate` c
    LEFT JOIN `shipping_cost` sc
        ON sc.`package_id` = c.`package_id`
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = c.`service_type_id`
    LEFT JOIN `package_flow_type` pft
        ON pft.`package_flow_type_id` = c.`package_flow_type_id`
    LEFT JOIN `package_status` ps
        ON ps.`package_status_id` = c.`package_status_id`
    SET c.`validation_status` = CASE
            WHEN c.`package_id` IS NULL THEN 'INVALID'
            WHEN p_replace_existing = 0 AND sc.`package_id` IS NOT NULL THEN 'INVALID'
            WHEN c.`package_flow_type_id` IS NULL THEN 'INVALID'
            WHEN c.`service_type_id` IS NULL THEN 'INVALID'
            WHEN c.`package_status_id` IS NULL THEN 'INVALID'
            WHEN c.`weight_oz` IS NULL
              OR c.`length_in` IS NULL
              OR c.`width_in` IS NULL
              OR c.`height_in` IS NULL THEN 'INVALID'
            WHEN c.`weight_oz` <= 0
              OR c.`length_in` <= 0
              OR c.`width_in` <= 0
              OR c.`height_in` <= 0 THEN 'INVALID'
            WHEN st.`service_type_id` IS NULL THEN 'INVALID'
            WHEN pft.`package_flow_type_id` IS NULL THEN 'INVALID'
            WHEN ps.`package_status_id` IS NULL THEN 'INVALID'
            ELSE 'VALID'
        END,
        c.`reason_code` = CASE
            WHEN c.`package_id` IS NULL THEN 'missing_required_package_attribute'
            WHEN p_replace_existing = 0 AND sc.`package_id` IS NOT NULL THEN 'duplicate_shipping_cost_exists'
            WHEN c.`package_flow_type_id` IS NULL
              OR c.`service_type_id` IS NULL
              OR c.`package_status_id` IS NULL
              OR c.`weight_oz` IS NULL
              OR c.`length_in` IS NULL
              OR c.`width_in` IS NULL
              OR c.`height_in` IS NULL THEN 'missing_required_package_attribute'
            WHEN c.`weight_oz` <= 0
              OR c.`length_in` <= 0
              OR c.`width_in` <= 0
              OR c.`height_in` <= 0 THEN 'invalid_package_dimensions'
            WHEN st.`service_type_id` IS NULL THEN 'missing_service_type_lookup'
            WHEN pft.`package_flow_type_id` IS NULL THEN 'missing_flow_type_lookup'
            WHEN ps.`package_status_id` IS NULL THEN 'missing_package_status_lookup'
            ELSE NULL
        END,
        c.`reason_detail` = CASE
            WHEN c.`package_id` IS NULL THEN 'Candidate row is missing package_id.'
            WHEN p_replace_existing = 0 AND sc.`package_id` IS NOT NULL THEN 'shipping_cost row already exists at validation time.'
            WHEN c.`package_flow_type_id` IS NULL THEN 'package.package_flow_type_id is required.'
            WHEN c.`service_type_id` IS NULL THEN 'package.service_type_id is required.'
            WHEN c.`package_status_id` IS NULL THEN 'package.package_status_id is required.'
            WHEN c.`weight_oz` IS NULL THEN 'package.weight_oz is required.'
            WHEN c.`length_in` IS NULL THEN 'package.length_in is required.'
            WHEN c.`width_in` IS NULL THEN 'package.width_in is required.'
            WHEN c.`height_in` IS NULL THEN 'package.height_in is required.'
            WHEN c.`weight_oz` <= 0
              OR c.`length_in` <= 0
              OR c.`width_in` <= 0
              OR c.`height_in` <= 0 THEN 'Package dimensions and weight must be positive.'
            WHEN st.`service_type_id` IS NULL THEN 'service_type lookup row is missing.'
            WHEN pft.`package_flow_type_id` IS NULL THEN 'package_flow_type lookup row is missing.'
            WHEN ps.`package_status_id` IS NULL THEN 'package_status lookup row is missing.'
            ELSE NULL
        END
    WHERE c.`run_id` = v_run_id;

    UPDATE `pkg_cost_repair_stage_candidate`
    SET `validation_status` = 'VALID'
    WHERE `run_id` = v_run_id
      AND `validation_status` = 'PENDING';

    INSERT INTO `pkg_cost_repair_unresolved` (
        `run_id`,
        `package_id`,
        `stage_name`,
        `reason_code`,
        `reason_detail`
    )
    SELECT
        c.`run_id`,
        c.`package_id`,
        'CANDIDATE',
        c.`reason_code`,
        c.`reason_detail`
    FROM `pkg_cost_repair_stage_candidate` c
    WHERE c.`run_id` = v_run_id
      AND c.`validation_status` = 'INVALID';

    INSERT INTO `pkg_cost_repair_stage_calculated` (
        `run_id`,
        `package_id`,
        `origin_facility_id`,
        `destination_facility_id`,
        `distance_miles`,
        `material_cost`,
        `transportation_cost`,
        `actual_shipping_charge`,
        `internal_cost`,
        `shipping_margin`,
        `distance_source`,
        `calculation_status`,
        `reason_code`,
        `reason_detail`
    )
    WITH
    `mail_proc_type` AS (
        SELECT ft.`facility_type_id`
        FROM `facility_type` ft
        WHERE ft.`is_active` = 1
          AND (
              ft.`facility_type_code` = 'MAIL_PROC'
              OR ft.`facility_type_name` = 'Mail Processing'
          )
        ORDER BY (ft.`facility_type_code` = 'MAIL_PROC') DESC, ft.`facility_type_id`
        LIMIT 1
    ),
    `post_type` AS (
        SELECT ft.`facility_type_id`
        FROM `facility_type` ft
        WHERE ft.`is_active` = 1
          AND (
              ft.`facility_type_code` = 'POST'
              OR ft.`facility_type_name` = 'Post Office'
          )
        ORDER BY (ft.`facility_type_code` = 'POST') DESC, ft.`facility_type_id`
        LIMIT 1
    ),
    `valid_candidates` AS (
        SELECT c.*
        FROM `pkg_cost_repair_stage_candidate` c
        WHERE c.`run_id` = v_run_id
          AND c.`validation_status` = 'VALID'
    ),
    `sender_business_pref` AS (
        SELECT vc.`package_id`, f.`facility_id`
        FROM `valid_candidates` vc
        JOIN `facility` f
            ON f.`facility_id` = vc.`sender_business_preferred_facility_id`
        JOIN `mail_proc_type` mpt
            ON f.`facility_type_id` = mpt.`facility_type_id`
        WHERE vc.`package_flow_type_name` = 'B2C'
    ),
    `sender_customer_pref` AS (
        SELECT vc.`package_id`, f.`facility_id`
        FROM `valid_candidates` vc
        JOIN `facility` f
            ON f.`facility_id` = vc.`sender_customer_preferred_facility_id`
        JOIN `post_type` pt
            ON f.`facility_type_id` = pt.`facility_type_id`
        WHERE vc.`package_flow_type_name` = 'P2P'
    ),
    `recipient_pref` AS (
        SELECT vc.`package_id`, f.`facility_id`
        FROM `valid_candidates` vc
        JOIN `facility` f
            ON f.`facility_id` = vc.`recipient_preferred_facility_id`
    ),
    `origin_nearest` AS (
        SELECT
            vc.`package_id`,
            f.`facility_id`,
            ROW_NUMBER() OVER (
                PARTITION BY vc.`package_id`
                ORDER BY
                    CASE
                        WHEN f.`territory_id` = CASE
                            WHEN vc.`package_flow_type_name` = 'B2C' THEN COALESCE(vc.`sender_territory_id`, vc.`sender_business_territory_id`)
                            ELSE vc.`sender_territory_id`
                        END THEN 0
                        ELSE 1
                    END,
                    CASE
                        WHEN src_zg.`latitude` IS NOT NULL
                         AND src_zg.`longitude` IS NOT NULL
                         AND fac_zg.`latitude` IS NOT NULL
                         AND fac_zg.`longitude` IS NOT NULL THEN 0
                        ELSE 1
                    END,
                    CASE
                        WHEN src_zg.`latitude` IS NOT NULL
                         AND src_zg.`longitude` IS NOT NULL
                         AND fac_zg.`latitude` IS NOT NULL
                         AND fac_zg.`longitude` IS NOT NULL
                        THEN ST_Distance_Sphere(
                            POINT(fac_zg.`longitude`, fac_zg.`latitude`),
                            POINT(src_zg.`longitude`, src_zg.`latitude`)
                        )
                        ELSE 999999999
                    END,
                    f.`facility_id`
            ) AS `rn`
        FROM `valid_candidates` vc
        JOIN `facility` f
            ON 1 = 1
        LEFT JOIN `territory` fac_t
            ON fac_t.`territory_id` = f.`territory_id`
        LEFT JOIN `zip_geo` fac_zg
            ON fac_zg.`zip_code` = LEFT(TRIM(fac_t.`zip_code`), 5)
        LEFT JOIN `territory` src_t
            ON src_t.`territory_id` = CASE
                WHEN vc.`package_flow_type_name` = 'B2C' THEN COALESCE(vc.`sender_territory_id`, vc.`sender_business_territory_id`)
                ELSE vc.`sender_territory_id`
            END
        LEFT JOIN `zip_geo` src_zg
            ON src_zg.`zip_code` = LEFT(TRIM(src_t.`zip_code`), 5)
        WHERE (
                vc.`package_flow_type_name` = 'B2C'
                AND f.`facility_type_id` = (SELECT `facility_type_id` FROM `mail_proc_type`)
              )
           OR (
                vc.`package_flow_type_name` = 'P2P'
                AND f.`facility_type_id` = (SELECT `facility_type_id` FROM `post_type`)
              )
    ),
    `destination_nearest` AS (
        SELECT
            vc.`package_id`,
            f.`facility_id`,
            ROW_NUMBER() OVER (
                PARTITION BY vc.`package_id`
                ORDER BY
                    CASE
                        WHEN f.`territory_id` = vc.`recipient_territory_id` THEN 0
                        ELSE 1
                    END,
                    CASE
                        WHEN dst_zg.`latitude` IS NOT NULL
                         AND dst_zg.`longitude` IS NOT NULL
                         AND fac_zg.`latitude` IS NOT NULL
                         AND fac_zg.`longitude` IS NOT NULL THEN 0
                        ELSE 1
                    END,
                    CASE
                        WHEN dst_zg.`latitude` IS NOT NULL
                         AND dst_zg.`longitude` IS NOT NULL
                         AND fac_zg.`latitude` IS NOT NULL
                         AND fac_zg.`longitude` IS NOT NULL
                        THEN ST_Distance_Sphere(
                            POINT(fac_zg.`longitude`, fac_zg.`latitude`),
                            POINT(dst_zg.`longitude`, dst_zg.`latitude`)
                        )
                        ELSE 999999999
                    END,
                    f.`facility_id`
            ) AS `rn`
        FROM `valid_candidates` vc
        JOIN `facility` f
            ON f.`facility_type_id` = (SELECT `facility_type_id` FROM `post_type`)
        LEFT JOIN `territory` fac_t
            ON fac_t.`territory_id` = f.`territory_id`
        LEFT JOIN `zip_geo` fac_zg
            ON fac_zg.`zip_code` = LEFT(TRIM(fac_t.`zip_code`), 5)
        LEFT JOIN `territory` dst_t
            ON dst_t.`territory_id` = vc.`recipient_territory_id`
        LEFT JOIN `zip_geo` dst_zg
            ON dst_zg.`zip_code` = LEFT(TRIM(dst_t.`zip_code`), 5)
    ),
    `resolved_facilities` AS (
        SELECT
            vc.`package_id`,
            CASE
                WHEN vc.`planned_origin_facility_id` IS NOT NULL
                 AND vc.`planned_destination_facility_id` IS NOT NULL THEN vc.`planned_origin_facility_id`
                WHEN vc.`package_flow_type_name` = 'B2C' THEN COALESCE(sbp.`facility_id`, onf.`facility_id`)
                WHEN vc.`package_flow_type_name` = 'P2P' THEN COALESCE(scp.`facility_id`, onf.`facility_id`)
                ELSE onf.`facility_id`
            END AS `origin_facility_id`,
            CASE
                WHEN vc.`planned_origin_facility_id` IS NOT NULL
                 AND vc.`planned_destination_facility_id` IS NOT NULL THEN vc.`planned_destination_facility_id`
                WHEN rp.`facility_id` IS NOT NULL THEN rp.`facility_id`
                ELSE dnf.`facility_id`
            END AS `destination_facility_id`,
            CASE
                WHEN vc.`estimated_delivery_distance` IS NOT NULL
                 AND vc.`estimated_delivery_distance` > 0 THEN 'SHIPPINGDETAILS_ESTIMATED_DISTANCE'
                ELSE 'FACILITY_GEOGRAPHY'
            END AS `distance_source`
        FROM `valid_candidates` vc
        LEFT JOIN `sender_business_pref` sbp
            ON sbp.`package_id` = vc.`package_id`
        LEFT JOIN `sender_customer_pref` scp
            ON scp.`package_id` = vc.`package_id`
        LEFT JOIN `recipient_pref` rp
            ON rp.`package_id` = vc.`package_id`
        LEFT JOIN `origin_nearest` onf
            ON onf.`package_id` = vc.`package_id`
           AND onf.`rn` = 1
        LEFT JOIN `destination_nearest` dnf
            ON dnf.`package_id` = vc.`package_id`
           AND dnf.`rn` = 1
    ),
    `resolved_distance` AS (
        SELECT
            vc.`package_id`,
            rf.`origin_facility_id`,
            rf.`destination_facility_id`,
            rf.`distance_source`,
            CASE
                WHEN vc.`estimated_delivery_distance` IS NOT NULL
                 AND vc.`estimated_delivery_distance` > 0 THEN ROUND(vc.`estimated_delivery_distance`, 2)
                WHEN origin_zg.`latitude` IS NOT NULL
                 AND origin_zg.`longitude` IS NOT NULL
                 AND destination_zg.`latitude` IS NOT NULL
                 AND destination_zg.`longitude` IS NOT NULL THEN ROUND(
                    ST_Distance_Sphere(
                        POINT(origin_zg.`longitude`, origin_zg.`latitude`),
                        POINT(destination_zg.`longitude`, destination_zg.`latitude`)
                    ) / 1609.344,
                    2
                )
                ELSE NULL
            END AS `distance_miles`
        FROM `valid_candidates` vc
        LEFT JOIN `resolved_facilities` rf
            ON rf.`package_id` = vc.`package_id`
        LEFT JOIN `facility` origin_f
            ON origin_f.`facility_id` = rf.`origin_facility_id`
        LEFT JOIN `territory` origin_t
            ON origin_t.`territory_id` = origin_f.`territory_id`
        LEFT JOIN `zip_geo` origin_zg
            ON origin_zg.`zip_code` = LEFT(TRIM(origin_t.`zip_code`), 5)
        LEFT JOIN `facility` destination_f
            ON destination_f.`facility_id` = rf.`destination_facility_id`
        LEFT JOIN `territory` destination_t
            ON destination_t.`territory_id` = destination_f.`territory_id`
        LEFT JOIN `zip_geo` destination_zg
            ON destination_zg.`zip_code` = LEFT(TRIM(destination_t.`zip_code`), 5)
    ),
    `costed` AS (
        SELECT
            vc.`package_id`,
            rd.`origin_facility_id`,
            rd.`destination_facility_id`,
            rd.`distance_source`,
            rd.`distance_miles`,
            ROUND(
                0.75
                + ((vc.`length_in` * vc.`width_in` * vc.`height_in`) * 0.0008)
                + (vc.`weight_oz` * 0.015)
                + CASE
                    WHEN LEAST(vc.`length_in`, vc.`width_in`, vc.`height_in`) > 0
                     AND (
                         GREATEST(vc.`length_in`, vc.`width_in`, vc.`height_in`)
                         / LEAST(vc.`length_in`, vc.`width_in`, vc.`height_in`)
                     ) >= 4.0 THEN 1.25
                    ELSE 0.00
                  END,
                2
            ) AS `material_cost`,
            ROUND(
                1.50
                + (rd.`distance_miles` * 0.035)
                + ((vc.`weight_oz` / 16.0) * 0.12)
                + CASE
                    WHEN vc.`service_type_name` = 'Delivery' THEN 1.50
                    WHEN vc.`service_type_name` = 'Pickup' THEN 0.40
                    WHEN vc.`service_type_name` = 'SmartLocker' THEN 0.75
                    ELSE 0.75
                  END,
                2
            ) AS `transportation_cost`
        FROM `valid_candidates` vc
        LEFT JOIN `resolved_distance` rd
            ON rd.`package_id` = vc.`package_id`
    )
    SELECT
        v_run_id,
        vc.`package_id`,
        rd.`origin_facility_id`,
        rd.`destination_facility_id`,
        rd.`distance_miles`,
        costed.`material_cost`,
        costed.`transportation_cost`,
        CASE
            WHEN costed.`material_cost` IS NOT NULL
             AND costed.`transportation_cost` IS NOT NULL THEN ROUND(
                GREATEST(
                    (costed.`material_cost` + costed.`transportation_cost`) + 1.00,
                    (costed.`material_cost` + costed.`transportation_cost`) * 1.25
                ),
                2
            )
            ELSE NULL
        END AS `actual_shipping_charge`,
        CASE
            WHEN costed.`material_cost` IS NOT NULL
             AND costed.`transportation_cost` IS NOT NULL THEN ROUND(
                costed.`material_cost` + costed.`transportation_cost`,
                2
            )
            ELSE NULL
        END AS `internal_cost`,
        CASE
            WHEN costed.`material_cost` IS NOT NULL
             AND costed.`transportation_cost` IS NOT NULL THEN ROUND(
                ROUND(
                    GREATEST(
                        (costed.`material_cost` + costed.`transportation_cost`) + 1.00,
                        (costed.`material_cost` + costed.`transportation_cost`) * 1.25
                    ),
                    2
                ) - (costed.`material_cost` + costed.`transportation_cost`),
                2
            )
            ELSE NULL
        END AS `shipping_margin`,
        rd.`distance_source`,
        CASE
            WHEN rd.`distance_miles` IS NULL OR rd.`distance_miles` <= 0 THEN 'INVALID'
            WHEN costed.`material_cost` IS NULL
              OR costed.`transportation_cost` IS NULL THEN 'INVALID'
            ELSE 'READY'
        END AS `calculation_status`,
        CASE
            WHEN rd.`distance_miles` IS NULL OR rd.`distance_miles` <= 0 THEN
                CASE
                    WHEN vc.`has_shippingdetails` = 0
                     AND vc.`has_package_route_plan` = 0
                     AND vc.`estimated_delivery_distance` IS NULL THEN 'missing_shippingdetails'
                    ELSE 'missing_transportation_source'
                END
            WHEN costed.`material_cost` IS NULL
              OR costed.`transportation_cost` IS NULL THEN 'calculated_cost_null'
            ELSE NULL
        END AS `reason_code`,
        CASE
            WHEN rd.`distance_miles` IS NULL OR rd.`distance_miles` <= 0 THEN
                CASE
                    WHEN vc.`has_shippingdetails` = 0
                     AND vc.`has_package_route_plan` = 0
                     AND vc.`estimated_delivery_distance` IS NULL
                    THEN 'No shippingdetails row or alternate route/distance source was available.'
                    ELSE 'Unable to resolve transportation distance from estimated distance, route plan, or facility geography.'
                END
            WHEN costed.`material_cost` IS NULL THEN 'Material cost calculation returned NULL.'
            WHEN costed.`transportation_cost` IS NULL THEN 'Transportation cost calculation returned NULL.'
            ELSE NULL
        END AS `reason_detail`
    FROM `valid_candidates` vc
    LEFT JOIN `resolved_distance` rd
        ON rd.`package_id` = vc.`package_id`
    LEFT JOIN `costed`
        ON costed.`package_id` = vc.`package_id`;

    INSERT INTO `pkg_cost_repair_unresolved` (
        `run_id`,
        `package_id`,
        `stage_name`,
        `reason_code`,
        `reason_detail`
    )
    SELECT
        c.`run_id`,
        c.`package_id`,
        'CALCULATED',
        c.`reason_code`,
        c.`reason_detail`
    FROM `pkg_cost_repair_stage_calculated` c
    WHERE c.`run_id` = v_run_id
      AND c.`calculation_status` <> 'READY';

    SELECT COUNT(*)
    INTO v_valid_candidates
    FROM `pkg_cost_repair_stage_calculated`
    WHERE `run_id` = v_run_id
      AND `calculation_status` = 'READY';

    IF p_replace_existing = 1 THEN
        SELECT COUNT(*)
        INTO v_existing_at_merge
        FROM `pkg_cost_repair_stage_calculated` c
        JOIN `shipping_cost` sc
            ON sc.`package_id` = c.`package_id`
        WHERE c.`run_id` = v_run_id
          AND c.`calculation_status` = 'READY';

        INSERT INTO `shipping_cost` (
            `package_id`,
            `actual_shipping_charge`,
            `material_cost`,
            `transportation_cost`,
            `charge_source`,
            `charge_recorded_at`
        )
        SELECT
            c.`package_id`,
            c.`actual_shipping_charge`,
            c.`material_cost`,
            c.`transportation_cost`,
            'pkg_cost_RepairMissingShippingCosts',
            CURRENT_TIMESTAMP
        FROM `pkg_cost_repair_stage_calculated` c
        WHERE c.`run_id` = v_run_id
          AND c.`calculation_status` = 'READY'
        ON DUPLICATE KEY UPDATE
            `actual_shipping_charge` = VALUES(`actual_shipping_charge`),
            `material_cost` = VALUES(`material_cost`),
            `transportation_cost` = VALUES(`transportation_cost`),
            `charge_source` = VALUES(`charge_source`),
            `charge_recorded_at` = VALUES(`charge_recorded_at`);

        SET v_shipping_cost_rows_replaced = v_existing_at_merge;
        SET v_shipping_cost_rows_inserted = GREATEST(v_valid_candidates - v_existing_at_merge, 0);
    ELSE
        INSERT INTO `pkg_cost_repair_unresolved` (
            `run_id`,
            `package_id`,
            `stage_name`,
            `reason_code`,
            `reason_detail`
        )
        SELECT
            v_run_id,
            c.`package_id`,
            'MERGE',
            'duplicate_shipping_cost_exists',
            'shipping_cost row existed by merge time and replacement mode was disabled.'
        FROM `pkg_cost_repair_stage_calculated` c
        JOIN `shipping_cost` sc
            ON sc.`package_id` = c.`package_id`
        WHERE c.`run_id` = v_run_id
          AND c.`calculation_status` = 'READY';

        INSERT INTO `shipping_cost` (
            `package_id`,
            `actual_shipping_charge`,
            `material_cost`,
            `transportation_cost`,
            `charge_source`,
            `charge_recorded_at`
        )
        SELECT
            c.`package_id`,
            c.`actual_shipping_charge`,
            c.`material_cost`,
            c.`transportation_cost`,
            'pkg_cost_RepairMissingShippingCosts',
            CURRENT_TIMESTAMP
        FROM `pkg_cost_repair_stage_calculated` c
        LEFT JOIN `shipping_cost` sc
            ON sc.`package_id` = c.`package_id`
        WHERE c.`run_id` = v_run_id
          AND c.`calculation_status` = 'READY'
          AND sc.`package_id` IS NULL;

        SET v_shipping_cost_rows_inserted = ROW_COUNT();
        SET v_shipping_cost_rows_replaced = 0;
    END IF;

    SELECT COUNT(DISTINCT `package_id`)
    INTO v_unresolved_candidates
    FROM `pkg_cost_repair_unresolved`
    WHERE `run_id` = v_run_id
      AND `package_id` IS NOT NULL;

    SELECT COUNT(*)
    INTO v_missing_after
    FROM `package` p
    LEFT JOIN `shipping_cost` sc
        ON sc.`package_id` = p.`package_id`
    WHERE sc.`package_id` IS NULL;

    COMMIT;

    SELECT
        v_run_id AS `run_id`,
        v_missing_before AS `missing_before`,
        v_candidates_staged AS `candidates_staged`,
        v_valid_candidates AS `valid_candidates`,
        v_unresolved_candidates AS `unresolved_candidates`,
        v_shipping_cost_rows_inserted AS `shipping_cost_rows_inserted`,
        v_shipping_cost_rows_replaced AS `shipping_cost_rows_replaced`,
        v_missing_after AS `missing_after`;

    SELECT
        u.`reason_code`,
        COUNT(*) AS `reason_count`
    FROM `pkg_cost_repair_unresolved` u
    WHERE u.`run_id` = v_run_id
    GROUP BY u.`reason_code`
    ORDER BY `reason_count` DESC, u.`reason_code`;

    SELECT
        HEX(u.`package_id`) AS `package_id_hex`,
        u.`reason_code`,
        u.`reason_detail`
    FROM `pkg_cost_repair_unresolved` u
    WHERE u.`run_id` = v_run_id
      AND u.`package_id` IS NOT NULL
    ORDER BY u.`reason_code`, u.`package_id`;

    SELECT
        (SELECT COUNT(*) FROM `package`) AS `total_packages`,
        (SELECT COUNT(*) FROM `shipping_cost`) AS `total_shipping_cost_records`,
        (SELECT COUNT(DISTINCT `package_id`) FROM `shipping_cost`) AS `distinct_shipping_cost_package_ids`,
        (
            SELECT COUNT(*)
            FROM `package` p
            LEFT JOIN `shipping_cost` sc
                ON sc.`package_id` = p.`package_id`
            WHERE sc.`package_id` IS NULL
        ) AS `packages_missing_shipping_cost`,
        (
            SELECT COUNT(*)
            FROM (
                SELECT sc.`package_id`
                FROM `shipping_cost` sc
                GROUP BY sc.`package_id`
                HAVING COUNT(*) > 1
            ) dup
        ) AS `duplicate_shipping_cost_package_ids`,
        (
            SELECT COUNT(*)
            FROM `shipping_cost` sc
            LEFT JOIN `package` p
                ON p.`package_id` = sc.`package_id`
            WHERE p.`package_id` IS NULL
        ) AS `orphan_shipping_cost_records`;

    SELECT
        COUNT(*) AS `newly_repaired_rows_checked`,
        SUM(CASE WHEN sc.`actual_shipping_charge` IS NULL THEN 1 ELSE 0 END) AS `null_actual_shipping_charge_count`,
        SUM(CASE WHEN sc.`material_cost` IS NULL THEN 1 ELSE 0 END) AS `null_material_cost_count`,
        SUM(CASE WHEN sc.`transportation_cost` IS NULL THEN 1 ELSE 0 END) AS `null_transportation_cost_count`,
        SUM(
            CASE
                WHEN sc.`actual_shipping_charge` IS NULL
                  OR sc.`material_cost` IS NULL
                  OR sc.`transportation_cost` IS NULL THEN 1
                ELSE 0
            END
        ) AS `rows_with_any_required_null`
    FROM `shipping_cost` sc
    JOIN `pkg_cost_repair_stage_calculated` c
        ON c.`package_id` = sc.`package_id`
    WHERE c.`run_id` = v_run_id
      AND c.`calculation_status` = 'READY';

    SELECT
        v_run_id AS `run_id`,
        'pkg_cost_repair_stage_candidate, pkg_cost_repair_stage_calculated, pkg_cost_repair_unresolved' AS `staging_tables`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_cost_UpsertShippingCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_cost_UpsertShippingCost`(
    IN p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_material_cost DECIMAL(12,2) DEFAULT NULL;
    DECLARE v_transportation_cost DECIMAL(12,2) DEFAULT NULL;
    DECLARE v_actual_shipping_charge DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_margin DECIMAL(12,2) DEFAULT NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_UpsertShippingCost requires a package_id.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `package` p
        WHERE p.`package_id` = p_package_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'pkg_cost_UpsertShippingCost requires an existing package.';
    END IF;

    CALL `pkg_cost_CalculateMaterialCost`(p_package_id, v_material_cost);
    CALL `pkg_cost_CalculateTransportationCost`(p_package_id, v_transportation_cost);
    CALL `pkg_cost_CalculateActualShippingCharge`(
        p_package_id,
        v_material_cost,
        v_transportation_cost,
        v_actual_shipping_charge
    );

    SET v_margin = ROUND(v_actual_shipping_charge - (v_material_cost + v_transportation_cost), 2);

    INSERT INTO `shipping_cost` (
        `package_id`,
        `actual_shipping_charge`,
        `material_cost`,
        `transportation_cost`,
        `charge_source`,
        `charge_recorded_at`
    )
    VALUES (
        p_package_id,
        v_actual_shipping_charge,
        v_material_cost,
        v_transportation_cost,
        'pkg_cost_UpsertShippingCost',
        CURRENT_TIMESTAMP
    )
    ON DUPLICATE KEY UPDATE
        `actual_shipping_charge` = VALUES(`actual_shipping_charge`),
        `material_cost` = VALUES(`material_cost`),
        `transportation_cost` = VALUES(`transportation_cost`),
        `charge_source` = VALUES(`charge_source`),
        `charge_recorded_at` = VALUES(`charge_recorded_at`);

    SELECT
        HEX(p_package_id) AS `package_id_hex`,
        v_material_cost AS `material_cost`,
        v_transportation_cost AS `transportation_cost`,
        v_actual_shipping_charge AS `actual_shipping_charge`,
        v_margin AS `margin`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_exception_ReportIncident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_exception_ReportIncident`(
    IN `p_reported_by_employee_id` INT,
    IN `p_package_id` BINARY(16),
    IN `p_package_movement_id` INT,
    IN `p_incident_type_id` INT,
    IN `p_incident_severity_id` INT,
    IN `p_description` VARCHAR(255),
    IN `p_incident_date` DATETIME,
    IN `p_customer_id` BINARY(16),
    IN `p_facility_id` INT,
    OUT `p_incident_id` INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_employee_count INT DEFAULT 0;
    DECLARE v_incident_type_count INT DEFAULT 0;
    DECLARE v_incident_severity_count INT DEFAULT 0;
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_package_movement_count INT DEFAULT 0;
    DECLARE v_open_incident_status_id INT DEFAULT NULL;
    DECLARE v_effective_package_id BINARY(16) DEFAULT p_package_id;
    DECLARE v_effective_customer_id BINARY(16) DEFAULT p_customer_id;
    DECLARE v_effective_facility_id INT DEFAULT p_facility_id;
    DECLARE v_effective_incident_date DATETIME DEFAULT p_incident_date;
    DECLARE v_movement_package_id BINARY(16) DEFAULT NULL;
    DECLARE v_movement_facility_id INT DEFAULT NULL;
    DECLARE v_package_recipient_customer_id BINARY(16) DEFAULT NULL;

    IF p_reported_by_employee_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_reported_by_employee_id is required.';
    END IF;

    IF p_incident_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_incident_type_id is required.';
    END IF;

    IF p_incident_severity_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_incident_severity_id is required.';
    END IF;

    IF p_description IS NULL OR CHAR_LENGTH(TRIM(p_description)) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_description is required.';
    END IF;

    SELECT COUNT(*)
    INTO v_employee_count
    FROM `employee`
    WHERE `employee_id` = p_reported_by_employee_id;

    IF v_employee_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Reported-by employee does not exist.';
    END IF;

    SELECT COUNT(*)
    INTO v_incident_type_count
    FROM `incident_type`
    WHERE `incident_type_id` = p_incident_type_id
      AND `is_active` = 1;

    IF v_incident_type_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Incident type does not exist or is inactive.';
    END IF;

    SELECT COUNT(*)
    INTO v_incident_severity_count
    FROM `incident_severity`
    WHERE `incident_severity_id` = p_incident_severity_id
      AND `is_active` = 1;

    IF v_incident_severity_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Incident severity does not exist or is inactive.';
    END IF;

    SELECT `incident_status_id`
    INTO v_open_incident_status_id
    FROM `incident_status`
    WHERE `status_name` = 'Open'
    LIMIT 1;

    IF v_open_incident_status_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Incident status Open does not exist.';
    END IF;

    IF p_package_movement_id IS NOT NULL THEN
        SELECT
            COUNT(*),
            MAX(pm.`package_id`),
            MAX(pm.`facility_id`)
        INTO
            v_package_movement_count,
            v_movement_package_id,
            v_movement_facility_id
        FROM `package_movement` pm
        WHERE pm.`package_movement_id` = p_package_movement_id;

        IF v_package_movement_count = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'p_package_movement_id does not reference an existing package_movement.';
        END IF;

        IF v_effective_package_id IS NOT NULL
           AND NOT (v_effective_package_id <=> v_movement_package_id) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'p_package_movement_id must belong to p_package_id.';
        END IF;

        IF v_effective_package_id IS NULL THEN
            SET v_effective_package_id = v_movement_package_id;
        END IF;

        IF v_effective_facility_id IS NULL THEN
            SET v_effective_facility_id = v_movement_facility_id;
        END IF;
    END IF;

    IF v_effective_package_id IS NOT NULL THEN
        SELECT
            COUNT(*),
            MAX(p.`recipient_customer_id`)
        INTO
            v_package_count,
            v_package_recipient_customer_id
        FROM `package` p
        WHERE p.`package_id` = v_effective_package_id;

        IF v_package_count = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Derived or provided package_id does not exist.';
        END IF;

        IF v_effective_customer_id IS NULL THEN
            SET v_effective_customer_id = v_package_recipient_customer_id;
        END IF;
    END IF;

    IF v_effective_incident_date IS NULL THEN
        SET v_effective_incident_date = CURRENT_TIMESTAMP;
    END IF;

    INSERT INTO `incident` (
        `reported_by_employee_id`,
        `package_id`,
        `incident_type_id`,
        `incident_severity_id`,
        `incident_status_id`,
        `description`,
        `incident_date`,
        `facility_id`,
        `package_movement_id`,
        `customer_id`
    ) VALUES (
        p_reported_by_employee_id,
        v_effective_package_id,
        p_incident_type_id,
        p_incident_severity_id,
        v_open_incident_status_id,
        TRIM(p_description),
        v_effective_incident_date,
        v_effective_facility_id,
        p_package_movement_id,
        v_effective_customer_id
    );

    SET p_incident_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_exception_UpdateIncidentStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_exception_UpdateIncidentStatus`(
    IN `p_incident_id` INT,
    IN `p_new_incident_status_name` VARCHAR(50),
    IN `p_resolved_by_employee_id` INT,
    IN `p_resolution_note` VARCHAR(255)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_incident_count INT DEFAULT 0;
    DECLARE v_old_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_new_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_new_incident_status_id INT DEFAULT NULL;
    DECLARE v_resolver_exists INT DEFAULT 0;

    IF p_incident_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_incident_id is required.';
    END IF;

    IF p_new_incident_status_name IS NULL OR CHAR_LENGTH(TRIM(p_new_incident_status_name)) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_new_incident_status_name is required.';
    END IF;

    SET v_new_status_name = TRIM(p_new_incident_status_name);

    SELECT
        COUNT(*),
        MAX(ist.`status_name`)
    INTO
        v_incident_count,
        v_old_status_name
    FROM `incident` i
    JOIN `incident_status` ist
        ON ist.`incident_status_id` = i.`incident_status_id`
    WHERE i.`incident_id` = p_incident_id;

    IF v_incident_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Incident does not exist.';
    END IF;

    SELECT ist.`incident_status_id`
    INTO v_new_incident_status_id
    FROM `incident_status` ist
    WHERE ist.`status_name` = v_new_status_name
    LIMIT 1;

    IF v_new_incident_status_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_new_incident_status_name must reference an existing incident_status.';
    END IF;

    IF p_resolved_by_employee_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_resolver_exists
        FROM `employee`
        WHERE `employee_id` = p_resolved_by_employee_id;

        IF v_resolver_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'p_resolved_by_employee_id must reference an existing employee.';
        END IF;
    END IF;

    IF NOT (
        (v_old_status_name = 'Open' AND v_new_status_name IN ('Open', 'Investigating'))
        OR (v_old_status_name = 'Investigating' AND v_new_status_name IN ('Investigating', 'Resolved'))
        OR (v_old_status_name = 'Resolved' AND v_new_status_name IN ('Resolved', 'Closed'))
        OR (v_old_status_name = 'Closed' AND v_new_status_name = 'Closed')
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid incident status transition.';
    END IF;

    UPDATE `incident`
    SET `incident_status_id` = v_new_incident_status_id,
        `resolved_at` = CASE
            WHEN v_new_status_name IN ('Resolved', 'Closed') AND `resolved_at` IS NULL
                THEN CURRENT_TIMESTAMP
            ELSE `resolved_at`
        END,
        `resolved_by_employee_id` = CASE
            WHEN v_new_status_name IN ('Resolved', 'Closed') AND p_resolved_by_employee_id IS NOT NULL
                THEN p_resolved_by_employee_id
            ELSE `resolved_by_employee_id`
        END,
        `resolution_note` = CASE
            WHEN v_new_status_name IN ('Resolved', 'Closed')
                 AND p_resolution_note IS NOT NULL
                 AND CHAR_LENGTH(TRIM(p_resolution_note)) > 0
                THEN LEFT(TRIM(p_resolution_note), 255)
            ELSE `resolution_note`
        END
    WHERE `incident_id` = p_incident_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init2_CreatePackageWithShippingDetailsCore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init2_CreatePackageWithShippingDetailsCore`(

    IN p_package_flow_type_id INT,
    IN p_service_type_id INT,
    IN p_recipient_customer_id BINARY(16),
    IN p_sender_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    IN p_received_date DATETIME,
    IN p_expected_delivery_date DATETIME,
    IN p_contents VARCHAR(30),
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    IN p_sender_territory_id INT,
    IN p_recipient_territory_id INT,
    IN p_origin_facility_id INT,
    IN p_destination_facility_id INT,
    IN p_origin_employee_id INT,
    OUT p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    CALL `pkg_init_InsertPackageCore`(
        p_package_flow_type_id,
        p_service_type_id,
        p_recipient_customer_id,
        p_sender_customer_id,
        p_sender_business_id,
        p_received_date,
        p_contents,
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        p_package_id
    );

    CALL `pkg_init_InsertShippingDetailsForPackage`(
        p_package_id,
        p_recipient_customer_id,
        p_sender_customer_id,
        p_sender_business_id,
        p_recipient_territory_id,
        p_sender_territory_id,
        p_expected_delivery_date
    );

    CALL `pkg_init_CreateInitialPackageRoutePlan`(
        p_package_id,
        p_origin_facility_id,
        p_destination_facility_id,
        p_service_type_id,
        p_received_date
    );

    CALL `pkg_init_CreateInitialShippingCost`(
        p_package_id
    );

    CALL `pkg_init_InsertInitialPackageMovement`(
        p_package_id,
        p_package_flow_type_id,
        p_origin_facility_id,
        p_origin_employee_id,
        p_received_date
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init3_CreateB2CPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init3_CreateB2CPackage`(

    IN p_sender_business_id BINARY(16),
    IN p_recipient_customer_id BINARY(16),
    IN p_service_type_name VARCHAR(30),
    IN p_contents VARCHAR(30),
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    IN p_received_date DATETIME,
    IN p_expected_delivery_date DATETIME,
    IN p_origin_employee_id INT,
    IN p_requested_origin_facility_id INT,
    IN p_requested_destination_facility_id INT,
    OUT p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_flow_type_id INT;
    DECLARE v_service_type_id INT;
    DECLARE v_sender_territory_id INT;
    DECLARE v_recipient_territory_id INT;
    DECLARE v_origin_facility_id INT;
    DECLARE v_destination_facility_id INT;
    DECLARE v_recipient_zip_code VARCHAR(10);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET p_package_id = NULL;

    START TRANSACTION;

    SELECT pft.`package_flow_type_id`
    INTO v_package_flow_type_id
    FROM `package_flow_type` pft
    WHERE pft.`package_flow_type_name` = 'B2C'
      AND pft.`is_active` = 1
    LIMIT 1;

    IF v_package_flow_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active package flow type B2C could not be resolved.';
    END IF;

    SELECT st.`service_type_id`
    INTO v_service_type_id
    FROM `service_type` st
    WHERE st.`service_type_name` = p_service_type_name
      AND st.`is_active` = 1
    LIMIT 1;

    IF v_service_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type name is invalid or inactive.';
    END IF;

    CALL `pkg_init_ValidateB2CPackageInputs`(
        p_recipient_customer_id,
        p_sender_business_id,
        v_service_type_id,
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        p_received_date,
        p_expected_delivery_date
    );

    CALL `pkg_init_resolve_customer_territory`(
        p_recipient_customer_id,
        v_recipient_territory_id
    );

    CALL `pkg_init_resolve_business_territory`(
        p_sender_business_id,
        v_sender_territory_id
    );

    CALL `pkg_init_ResolveB2COriginFacility`(
        p_sender_business_id,
        p_requested_origin_facility_id,
        v_origin_facility_id
    );

    SELECT c.`zip_code`
    INTO v_recipient_zip_code
    FROM `customer` c
    WHERE c.`customer_id` = p_recipient_customer_id;

    CALL `pkg_init_ResolveDestinationFacilityForService`(
        v_service_type_id,
        p_recipient_customer_id,
        v_recipient_territory_id,
        v_recipient_zip_code,
        p_requested_destination_facility_id,
        v_destination_facility_id
    );

    CALL `pkg_init2_CreatePackageWithShippingDetailsCore`(
        v_package_flow_type_id,
        v_service_type_id,
        p_recipient_customer_id,
        NULL,
        p_sender_business_id,
        p_received_date,
        p_expected_delivery_date,
        p_contents,
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        v_sender_territory_id,
        v_recipient_territory_id,
        v_origin_facility_id,
        v_destination_facility_id,
        p_origin_employee_id,
        p_package_id
    );

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init3_CreateP2PPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init3_CreateP2PPackage`(

    IN p_sender_customer_id BINARY(16),
    IN p_recipient_customer_id BINARY(16),
    IN p_service_type_name VARCHAR(30),
    IN p_contents VARCHAR(30),
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    IN p_received_date DATETIME,
    IN p_expected_delivery_date DATETIME,
    IN p_origin_employee_id INT,
    IN p_requested_origin_facility_id INT,
    IN p_requested_destination_facility_id INT,
    OUT p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_flow_type_id INT;
    DECLARE v_service_type_id INT;
    DECLARE v_sender_territory_id INT;
    DECLARE v_recipient_territory_id INT;
    DECLARE v_origin_facility_id INT;
    DECLARE v_destination_facility_id INT;
    DECLARE v_recipient_zip_code VARCHAR(10);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET p_package_id = NULL;

    START TRANSACTION;

    SELECT pft.`package_flow_type_id`
    INTO v_package_flow_type_id
    FROM `package_flow_type` pft
    WHERE pft.`package_flow_type_name` = 'P2P'
      AND pft.`is_active` = 1
    LIMIT 1;

    IF v_package_flow_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active package flow type P2P could not be resolved.';
    END IF;

    SELECT st.`service_type_id`
    INTO v_service_type_id
    FROM `service_type` st
    WHERE st.`service_type_name` = p_service_type_name
      AND st.`is_active` = 1
    LIMIT 1;

    IF v_service_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type name is invalid or inactive.';
    END IF;

    CALL `pkg_init_ValidateP2PPackageInputs`(
        p_sender_customer_id,
        p_recipient_customer_id,
        v_service_type_id,
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        p_received_date,
        p_expected_delivery_date
    );

    CALL `pkg_init_resolve_customer_territory`(
        p_sender_customer_id,
        v_sender_territory_id
    );

    CALL `pkg_init_resolve_customer_territory`(
        p_recipient_customer_id,
        v_recipient_territory_id
    );

    CALL `pkg_init_ResolveP2POriginFacility`(
        p_sender_customer_id,
        p_requested_origin_facility_id,
        v_origin_facility_id
    );

    SELECT c.`zip_code`
    INTO v_recipient_zip_code
    FROM `customer` c
    WHERE c.`customer_id` = p_recipient_customer_id;

    CALL `pkg_init_ResolveDestinationFacilityForService`(
        v_service_type_id,
        p_recipient_customer_id,
        v_recipient_territory_id,
        v_recipient_zip_code,
        p_requested_destination_facility_id,
        v_destination_facility_id
    );

    CALL `pkg_init2_CreatePackageWithShippingDetailsCore`(
        v_package_flow_type_id,
        v_service_type_id,
        p_recipient_customer_id,
        p_sender_customer_id,
        NULL,
        p_received_date,
        p_expected_delivery_date,
        p_contents,
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        v_sender_territory_id,
        v_recipient_territory_id,
        v_origin_facility_id,
        v_destination_facility_id,
        p_origin_employee_id,
        p_package_id
    );

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_CreateInitialPackageRoutePlan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_CreateInitialPackageRoutePlan`(
    IN p_package_id BINARY(16),
    IN p_origin_facility_id INT,
    IN p_destination_facility_id INT,
    IN p_service_type_id INT,
    IN p_received_date DATETIME
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_service_type_exists INT DEFAULT 0;
    DECLARE v_package_exists INT DEFAULT 0;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package ID is required for package_route_plan creation.';
    END IF;

    IF p_origin_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Origin facility ID is required for package_route_plan creation.';
    END IF;

    IF p_destination_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Destination facility ID is required for package_route_plan creation.';
    END IF;

    IF p_origin_facility_id = p_destination_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Origin and destination facilities must be different for package_route_plan creation.';
    END IF;

    SELECT COUNT(*)
    INTO v_package_exists
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_package_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package does not exist for package_route_plan creation.';
    END IF;

    SELECT COUNT(*)
    INTO v_service_type_exists
    FROM `service_type` st
    WHERE st.`service_type_id` = p_service_type_id
      AND st.`is_active` = 1;

    IF v_service_type_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active service type could not be resolved for package_route_plan creation.';
    END IF;

    INSERT INTO `package_route_plan` (
        `package_id`,
        `planned_origin_facility_id`,
        `planned_destination_facility_id`,
        `selection_source`,
        `selected_at`
    )
    VALUES (
        p_package_id,
        p_origin_facility_id,
        p_destination_facility_id,
        'Procedure',
        COALESCE(p_received_date, CURRENT_TIMESTAMP)
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_CreateInitialShippingCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_CreateInitialShippingCost`(

    IN p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_weight_oz DECIMAL(8,2);
    DECLARE v_service_type_name VARCHAR(30);
    DECLARE v_estimated_distance DECIMAL(10,2);
    DECLARE v_weight_lbs DECIMAL(10,4);
    DECLARE v_actual_shipping_charge DECIMAL(8,2);

    SELECT
        p.`weight_oz`,
        st.`service_type_name`,
        sd.`estimated_delivery_distance`
    INTO
        v_weight_oz,
        v_service_type_name,
        v_estimated_distance
    FROM `package` p
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = p.`service_type_id`
    LEFT JOIN `shippingdetails` sd
        ON sd.`package_id` = p.`package_id`
    WHERE p.`package_id` = p_package_id;

    IF v_weight_oz IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Shipping cost creation requires an existing package with weight_oz.';
    END IF;

    SET v_weight_lbs = v_weight_oz / 16.0;

    /*
    Safe initial charge formula based only on current schema fields.
    The shipping_cost triggers recompute material_cost and transportation_cost.
    */
    SET v_actual_shipping_charge = ROUND(
        4.00
        + (v_weight_lbs * 1.10)
        + (COALESCE(v_estimated_distance, 0.00) * 0.015)
        + CASE
            WHEN v_service_type_name = 'SmartLocker' THEN 1.25
            WHEN v_service_type_name = 'Pickup' THEN 0.75
            ELSE 0.00
          END,
        2
    );

    INSERT INTO `shipping_cost` (
        `package_id`,
        `actual_shipping_charge`,
        `material_cost`,
        `transportation_cost`,
        `charge_source`,
        `charge_recorded_at`
    )
    VALUES (
        p_package_id,
        GREATEST(v_actual_shipping_charge, 0.00),
        0.00,
        0.00,
        'pkg_init_CreateInitialShippingCost',
        CURRENT_TIMESTAMP
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_b2c_origin_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_b2c_origin_facility`(
    IN p_business_id BINARY(16),
    IN p_requested_origin_facility_id INT,
    OUT p_origin_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_mail_processing_type_id INT;
    DECLARE v_business_preferred_facility_id INT;
    DECLARE v_business_territory_id INT;
    DECLARE v_business_zip5 CHAR(5);
    DECLARE v_requested_facility_type_id INT;
    DECLARE v_preferred_facility_type_id INT;
    DECLARE v_source_has_geo TINYINT(1) DEFAULT 0;
    DECLARE v_source_lat DECIMAL(10,6);
    DECLARE v_source_lon DECIMAL(10,6);

    SET p_origin_facility_id = NULL;

    IF p_business_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business ID is required for B2C origin resolution.';
    END IF;

    SELECT ft.`facility_type_id`
    INTO v_mail_processing_type_id
    FROM `facility_type` ft
    WHERE ft.`is_active` = 1
      AND (
          ft.`facility_type_code` = 'MAIL_PROC'
          OR ft.`facility_type_name` = 'Mail Processing'
      )
    ORDER BY (ft.`facility_type_code` = 'MAIL_PROC') DESC, ft.`facility_type_id`
    LIMIT 1;

    IF v_mail_processing_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Mail Processing facility type could not be resolved.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `business`
        WHERE `business_id` = p_business_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business does not exist.';
    END IF;

    SELECT
        b.`preferred_facility_id`,
        LEFT(TRIM(b.`zip_code`), 5)
    INTO
        v_business_preferred_facility_id,
        v_business_zip5
    FROM `business` b
    WHERE b.`business_id` = p_business_id;

    IF p_requested_origin_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_requested_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = p_requested_origin_facility_id;

        IF v_requested_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested B2C origin facility does not exist.';
        END IF;

        IF v_requested_facility_type_id <> v_mail_processing_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested B2C origin facility must be a Mail Processing facility.';
        END IF;

        SET p_origin_facility_id = p_requested_origin_facility_id;
    END IF;

    IF p_origin_facility_id IS NULL AND v_business_preferred_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_preferred_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = v_business_preferred_facility_id;

        IF v_preferred_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business preferred facility reference is invalid.';
        END IF;

        IF v_preferred_facility_type_id <> v_mail_processing_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business preferred facility must be a Mail Processing facility for B2C origins.';
        END IF;

        SET p_origin_facility_id = v_business_preferred_facility_id;
    END IF;

    IF p_origin_facility_id IS NULL THEN
        CALL `pkg_init_resolve_business_territory`(p_business_id, v_business_territory_id);

        IF v_business_zip5 IS NOT NULL AND CHAR_LENGTH(v_business_zip5) = 5 AND v_business_zip5 NOT REGEXP '[^0-9]' THEN
            SELECT 1, zg.`latitude`, zg.`longitude`
            INTO v_source_has_geo, v_source_lat, v_source_lon
            FROM `zip_geo` zg
            WHERE zg.`zip_code` = v_business_zip5
            LIMIT 1;
        END IF;

        -- Choose the nearest valid Mail Processing facility, preferring same-territory matches first.
        SELECT f.`facility_id`
        INTO p_origin_facility_id
        FROM `facility` f
        LEFT JOIN `zip_geo` fzg
            ON fzg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
        WHERE f.`facility_type_id` = v_mail_processing_type_id
        ORDER BY
            CASE
                WHEN v_business_territory_id IS NOT NULL AND f.`territory_id` = v_business_territory_id THEN 0
                ELSE 1
            END,
            CASE
                WHEN v_source_has_geo = 1 AND fzg.`zip_code` IS NOT NULL THEN
                    ST_Distance_Sphere(
                        POINT(fzg.`longitude`, fzg.`latitude`),
                        POINT(v_source_lon, v_source_lat)
                    )
                ELSE NULL
            END,
            f.`facility_id`
        LIMIT 1;
    END IF;

    IF p_origin_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to determine a Mail Processing origin facility for the B2C package.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_destination_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_destination_facility`(
    IN p_service_type_id INT,
    IN p_recipient_customer_id BINARY(16),
    IN p_recipient_territory_id INT,
    IN p_recipient_zip_code VARCHAR(10),
    IN p_requested_destination_facility_id INT,
    OUT p_destination_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_service_type_name VARCHAR(30);

    SET p_destination_facility_id = NULL;

    IF p_service_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type ID is required.';
    END IF;

    SELECT st.`service_type_name`
    INTO v_service_type_name
    FROM `service_type` st
    WHERE st.`service_type_id` = p_service_type_id
      AND st.`is_active` = 1;

    IF v_service_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid or inactive service type ID.';
    END IF;

    IF v_service_type_name IN ('Delivery', 'Pickup') THEN
        CALL `pkg_init_determine_post_office_destination_facility`(
            p_recipient_customer_id,
            p_recipient_territory_id,
            p_recipient_zip_code,
            p_requested_destination_facility_id,
            p_destination_facility_id
        );
    ELSEIF v_service_type_name = 'SmartLocker' THEN
        CALL `pkg_init_determine_smartlocker_destination_facility`(
            p_recipient_customer_id,
            p_recipient_territory_id,
            p_recipient_zip_code,
            p_requested_destination_facility_id,
            p_destination_facility_id
        );
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unsupported service type for destination facility resolution.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_origin_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_origin_facility`(
    IN p_package_flow_type_id INT,
    IN p_sender_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    IN p_requested_origin_facility_id INT,
    OUT p_origin_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_flow_type_name VARCHAR(30);

    SET p_origin_facility_id = NULL;

    IF p_package_flow_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package flow type ID is required.';
    END IF;

    SELECT pft.`package_flow_type_name`
    INTO v_flow_type_name
    FROM `package_flow_type` pft
    WHERE pft.`package_flow_type_id` = p_package_flow_type_id
      AND pft.`is_active` = 1;

    IF v_flow_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid or inactive package flow type ID.';
    END IF;

    IF v_flow_type_name = 'B2C' THEN
        IF p_sender_business_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'B2C packages require a sender business ID.';
        END IF;

        IF p_sender_customer_id IS NOT NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'B2C packages cannot include a sender customer ID.';
        END IF;

        CALL `pkg_init_determine_b2c_origin_facility`(
            p_sender_business_id,
            p_requested_origin_facility_id,
            p_origin_facility_id
        );
    ELSEIF v_flow_type_name = 'P2P' THEN
        IF p_sender_customer_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'P2P packages require a sender customer ID.';
        END IF;

        IF p_sender_business_id IS NOT NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'P2P packages cannot include a sender business ID.';
        END IF;

        CALL `pkg_init_determine_p2p_origin_facility`(
            p_sender_customer_id,
            p_requested_origin_facility_id,
            p_origin_facility_id
        );
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unsupported package flow type for origin facility resolution.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_p2p_origin_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_p2p_origin_facility`(
    IN p_sender_customer_id BINARY(16),
    IN p_requested_origin_facility_id INT,
    OUT p_origin_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_post_office_type_id INT;
    DECLARE v_customer_preferred_facility_id INT;
    DECLARE v_sender_territory_id INT;
    DECLARE v_sender_zip5 CHAR(5);
    DECLARE v_requested_facility_type_id INT;
    DECLARE v_preferred_facility_type_id INT;
    DECLARE v_source_has_geo TINYINT(1) DEFAULT 0;
    DECLARE v_source_lat DECIMAL(10,6);
    DECLARE v_source_lon DECIMAL(10,6);

    SET p_origin_facility_id = NULL;

    IF p_sender_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender customer ID is required for P2P origin resolution.';
    END IF;

    SELECT ft.`facility_type_id`
    INTO v_post_office_type_id
    FROM `facility_type` ft
    WHERE ft.`is_active` = 1
      AND (
          ft.`facility_type_code` = 'POST'
          OR ft.`facility_type_name` = 'Post Office'
      )
    ORDER BY (ft.`facility_type_code` = 'POST') DESC, ft.`facility_type_id`
    LIMIT 1;

    IF v_post_office_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Post Office facility type could not be resolved.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer`
        WHERE `customer_id` = p_sender_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender customer does not exist.';
    END IF;

    SELECT
        c.`preferred_facility_id`,
        LEFT(TRIM(c.`zip_code`), 5)
    INTO
        v_customer_preferred_facility_id,
        v_sender_zip5
    FROM `customer` c
    WHERE c.`customer_id` = p_sender_customer_id;

    IF p_requested_origin_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_requested_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = p_requested_origin_facility_id;

        IF v_requested_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested P2P origin facility does not exist.';
        END IF;

        IF v_requested_facility_type_id <> v_post_office_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested P2P origin facility must be a Post Office.';
        END IF;

        SET p_origin_facility_id = p_requested_origin_facility_id;
    END IF;

    IF p_origin_facility_id IS NULL AND v_customer_preferred_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_preferred_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = v_customer_preferred_facility_id;

        IF v_preferred_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Sender customer preferred facility reference is invalid.';
        END IF;

        IF v_preferred_facility_type_id <> v_post_office_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Sender customer preferred facility must be a Post Office for P2P origins.';
        END IF;

        SET p_origin_facility_id = v_customer_preferred_facility_id;
    END IF;

    IF p_origin_facility_id IS NULL THEN
        CALL `pkg_init_resolve_customer_territory`(p_sender_customer_id, v_sender_territory_id);

        IF v_sender_zip5 IS NOT NULL AND CHAR_LENGTH(v_sender_zip5) = 5 AND v_sender_zip5 NOT REGEXP '[^0-9]' THEN
            SELECT 1, zg.`latitude`, zg.`longitude`
            INTO v_source_has_geo, v_source_lat, v_source_lon
            FROM `zip_geo` zg
            WHERE zg.`zip_code` = v_sender_zip5
            LIMIT 1;
        END IF;

        -- Choose the nearest valid Post Office, preferring same-territory matches first.
        SELECT f.`facility_id`
        INTO p_origin_facility_id
        FROM `facility` f
        LEFT JOIN `zip_geo` fzg
            ON fzg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
        WHERE f.`facility_type_id` = v_post_office_type_id
        ORDER BY
            CASE
                WHEN v_sender_territory_id IS NOT NULL AND f.`territory_id` = v_sender_territory_id THEN 0
                ELSE 1
            END,
            CASE
                WHEN v_source_has_geo = 1 AND fzg.`zip_code` IS NOT NULL THEN
                    ST_Distance_Sphere(
                        POINT(fzg.`longitude`, fzg.`latitude`),
                        POINT(v_source_lon, v_source_lat)
                    )
                ELSE NULL
            END,
            f.`facility_id`
        LIMIT 1;
    END IF;

    IF p_origin_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to determine a Post Office origin facility for the P2P package.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_post_office_destination_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_post_office_destination_facility`(
    IN p_recipient_customer_id BINARY(16),
    IN p_recipient_territory_id INT,
    IN p_recipient_zip_code VARCHAR(10),
    IN p_requested_destination_facility_id INT,
    OUT p_destination_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_post_office_type_id INT;
    DECLARE v_requested_facility_type_id INT;
    DECLARE v_customer_preferred_facility_id INT;
    DECLARE v_preferred_facility_type_id INT;
    DECLARE v_effective_territory_id INT;
    DECLARE v_effective_zip5 CHAR(5);
    DECLARE v_customer_zip5 CHAR(5);
    DECLARE v_customer_state_code CHAR(2);
    DECLARE v_customer_city VARCHAR(50);
    DECLARE v_source_has_geo TINYINT(1) DEFAULT 0;
    DECLARE v_source_lat DECIMAL(10,6);
    DECLARE v_source_lon DECIMAL(10,6);

    SET p_destination_facility_id = NULL;
    SET v_effective_territory_id = p_recipient_territory_id;
    SET v_effective_zip5 = LEFT(TRIM(p_recipient_zip_code), 5);

    SELECT ft.`facility_type_id`
    INTO v_post_office_type_id
    FROM `facility_type` ft
    WHERE ft.`is_active` = 1
      AND (
          ft.`facility_type_code` = 'POST'
          OR ft.`facility_type_name` = 'Post Office'
      )
    ORDER BY (ft.`facility_type_code` = 'POST') DESC, ft.`facility_type_id`
    LIMIT 1;

    IF v_post_office_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Post Office facility type could not be resolved.';
    END IF;

    IF p_requested_destination_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_requested_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = p_requested_destination_facility_id;

        IF v_requested_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested destination facility does not exist.';
        END IF;

        IF v_requested_facility_type_id <> v_post_office_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested destination facility must be a Post Office.';
        END IF;

        SET p_destination_facility_id = p_requested_destination_facility_id;
    END IF;

    IF p_recipient_customer_id IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1
            FROM `customer`
            WHERE `customer_id` = p_recipient_customer_id
        ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Recipient customer does not exist.';
        END IF;

        SELECT
            c.`preferred_facility_id`,
            LEFT(TRIM(c.`zip_code`), 5),
            c.`state_code`,
            c.`city`
        INTO
            v_customer_preferred_facility_id,
            v_customer_zip5,
            v_customer_state_code,
            v_customer_city
        FROM `customer` c
        WHERE c.`customer_id` = p_recipient_customer_id;

        IF p_destination_facility_id IS NULL AND v_customer_preferred_facility_id IS NOT NULL THEN
            SELECT f.`facility_type_id`
            INTO v_preferred_facility_type_id
            FROM `facility` f
            WHERE f.`facility_id` = v_customer_preferred_facility_id;

            IF v_preferred_facility_type_id IS NULL THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Recipient customer preferred facility reference is invalid.';
            END IF;

            IF v_preferred_facility_type_id <> v_post_office_type_id THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Recipient customer preferred facility must be a Post Office.';
            END IF;

            SET p_destination_facility_id = v_customer_preferred_facility_id;
        END IF;

        IF v_effective_territory_id IS NULL THEN
            CALL `pkg_init_resolve_customer_territory`(
                p_recipient_customer_id,
                v_effective_territory_id
            );
        END IF;

        IF (v_effective_zip5 IS NULL OR CHAR_LENGTH(v_effective_zip5) <> 5 OR v_effective_zip5 REGEXP '[^0-9]') THEN
            SET v_effective_zip5 = v_customer_zip5;
        END IF;

        IF (v_effective_territory_id IS NULL) AND v_effective_zip5 IS NOT NULL THEN
            CALL `pkg_init_resolve_recipient_territory`(
                v_effective_zip5,
                v_customer_city,
                v_customer_state_code,
                v_effective_territory_id
            );
        END IF;
    END IF;

    IF p_destination_facility_id IS NULL THEN
        IF v_effective_territory_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Recipient territory could not be determined for destination facility resolution.';
        END IF;

        IF v_effective_zip5 IS NOT NULL AND CHAR_LENGTH(v_effective_zip5) = 5 AND v_effective_zip5 NOT REGEXP '[^0-9]' THEN
            SELECT 1, zg.`latitude`, zg.`longitude`
            INTO v_source_has_geo, v_source_lat, v_source_lon
            FROM `zip_geo` zg
            WHERE zg.`zip_code` = v_effective_zip5
            LIMIT 1;
        END IF;

        -- Choose the nearest destination Post Office, preferring same-territory matches first.
        SELECT f.`facility_id`
        INTO p_destination_facility_id
        FROM `facility` f
        LEFT JOIN `zip_geo` fzg
            ON fzg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
        WHERE f.`facility_type_id` = v_post_office_type_id
        ORDER BY
            CASE
                WHEN f.`territory_id` = v_effective_territory_id THEN 0
                ELSE 1
            END,
            CASE
                WHEN v_source_has_geo = 1 AND fzg.`zip_code` IS NOT NULL THEN
                    ST_Distance_Sphere(
                        POINT(fzg.`longitude`, fzg.`latitude`),
                        POINT(v_source_lon, v_source_lat)
                    )
                ELSE NULL
            END,
            f.`facility_id`
        LIMIT 1;
    END IF;

    IF p_destination_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to determine a destination Post Office facility.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_determine_smartlocker_destination_facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_determine_smartlocker_destination_facility`(
    IN p_recipient_customer_id BINARY(16),
    IN p_recipient_territory_id INT,
    IN p_recipient_zip_code VARCHAR(10),
    IN p_requested_destination_facility_id INT,
    OUT p_destination_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_post_office_type_id INT;
    DECLARE v_requested_facility_type_id INT;
    DECLARE v_customer_preferred_facility_id INT;
    DECLARE v_preferred_facility_type_id INT;
    DECLARE v_effective_territory_id INT;
    DECLARE v_effective_zip5 CHAR(5);
    DECLARE v_customer_zip5 CHAR(5);
    DECLARE v_customer_state_code CHAR(2);
    DECLARE v_customer_city VARCHAR(50);
    DECLARE v_source_has_geo TINYINT(1) DEFAULT 0;
    DECLARE v_source_lat DECIMAL(10,6);
    DECLARE v_source_lon DECIMAL(10,6);
    DECLARE v_has_available_locker INT DEFAULT 0;

    SET p_destination_facility_id = NULL;
    SET v_effective_territory_id = p_recipient_territory_id;
    SET v_effective_zip5 = LEFT(TRIM(p_recipient_zip_code), 5);

    SELECT ft.`facility_type_id`
    INTO v_post_office_type_id
    FROM `facility_type` ft
    WHERE ft.`is_active` = 1
      AND (
          ft.`facility_type_code` = 'POST'
          OR ft.`facility_type_name` = 'Post Office'
      )
    ORDER BY (ft.`facility_type_code` = 'POST') DESC, ft.`facility_type_id`
    LIMIT 1;

    IF v_post_office_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Post Office facility type could not be resolved.';
    END IF;

    IF p_requested_destination_facility_id IS NOT NULL THEN
        SELECT f.`facility_type_id`
        INTO v_requested_facility_type_id
        FROM `facility` f
        WHERE f.`facility_id` = p_requested_destination_facility_id;

        IF v_requested_facility_type_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested SmartLocker destination facility does not exist.';
        END IF;

        IF v_requested_facility_type_id <> v_post_office_type_id THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested SmartLocker destination facility must be a Post Office.';
        END IF;

        SELECT COUNT(*)
        INTO v_has_available_locker
        FROM `lockerlocations` ll
        JOIN `smartlocker` sl
            ON sl.`locker_location_id` = ll.`locker_location_id`
        WHERE ll.`facility_id` = p_requested_destination_facility_id
          AND sl.`locker_status` = 'Available';

        IF v_has_available_locker = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Requested SmartLocker destination facility has no available lockers.';
        END IF;

        SET p_destination_facility_id = p_requested_destination_facility_id;
    END IF;

    IF p_recipient_customer_id IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1
            FROM `customer`
            WHERE `customer_id` = p_recipient_customer_id
        ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Recipient customer does not exist.';
        END IF;

        SELECT
            c.`preferred_facility_id`,
            LEFT(TRIM(c.`zip_code`), 5),
            c.`state_code`,
            c.`city`
        INTO
            v_customer_preferred_facility_id,
            v_customer_zip5,
            v_customer_state_code,
            v_customer_city
        FROM `customer` c
        WHERE c.`customer_id` = p_recipient_customer_id;

        IF p_destination_facility_id IS NULL AND v_customer_preferred_facility_id IS NOT NULL THEN
            SELECT f.`facility_type_id`
            INTO v_preferred_facility_type_id
            FROM `facility` f
            WHERE f.`facility_id` = v_customer_preferred_facility_id;

            IF v_preferred_facility_type_id IS NULL THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Recipient customer preferred facility reference is invalid.';
            END IF;

            IF v_preferred_facility_type_id = v_post_office_type_id THEN
                SELECT COUNT(*)
                INTO v_has_available_locker
                FROM `lockerlocations` ll
                JOIN `smartlocker` sl
                    ON sl.`locker_location_id` = ll.`locker_location_id`
                WHERE ll.`facility_id` = v_customer_preferred_facility_id
                  AND sl.`locker_status` = 'Available';

                IF v_has_available_locker > 0 THEN
                    SET p_destination_facility_id = v_customer_preferred_facility_id;
                END IF;
            END IF;
        END IF;

        IF v_effective_territory_id IS NULL THEN
            CALL `pkg_init_resolve_customer_territory`(
                p_recipient_customer_id,
                v_effective_territory_id
            );
        END IF;

        IF (v_effective_zip5 IS NULL OR CHAR_LENGTH(v_effective_zip5) <> 5 OR v_effective_zip5 REGEXP '[^0-9]') THEN
            SET v_effective_zip5 = v_customer_zip5;
        END IF;

        IF (v_effective_territory_id IS NULL) AND v_effective_zip5 IS NOT NULL THEN
            CALL `pkg_init_resolve_recipient_territory`(
                v_effective_zip5,
                v_customer_city,
                v_customer_state_code,
                v_effective_territory_id
            );
        END IF;
    END IF;

    IF p_destination_facility_id IS NULL THEN
        IF v_effective_territory_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Recipient territory could not be determined for SmartLocker destination resolution.';
        END IF;

        IF v_effective_zip5 IS NOT NULL AND CHAR_LENGTH(v_effective_zip5) = 5 AND v_effective_zip5 NOT REGEXP '[^0-9]' THEN
            SELECT 1, zg.`latitude`, zg.`longitude`
            INTO v_source_has_geo, v_source_lat, v_source_lon
            FROM `zip_geo` zg
            WHERE zg.`zip_code` = v_effective_zip5
            LIMIT 1;
        END IF;

        -- Choose the nearest Post Office that currently has at least one available locker.
        SELECT f.`facility_id`
        INTO p_destination_facility_id
        FROM `facility` f
        JOIN `lockerlocations` ll
            ON ll.`facility_id` = f.`facility_id`
        JOIN `smartlocker` sl
            ON sl.`locker_location_id` = ll.`locker_location_id`
           AND sl.`locker_status` = 'Available'
        LEFT JOIN `zip_geo` fzg
            ON fzg.`zip_code` = LEFT(TRIM(f.`zip_code`), 5)
        WHERE f.`facility_type_id` = v_post_office_type_id
        GROUP BY
            f.`facility_id`,
            f.`territory_id`,
            fzg.`zip_code`,
            fzg.`latitude`,
            fzg.`longitude`
        ORDER BY
            CASE
                WHEN f.`territory_id` = v_effective_territory_id THEN 0
                ELSE 1
            END,
            CASE
                WHEN v_source_has_geo = 1 AND fzg.`zip_code` IS NOT NULL THEN
                    ST_Distance_Sphere(
                        POINT(fzg.`longitude`, fzg.`latitude`),
                        POINT(v_source_lon, v_source_lat)
                    )
                ELSE NULL
            END,
            f.`facility_id`
        LIMIT 1;
    END IF;

    IF p_destination_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to determine a SmartLocker-capable destination Post Office with available lockers.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_InsertInitialPackageMovement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_InsertInitialPackageMovement`(

    IN p_package_id BINARY(16),
    IN p_package_flow_type_id INT,
    IN p_origin_facility_id INT,
    IN p_origin_employee_id INT,
    IN p_received_date DATETIME
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_event_type_id INT;
    DECLARE v_status_name VARCHAR(30);
    DECLARE v_status_id INT;
    DECLARE v_facility_type_id INT;
    DECLARE v_employee_department_id INT;
    DECLARE v_employee_facility_id INT;
    DECLARE v_employee_department_type_id INT;
    DECLARE v_required_department_type_id INT;
    DECLARE v_requires_employee TINYINT(1);

    IF p_origin_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Origin facility ID is required for the initial package movement.';
    END IF;

    IF p_origin_employee_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'origin_employee_id is required for the initial package movement.';
    END IF;

    IF p_received_date IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Received timestamp is required for the initial package movement.';
    END IF;

    SELECT pmet.`package_movement_event_type_id`,
           pmet.`default_package_status_name`
    INTO v_event_type_id,
         v_status_name
    FROM `package_movement_event_type` pmet
    WHERE pmet.`event_type_name` = 'Received At Facility'
      AND pmet.`is_active` = 1
    LIMIT 1;

    IF v_event_type_id IS NULL OR v_status_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Initial movement event type for Received At Facility could not be resolved.';
    END IF;

    SELECT ps.`package_status_id`
    INTO v_status_id
    FROM `package_status` ps
    WHERE ps.`status_name` = v_status_name
      AND ps.`is_active` = 1
    LIMIT 1;

    IF v_status_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Initial movement status could not be resolved.';
    END IF;

    SELECT f.`facility_type_id`
    INTO v_facility_type_id
    FROM `facility` f
    WHERE f.`facility_id` = p_origin_facility_id;

    IF v_facility_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Origin facility does not exist.';
    END IF;

    SELECT
        e.`department_id`,
        d.`facility_id`,
        d.`department_type_id`
    INTO
        v_employee_department_id,
        v_employee_facility_id,
        v_employee_department_type_id
    FROM `employee` e
    JOIN `departments` d
        ON d.`department_id` = e.`department_id`
    WHERE e.`employee_id` = p_origin_employee_id;

    IF v_employee_department_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'origin_employee_id does not reference a staffed employee/department.';
    END IF;

    IF v_employee_facility_id <> p_origin_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'origin_employee_id must belong to the resolved origin facility.';
    END IF;

    SELECT
        pmsr.`required_department_type_id`,
        pmsr.`requires_employee`
    INTO
        v_required_department_type_id,
        v_requires_employee
    FROM `package_movement_staffing_rule` pmsr
    WHERE pmsr.`package_flow_type_id` = p_package_flow_type_id
      AND pmsr.`package_movement_event_type_id` = v_event_type_id
      AND pmsr.`facility_type_id` = v_facility_type_id
    LIMIT 1;

    IF v_requires_employee IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No staffing rule exists for the initial movement at the origin facility type.';
    END IF;

    IF v_requires_employee = 1
       AND v_required_department_type_id IS NOT NULL
       AND v_employee_department_type_id <> v_required_department_type_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'origin_employee_id does not belong to the required department for the initial movement.';
    END IF;

    INSERT INTO `package_movement` (
        `package_id`,
        `package_movement_event_type_id`,
        `package_status_id`,
        `facility_id`,
        `from_facility_id`,
        `to_facility_id`,
        `processed_by_employee_id`,
        `event_timestamp`,
        `movement_note`
    )
    VALUES (
        p_package_id,
        v_event_type_id,
        v_status_id,
        p_origin_facility_id,
        NULL,
        NULL,
        p_origin_employee_id,
        p_received_date,
        'Initial package initiation movement: Received At Facility'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_InsertPackageCore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_InsertPackageCore`(

    IN p_package_flow_type_id INT,
    IN p_service_type_id INT,
    IN p_recipient_customer_id BINARY(16),
    IN p_sender_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    IN p_received_date DATETIME,
    IN p_contents VARCHAR(30),
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    OUT p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_initial_event_type_id INT;
    DECLARE v_initial_status_name VARCHAR(30);
    DECLARE v_initial_status_id INT;
    DECLARE v_contents VARCHAR(30);

    SET p_package_id = UUID_TO_BIN(UUID());
    SET v_contents = NULLIF(TRIM(COALESCE(p_contents, '')), '');

    SELECT pmet.`package_movement_event_type_id`,
           pmet.`default_package_status_name`
    INTO v_initial_event_type_id,
         v_initial_status_name
    FROM `package_movement_event_type` pmet
    WHERE pmet.`event_type_name` = 'Received At Facility'
      AND pmet.`is_active` = 1
    LIMIT 1;

    IF v_initial_event_type_id IS NULL OR v_initial_status_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Initial movement event configuration for Received At Facility is missing.';
    END IF;

    SELECT ps.`package_status_id`
    INTO v_initial_status_id
    FROM `package_status` ps
    WHERE ps.`status_name` = v_initial_status_name
      AND ps.`is_active` = 1
      AND (ps.`allowed_service_type_id` IS NULL OR ps.`allowed_service_type_id` = p_service_type_id)
    LIMIT 1;

    IF v_initial_status_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Initial package status for Received At Facility could not be resolved.';
    END IF;

    INSERT INTO `package` (
        `package_id`,
        `package_status_id`,
        `service_type_id`,
        `received_date`,
        `contents`,
        `weight_oz`,
        `length_in`,
        `width_in`,
        `height_in`,
        `recipient_customer_id`,
        `package_flow_type_id`,
        `sender_customer_id`,
        `sender_business_id`
    )
    VALUES (
        p_package_id,
        v_initial_status_id,
        p_service_type_id,
        p_received_date,
        COALESCE(v_contents, 'Unknown'),
        p_weight_oz,
        p_length_in,
        p_width_in,
        p_height_in,
        p_recipient_customer_id,
        p_package_flow_type_id,
        p_sender_customer_id,
        p_sender_business_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_InsertShippingDetailsForPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_InsertShippingDetailsForPackage`(

    IN p_package_id BINARY(16),
    IN p_recipient_customer_id BINARY(16),
    IN p_sender_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    IN p_recipient_territory_id INT,
    IN p_sender_territory_id INT,
    IN p_expected_delivery_date DATETIME
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_recipient_first_name VARCHAR(20);
    DECLARE v_recipient_middle_initial CHAR(1);
    DECLARE v_recipient_last_name VARCHAR(20);
    DECLARE v_recipient_street_address VARCHAR(150);
    DECLARE v_recipient_city VARCHAR(50);
    DECLARE v_recipient_state_code CHAR(2);
    DECLARE v_recipient_zip_code VARCHAR(10);
    DECLARE v_sender_street_address VARCHAR(150);
    DECLARE v_sender_city VARCHAR(50);
    DECLARE v_sender_state_code CHAR(2);
    DECLARE v_sender_zip_code VARCHAR(10);
    DECLARE v_recipient_address VARCHAR(150);
    DECLARE v_sender_address VARCHAR(150);
    DECLARE v_sender_lat DECIMAL(10,6);
    DECLARE v_sender_lon DECIMAL(10,6);
    DECLARE v_recipient_lat DECIMAL(10,6);
    DECLARE v_recipient_lon DECIMAL(10,6);
    DECLARE v_estimated_distance DECIMAL(10,2);

    SELECT
        c.`first_name`,
        c.`middle_initial`,
        c.`last_name`,
        c.`street_address`,
        c.`city`,
        c.`state_code`,
        c.`zip_code`
    INTO
        v_recipient_first_name,
        v_recipient_middle_initial,
        v_recipient_last_name,
        v_recipient_street_address,
        v_recipient_city,
        v_recipient_state_code,
        v_recipient_zip_code
    FROM `customer` c
    WHERE c.`customer_id` = p_recipient_customer_id;

    IF p_sender_business_id IS NOT NULL THEN
        SELECT
            b.`street_address`,
            b.`city`,
            b.`state_code`,
            b.`zip_code`
        INTO
            v_sender_street_address,
            v_sender_city,
            v_sender_state_code,
            v_sender_zip_code
        FROM `business` b
        WHERE b.`business_id` = p_sender_business_id;
    ELSE
        SELECT
            c.`street_address`,
            c.`city`,
            c.`state_code`,
            c.`zip_code`
        INTO
            v_sender_street_address,
            v_sender_city,
            v_sender_state_code,
            v_sender_zip_code
        FROM `customer` c
        WHERE c.`customer_id` = p_sender_customer_id;
    END IF;

    SET v_recipient_address = CONCAT_WS(
        ', ',
        v_recipient_street_address,
        CONCAT(COALESCE(v_recipient_city, ''), ', ', COALESCE(v_recipient_state_code, ''), ' ', COALESCE(v_recipient_zip_code, ''))
    );

    SET v_sender_address = CONCAT_WS(
        ', ',
        v_sender_street_address,
        CONCAT(COALESCE(v_sender_city, ''), ', ', COALESCE(v_sender_state_code, ''), ' ', COALESCE(v_sender_zip_code, ''))
    );

    IF v_recipient_address IS NULL OR TRIM(v_recipient_address) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient address could not be derived for shippingdetails.';
    END IF;

    IF v_sender_address IS NULL OR TRIM(v_sender_address) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender address could not be derived for shippingdetails.';
    END IF;

    SET v_estimated_distance = NULL;

    IF p_sender_territory_id IS NOT NULL AND p_recipient_territory_id IS NOT NULL THEN
        SELECT zg.`latitude`, zg.`longitude`
        INTO v_sender_lat, v_sender_lon
        FROM `territory` t
        JOIN `zip_geo` zg
            ON zg.`zip_code` = t.`zip_code`
        WHERE t.`territory_id` = p_sender_territory_id
        LIMIT 1;

        SELECT zg.`latitude`, zg.`longitude`
        INTO v_recipient_lat, v_recipient_lon
        FROM `territory` t
        JOIN `zip_geo` zg
            ON zg.`zip_code` = t.`zip_code`
        WHERE t.`territory_id` = p_recipient_territory_id
        LIMIT 1;

        IF v_sender_lat IS NOT NULL
           AND v_sender_lon IS NOT NULL
           AND v_recipient_lat IS NOT NULL
           AND v_recipient_lon IS NOT NULL THEN
            SET v_estimated_distance = ROUND(
                ST_Distance_Sphere(
                    POINT(v_sender_lon, v_sender_lat),
                    POINT(v_recipient_lon, v_recipient_lat)
                ) / 1609.344,
                2
            );
        END IF;
    END IF;

    INSERT INTO `shippingdetails` (
        `package_id`,
        `recipient_address`,
        `recipient_territory_id`,
        `sender_address`,
        `sender_territory_id`,
        `estimated_delivery_distance`,
        `recipient_first_name`,
        `recipient_middle_initial`,
        `recipient_last_name`,
        `expected_delivery_date`
    )
    VALUES (
        p_package_id,
        v_recipient_address,
        p_recipient_territory_id,
        v_sender_address,
        p_sender_territory_id,
        v_estimated_distance,
        v_recipient_first_name,
        v_recipient_middle_initial,
        v_recipient_last_name,
        p_expected_delivery_date
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_ResolveB2COriginFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_ResolveB2COriginFacility`(

    IN p_business_id BINARY(16),
    IN p_requested_origin_facility_id INT,
    OUT p_origin_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    CALL `pkg_init_determine_b2c_origin_facility`(
        p_business_id,
        p_requested_origin_facility_id,
        p_origin_facility_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_ResolveDestinationFacilityForService` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_ResolveDestinationFacilityForService`(

    IN p_service_type_id INT,
    IN p_recipient_customer_id BINARY(16),
    IN p_recipient_territory_id INT,
    IN p_recipient_zip_code VARCHAR(10),
    IN p_requested_destination_facility_id INT,
    OUT p_destination_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    CALL `pkg_init_determine_destination_facility`(
        p_service_type_id,
        p_recipient_customer_id,
        p_recipient_territory_id,
        p_recipient_zip_code,
        p_requested_destination_facility_id,
        p_destination_facility_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_ResolveP2POriginFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_ResolveP2POriginFacility`(

    IN p_sender_customer_id BINARY(16),
    IN p_requested_origin_facility_id INT,
    OUT p_origin_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    CALL `pkg_init_determine_p2p_origin_facility`(
        p_sender_customer_id,
        p_requested_origin_facility_id,
        p_origin_facility_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_resolve_business_territory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_resolve_business_territory`(
    IN p_business_id BINARY(16),
    OUT p_territory_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_business_territory_id INT;
    DECLARE v_city VARCHAR(50);
    DECLARE v_state_code CHAR(2);
    DECLARE v_zip_code VARCHAR(10);

    SET p_territory_id = NULL;

    IF p_business_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `business`
        WHERE `business_id` = p_business_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Business does not exist.';
    END IF;

    SELECT
        b.`territory_id`,
        b.`city`,
        b.`state_code`,
        b.`zip_code`
    INTO
        v_business_territory_id,
        v_city,
        v_state_code,
        v_zip_code
    FROM `business` b
    WHERE b.`business_id` = p_business_id;

    IF v_business_territory_id IS NOT NULL AND EXISTS (
        SELECT 1
        FROM `territory` t
        WHERE t.`territory_id` = v_business_territory_id
    ) THEN
        SET p_territory_id = v_business_territory_id;
    ELSE
        IF v_city IS NULL OR TRIM(v_city) = '' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business city is required to resolve territory.';
        END IF;

        IF v_zip_code IS NULL OR TRIM(v_zip_code) = '' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Business ZIP code is required to resolve territory.';
        END IF;

        CALL `pkg_init_resolve_recipient_territory`(
            v_zip_code,
            v_city,
            v_state_code,
            p_territory_id
        );
    END IF;

    IF p_territory_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to resolve business territory.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_resolve_customer_territory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_resolve_customer_territory`(
    IN p_customer_id BINARY(16),
    OUT p_territory_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_customer_territory_id INT;
    DECLARE v_city VARCHAR(50);
    DECLARE v_state_code CHAR(2);
    DECLARE v_zip_code VARCHAR(10);

    SET p_territory_id = NULL;

    IF p_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer`
        WHERE `customer_id` = p_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Customer does not exist.';
    END IF;

    SELECT
        c.`territory_id`,
        c.`city`,
        c.`state_code`,
        c.`zip_code`
    INTO
        v_customer_territory_id,
        v_city,
        v_state_code,
        v_zip_code
    FROM `customer` c
    WHERE c.`customer_id` = p_customer_id;

    IF v_customer_territory_id IS NOT NULL AND EXISTS (
        SELECT 1
        FROM `territory` t
        WHERE t.`territory_id` = v_customer_territory_id
    ) THEN
        SET p_territory_id = v_customer_territory_id;
    ELSE
        CALL `pkg_init_resolve_recipient_territory`(
            v_zip_code,
            v_city,
            v_state_code,
            p_territory_id
        );
    END IF;

    IF p_territory_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to resolve customer territory.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_resolve_recipient_territory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_resolve_recipient_territory`(
    IN p_zip_code VARCHAR(10),
    IN p_city VARCHAR(100),
    IN p_state_code CHAR(2),
    OUT p_territory_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_zip5 CHAR(5);
    DECLARE v_state_code CHAR(2);
    DECLARE v_city VARCHAR(100);
    DECLARE v_match_count INT DEFAULT 0;

    SET p_territory_id = NULL;
    SET v_zip5 = LEFT(TRIM(p_zip_code), 5);
    SET v_state_code = UPPER(TRIM(p_state_code));
    SET v_city = UPPER(TRIM(p_city));

    IF p_state_code IS NULL OR TRIM(p_state_code) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient state code is required.';
    END IF;

    IF v_state_code <> 'TX' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient state code must be TX for the current demo.';
    END IF;

    IF p_city IS NULL OR TRIM(p_city) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient city is required.';
    END IF;

    IF p_zip_code IS NULL OR TRIM(p_zip_code) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient ZIP code is required.';
    END IF;

    IF CHAR_LENGTH(v_zip5) <> 5 OR v_zip5 REGEXP '[^0-9]' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient ZIP code must contain a valid 5-digit ZIP.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `zip_geo`
        WHERE `zip_code` = v_zip5
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient ZIP code does not exist in zip_geo.';
    END IF;

    -- Prefer an exact ZIP + city + state match when it resolves uniquely.
    SELECT COUNT(*)
    INTO v_match_count
    FROM `territory` t
    WHERE t.`state` = v_state_code
      AND UPPER(TRIM(t.`city`)) = v_city
      AND t.`zip_code` = v_zip5;

    IF v_match_count = 1 THEN
        SELECT MAX(t.`territory_id`)
        INTO p_territory_id
        FROM `territory` t
        WHERE t.`state` = v_state_code
          AND UPPER(TRIM(t.`city`)) = v_city
          AND t.`zip_code` = v_zip5;
    ELSEIF v_match_count > 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient territory is ambiguous for the provided ZIP, city, and state.';
    END IF;

    -- Fall back to an exact ZIP + state match only if it is unique.
    IF p_territory_id IS NULL THEN
        SELECT COUNT(*)
        INTO v_match_count
        FROM `territory` t
        WHERE t.`state` = v_state_code
          AND t.`zip_code` = v_zip5;

        IF v_match_count = 1 THEN
            SELECT MAX(t.`territory_id`)
            INTO p_territory_id
            FROM `territory` t
            WHERE t.`state` = v_state_code
              AND t.`zip_code` = v_zip5;
        END IF;
    END IF;

    -- Fall back to an exact city + state match only if it is unique.
    IF p_territory_id IS NULL THEN
        SELECT COUNT(*)
        INTO v_match_count
        FROM `territory` t
        WHERE t.`state` = v_state_code
          AND UPPER(TRIM(t.`city`)) = v_city;

        IF v_match_count = 1 THEN
            SELECT MAX(t.`territory_id`)
            INTO p_territory_id
            FROM `territory` t
            WHERE t.`state` = v_state_code
              AND UPPER(TRIM(t.`city`)) = v_city;
        END IF;
    END IF;

    IF p_territory_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to resolve a unique recipient territory.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_resolve_sender_territory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_resolve_sender_territory`(
    IN p_package_flow_type_id INT,
    IN p_sender_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    OUT p_sender_territory_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_flow_type_name VARCHAR(30);

    SET p_sender_territory_id = NULL;

    IF p_package_flow_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package flow type ID is required.';
    END IF;

    SELECT pft.`package_flow_type_name`
    INTO v_flow_type_name
    FROM `package_flow_type` pft
    WHERE pft.`package_flow_type_id` = p_package_flow_type_id
      AND pft.`is_active` = 1;

    IF v_flow_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid or inactive package flow type ID.';
    END IF;

    IF v_flow_type_name = 'B2C' THEN
        IF p_sender_business_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'B2C packages require a sender business ID.';
        END IF;

        IF p_sender_customer_id IS NOT NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'B2C packages cannot include a sender customer ID.';
        END IF;

        CALL `pkg_init_resolve_business_territory`(
            p_sender_business_id,
            p_sender_territory_id
        );
    ELSEIF v_flow_type_name = 'P2P' THEN
        IF p_sender_customer_id IS NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'P2P packages require a sender customer ID.';
        END IF;

        IF p_sender_business_id IS NOT NULL THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'P2P packages cannot include a sender business ID.';
        END IF;

        CALL `pkg_init_resolve_customer_territory`(
            p_sender_customer_id,
            p_sender_territory_id
        );
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unsupported package flow type for sender territory resolution.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_ValidateB2CPackageInputs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_ValidateB2CPackageInputs`(

    IN p_recipient_customer_id BINARY(16),
    IN p_sender_business_id BINARY(16),
    IN p_service_type_id INT,
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    IN p_received_date DATETIME,
    IN p_expected_delivery_date DATETIME
)
    SQL SECURITY INVOKER
BEGIN
    IF p_recipient_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient customer ID is required for B2C package creation.';
    END IF;

    IF p_sender_business_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender business ID is required for B2C package creation.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer` c
        WHERE c.`customer_id` = p_recipient_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient customer does not exist.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `business` b
        WHERE b.`business_id` = p_sender_business_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender business does not exist.';
    END IF;

    IF p_service_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `service_type` st
        WHERE st.`service_type_id` = p_service_type_id
          AND st.`is_active` = 1
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type is invalid or inactive.';
    END IF;

    IF p_weight_oz IS NULL OR p_weight_oz <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package weight_oz must be greater than 0.';
    END IF;

    IF p_length_in IS NULL OR p_length_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package length_in must be greater than 0.';
    END IF;

    IF p_width_in IS NULL OR p_width_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package width_in must be greater than 0.';
    END IF;

    IF p_height_in IS NULL OR p_height_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package height_in must be greater than 0.';
    END IF;

    IF p_received_date IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Received timestamp is required.';
    END IF;

    IF p_expected_delivery_date IS NOT NULL
       AND p_expected_delivery_date < p_received_date THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Expected delivery timestamp must be greater than or equal to received timestamp.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_init_ValidateP2PPackageInputs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_init_ValidateP2PPackageInputs`(

    IN p_sender_customer_id BINARY(16),
    IN p_recipient_customer_id BINARY(16),
    IN p_service_type_id INT,
    IN p_weight_oz DECIMAL(8,2),
    IN p_length_in DECIMAL(8,2),
    IN p_width_in DECIMAL(8,2),
    IN p_height_in DECIMAL(8,2),
    IN p_received_date DATETIME,
    IN p_expected_delivery_date DATETIME
)
    SQL SECURITY INVOKER
BEGIN
    IF p_sender_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender customer ID is required for P2P package creation.';
    END IF;

    IF p_recipient_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient customer ID is required for P2P package creation.';
    END IF;

    IF p_sender_customer_id = p_recipient_customer_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender customer and recipient customer cannot be the same for a P2P package.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer` c
        WHERE c.`customer_id` = p_sender_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Sender customer does not exist.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `customer` c
        WHERE c.`customer_id` = p_recipient_customer_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Recipient customer does not exist.';
    END IF;

    IF p_service_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type ID is required.';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM `service_type` st
        WHERE st.`service_type_id` = p_service_type_id
          AND st.`is_active` = 1
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Service type is invalid or inactive.';
    END IF;

    IF p_weight_oz IS NULL OR p_weight_oz <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package weight_oz must be greater than 0.';
    END IF;

    IF p_length_in IS NULL OR p_length_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package length_in must be greater than 0.';
    END IF;

    IF p_width_in IS NULL OR p_width_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package width_in must be greater than 0.';
    END IF;

    IF p_height_in IS NULL OR p_height_in <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package height_in must be greater than 0.';
    END IF;

    IF p_received_date IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Received timestamp is required.';
    END IF;

    IF p_expected_delivery_date IS NOT NULL
       AND p_expected_delivery_date < p_received_date THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Expected delivery timestamp must be greater than or equal to received timestamp.';
    END IF;

    /*
    Optional P2P minimum-distance rule intentionally not enforced here.
    The current package-initiation layer uses existing schema geography only for
    safe distance estimation in shippingdetails. If a stricter P2P separation
    rule is desired later, it can be added after business approval.
    */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_ArriveAtFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_ArriveAtFacility`(
    IN p_package_id BINARY(16),
    IN p_from_facility_id INT,
    IN p_to_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    IF p_from_facility_id IS NULL OR p_to_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_from_facility_id and p_to_facility_id are required.';
    END IF;

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package does not have an open facility leg to arrive from.';
    END IF;

    IF v_latest_event_type_name <> 'Sent To Facility' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Latest movement must be Sent To Facility before arrival can be recorded.';
    END IF;

    IF p_from_facility_id <> v_open_from_facility_id OR p_to_facility_id <> v_open_to_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Arrived At Facility must continue from the currently open Sent To Facility leg.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Arrived At Facility',
        p_to_facility_id,
        p_from_facility_id,
        p_to_facility_id,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_AssertPackageCanMove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_AssertPackageCanMove`(
    IN p_package_id BINARY(16)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_is_final_status TINYINT DEFAULT 0;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    SELECT
        COUNT(*),
        COALESCE(MAX(ps.`is_final_status`), 0)
    INTO
        v_package_count,
        v_is_final_status
    FROM `package` p
    JOIN `package_status` ps
        ON ps.`package_status_id` = p.`package_status_id`
    WHERE p.`package_id` = p_package_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id does not reference an existing package.';
    END IF;

    IF v_is_final_status = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package already has a final status and cannot receive additional movements.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_AssertServiceType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_AssertServiceType`(
    IN p_package_id BINARY(16),
    IN p_required_service_type_name VARCHAR(30)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_service_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_is_active TINYINT DEFAULT 0;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    IF p_required_service_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_required_service_type_name is required.';
    END IF;

    SELECT COUNT(*)
      INTO v_package_count
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id does not reference an existing package.';
    END IF;

    SELECT
        MAX(st.`service_type_name`),
        COALESCE(MAX(st.`is_active`), 0)
    INTO
        v_service_type_name,
        v_is_active
    FROM `package` p
    LEFT JOIN `service_type` st
        ON st.`service_type_id` = p.`service_type_id`
    WHERE p.`package_id` = p_package_id;

    IF v_is_active <> 1 OR v_service_type_name <> p_required_service_type_name THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package service type is not valid for this movement procedure.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_CancelPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_CancelPackage`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_cancel_reason VARCHAR(255),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_cancel_note VARCHAR(500) DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before cancellation can be recorded.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    SET v_cancel_note = CASE
        WHEN p_cancel_reason IS NULL OR TRIM(p_cancel_reason) = '' THEN 'Cancelled'
        WHEN UPPER(LEFT(TRIM(p_cancel_reason), 10)) = 'CANCELLED:' THEN TRIM(p_cancel_reason)
        ELSE CONCAT('Cancelled: ', TRIM(p_cancel_reason))
    END;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Cancelled',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        v_cancel_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_CompleteDelivery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_CompleteDelivery`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'Delivery');

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_latest_event_type_name <> 'Out For Delivery' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Latest movement must be Out For Delivery before delivery can be completed.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Delivered',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );

    UPDATE `shippingdetails`
    SET `delivered_date` = p_event_timestamp,
        `updated_at` = CURRENT_TIMESTAMP
    WHERE `package_id` = p_package_id;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_CompletePickup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_CompletePickup`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'Pickup');

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_latest_event_type_name <> 'Ready For Pickup' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Latest movement must be Ready For Pickup before pickup can be completed.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Picked Up By Customer',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );

    UPDATE `shippingdetails`
    SET `delivered_date` = p_event_timestamp,
        `updated_at` = CURRENT_TIMESTAMP
    WHERE `package_id` = p_package_id;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_CompleteSmartLockerPickup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_CompleteSmartLockerPickup`(
    IN p_package_id BINARY(16),
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_locker_assignment_id INT,
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_assignment_count INT DEFAULT 0;
    DECLARE v_locker_facility_id INT DEFAULT NULL;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'SmartLocker');

    SELECT
        COUNT(*),
        MAX(la.`locker_assignment_id`),
        MAX(ll.`facility_id`)
    INTO
        v_assignment_count,
        p_locker_assignment_id,
        v_locker_facility_id
    FROM `package_to_locker` ptl
    JOIN `lockerassignment` la
        ON la.`locker_assignment_id` = ptl.`locker_assignment_id`
    JOIN `smartlocker` sl
        ON sl.`locker_id` = la.`locker_id`
    JOIN `lockerlocations` ll
        ON ll.`locker_location_id` = sl.`locker_location_id`
    WHERE ptl.`package_id` = p_package_id
      AND la.`retrieved_at` IS NULL;

    IF v_assignment_count = 0 OR p_locker_assignment_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package does not have an active SmartLocker assignment.';
    END IF;

    IF v_locker_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active SmartLocker assignment does not resolve to a facility.';
    END IF;

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_latest_event_type_name <> 'Placed In SmartLocker' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Latest movement must be Placed In SmartLocker before SmartLocker pickup can be completed.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Retrieved From SmartLocker',
        v_locker_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );

    UPDATE `lockerassignment`
    SET `retrieved_at` = p_event_timestamp
    WHERE `locker_assignment_id` = p_locker_assignment_id;

    UPDATE `shippingdetails`
    SET `delivered_date` = p_event_timestamp,
        `updated_at` = CURRENT_TIMESTAMP
    WHERE `package_id` = p_package_id;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_GetCurrentFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_GetCurrentFacility`(
    IN p_package_id BINARY(16),
    OUT p_current_facility_id INT,
    OUT p_latest_movement_id INT,
    OUT p_latest_event_type_name VARCHAR(80),
    OUT p_latest_status_name VARCHAR(30),
    OUT p_latest_event_timestamp DATETIME,
    OUT p_is_in_transit TINYINT,
    OUT p_open_from_facility_id INT,
    OUT p_open_to_facility_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_movement_count INT DEFAULT 0;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    SELECT COUNT(*)
      INTO v_package_count
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id does not reference an existing package.';
    END IF;

    SELECT COUNT(*)
      INTO v_movement_count
    FROM `package_movement` pm
    WHERE pm.`package_id` = p_package_id;

    IF v_movement_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package has no package_movement history.';
    END IF;

    SELECT
        pm.`facility_id`,
        pm.`package_movement_id`,
        met.`event_type_name`,
        ps.`status_name`,
        pm.`event_timestamp`,
        pm.`from_facility_id`,
        pm.`to_facility_id`
    INTO
        p_current_facility_id,
        p_latest_movement_id,
        v_latest_event_type_name,
        p_latest_status_name,
        p_latest_event_timestamp,
        p_open_from_facility_id,
        p_open_to_facility_id
    FROM `package_movement` pm
    JOIN `package_movement_event_type` met
        ON met.`package_movement_event_type_id` = pm.`package_movement_event_type_id`
    JOIN `package_status` ps
        ON ps.`package_status_id` = pm.`package_status_id`
    WHERE pm.`package_id` = p_package_id
    ORDER BY pm.`event_timestamp` DESC, pm.`package_movement_id` DESC
    LIMIT 1;

    SET p_latest_event_type_name = v_latest_event_type_name;

    IF v_latest_event_type_name = 'Sent To Facility' THEN
        SET p_is_in_transit = 1;
    ELSE
        SET p_is_in_transit = 0;
        SET p_open_from_facility_id = NULL;
        SET p_open_to_facility_id = NULL;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_MarkReadyForPickup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_MarkReadyForPickup`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_route_plan_count INT DEFAULT 0;
    DECLARE v_planned_destination_facility_id INT DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'Pickup');

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before it can be marked ready for pickup.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    SELECT
        COUNT(*),
        MAX(prp.`planned_destination_facility_id`)
    INTO
        v_route_plan_count,
        v_planned_destination_facility_id
    FROM `package_route_plan` prp
    WHERE prp.`package_id` = p_package_id;

    IF v_route_plan_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package route plan is required before pickup can be marked ready.';
    END IF;

    IF v_planned_destination_facility_id <> p_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match package_route_plan.planned_destination_facility_id.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Ready For Pickup',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_PlaceInSmartLocker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_PlaceInSmartLocker`(
    IN p_package_id BINARY(16),
    IN p_locker_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_expires_at DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_locker_assignment_id INT,
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_locker_count INT DEFAULT 0;
    DECLARE v_locker_status VARCHAR(20) DEFAULT NULL;
    DECLARE v_locker_location_id INT DEFAULT NULL;
    DECLARE v_locker_facility_id INT DEFAULT NULL;
    DECLARE v_route_plan_count INT DEFAULT 0;
    DECLARE v_planned_destination_facility_id INT DEFAULT NULL;
    DECLARE v_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_customer_count INT DEFAULT 0;
    DECLARE v_assigned_at DATETIME DEFAULT NULL;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    IF p_locker_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_locker_id is required.';
    END IF;

    IF p_event_timestamp IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_event_timestamp is required.';
    END IF;

    START TRANSACTION;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'SmartLocker');

    SELECT
        COUNT(*),
        MAX(sl.`locker_status`),
        MAX(sl.`locker_location_id`),
        MAX(ll.`facility_id`)
    INTO
        v_locker_count,
        v_locker_status,
        v_locker_location_id,
        v_locker_facility_id
    FROM `smartlocker` sl
    LEFT JOIN `lockerlocations` ll
        ON ll.`locker_location_id` = sl.`locker_location_id`
    WHERE sl.`locker_id` = p_locker_id;

    IF v_locker_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_locker_id does not reference an existing smartlocker.';
    END IF;

    IF v_locker_status <> 'Available' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'SmartLocker must be Available before package placement can be recorded.';
    END IF;

    IF v_locker_location_id IS NULL OR v_locker_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'SmartLocker location must resolve to a facility before placement can be recorded.';
    END IF;

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before it can be placed in a SmartLocker.';
    END IF;

    IF v_current_facility_id <> v_locker_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package current facility must match the SmartLocker facility.';
    END IF;

    SELECT
        COUNT(*),
        MAX(prp.`planned_destination_facility_id`)
    INTO
        v_route_plan_count,
        v_planned_destination_facility_id
    FROM `package_route_plan` prp
    WHERE prp.`package_id` = p_package_id;

    IF v_route_plan_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package route plan is required before SmartLocker placement can be recorded.';
    END IF;

    IF v_planned_destination_facility_id <> v_locker_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'SmartLocker facility must match package_route_plan.planned_destination_facility_id.';
    END IF;

    SELECT
        COUNT(*),
        MAX(p.`recipient_customer_id`)
    INTO
        v_customer_count,
        v_customer_id
    FROM `package` p
    WHERE p.`package_id` = p_package_id;

    IF v_customer_count = 0 OR v_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package recipient_customer_id could not be resolved.';
    END IF;

    SET v_assigned_at = p_event_timestamp;

    INSERT INTO `lockerassignment` (
        `locker_id`,
        `assigned_at`,
        `expires_at`,
        `retrieved_at`,
        `customer_id`
    )
    VALUES (
        p_locker_id,
        v_assigned_at,
        p_expires_at,
        NULL,
        v_customer_id
    );

    SET p_locker_assignment_id = LAST_INSERT_ID();

    INSERT INTO `package_to_locker` (
        `locker_assignment_id`,
        `package_id`,
        `assigned_at`,
        `customer_id`
    )
    VALUES (
        p_locker_assignment_id,
        p_package_id,
        v_assigned_at,
        v_customer_id
    );

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Placed In SmartLocker',
        v_locker_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_RecordPackageMovementCore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_RecordPackageMovementCore`(
    IN p_package_id BINARY(16),
    IN p_event_type_name VARCHAR(80),
    IN p_facility_id INT,
    IN p_from_facility_id INT,
    IN p_to_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_event_type_count INT DEFAULT 0;
    DECLARE v_package_movement_event_type_id INT DEFAULT NULL;
    DECLARE v_default_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_package_status_count INT DEFAULT 0;
    DECLARE v_package_status_id INT DEFAULT NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    IF p_event_type_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_event_type_name is required.';
    END IF;

    IF p_event_timestamp IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_event_timestamp is required.';
    END IF;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    SELECT
        COUNT(*),
        MAX(met.`package_movement_event_type_id`),
        MAX(met.`default_package_status_name`)
    INTO
        v_event_type_count,
        v_package_movement_event_type_id,
        v_default_status_name
    FROM `package_movement_event_type` met
    WHERE met.`event_type_name` = p_event_type_name
      AND met.`is_active` = 1;

    IF v_event_type_count = 0 OR v_package_movement_event_type_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active package movement event type could not be resolved.';
    END IF;

    IF v_default_status_name IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'The event type is missing a default package status mapping.';
    END IF;

    SELECT
        COUNT(*),
        MAX(ps.`package_status_id`)
    INTO
        v_package_status_count,
        v_package_status_id
    FROM `package_status` ps
    WHERE ps.`status_name` = v_default_status_name
      AND ps.`is_active` = 1;

    IF v_package_status_count = 0 OR v_package_status_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Active package status for the requested event could not be resolved.';
    END IF;

    INSERT INTO `package_movement` (
        `package_id`,
        `package_movement_event_type_id`,
        `package_status_id`,
        `facility_id`,
        `from_facility_id`,
        `to_facility_id`,
        `processed_by_employee_id`,
        `event_timestamp`,
        `movement_note`
    )
    VALUES (
        p_package_id,
        v_package_movement_event_type_id,
        v_package_status_id,
        p_facility_id,
        p_from_facility_id,
        p_to_facility_id,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note
    );

    SET p_package_movement_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_ReleaseForDelivery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_ReleaseForDelivery`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_route_plan_count INT DEFAULT 0;
    DECLARE v_planned_destination_facility_id INT DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);
    CALL `pkg_move_AssertServiceType`(p_package_id, 'Delivery');

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before it can be released for delivery.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    SELECT
        COUNT(*),
        MAX(prp.`planned_destination_facility_id`)
    INTO
        v_route_plan_count,
        v_planned_destination_facility_id
    FROM `package_route_plan` prp
    WHERE prp.`package_id` = p_package_id;

    IF v_route_plan_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package route plan is required before release for delivery.';
    END IF;

    IF v_planned_destination_facility_id <> p_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match package_route_plan.planned_destination_facility_id.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Out For Delivery',
        p_facility_id,
        p_facility_id,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_ReturnPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_ReturnPackage`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_return_reason VARCHAR(255),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;
    DECLARE v_return_note VARCHAR(500) DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before return can be recorded.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    SET v_return_note = CASE
        WHEN p_return_reason IS NULL OR TRIM(p_return_reason) = '' THEN 'Returned'
        WHEN UPPER(LEFT(TRIM(p_return_reason), 9)) = 'RETURNED:' THEN TRIM(p_return_reason)
        ELSE CONCAT('Returned: ', TRIM(p_return_reason))
    END;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Returned',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        v_return_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_SendToFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_SendToFacility`(
    IN p_package_id BINARY(16),
    IN p_from_facility_id INT,
    IN p_to_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    IF p_from_facility_id IS NULL OR p_to_facility_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_from_facility_id and p_to_facility_id are required.';
    END IF;

    IF p_from_facility_id = p_to_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_from_facility_id and p_to_facility_id must be different.';
    END IF;

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package already has an open facility leg.';
    END IF;

    IF v_current_facility_id <> p_from_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_from_facility_id must match the package current facility.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Sent To Facility',
        p_from_facility_id,
        p_from_facility_id,
        p_to_facility_id,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_move_SortAtFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_move_SortAtFacility`(
    IN p_package_id BINARY(16),
    IN p_facility_id INT,
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_latest_movement_id INT DEFAULT NULL;
    DECLARE v_latest_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_latest_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_latest_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_is_in_transit TINYINT DEFAULT 0;
    DECLARE v_open_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_to_facility_id INT DEFAULT NULL;

    CALL `pkg_move_AssertPackageCanMove`(p_package_id);

    CALL `pkg_move_GetCurrentFacility`(
        p_package_id,
        v_current_facility_id,
        v_latest_movement_id,
        v_latest_event_type_name,
        v_latest_status_name,
        v_latest_event_timestamp,
        v_is_in_transit,
        v_open_from_facility_id,
        v_open_to_facility_id
    );

    IF v_is_in_transit = 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package must arrive at a facility before it can be sorted.';
    END IF;

    IF p_facility_id IS NULL OR p_facility_id <> v_current_facility_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_facility_id must match the package current facility.';
    END IF;

    CALL `pkg_move_RecordPackageMovementCore`(
        p_package_id,
        'Sorted At Facility',
        p_facility_id,
        NULL,
        NULL,
        p_processed_by_employee_id,
        p_event_timestamp,
        p_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_BackfillHybridIncidentRefunds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_BackfillHybridIncidentRefunds`(
    IN p_target_refund_count INT,
    IN p_batch_size INT,
    IN p_dry_run TINYINT(1)
)
proc_main: BEGIN
    DECLARE v_backfill_batch_id BIGINT DEFAULT NULL;
    DECLARE v_batch_uuid CHAR(36) DEFAULT UUID();
    DECLARE v_target_refund_count INT DEFAULT 0;
    DECLARE v_effective_batch_size INT DEFAULT 0;
    DECLARE v_stage_limit INT DEFAULT 0;
    DECLARE v_total_incidents_before BIGINT DEFAULT 0;
    DECLARE v_total_refunds_before BIGINT DEFAULT 0;
    DECLARE v_total_candidates_before BIGINT DEFAULT 0;
    DECLARE v_total_incidents_after BIGINT DEFAULT 0;
    DECLARE v_total_refunds_after BIGINT DEFAULT 0;
    DECLARE v_planned_stage_count INT DEFAULT 0;
    DECLARE v_planned_refund_count INT DEFAULT 0;
    DECLARE v_skipped_count INT DEFAULT 0;
    DECLARE v_failed_count INT DEFAULT 0;
    DECLARE v_applied_refund_count INT DEFAULT 0;
    DECLARE v_stage_id BIGINT DEFAULT NULL;
    DECLARE v_incident_id INT DEFAULT NULL;
    DECLARE v_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_refund_amount DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_refund_reason VARCHAR(50) DEFAULT NULL;
    DECLARE v_generated_refund_id INT DEFAULT NULL;
    DECLARE v_done INT DEFAULT 0;
    DECLARE v_message_text VARCHAR(1000) DEFAULT NULL;
    DECLARE v_sqlstate CHAR(5) DEFAULT '45000';
    DECLARE v_mysql_errno INT DEFAULT 0;

    DECLARE v_ps_delivered_to_address INT DEFAULT NULL;
    DECLARE v_ps_delivered INT DEFAULT NULL;
    DECLARE v_ps_returned INT DEFAULT NULL;
    DECLARE v_ps_cancelled INT DEFAULT NULL;
    DECLARE v_ps_picked_up INT DEFAULT NULL;
    DECLARE v_ps_smartlocker_completed INT DEFAULT NULL;
    DECLARE v_is_open INT DEFAULT NULL;
    DECLARE v_is_investigating INT DEFAULT NULL;
    DECLARE v_is_resolved INT DEFAULT NULL;
    DECLARE v_is_closed INT DEFAULT NULL;
    DECLARE v_sev_high INT DEFAULT NULL;
    DECLARE v_sev_critical INT DEFAULT NULL;
    DECLARE v_it_lost INT DEFAULT NULL;
    DECLARE v_it_damaged INT DEFAULT NULL;
    DECLARE v_it_delayed INT DEFAULT NULL;
    DECLARE v_it_customer_complaint INT DEFAULT NULL;
    DECLARE v_it_tracking_error INT DEFAULT NULL;
    DECLARE v_it_facility_issue INT DEFAULT NULL;
    DECLARE v_it_other INT DEFAULT NULL;
    DECLARE v_it_cancelled INT DEFAULT NULL;
    DECLARE v_it_returned INT DEFAULT NULL;

    DECLARE refund_cursor CURSOR FOR
        SELECT
            s.`stage_id`,
            s.`incident_id`,
            s.`customer_id`,
            s.`refund_amount`,
            s.`selected_refund_reason`
        FROM `refund_hybrid_backfill_stage` s
        WHERE s.`backfill_batch_id` = v_backfill_batch_id
          AND s.`should_create_refund` = 1
          AND s.`stage_status` IN ('INCIDENT_UPDATED', 'PACKAGE_FINALIZED', 'PLANNED')
        ORDER BY s.`stage_sequence`, s.`stage_id`;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_sqlstate = RETURNED_SQLSTATE,
            v_mysql_errno = MYSQL_ERRNO,
            v_message_text = MESSAGE_TEXT;

        IF v_backfill_batch_id IS NOT NULL THEN
            UPDATE `refund_hybrid_backfill_batch`
            SET `batch_status` = 'FAILED',
                `failed_count` = (
                    SELECT COUNT(*)
                    FROM `refund_hybrid_backfill_stage` s
                    WHERE s.`backfill_batch_id` = v_backfill_batch_id
                      AND s.`stage_status` = 'FAILED'
                ),
                `completed_at` = CURRENT_TIMESTAMP,
                `summary_message` = LEFT(
                    CONCAT(
                        'Hybrid refund backfill failed. SQLSTATE=',
                        COALESCE(v_sqlstate, 'UNKNOWN'),
                        ', errno=',
                        COALESCE(v_mysql_errno, 0),
                        ', message=',
                        COALESCE(v_message_text, 'Unknown SQL error.')
                    ),
                    1000
                )
            WHERE `backfill_batch_id` = v_backfill_batch_id;
        END IF;

        RESIGNAL;
    END;

    SET v_target_refund_count = GREATEST(COALESCE(p_target_refund_count, 0), 1);
    SET v_effective_batch_size = GREATEST(COALESCE(p_batch_size, 0), 1);
    SET v_stage_limit = LEAST(v_target_refund_count, v_effective_batch_size);

    SELECT COUNT(*) INTO v_total_incidents_before
    FROM `incident`;

    SELECT COUNT(*) INTO v_total_refunds_before
    FROM `refunds`;

    SELECT COUNT(*)
    INTO v_total_candidates_before
    FROM `incident` i
    JOIN `package` p
        ON p.`package_id` = i.`package_id`
    JOIN `shipping_cost` sc
        ON sc.`package_id` = p.`package_id`
    LEFT JOIN `refunds` r
        ON r.`package_id` = p.`package_id`
    WHERE r.`refund_id` IS NULL
      AND i.`package_id` IS NOT NULL
      AND i.`package_movement_id` IS NOT NULL
      AND sc.`actual_shipping_charge` > 0
      AND NOT EXISTS (
            SELECT 1
            FROM `refund_hybrid_backfill_stage` hs2
            JOIN `refund_hybrid_backfill_batch` hb2
                ON hb2.`backfill_batch_id` = hs2.`backfill_batch_id`
            WHERE hs2.`incident_id` = i.`incident_id`
              AND hb2.`batch_status` IN ('COMPLETED', 'COMPLETED_WITH_ERRORS')
      );

    INSERT INTO `refund_hybrid_backfill_batch` (
        `batch_uuid`,
        `requested_refund_count`,
        `requested_batch_size`,
        `dry_run_flag`,
        `batch_status`,
        `current_total_incidents_before`,
        `current_total_refunds_before`,
        `current_total_candidates_before`,
        `started_at`,
        `summary_message`
    ) VALUES (
        v_batch_uuid,
        v_target_refund_count,
        v_effective_batch_size,
        CASE WHEN COALESCE(p_dry_run, 1) <> 0 THEN 1 ELSE 0 END,
        'PLANNING',
        v_total_incidents_before,
        v_total_refunds_before,
        v_total_candidates_before,
        CURRENT_TIMESTAMP,
        'Hybrid refund backfill batch created.'
    );

    SET v_backfill_batch_id = LAST_INSERT_ID();

    SELECT MAX(CASE WHEN `status_name` = 'Delivered To Address' THEN `package_status_id` END),
           MAX(CASE WHEN `status_name` = 'Delivered' THEN `package_status_id` END),
           MAX(CASE WHEN `status_name` = 'Returned' THEN `package_status_id` END),
           MAX(CASE WHEN `status_name` = 'Cancelled' THEN `package_status_id` END),
           MAX(CASE WHEN `status_name` = 'Picked Up By Customer' THEN `package_status_id` END),
           MAX(CASE WHEN `status_name` = 'SmartLocker Pickup Completed' THEN `package_status_id` END)
    INTO v_ps_delivered_to_address,
         v_ps_delivered,
         v_ps_returned,
         v_ps_cancelled,
         v_ps_picked_up,
         v_ps_smartlocker_completed
    FROM `package_status`;

    SELECT MAX(CASE WHEN `status_name` = 'Open' THEN `incident_status_id` END),
           MAX(CASE WHEN `status_name` = 'Investigating' THEN `incident_status_id` END),
           MAX(CASE WHEN `status_name` = 'Resolved' THEN `incident_status_id` END),
           MAX(CASE WHEN `status_name` = 'Closed' THEN `incident_status_id` END)
    INTO v_is_open,
         v_is_investigating,
         v_is_resolved,
         v_is_closed
    FROM `incident_status`;

    SELECT MAX(CASE WHEN `severity_name` = 'High' THEN `incident_severity_id` END),
           MAX(CASE WHEN `severity_name` = 'Critical' THEN `incident_severity_id` END)
    INTO v_sev_high,
         v_sev_critical
    FROM `incident_severity`;

    SELECT MAX(CASE WHEN `type_name` = 'Lost Package' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Damaged Package' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Delayed Delivery' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Customer Complaint' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Tracking Error' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Facility Issue' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Other' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Cancelled Package' THEN `incident_type_id` END),
           MAX(CASE WHEN `type_name` = 'Returned Package' THEN `incident_type_id` END)
    INTO v_it_lost,
         v_it_damaged,
         v_it_delayed,
         v_it_customer_complaint,
         v_it_tracking_error,
         v_it_facility_issue,
         v_it_other,
         v_it_cancelled,
         v_it_returned
    FROM `incident_type`;

    IF v_is_open IS NULL
       OR v_is_investigating IS NULL
       OR v_is_resolved IS NULL
       OR v_is_closed IS NULL
       OR v_sev_high IS NULL
       OR v_sev_critical IS NULL
       OR v_it_lost IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Required incident lookup values are missing. Confirm Open, Investigating, Resolved, Closed, High, Critical, and Lost Package exist.';
    END IF;

    IF v_ps_returned IS NULL
       AND v_ps_cancelled IS NULL
       AND v_ps_delivered_to_address IS NULL
       AND v_ps_delivered IS NULL
       AND v_ps_picked_up IS NULL
       AND v_ps_smartlocker_completed IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No usable final package statuses were found for the hybrid refund backfill.';
    END IF;

    INSERT INTO `refund_hybrid_backfill_stage` (
        `backfill_batch_id`,
        `stage_sequence`,
        `deterministic_seed`,
        `incident_id`,
        `package_id`,
        `package_movement_id`,
        `customer_id`,
        `old_incident_type_id`,
        `old_incident_status_id`,
        `old_incident_severity_id`,
        `old_package_status_id`,
        `old_incident_type_name`,
        `old_incident_status_name`,
        `old_incident_severity_name`,
        `old_package_status_name`,
        `source_actual_shipping_charge`,
        `selected_refund_status`,
        `stage_status`
    )
    SELECT
        v_backfill_batch_id,
        x.`stage_sequence`,
        x.`deterministic_seed`,
        x.`incident_id`,
        x.`package_id`,
        x.`package_movement_id`,
        x.`customer_id`,
        x.`incident_type_id`,
        x.`incident_status_id`,
        x.`incident_severity_id`,
        x.`package_status_id`,
        x.`incident_type_name`,
        x.`incident_status_name`,
        x.`incident_severity_name`,
        x.`package_status_name`,
        x.`actual_shipping_charge`,
        'Pending',
        'PLANNED'
    FROM (
        SELECT
            ROW_NUMBER() OVER (
                ORDER BY CRC32(CONCAT(i.`incident_id`, ':', v_backfill_batch_id)), i.`incident_id`
            ) AS `stage_sequence`,
            CAST(CRC32(CONCAT(i.`incident_id`, ':', v_backfill_batch_id)) AS UNSIGNED) AS `deterministic_seed`,
            i.`incident_id`,
            i.`package_id`,
            i.`package_movement_id`,
            p.`recipient_customer_id` AS `customer_id`,
            i.`incident_type_id`,
            i.`incident_status_id`,
            i.`incident_severity_id`,
            p.`package_status_id`,
            it.`type_name` AS `incident_type_name`,
            ist.`status_name` AS `incident_status_name`,
            isev.`severity_name` AS `incident_severity_name`,
            ps.`status_name` AS `package_status_name`,
            sc.`actual_shipping_charge`
        FROM `incident` i
        JOIN `package` p
            ON p.`package_id` = i.`package_id`
        JOIN `package_status` ps
            ON ps.`package_status_id` = p.`package_status_id`
        JOIN `incident_type` it
            ON it.`incident_type_id` = i.`incident_type_id`
        JOIN `incident_status` ist
            ON ist.`incident_status_id` = i.`incident_status_id`
        JOIN `incident_severity` isev
            ON isev.`incident_severity_id` = i.`incident_severity_id`
        JOIN `shipping_cost` sc
            ON sc.`package_id` = p.`package_id`
        LEFT JOIN `refunds` r
            ON r.`package_id` = p.`package_id`
        WHERE r.`refund_id` IS NULL
          AND i.`package_id` IS NOT NULL
          AND i.`package_movement_id` IS NOT NULL
          AND sc.`actual_shipping_charge` > 0
          AND NOT EXISTS (
                SELECT 1
                FROM `refund_hybrid_backfill_stage` hs2
                JOIN `refund_hybrid_backfill_batch` hb2
                    ON hb2.`backfill_batch_id` = hs2.`backfill_batch_id`
                WHERE hs2.`incident_id` = i.`incident_id`
                  AND hb2.`batch_status` IN ('COMPLETED', 'COMPLETED_WITH_ERRORS')
          )
        ORDER BY CRC32(CONCAT(i.`incident_id`, ':', v_backfill_batch_id)), i.`incident_id`
        LIMIT v_stage_limit
    ) x;

    UPDATE `refund_hybrid_backfill_stage` s
    SET s.`eligibility_path` = CASE
            WHEN s.`old_incident_type_name` = 'Lost Package' THEN 'SEVERE_OPEN_LOST_EXCEPTION'
            WHEN s.`old_incident_type_name` = 'Returned Package'
                 AND v_ps_returned IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Cancelled Package'
                 AND v_ps_cancelled IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Delayed Delivery'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_picked_up, v_ps_smartlocker_completed) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Damaged Package'
                 AND COALESCE(v_ps_returned, v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Customer Complaint'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Facility Issue'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Tracking Error'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            WHEN s.`old_incident_type_name` = 'Other'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned, v_ps_cancelled) IS NOT NULL THEN 'FINAL_PACKAGE_STATUS'
            ELSE 'SKIPPED_NO_SAFE_PATH'
        END,
        s.`new_incident_status_id` = CASE
            WHEN s.`old_incident_type_name` = 'Lost Package'
                THEN CASE WHEN MOD(s.`deterministic_seed`, 2) = 0 THEN v_is_open ELSE v_is_investigating END
            WHEN s.`old_incident_type_name` <> 'Lost Package'
                 AND (
                    (s.`old_incident_type_name` = 'Returned Package' AND v_ps_returned IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Cancelled Package' AND v_ps_cancelled IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Delayed Delivery' AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_picked_up, v_ps_smartlocker_completed) IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Damaged Package' AND COALESCE(v_ps_returned, v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Customer Complaint' AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Facility Issue' AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned) IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Tracking Error' AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL)
                    OR (s.`old_incident_type_name` = 'Other' AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned, v_ps_cancelled) IS NOT NULL)
                 )
                THEN CASE WHEN MOD(s.`deterministic_seed`, 5) = 0 THEN v_is_closed ELSE v_is_resolved END
            ELSE NULL
        END,
        s.`new_incident_severity_id` = CASE
            WHEN s.`old_incident_type_name` = 'Lost Package'
                THEN CASE WHEN MOD(s.`deterministic_seed`, 2) = 0 THEN v_sev_high ELSE v_sev_critical END
            ELSE s.`old_incident_severity_id`
        END,
        s.`new_package_status_id` = CASE
            WHEN s.`old_incident_type_name` = 'Lost Package' THEN NULL
            WHEN s.`old_incident_type_name` = 'Returned Package' THEN v_ps_returned
            WHEN s.`old_incident_type_name` = 'Cancelled Package' THEN v_ps_cancelled
            WHEN s.`old_incident_type_name` = 'Delayed Delivery' THEN COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_picked_up, v_ps_smartlocker_completed)
            WHEN s.`old_incident_type_name` = 'Damaged Package' THEN COALESCE(v_ps_returned, v_ps_delivered_to_address, v_ps_delivered)
            WHEN s.`old_incident_type_name` = 'Customer Complaint' THEN COALESCE(v_ps_delivered_to_address, v_ps_delivered)
            WHEN s.`old_incident_type_name` = 'Facility Issue' THEN COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned)
            WHEN s.`old_incident_type_name` = 'Tracking Error' THEN COALESCE(v_ps_delivered_to_address, v_ps_delivered)
            WHEN s.`old_incident_type_name` = 'Other' THEN
                CASE MOD(s.`deterministic_seed`, 4)
                    WHEN 0 THEN COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned, v_ps_cancelled)
                    WHEN 1 THEN COALESCE(v_ps_returned, v_ps_delivered_to_address, v_ps_delivered, v_ps_cancelled)
                    WHEN 2 THEN COALESCE(v_ps_cancelled, v_ps_delivered_to_address, v_ps_delivered, v_ps_returned)
                    ELSE COALESCE(v_ps_delivered, v_ps_delivered_to_address, v_ps_returned, v_ps_cancelled)
                END
            ELSE NULL
        END,
        s.`selected_refund_reason` = CASE
            WHEN s.`old_incident_type_name` = 'Delayed Delivery' THEN 'Late Delivery'
            WHEN s.`old_incident_type_name` = 'Damaged Package' THEN 'Damaged Package'
            WHEN s.`old_incident_type_name` = 'Lost Package' THEN 'Lost Package'
            WHEN s.`old_incident_type_name` = 'Returned Package' THEN 'Returned Package'
            WHEN s.`old_incident_type_name` = 'Cancelled Package' THEN 'Cancelled Package'
            WHEN s.`old_incident_type_name` IN ('Facility Issue', 'Tracking Error') THEN 'Service Failure'
            WHEN s.`old_incident_type_name` = 'Customer Complaint' THEN 'Goodwill Adjustment'
            ELSE 'Other'
        END,
        s.`refund_amount` = CASE
            WHEN COALESCE(s.`source_actual_shipping_charge`, 0) <= 0 THEN NULL
            ELSE GREATEST(
                0.01,
                LEAST(
                    s.`source_actual_shipping_charge`,
                    ROUND(
                        s.`source_actual_shipping_charge` * CASE
                            WHEN s.`old_incident_type_name` = 'Lost Package' THEN 0.75 + (MOD(s.`deterministic_seed`, 26) / 100)
                            WHEN s.`old_incident_type_name` = 'Damaged Package' THEN 0.40 + (MOD(s.`deterministic_seed`, 61) / 100)
                            WHEN s.`old_incident_type_name` = 'Delayed Delivery' THEN 0.10 + (MOD(s.`deterministic_seed`, 41) / 100)
                            WHEN s.`old_incident_type_name` = 'Tracking Error' THEN 0.05 + (MOD(s.`deterministic_seed`, 21) / 100)
                            WHEN s.`old_incident_type_name` = 'Facility Issue' THEN 0.20 + (MOD(s.`deterministic_seed`, 41) / 100)
                            WHEN s.`old_incident_type_name` = 'Customer Complaint' THEN 0.10 + (MOD(s.`deterministic_seed`, 31) / 100)
                            WHEN s.`old_incident_type_name` = 'Returned Package' THEN 0.20 + (MOD(s.`deterministic_seed`, 41) / 100)
                            WHEN s.`old_incident_type_name` = 'Cancelled Package' THEN 0.40 + (MOD(s.`deterministic_seed`, 61) / 100)
                            ELSE 0.10 + (MOD(s.`deterministic_seed`, 21) / 100)
                        END,
                        2
                    )
                )
            )
        END,
        s.`should_create_refund` = CASE
            WHEN COALESCE(s.`source_actual_shipping_charge`, 0) <= 0 THEN 0
            WHEN s.`old_incident_type_name` = 'Lost Package' THEN 1
            WHEN s.`old_incident_type_name` = 'Returned Package'
                 AND v_ps_returned IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Cancelled Package'
                 AND v_ps_cancelled IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Delayed Delivery'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_picked_up, v_ps_smartlocker_completed) IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Damaged Package'
                 AND COALESCE(v_ps_returned, v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Customer Complaint'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Facility Issue'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned) IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Tracking Error'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered) IS NOT NULL THEN 1
            WHEN s.`old_incident_type_name` = 'Other'
                 AND COALESCE(v_ps_delivered_to_address, v_ps_delivered, v_ps_returned, v_ps_cancelled) IS NOT NULL THEN 1
            ELSE 0
        END
    WHERE s.`backfill_batch_id` = v_backfill_batch_id;

    UPDATE `refund_hybrid_backfill_stage` s
    LEFT JOIN `incident_status` nst
        ON nst.`incident_status_id` = s.`new_incident_status_id`
    LEFT JOIN `incident_severity` nsev
        ON nsev.`incident_severity_id` = s.`new_incident_severity_id`
    LEFT JOIN `package_status` nps
        ON nps.`package_status_id` = s.`new_package_status_id`
    SET s.`new_incident_status_name` = nst.`status_name`,
        s.`new_incident_severity_name` = nsev.`severity_name`,
        s.`new_package_status_name` = nps.`status_name`,
        s.`stage_status` = CASE
            WHEN s.`should_create_refund` = 1 THEN 'PLANNED'
            ELSE 'SKIPPED'
        END,
        s.`failure_reason` = CASE
            WHEN s.`should_create_refund` = 1 THEN NULL
            WHEN COALESCE(s.`source_actual_shipping_charge`, 0) <= 0 THEN 'Missing or non-positive shipping_cost.actual_shipping_charge.'
            WHEN s.`eligibility_path` = 'SKIPPED_NO_SAFE_PATH' THEN 'No safe eligibility path matched the current incident and package status lookups.'
            ELSE 'Row was not marked refundable.'
        END
    WHERE s.`backfill_batch_id` = v_backfill_batch_id;

    SELECT COUNT(*),
           SUM(CASE WHEN `should_create_refund` = 1 THEN 1 ELSE 0 END),
           SUM(CASE WHEN `stage_status` = 'SKIPPED' THEN 1 ELSE 0 END)
    INTO v_planned_stage_count,
         v_planned_refund_count,
         v_skipped_count
    FROM `refund_hybrid_backfill_stage`
    WHERE `backfill_batch_id` = v_backfill_batch_id;

    UPDATE `refund_hybrid_backfill_batch`
    SET `planned_stage_count` = v_planned_stage_count,
        `planned_refund_count` = v_planned_refund_count,
        `skipped_count` = v_skipped_count,
        `batch_status` = CASE
            WHEN COALESCE(p_dry_run, 1) <> 0 THEN 'DRY_RUN_READY'
            ELSE 'APPLYING_CHANGES'
        END,
        `summary_message` = CASE
            WHEN COALESCE(p_dry_run, 1) <> 0 THEN 'Dry run staged metadata only. No incident, package, or refund rows were changed.'
            ELSE 'Hybrid refund backfill staged rows and is applying production updates.'
        END
    WHERE `backfill_batch_id` = v_backfill_batch_id;

    IF COALESCE(p_dry_run, 1) <> 0 THEN
        SELECT v_backfill_batch_id AS `backfill_batch_id`;
        SELECT *
        FROM `refund_hybrid_backfill_batch`
        WHERE `backfill_batch_id` = v_backfill_batch_id;

        SELECT
            `stage_status`,
            COUNT(*) AS `row_count`
        FROM `refund_hybrid_backfill_stage`
        WHERE `backfill_batch_id` = v_backfill_batch_id
        GROUP BY `stage_status`
        ORDER BY `row_count` DESC, `stage_status`;

        SELECT
            `eligibility_path`,
            COUNT(*) AS `row_count`
        FROM `refund_hybrid_backfill_stage`
        WHERE `backfill_batch_id` = v_backfill_batch_id
        GROUP BY `eligibility_path`
        ORDER BY `row_count` DESC, `eligibility_path`;

        LEAVE proc_main;
    END IF;

    UPDATE `incident` i
    JOIN `refund_hybrid_backfill_stage` s
        ON s.`incident_id` = i.`incident_id`
       AND s.`backfill_batch_id` = v_backfill_batch_id
    SET i.`incident_status_id` = COALESCE(s.`new_incident_status_id`, i.`incident_status_id`),
        i.`incident_severity_id` = COALESCE(s.`new_incident_severity_id`, i.`incident_severity_id`),
        i.`resolved_at` = CASE
            WHEN s.`eligibility_path` = 'SEVERE_OPEN_LOST_EXCEPTION' THEN NULL
            WHEN s.`new_incident_status_id` IN (v_is_resolved, v_is_closed) THEN COALESCE(i.`resolved_at`, CURRENT_TIMESTAMP)
            ELSE i.`resolved_at`
        END,
        i.`resolved_by_employee_id` = CASE
            WHEN s.`eligibility_path` = 'SEVERE_OPEN_LOST_EXCEPTION' THEN NULL
            ELSE i.`resolved_by_employee_id`
        END,
        i.`resolution_note` = CASE
            WHEN s.`eligibility_path` = 'SEVERE_OPEN_LOST_EXCEPTION' THEN LEFT(
                CONCAT(
                    COALESCE(NULLIF(i.`resolution_note`, ''), ''),
                    CASE WHEN COALESCE(NULLIF(i.`resolution_note`, ''), '') = '' THEN '' ELSE ' | ' END,
                    'Hybrid refund backfill reopened/kept incident open for severe lost-package refund eligibility.'
                ),
                255
            )
            WHEN s.`eligibility_path` = 'FINAL_PACKAGE_STATUS' THEN LEFT(
                CONCAT(
                    COALESCE(NULLIF(i.`resolution_note`, ''), ''),
                    CASE WHEN COALESCE(NULLIF(i.`resolution_note`, ''), '') = '' THEN '' ELSE ' | ' END,
                    'Hybrid refund backfill aligned the incident with a final package status before requesting a refund.'
                ),
                255
            )
            ELSE i.`resolution_note`
        END,
        i.`updated_at` = CURRENT_TIMESTAMP
    WHERE s.`should_create_refund` = 1;

    UPDATE `refund_hybrid_backfill_stage` s
    SET s.`stage_status` = CASE
            WHEN s.`eligibility_path` = 'FINAL_PACKAGE_STATUS' THEN 'INCIDENT_UPDATED'
            WHEN s.`eligibility_path` = 'SEVERE_OPEN_LOST_EXCEPTION' THEN 'INCIDENT_UPDATED'
            ELSE s.`stage_status`
        END
    WHERE s.`backfill_batch_id` = v_backfill_batch_id
      AND s.`should_create_refund` = 1;

    UPDATE `package` p
    JOIN `refund_hybrid_backfill_stage` s
        ON s.`package_id` = p.`package_id`
       AND s.`backfill_batch_id` = v_backfill_batch_id
    SET p.`package_status_id` = s.`new_package_status_id`,
        p.`updated_at` = CURRENT_TIMESTAMP
    WHERE s.`should_create_refund` = 1
      AND s.`eligibility_path` = 'FINAL_PACKAGE_STATUS'
      AND s.`new_package_status_id` IS NOT NULL
      AND p.`package_status_id` <> s.`new_package_status_id`;

    UPDATE `refund_hybrid_backfill_stage`
    SET `stage_status` = 'PACKAGE_FINALIZED'
    WHERE `backfill_batch_id` = v_backfill_batch_id
      AND `should_create_refund` = 1
      AND `eligibility_path` = 'FINAL_PACKAGE_STATUS';

    OPEN refund_cursor;

    refund_loop: LOOP
        FETCH refund_cursor
        INTO v_stage_id,
             v_incident_id,
             v_customer_id,
             v_refund_amount,
             v_refund_reason;

        IF v_done = 1 THEN
            LEAVE refund_loop;
        END IF;

        SET v_generated_refund_id = NULL;

        BEGIN
            DECLARE v_row_failed TINYINT(1) DEFAULT 0;
            DECLARE v_row_message VARCHAR(1000) DEFAULT NULL;
            DECLARE v_row_sqlstate CHAR(5) DEFAULT '45000';
            DECLARE v_row_errno INT DEFAULT 0;

            DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
            BEGIN
                SET v_row_failed = 1;
                GET DIAGNOSTICS CONDITION 1
                    v_row_sqlstate = RETURNED_SQLSTATE,
                    v_row_errno = MYSQL_ERRNO,
                    v_row_message = MESSAGE_TEXT;
            END;

            CALL `pkg_refund_RequestRefundForIncident`(
                v_incident_id,
                v_customer_id,
                v_refund_amount,
                v_refund_reason,
                CONCAT('Hybrid incident refund backfill batch ', v_backfill_batch_id, '.'),
                v_generated_refund_id
            );

            IF v_row_failed = 1 OR v_generated_refund_id IS NULL THEN
                UPDATE `refund_hybrid_backfill_stage`
                SET `stage_status` = 'FAILED',
                    `failure_reason` = LEFT(
                        CONCAT(
                            'Refund creation failed. SQLSTATE=',
                            COALESCE(v_row_sqlstate, 'UNKNOWN'),
                            ', errno=',
                            COALESCE(v_row_errno, 0),
                            ', message=',
                            COALESCE(v_row_message, 'Unknown SQL error.')
                        ),
                        1000
                    )
                WHERE `stage_id` = v_stage_id;
            ELSE
                UPDATE `refund_hybrid_backfill_stage`
                SET `generated_refund_id` = v_generated_refund_id,
                    `stage_status` = 'COMPLETED',
                    `failure_reason` = NULL
                WHERE `stage_id` = v_stage_id;
            END IF;
        END;
    END LOOP;

    CLOSE refund_cursor;

    SELECT COUNT(*) INTO v_total_incidents_after
    FROM `incident`;

    SELECT COUNT(*) INTO v_total_refunds_after
    FROM `refunds`;

    SELECT
        SUM(CASE WHEN `stage_status` = 'COMPLETED' THEN 1 ELSE 0 END),
        SUM(CASE WHEN `stage_status` = 'FAILED' THEN 1 ELSE 0 END),
        SUM(CASE WHEN `stage_status` = 'SKIPPED' THEN 1 ELSE 0 END)
    INTO v_applied_refund_count,
         v_failed_count,
         v_skipped_count
    FROM `refund_hybrid_backfill_stage`
    WHERE `backfill_batch_id` = v_backfill_batch_id;

    UPDATE `refund_hybrid_backfill_batch`
    SET `applied_refund_count` = COALESCE(v_applied_refund_count, 0),
        `failed_count` = COALESCE(v_failed_count, 0),
        `skipped_count` = COALESCE(v_skipped_count, 0),
        `current_total_incidents_after` = v_total_incidents_after,
        `current_total_refunds_after` = v_total_refunds_after,
        `completed_at` = CURRENT_TIMESTAMP,
        `batch_status` = CASE
            WHEN COALESCE(v_failed_count, 0) > 0 THEN 'COMPLETED_WITH_ERRORS'
            ELSE 'COMPLETED'
        END,
        `summary_message` = LEFT(
            CONCAT(
                'Hybrid refund backfill batch ',
                v_backfill_batch_id,
                ' planned ',
                COALESCE(v_planned_refund_count, 0),
                ' refund candidates, created ',
                COALESCE(v_applied_refund_count, 0),
                ' refunds, skipped ',
                COALESCE(v_skipped_count, 0),
                ', failed ',
                COALESCE(v_failed_count, 0),
                '.'
            ),
            1000
        )
    WHERE `backfill_batch_id` = v_backfill_batch_id;

    SELECT v_backfill_batch_id AS `backfill_batch_id`;

    SELECT *
    FROM `refund_hybrid_backfill_batch`
    WHERE `backfill_batch_id` = v_backfill_batch_id;

    SELECT
        `stage_status`,
        COUNT(*) AS `row_count`
    FROM `refund_hybrid_backfill_stage`
    WHERE `backfill_batch_id` = v_backfill_batch_id
    GROUP BY `stage_status`
    ORDER BY `row_count` DESC, `stage_status`;

    SELECT
        `eligibility_path`,
        COUNT(*) AS `row_count`
    FROM `refund_hybrid_backfill_stage`
    WHERE `backfill_batch_id` = v_backfill_batch_id
    GROUP BY `eligibility_path`
    ORDER BY `row_count` DESC, `eligibility_path`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_CleanupHybridIncidentRefundBackfillMetadata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_CleanupHybridIncidentRefundBackfillMetadata`(
    IN p_cleanup_mode VARCHAR(40),
    IN p_older_than_days INT
)
BEGIN
    DECLARE v_days INT DEFAULT 30;
    DECLARE v_mode VARCHAR(40) DEFAULT UPPER(COALESCE(p_cleanup_mode, 'DRY_RUN_ONLY'));

    SET v_days = CASE
        WHEN COALESCE(p_older_than_days, 0) <= 0 THEN 30
        ELSE p_older_than_days
    END;

    IF v_mode = 'DRY_RUN_ONLY' THEN
        DELETE s
        FROM `refund_hybrid_backfill_stage` s
        JOIN `refund_hybrid_backfill_batch` b
            ON b.`backfill_batch_id` = s.`backfill_batch_id`
        WHERE b.`dry_run_flag` = 1
          AND b.`created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;

        DELETE FROM `refund_hybrid_backfill_batch`
        WHERE `dry_run_flag` = 1
          AND `created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;
    ELSEIF v_mode = 'COMPLETED_ONLY' THEN
        DELETE s
        FROM `refund_hybrid_backfill_stage` s
        JOIN `refund_hybrid_backfill_batch` b
            ON b.`backfill_batch_id` = s.`backfill_batch_id`
        WHERE b.`batch_status` IN ('COMPLETED', 'COMPLETED_WITH_ERRORS')
          AND b.`created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;

        DELETE FROM `refund_hybrid_backfill_batch`
        WHERE `batch_status` IN ('COMPLETED', 'COMPLETED_WITH_ERRORS')
          AND `created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;
    ELSEIF v_mode = 'FAILED_METADATA_ONLY' THEN
        DELETE s
        FROM `refund_hybrid_backfill_stage` s
        JOIN `refund_hybrid_backfill_batch` b
            ON b.`backfill_batch_id` = s.`backfill_batch_id`
        WHERE b.`batch_status` = 'FAILED'
          AND b.`created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;

        DELETE FROM `refund_hybrid_backfill_batch`
        WHERE `batch_status` = 'FAILED'
          AND `created_at` < CURRENT_TIMESTAMP - INTERVAL v_days DAY;
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_cleanup_mode must be DRY_RUN_ONLY, COMPLETED_ONLY, or FAILED_METADATA_ONLY.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_MarkRefundPaid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_MarkRefundPaid`(
    IN `p_refund_id` INT,
    IN `p_payment_note` VARCHAR(255)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_refund_count INT DEFAULT 0;

    IF p_refund_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_refund_id is required.';
    END IF;

    SELECT COUNT(*)
    INTO v_refund_count
    FROM `refunds`
    WHERE `refund_id` = p_refund_id;

    IF v_refund_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refund does not exist.';
    END IF;

    UPDATE `refunds`
    SET `refund_status` = 'Paid',
        `paid_at` = CASE
            WHEN `paid_at` IS NULL THEN CURRENT_TIMESTAMP
            ELSE `paid_at`
        END,
        `refund_note` = CASE
            WHEN p_payment_note IS NULL OR CHAR_LENGTH(TRIM(p_payment_note)) = 0 THEN `refund_note`
            WHEN `refund_note` IS NULL OR CHAR_LENGTH(TRIM(`refund_note`)) = 0 THEN LEFT(TRIM(p_payment_note), 255)
            ELSE LEFT(CONCAT(`refund_note`, ' | ', TRIM(p_payment_note)), 255)
        END
    WHERE `refund_id` = p_refund_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_RequestRefundForIncident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_RequestRefundForIncident`(
    IN `p_incident_id` INT,
    IN `p_customer_id` BINARY(16),
    IN `p_refund_amount` DECIMAL(8,2),
    IN `p_refund_reason` VARCHAR(50),
    IN `p_refund_note` VARCHAR(255),
    OUT `p_refund_id` INT
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_incident_count INT DEFAULT 0;
    DECLARE v_package_id BINARY(16) DEFAULT NULL;
    DECLARE v_package_movement_id INT DEFAULT NULL;
    DECLARE v_effective_customer_id BINARY(16) DEFAULT p_customer_id;
    DECLARE v_movement_exists INT DEFAULT 0;

    IF p_incident_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_incident_id is required.';
    END IF;

    IF p_refund_amount IS NULL OR p_refund_amount <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_refund_amount must be greater than 0.';
    END IF;

    IF p_refund_reason IS NULL OR CHAR_LENGTH(TRIM(p_refund_reason)) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_refund_reason is required.';
    END IF;

    IF TRIM(p_refund_reason) NOT IN (
        'Late Delivery',
        'Damaged Package',
        'Lost Package',
        'Returned Package',
        'Cancelled Package',
        'Service Failure',
        'Goodwill Adjustment',
        'Other'
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_refund_reason must be a supported refund reason.';
    END IF;

    SELECT
        COUNT(*),
        MAX(i.`package_id`),
        MAX(i.`package_movement_id`)
    INTO
        v_incident_count,
        v_package_id,
        v_package_movement_id
    FROM `incident` i
    WHERE i.`incident_id` = p_incident_id;

    IF v_incident_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_incident_id does not reference an existing incident.';
    END IF;

    IF v_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'The incident must have a non-null package_id before requesting a refund.';
    END IF;

    IF v_package_movement_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'The incident must have a non-null package_movement_id before requesting a refund.';
    END IF;

    SELECT COUNT(*)
    INTO v_movement_exists
    FROM `package_movement` pm
    WHERE pm.`package_movement_id` = v_package_movement_id
      AND pm.`package_id` = v_package_id;

    IF v_movement_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'The incident package_movement_id must reference an existing package_movement for the same package.';
    END IF;

    IF v_effective_customer_id IS NULL THEN
        SELECT p.`recipient_customer_id`
        INTO v_effective_customer_id
        FROM `package` p
        WHERE p.`package_id` = v_package_id;
    END IF;

    IF v_effective_customer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Unable to derive customer_id from package.recipient_customer_id.';
    END IF;

    INSERT INTO `refunds` (
        `package_id`,
        `incident_id`,
        `refund_amount`,
        `refund_reason`,
        `refund_date`,
        `refund_status`,
        `customer_id`,
        `refund_note`
    ) VALUES (
        v_package_id,
        p_incident_id,
        p_refund_amount,
        TRIM(p_refund_reason),
        CURRENT_TIMESTAMP,
        'Pending',
        v_effective_customer_id,
        CASE
            WHEN p_refund_note IS NULL OR CHAR_LENGTH(TRIM(p_refund_note)) = 0 THEN NULL
            ELSE LEFT(TRIM(p_refund_note), 255)
        END
    );

    SET p_refund_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_ReviewRefund` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_ReviewRefund`(
    IN `p_refund_id` INT,
    IN `p_new_refund_status` VARCHAR(15),
    IN `p_reviewed_by_employee_id` INT,
    IN `p_review_note` VARCHAR(255)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_refund_count INT DEFAULT 0;
    DECLARE v_reviewer_is_valid INT DEFAULT 0;

    IF p_refund_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_refund_id is required.';
    END IF;

    IF p_new_refund_status NOT IN ('Approved', 'Rejected', 'Cancelled') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_new_refund_status must be Approved, Rejected, or Cancelled.';
    END IF;

    IF p_reviewed_by_employee_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_reviewed_by_employee_id is required.';
    END IF;

    SELECT COUNT(*)
    INTO v_refund_count
    FROM `refunds`
    WHERE `refund_id` = p_refund_id;

    IF v_refund_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refund does not exist.';
    END IF;

    SELECT COUNT(*)
    INTO v_reviewer_is_valid
    FROM `employee` e
    JOIN `departments` d
        ON d.`department_id` = e.`department_id`
    JOIN `facility` f
        ON f.`facility_id` = d.`facility_id`
    JOIN `facility_type` ft
        ON ft.`facility_type_id` = f.`facility_type_id`
    WHERE e.`employee_id` = p_reviewed_by_employee_id
      AND ft.`facility_type_name` = 'Administrative Office';

    IF v_reviewer_is_valid = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Only employees assigned to an Administrative Office facility may review refunds.';
    END IF;

    UPDATE `refunds`
    SET `refund_status` = p_new_refund_status,
        `reviewed_by_employee_id` = p_reviewed_by_employee_id,
        `reviewed_at` = CASE
            WHEN `reviewed_at` IS NULL THEN CURRENT_TIMESTAMP
            ELSE `reviewed_at`
        END,
        `refund_note` = CASE
            WHEN p_review_note IS NULL OR CHAR_LENGTH(TRIM(p_review_note)) = 0 THEN `refund_note`
            WHEN `refund_note` IS NULL OR CHAR_LENGTH(TRIM(`refund_note`)) = 0 THEN LEFT(TRIM(p_review_note), 255)
            ELSE LEFT(CONCAT(`refund_note`, ' | ', TRIM(p_review_note)), 255)
        END
    WHERE `refund_id` = p_refund_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pkg_refund_ValidateHybridIncidentRefundBackfill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `pkg_refund_ValidateHybridIncidentRefundBackfill`(
    IN p_backfill_batch_id BIGINT
)
proc_validate: BEGIN
    DECLARE v_batch_exists INT DEFAULT 0;

    SELECT COUNT(*) INTO v_batch_exists
    FROM `refund_hybrid_backfill_batch`
    WHERE `backfill_batch_id` = p_backfill_batch_id;

    IF v_batch_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_backfill_batch_id does not reference an existing refund_hybrid_backfill_batch row.';
    END IF;

    SELECT
        b.`backfill_batch_id`,
        b.`batch_uuid`,
        b.`batch_status`,
        b.`dry_run_flag`,
        b.`requested_refund_count`,
        b.`requested_batch_size`,
        b.`planned_stage_count`,
        b.`planned_refund_count`,
        b.`applied_refund_count`,
        b.`skipped_count`,
        b.`failed_count`,
        b.`current_total_incidents_before`,
        b.`current_total_incidents_after`,
        b.`current_total_refunds_before`,
        b.`current_total_refunds_after`,
        b.`started_at`,
        b.`completed_at`,
        b.`summary_message`
    FROM `refund_hybrid_backfill_batch` b
    WHERE b.`backfill_batch_id` = p_backfill_batch_id;

    SELECT
        s.`stage_status`,
        COUNT(*) AS `stage_row_count`
    FROM `refund_hybrid_backfill_stage` s
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY s.`stage_status`
    ORDER BY `stage_row_count` DESC, s.`stage_status`;

    SELECT
        s.`eligibility_path`,
        COUNT(*) AS `stage_row_count`
    FROM `refund_hybrid_backfill_stage` s
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY s.`eligibility_path`
    ORDER BY `stage_row_count` DESC, s.`eligibility_path`;

    SELECT
        MAX(b.`planned_refund_count`) AS `planned_refund_count`,
        MAX(b.`applied_refund_count`) AS `applied_refund_count`,
        COUNT(r.`refund_id`) AS `refund_rows_found_for_batch`
    FROM `refund_hybrid_backfill_batch` b
    LEFT JOIN `refund_hybrid_backfill_stage` s
        ON s.`backfill_batch_id` = b.`backfill_batch_id`
    LEFT JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    WHERE b.`backfill_batch_id` = p_backfill_batch_id;

    SELECT
        s.`stage_id`,
        s.`incident_id`,
        HEX(s.`package_id`) AS `package_id_hex`,
        s.`generated_refund_id`,
        r.`refund_status`,
        r.`refund_amount`,
        r.`refund_reason`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    ORDER BY s.`stage_sequence`, s.`stage_id`;

    SELECT
        SUM(CASE WHEN r.`incident_id` IS NULL THEN 1 ELSE 0 END) AS `refunds_with_missing_incident`,
        SUM(CASE WHEN r.`package_id` IS NULL THEN 1 ELSE 0 END) AS `refunds_with_missing_package`,
        SUM(CASE WHEN i.`package_id` IS NOT NULL AND NOT (r.`package_id` <=> i.`package_id`) THEN 1 ELSE 0 END) AS `refunds_with_package_incident_mismatch`,
        SUM(
            CASE
                WHEN r.`refund_id` IS NOT NULL
                     AND NOT (
                        COALESCE(ps.`is_final_status`, 0) = 1
                        OR (
                            it.`type_name` = 'Lost Package'
                            AND COALESCE(ist.`is_closed_status`, 0) = 0
                            AND isev.`severity_name` IN ('High', 'Critical')
                        )
                     )
                THEN 1
                ELSE 0
            END
        ) AS `refunds_failing_trigger_eligibility_check`,
        SUM(CASE WHEN s.`refund_amount` IS NULL THEN 1 ELSE 0 END) AS `staged_rows_with_null_refund_amount`,
        SUM(CASE WHEN COALESCE(s.`refund_amount`, 0) <= 0 THEN 1 ELSE 0 END) AS `staged_rows_with_non_positive_refund_amount`,
        SUM(
            CASE
                WHEN s.`eligibility_path` = 'SEVERE_OPEN_LOST_EXCEPTION'
                     AND COALESCE(ist.`is_closed_status`, 0) = 1
                THEN 1
                ELSE 0
            END
        ) AS `lost_exception_rows_that_are_closed`,
        SUM(
            CASE
                WHEN s.`eligibility_path` = 'FINAL_PACKAGE_STATUS'
                     AND r.`refund_id` IS NOT NULL
                     AND COALESCE(ps.`is_final_status`, 0) <> 1
                THEN 1
                ELSE 0
            END
        ) AS `final_path_rows_without_final_package_status`
    FROM `refund_hybrid_backfill_stage` s
    LEFT JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    LEFT JOIN `incident` i
        ON i.`incident_id` = s.`incident_id`
    LEFT JOIN `incident_type` it
        ON it.`incident_type_id` = i.`incident_type_id`
    LEFT JOIN `incident_status` ist
        ON ist.`incident_status_id` = i.`incident_status_id`
    LEFT JOIN `incident_severity` isev
        ON isev.`incident_severity_id` = i.`incident_severity_id`
    LEFT JOIN `package` p
        ON p.`package_id` = s.`package_id`
    LEFT JOIN `package_status` ps
        ON ps.`package_status_id` = p.`package_status_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id;

    SELECT
        HEX(s.`package_id`) AS `package_id_hex`,
        COUNT(*) AS `refund_count_for_package`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`package_id` = s.`package_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY s.`package_id`
    HAVING COUNT(*) > 1
    ORDER BY `refund_count_for_package` DESC, `package_id_hex`;

    SELECT
        ps.`status_name` AS `final_package_status`,
        COUNT(*) AS `refund_count`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    JOIN `package` p
        ON p.`package_id` = r.`package_id`
    JOIN `package_status` ps
        ON ps.`package_status_id` = p.`package_status_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY ps.`status_name`
    ORDER BY `refund_count` DESC, ps.`status_name`;

    SELECT
        it.`type_name` AS `incident_type`,
        COUNT(*) AS `refund_count`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    JOIN `incident` i
        ON i.`incident_id` = r.`incident_id`
    JOIN `incident_type` it
        ON it.`incident_type_id` = i.`incident_type_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY it.`type_name`
    ORDER BY `refund_count` DESC, it.`type_name`;

    SELECT
        isev.`severity_name`,
        COUNT(*) AS `refund_count`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    JOIN `incident` i
        ON i.`incident_id` = r.`incident_id`
    JOIN `incident_severity` isev
        ON isev.`incident_severity_id` = i.`incident_severity_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY isev.`severity_name`
    ORDER BY `refund_count` DESC, isev.`severity_name`;

    SELECT
        ist.`status_name` AS `incident_status`,
        COUNT(*) AS `refund_count`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    JOIN `incident` i
        ON i.`incident_id` = r.`incident_id`
    JOIN `incident_status` ist
        ON ist.`incident_status_id` = i.`incident_status_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY ist.`status_name`
    ORDER BY `refund_count` DESC, ist.`status_name`;

    SELECT
        r.`refund_status`,
        COUNT(*) AS `refund_count`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id
    GROUP BY r.`refund_status`
    ORDER BY `refund_count` DESC, r.`refund_status`;

    SELECT
        MIN(r.`refund_amount`) AS `min_refund_amount`,
        ROUND(AVG(r.`refund_amount`), 2) AS `avg_refund_amount`,
        MAX(r.`refund_amount`) AS `max_refund_amount`
    FROM `refund_hybrid_backfill_stage` s
    JOIN `refunds` r
        ON r.`refund_id` = s.`generated_refund_id`
    WHERE s.`backfill_batch_id` = p_backfill_batch_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SendToNextRecommendedFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `SendToNextRecommendedFacility`(
    IN p_package_id BINARY(16),
    IN p_processed_by_employee_id INT,
    IN p_event_timestamp DATETIME,
    IN p_movement_note VARCHAR(500),
    OUT p_package_movement_id INT,
    OUT p_from_facility_id INT,
    OUT p_to_facility_id INT,
    OUT p_route_decision_reason VARCHAR(500)
)
    SQL SECURITY INVOKER
BEGIN
    DECLARE v_current_facility_id INT DEFAULT NULL;
    DECLARE v_next_facility_id INT DEFAULT NULL;
    DECLARE v_next_facility_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_is_final_transfer TINYINT DEFAULT 0;
    DECLARE v_effective_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_combined_movement_note VARCHAR(500) DEFAULT NULL;

    IF p_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_package_id is required.';
    END IF;

    IF p_processed_by_employee_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'p_processed_by_employee_id is required.';
    END IF;

    SET v_effective_event_timestamp = COALESCE(p_event_timestamp, CURRENT_TIMESTAMP);

    CALL `DetermineNextFacilityForPackage`(
        p_package_id,
        v_current_facility_id,
        v_next_facility_id,
        v_next_facility_type_name,
        p_route_decision_reason,
        v_is_final_transfer
    );

    SET p_from_facility_id = v_current_facility_id;
    SET p_to_facility_id = v_next_facility_id;

    IF p_movement_note IS NULL OR TRIM(p_movement_note) = '' THEN
        SET v_combined_movement_note = CONCAT(
            '[Recommended Route] ',
            p_route_decision_reason
        );
    ELSE
        SET v_combined_movement_note = CONCAT(
            '[Recommended Route] ',
            TRIM(p_movement_note),
            ' | ',
            p_route_decision_reason
        );
    END IF;

    CALL `pkg_move_SendToFacility`(
        p_package_id,
        v_current_facility_id,
        v_next_facility_id,
        p_processed_by_employee_id,
        v_effective_event_timestamp,
        v_combined_movement_note,
        p_package_movement_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `u_UpdateBusinessPreferredFacility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `u_UpdateBusinessPreferredFacility`()
BEGIN
    UPDATE `business` b
    JOIN (
        SELECT
            ranked.`business_id`,
            ranked.`facility_id`
        FROM (
            SELECT
                candidates.`business_id`,
                candidates.`facility_id`,
                ROW_NUMBER() OVER (
                    PARTITION BY candidates.`business_id`
                    ORDER BY candidates.`distance_meters`, candidates.`facility_id`
                ) AS rn
            FROM (
                SELECT
                    b2.`business_id`,
                    f.`facility_id`,
                    ST_Distance_Sphere(
                        ST_SRID(POINT(bzg.`longitude`, bzg.`latitude`), 4326),
                        ST_SRID(POINT(fzg.`longitude`, fzg.`latitude`), 4326)
                    ) AS `distance_meters`
                FROM `business` b2
                JOIN `territory` bt
                  ON bt.`territory_id` = b2.`territory_id`
                JOIN `zip_geo` bzg
                  ON bzg.`zip_code` = bt.`zip_code`
                JOIN `facility` f
                  ON f.`territory_id` IS NOT NULL
                JOIN `facility_type` ft
                  ON ft.`facility_type_id` = f.`facility_type_id`
                 AND ft.`facility_type_name` = 'Mail Processing'
                 AND ft.`is_active` = 1
                JOIN `territory` ft_territory
                  ON ft_territory.`territory_id` = f.`territory_id`
                JOIN `zip_geo` fzg
                  ON fzg.`zip_code` = ft_territory.`zip_code`
                WHERE b2.`preferred_facility_id` IS NULL
                  AND b2.`territory_id` IS NOT NULL
                  AND bzg.`latitude` IS NOT NULL
                  AND bzg.`longitude` IS NOT NULL
                  AND fzg.`latitude` IS NOT NULL
                  AND fzg.`longitude` IS NOT NULL
            ) candidates
        ) ranked
        WHERE ranked.rn = 1
    ) nearest
      ON nearest.`business_id` = b.`business_id`
    SET b.`preferred_facility_id` = nearest.`facility_id`
    WHERE b.`preferred_facility_id` IS NULL
      AND b.`territory_id` IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `u_UpdatingBusinessTerritoryIDs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `u_UpdatingBusinessTerritoryIDs`()
BEGIN
    -- Assign missing business territories only when the full tracked location matches.
    UPDATE `business` b
    JOIN `territory` t
      ON UPPER(TRIM(b.`state_code`)) = UPPER(TRIM(t.`state`))
     AND UPPER(TRIM(b.`county`))     = UPPER(TRIM(t.`county`))
     AND UPPER(TRIM(b.`city`))       = UPPER(TRIM(t.`city`))
     AND LEFT(TRIM(b.`zip_code`), 5) = TRIM(t.`zip_code`)
    SET b.`territory_id` = t.`territory_id`
    WHERE b.`territory_id` IS NULL;

    -- Return unresolved businesses so missing or untracked locations are visible.
    SELECT
        b.`business_id`,
        b.`business_name`,
        b.`street_address`,
        b.`city`,
        b.`county`,
        b.`state_code`,
        b.`zip_code`,
        b.`territory_id`,
        CASE
            WHEN b.`state_code` IS NULL OR TRIM(b.`state_code`) = '' THEN 'Missing state'
            WHEN b.`county` IS NULL OR TRIM(b.`county`) = '' THEN 'Missing county'
            WHEN b.`city` IS NULL OR TRIM(b.`city`) = '' THEN 'Missing city'
            WHEN b.`zip_code` IS NULL OR TRIM(b.`zip_code`) = '' THEN 'Missing ZIP'
            ELSE 'Location not tracked in territory table'
        END AS `validation_issue`
    FROM `business` b
    LEFT JOIN `territory` t
      ON UPPER(TRIM(b.`state_code`)) = UPPER(TRIM(t.`state`))
     AND UPPER(TRIM(b.`county`))     = UPPER(TRIM(t.`county`))
     AND UPPER(TRIM(b.`city`))       = UPPER(TRIM(t.`city`))
     AND LEFT(TRIM(b.`zip_code`), 5) = TRIM(t.`zip_code`)
    WHERE b.`territory_id` IS NULL
      AND t.`territory_id` IS NULL
    ORDER BY
        `validation_issue`,
        b.`state_code`,
        LEFT(TRIM(b.`zip_code`), 5),
        b.`city`,
        b.`county`,
        b.`business_name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `u_UpdatingCustomerTerritoryIDs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `u_UpdatingCustomerTerritoryIDs`()
    SQL SECURITY INVOKER
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    UPDATE `customer` c
    JOIN `territory` t
      ON t.`state` = UPPER(TRIM(c.`state_code`))
     AND t.`city` = UPPER(TRIM(c.`city`))
     AND t.`county` = TRIM(c.`county`)
     AND t.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
    SET c.`territory_id` = t.`territory_id`,
        c.`updated_at` = CURRENT_TIMESTAMP
    WHERE c.`territory_id` IS NULL
      AND NULLIF(TRIM(c.`zip_code`), '') IS NOT NULL
      AND NULLIF(TRIM(c.`city`), '') IS NOT NULL
      AND NULLIF(TRIM(c.`county`), '') IS NOT NULL
      AND UPPER(TRIM(c.`state_code`)) = 'TX'
      AND CHAR_LENGTH(LEFT(TRIM(c.`zip_code`), 5)) = 5;

    COMMIT;

    SELECT
        HEX(c.`customer_id`) AS customer_id_hex,
        c.`first_name`,
        c.`middle_initial`,
        c.`last_name`,
        c.`street_address`,
        c.`city`,
        c.`county`,
        c.`state_code`,
        c.`zip_code`,
        LEFT(TRIM(c.`zip_code`), 5) AS normalized_zip_code,
        CASE
            WHEN c.`zip_code` IS NULL OR TRIM(c.`zip_code`) = ''
                THEN 'missing ZIP'
            WHEN c.`city` IS NULL OR TRIM(c.`city`) = ''
                THEN 'missing city'
            WHEN c.`state_code` IS NULL OR UPPER(TRIM(c.`state_code`)) <> 'TX'
                THEN 'non-TX state'
            WHEN NOT EXISTS (
                SELECT 1
                FROM `territory` tz
                WHERE tz.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
            )
                THEN 'ZIP not tracked'
            ELSE 'city/county/ZIP combination not tracked'
        END AS validation_reason
    FROM `customer` c
    WHERE c.`territory_id` IS NULL
    ORDER BY
        validation_reason,
        c.`state_code`,
        normalized_zip_code,
        c.`city`,
        c.`county`,
        customer_id_hex;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `v_update_facility_territory_ids` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `v_update_facility_territory_ids`()
BEGIN
    UPDATE facility f
    LEFT JOIN territory exact_match
        ON exact_match.state = UPPER(TRIM(f.state_code))
       AND exact_match.city = UPPER(TRIM(f.city))
       AND exact_match.county = TRIM(f.county)
       AND exact_match.zip_code = LEFT(TRIM(f.zip_code), 5)

    LEFT JOIN (
        SELECT state, city, zip_code, MIN(territory_id) AS territory_id
        FROM territory
        GROUP BY state, city, zip_code
        HAVING COUNT(*) = 1
    ) city_zip_match
        ON city_zip_match.state = UPPER(TRIM(f.state_code))
       AND city_zip_match.city = UPPER(TRIM(f.city))
       AND city_zip_match.zip_code = LEFT(TRIM(f.zip_code), 5)

    LEFT JOIN (
        SELECT state, county, zip_code, MIN(territory_id) AS territory_id
        FROM territory
        GROUP BY state, county, zip_code
        HAVING COUNT(*) = 1
    ) county_zip_match
        ON county_zip_match.state = UPPER(TRIM(f.state_code))
       AND county_zip_match.county = TRIM(f.county)
       AND county_zip_match.zip_code = LEFT(TRIM(f.zip_code), 5)

    SET f.territory_id = COALESCE(
        exact_match.territory_id,
        city_zip_match.territory_id,
        county_zip_match.territory_id
    )
    WHERE REGEXP_LIKE(TRIM(f.zip_code), '^[0-9]{5}')
      AND COALESCE(
            exact_match.territory_id,
            city_zip_match.territory_id,
            county_zip_match.territory_id
          ) IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `v_ValidateCustomerTerritoryID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ryan`@`%` PROCEDURE `v_ValidateCustomerTerritoryID`()
    READS SQL DATA
    SQL SECURITY INVOKER
BEGIN
    SELECT
        HEX(c.`customer_id`) AS customer_id_hex,
        c.`first_name`,
        c.`middle_initial`,
        c.`last_name`,
        c.`street_address`,
        c.`city` AS customer_city,
        c.`county` AS customer_county,
        c.`state_code` AS customer_state_code,
        c.`zip_code` AS customer_zip_code,
        UPPER(TRIM(c.`state_code`)) AS normalized_state_code,
        UPPER(TRIM(c.`city`)) AS normalized_city,
        TRIM(c.`county`) AS normalized_county,
        LEFT(TRIM(c.`zip_code`), 5) AS normalized_zip_code,
        c.`territory_id` AS assigned_territory_id,
        assigned_t.`state` AS assigned_state,
        assigned_t.`city` AS assigned_city,
        assigned_t.`county` AS assigned_county,
        assigned_t.`zip_code` AS assigned_zip_code,
        implied_t.`territory_id` AS implied_territory_id,
        implied_t.`state` AS implied_state,
        implied_t.`city` AS implied_city,
        implied_t.`county` AS implied_county,
        implied_t.`zip_code` AS implied_zip_code,
        CASE
            WHEN assigned_t.`territory_id` IS NULL
                THEN 'assigned territory missing'
            WHEN c.`zip_code` IS NULL OR TRIM(c.`zip_code`) = ''
                THEN 'missing ZIP'
            WHEN c.`city` IS NULL OR TRIM(c.`city`) = ''
                THEN 'missing city'
            WHEN c.`county` IS NULL OR TRIM(c.`county`) = ''
                THEN 'missing county'
            WHEN c.`state_code` IS NULL OR UPPER(TRIM(c.`state_code`)) <> 'TX'
                THEN 'non-TX state'
            WHEN implied_t.`territory_id` IS NULL
                THEN 'derived territory missing'
            ELSE 'territory mismatch'
        END AS validation_reason
    FROM `customer` c
    LEFT JOIN `territory` assigned_t
      ON assigned_t.`territory_id` = c.`territory_id`
    LEFT JOIN `territory` implied_t
      ON implied_t.`state` = UPPER(TRIM(c.`state_code`))
     AND implied_t.`city` = UPPER(TRIM(c.`city`))
     AND implied_t.`county` = TRIM(c.`county`)
     AND implied_t.`zip_code` = LEFT(TRIM(c.`zip_code`), 5)
    WHERE c.`territory_id` IS NOT NULL
      AND (
          assigned_t.`territory_id` IS NULL
          OR implied_t.`territory_id` IS NULL
          OR assigned_t.`territory_id` <> implied_t.`territory_id`
      )
    ORDER BY
        validation_reason,
        c.`state_code`,
        normalized_zip_code,
        c.`city`,
        c.`county`,
        customer_id_hex;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-21 14:46:12
