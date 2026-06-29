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
-- Table structure for table `package_movement`
--

DROP TABLE IF EXISTS `package_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_movement` (
  `package_movement_id` int NOT NULL AUTO_INCREMENT,
  `package_id` binary(16) NOT NULL,
  `package_movement_event_type_id` int NOT NULL,
  `package_status_id` int NOT NULL,
  `facility_id` int DEFAULT NULL,
  `from_facility_id` int DEFAULT NULL,
  `to_facility_id` int DEFAULT NULL,
  `processed_by_employee_id` int DEFAULT NULL,
  `event_timestamp` datetime NOT NULL,
  `movement_note` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`package_movement_id`),
  KEY `idx_package_movement_package_time` (`package_id`,`event_timestamp`),
  KEY `idx_package_movement_facility_time` (`facility_id`,`event_timestamp`),
  KEY `idx_package_movement_from_to` (`from_facility_id`,`to_facility_id`,`event_timestamp`),
  KEY `idx_package_movement_event_type` (`package_movement_event_type_id`),
  KEY `idx_package_movement_status` (`package_status_id`),
  KEY `idx_package_movement_employee` (`processed_by_employee_id`),
  KEY `fk_package_movement_to_facility` (`to_facility_id`),
  KEY `idx_package_movement_lifecycle_enforcement` (`package_id`,`event_timestamp`,`package_movement_id`),
  CONSTRAINT `fk_package_movement_employee` FOREIGN KEY (`processed_by_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_event_type` FOREIGN KEY (`package_movement_event_type_id`) REFERENCES `package_movement_event_type` (`package_movement_event_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_facility` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`facility_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_from_facility` FOREIGN KEY (`from_facility_id`) REFERENCES `facility` (`facility_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_status` FOREIGN KEY (`package_status_id`) REFERENCES `package_status` (`package_status_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_package_movement_to_facility` FOREIGN KEY (`to_facility_id`) REFERENCES `facility` (`facility_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1349333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `pl_beforeInsertPackageMovementValidateBusinessRules` BEFORE INSERT ON `package_movement` FOR EACH ROW BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_package_flow_type_id INT DEFAULT NULL;
    DECLARE v_package_flow_type_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_package_service_type_id INT DEFAULT NULL;
    DECLARE v_package_received_date DATETIME DEFAULT NULL;

    DECLARE v_event_count INT DEFAULT 0;
    DECLARE v_event_type_name VARCHAR(80) DEFAULT NULL;
    DECLARE v_event_is_active TINYINT(1) DEFAULT 0;
    DECLARE v_event_default_package_status_name VARCHAR(30) DEFAULT NULL;

    DECLARE v_status_count INT DEFAULT 0;
    DECLARE v_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_status_is_active TINYINT(1) DEFAULT 0;
    DECLARE v_status_allowed_service_type_id INT DEFAULT NULL;

    DECLARE v_latest_existing_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_existing_final_movement_count INT DEFAULT 0;
    DECLARE v_allowed_flow_event_count INT DEFAULT 0;

    DECLARE v_field_rule_count INT DEFAULT 0;
    DECLARE v_requires_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_requires_from_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_requires_to_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_allows_from_facility_id TINYINT(1) DEFAULT 1;
    DECLARE v_allows_to_facility_id TINYINT(1) DEFAULT 1;
    DECLARE v_facility_id_must_equal_from_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_facility_id_must_equal_to_facility_id TINYINT(1) DEFAULT 0;

    DECLARE v_facility_count INT DEFAULT 0;
    DECLARE v_facility_type_id INT DEFAULT NULL;
    DECLARE v_facility_type_name VARCHAR(80) DEFAULT NULL;

    DECLARE v_staffing_rule_count INT DEFAULT 0;
    DECLARE v_requires_employee TINYINT(1) DEFAULT 0;
    DECLARE v_required_department_type_id INT DEFAULT NULL;

    DECLARE v_employee_count INT DEFAULT 0;
    DECLARE v_employee_facility_id INT DEFAULT NULL;
    DECLARE v_employee_department_type_id INT DEFAULT NULL;

    DECLARE v_existing_movement_count INT DEFAULT 0;
    DECLARE v_previous_facility_id INT DEFAULT NULL;

    DECLARE v_open_leg_movement_id INT DEFAULT NULL;
    DECLARE v_open_leg_event_timestamp DATETIME DEFAULT NULL;
    DECLARE v_open_leg_from_facility_id INT DEFAULT NULL;
    DECLARE v_open_leg_to_facility_id INT DEFAULT NULL;
    DECLARE v_open_leg_closed_count INT DEFAULT 0;
    DECLARE v_has_open_leg TINYINT(1) DEFAULT 0;

    SELECT
        COUNT(*),
        MAX(p.`package_flow_type_id`),
        MAX(pft.`package_flow_type_name`),
        MAX(p.`service_type_id`),
        MAX(p.`received_date`)
    INTO
        v_package_count,
        v_package_flow_type_id,
        v_package_flow_type_name,
        v_package_service_type_id,
        v_package_received_date
    FROM `package` p
    LEFT JOIN `package_flow_type` pft
        ON pft.`package_flow_type_id` = p.`package_flow_type_id`
    WHERE p.`package_id` = NEW.`package_id`;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package does not exist.';
    END IF;

    SELECT
        COUNT(*),
        MAX(met.`event_type_name`),
        MAX(COALESCE(met.`is_active`, 0)),
        MAX(met.`default_package_status_name`)
    INTO
        v_event_count,
        v_event_type_name,
        v_event_is_active,
        v_event_default_package_status_name
    FROM `package_movement_event_type` met
    WHERE met.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`;

    IF v_event_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event type does not exist.';
    END IF;

    IF v_event_is_active <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event type is inactive.';
    END IF;

    SELECT
        COUNT(*),
        MAX(ps.`status_name`),
        MAX(COALESCE(ps.`is_active`, 0)),
        MAX(ps.`allowed_service_type_id`)
    INTO
        v_status_count,
        v_status_name,
        v_status_is_active,
        v_status_allowed_service_type_id
    FROM `package_status` ps
    WHERE ps.`package_status_id` = NEW.`package_status_id`;

    IF v_status_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status does not exist.';
    END IF;

    IF v_status_is_active <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status is inactive.';
    END IF;

    IF NEW.`event_timestamp` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'event_timestamp is required.';
    END IF;

    IF NEW.`event_timestamp` < v_package_received_date THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event_timestamp cannot be earlier than package.received_date.';
    END IF;

    SELECT MAX(pm.`event_timestamp`)
    INTO v_latest_existing_event_timestamp
    FROM `package_movement` pm
    WHERE pm.`package_id` = NEW.`package_id`;

    IF v_latest_existing_event_timestamp IS NOT NULL
       AND NEW.`event_timestamp` < v_latest_existing_event_timestamp THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement cannot be inserted earlier than the latest existing movement.';
    END IF;

    SELECT COUNT(*)
    INTO v_existing_final_movement_count
    FROM `package_movement` pm
    JOIN `package_status` ps
        ON ps.`package_status_id` = pm.`package_status_id`
    WHERE pm.`package_id` = NEW.`package_id`
      AND ps.`is_final_status` = 1;

    IF v_existing_final_movement_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot insert movement after a final package movement already exists.';
    END IF;

    SELECT COUNT(*)
    INTO v_allowed_flow_event_count
    FROM `package_flow_event_rule` pfer
    WHERE pfer.`package_flow_type_id` = v_package_flow_type_id
      AND pfer.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`
      AND pfer.`is_allowed` = 1;

    IF v_allowed_flow_event_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Movement event type is not valid for this package flow type.';
    END IF;

    IF v_status_allowed_service_type_id IS NOT NULL
       AND (
            v_package_service_type_id IS NULL
            OR v_status_allowed_service_type_id <> v_package_service_type_id
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status is not valid for this package service type.';
    END IF;

    IF v_event_default_package_status_name IS NOT NULL
       AND v_event_default_package_status_name <> v_status_name THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement status must match the event type default status.';
    END IF;

    SELECT
        COUNT(*),
        MAX(pmfr.`requires_facility_id`),
        MAX(pmfr.`requires_from_facility_id`),
        MAX(pmfr.`requires_to_facility_id`),
        MAX(pmfr.`allows_from_facility_id`),
        MAX(pmfr.`allows_to_facility_id`),
        MAX(pmfr.`facility_id_must_equal_from_facility_id`),
        MAX(pmfr.`facility_id_must_equal_to_facility_id`)
    INTO
        v_field_rule_count,
        v_requires_facility_id,
        v_requires_from_facility_id,
        v_requires_to_facility_id,
        v_allows_from_facility_id,
        v_allows_to_facility_id,
        v_facility_id_must_equal_from_facility_id,
        v_facility_id_must_equal_to_facility_id
    FROM `package_movement_field_rule` pmfr
    WHERE pmfr.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`;

    IF v_field_rule_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No movement field rule exists for this event type.';
    END IF;

    IF v_requires_facility_id = 1 AND NEW.`facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id is required for this package movement event type.';
    END IF;

    IF v_requires_from_facility_id = 1 AND NEW.`from_facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id is required for this package movement event type.';
    END IF;

    IF v_requires_to_facility_id = 1 AND NEW.`to_facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'to_facility_id is required for this package movement event type.';
    END IF;

    IF v_allows_from_facility_id = 0 AND NEW.`from_facility_id` IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id is not allowed for this package movement event type.';
    END IF;

    IF v_allows_to_facility_id = 0 AND NEW.`to_facility_id` IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'to_facility_id is not allowed for this package movement event type.';
    END IF;

    IF v_facility_id_must_equal_from_facility_id = 1
       AND NOT (NEW.`facility_id` <=> NEW.`from_facility_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id must equal from_facility_id for this package movement event type.';
    END IF;

    IF v_facility_id_must_equal_to_facility_id = 1
       AND NOT (NEW.`facility_id` <=> NEW.`to_facility_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id must equal to_facility_id for this package movement event type.';
    END IF;

    IF NEW.`from_facility_id` IS NOT NULL
       AND NEW.`to_facility_id` IS NOT NULL
       AND NEW.`from_facility_id` = NEW.`to_facility_id` THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id and to_facility_id cannot be equal.';
    END IF;

    IF NEW.`facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id is required to evaluate staffing rules for this package movement.';
    END IF;

    SELECT
        COUNT(*),
        MAX(f.`facility_type_id`),
        MAX(ft.`facility_type_name`)
    INTO
        v_facility_count,
        v_facility_type_id,
        v_facility_type_name
    FROM `facility` f
    LEFT JOIN `facility_type` ft
        ON ft.`facility_type_id` = f.`facility_type_id`
    WHERE f.`facility_id` = NEW.`facility_id`;

    IF v_facility_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id does not reference an existing facility.';
    END IF;

    SELECT
        COUNT(*),
        MAX(pmsr.`requires_employee`),
        MAX(pmsr.`required_department_type_id`)
    INTO
        v_staffing_rule_count,
        v_requires_employee,
        v_required_department_type_id
    FROM `package_movement_staffing_rule` pmsr
    WHERE pmsr.`package_flow_type_id` = v_package_flow_type_id
      AND pmsr.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`
      AND pmsr.`facility_type_id` = v_facility_type_id;

    IF v_staffing_rule_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No staffing rule exists for this package flow, event type, and facility type.';
    END IF;

    IF v_requires_employee = 1
       AND NEW.`processed_by_employee_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'This package movement requires processed_by_employee_id.';
    END IF;

    IF NEW.`processed_by_employee_id` IS NOT NULL THEN
        SELECT
            COUNT(*),
            MAX(d.`facility_id`),
            MAX(d.`department_type_id`)
        INTO
            v_employee_count,
            v_employee_facility_id,
            v_employee_department_type_id
        FROM `employee` e
        LEFT JOIN `departments` d
            ON d.`department_id` = e.`department_id`
        WHERE e.`employee_id` = NEW.`processed_by_employee_id`;

        IF v_employee_count = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'processed_by_employee_id does not reference an existing employee.';
        END IF;

        IF v_employee_facility_id IS NULL
           OR v_employee_facility_id <> NEW.`facility_id` THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Processed employee must work at the same facility as the package movement.';
        END IF;

        IF v_requires_employee = 1
           AND (
                v_employee_department_type_id IS NULL
                OR v_employee_department_type_id <> v_required_department_type_id
           ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Processed employee does not belong to the required department type for this package movement.';
        END IF;
    END IF;

    SELECT COUNT(*)
    INTO v_existing_movement_count
    FROM `package_movement` pm
    WHERE pm.`package_id` = NEW.`package_id`;

    IF v_existing_movement_count = 0 THEN
        IF v_event_type_name <> 'Received At Facility' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'First package movement must be Received At Facility.';
        END IF;

        IF v_package_flow_type_name = 'B2C'
           AND v_facility_type_name <> 'Mail Processing' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'B2C packages must originate at a Mail Processing facility.';
        END IF;

        IF v_package_flow_type_name = 'P2P'
           AND v_facility_type_name <> 'Post Office' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'P2P packages must originate at a Post Office.';
        END IF;
    ELSE
        SELECT pm.`facility_id`
        INTO v_previous_facility_id
        FROM `package_movement` pm
        WHERE pm.`package_id` = NEW.`package_id`
        ORDER BY pm.`event_timestamp` DESC, pm.`package_movement_id` DESC
        LIMIT 1;

        SELECT
            pm.`package_movement_id`,
            pm.`event_timestamp`,
            pm.`from_facility_id`,
            pm.`to_facility_id`
        INTO
            v_open_leg_movement_id,
            v_open_leg_event_timestamp,
            v_open_leg_from_facility_id,
            v_open_leg_to_facility_id
        FROM `package_movement` pm
        JOIN `package_movement_event_type` met
            ON met.`package_movement_event_type_id` = pm.`package_movement_event_type_id`
        WHERE pm.`package_id` = NEW.`package_id`
          AND met.`event_type_name` = 'Sent To Facility'
          AND pm.`to_facility_id` IS NOT NULL
        ORDER BY pm.`event_timestamp` DESC, pm.`package_movement_id` DESC
        LIMIT 1;

        IF v_open_leg_movement_id IS NOT NULL THEN
            SELECT COUNT(*)
            INTO v_open_leg_closed_count
            FROM `package_movement` pm
            JOIN `package_movement_event_type` met
                ON met.`package_movement_event_type_id` = pm.`package_movement_event_type_id`
            WHERE pm.`package_id` = NEW.`package_id`
              AND met.`event_type_name` = 'Arrived At Facility'
              AND (
                    pm.`event_timestamp` > v_open_leg_event_timestamp
                    OR (
                        pm.`event_timestamp` = v_open_leg_event_timestamp
                        AND pm.`package_movement_id` > v_open_leg_movement_id
                    )
              );

            IF v_open_leg_closed_count = 0 THEN
                SET v_has_open_leg = 1;
            END IF;
        END IF;

        IF v_has_open_leg = 1
           AND v_event_type_name <> 'Arrived At Facility' THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Package route leg is open and the next movement must be Arrived At Facility.';
        END IF;

        IF v_event_type_name = 'Arrived At Facility' THEN
            IF v_has_open_leg = 0
               OR v_open_leg_to_facility_id IS NULL
               OR NOT (NEW.`facility_id` <=> v_open_leg_to_facility_id)
               OR (
                    v_requires_to_facility_id = 1
                    AND NOT (NEW.`to_facility_id` <=> NEW.`facility_id`)
               )
               OR NOT (NEW.`from_facility_id` <=> v_open_leg_from_facility_id) THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Arrived At Facility must continue from the open Sent To Facility leg.';
            END IF;
        END IF;

        IF v_event_type_name = 'Sent To Facility' THEN
            IF NOT (NEW.`facility_id` <=> NEW.`from_facility_id`) THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Facility departure must start from the package current facility.';
            END IF;

            IF v_previous_facility_id IS NOT NULL
               AND NOT (NEW.`from_facility_id` <=> v_previous_facility_id) THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Facility departure must start from the package current facility.';
            END IF;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `pl_afterInsertPackageMovementSyncStatus` AFTER INSERT ON `package_movement` FOR EACH ROW BEGIN
    UPDATE `package` p
    JOIN (
        SELECT pm.`package_status_id`
        FROM `package_movement` pm
        WHERE pm.`package_id` = NEW.`package_id`
        ORDER BY pm.`event_timestamp` DESC, pm.`package_movement_id` DESC
        LIMIT 1
    ) latest
        ON 1 = 1
    SET p.`package_status_id` = latest.`package_status_id`,
        p.`updated_at` = CURRENT_TIMESTAMP
    WHERE p.`package_id` = NEW.`package_id`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `pl_beforeUpdatePackageMovementValidateBusinessRules` BEFORE UPDATE ON `package_movement` FOR EACH ROW BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_package_flow_type_id INT DEFAULT NULL;
    DECLARE v_package_service_type_id INT DEFAULT NULL;
    DECLARE v_package_received_date DATETIME DEFAULT NULL;

    DECLARE v_event_count INT DEFAULT 0;
    DECLARE v_event_is_active TINYINT(1) DEFAULT 0;
    DECLARE v_event_default_package_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_event_type_name VARCHAR(80) DEFAULT NULL;

    DECLARE v_status_count INT DEFAULT 0;
    DECLARE v_status_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_status_is_active TINYINT(1) DEFAULT 0;
    DECLARE v_status_is_final TINYINT(1) DEFAULT 0;
    DECLARE v_status_allowed_service_type_id INT DEFAULT NULL;

    DECLARE v_previous_movement_count INT DEFAULT 0;
    DECLARE v_previous_movement_timestamp DATETIME DEFAULT NULL;
    DECLARE v_next_movement_count INT DEFAULT 0;
    DECLARE v_next_movement_timestamp DATETIME DEFAULT NULL;

    DECLARE v_allowed_flow_event_count INT DEFAULT 0;

    DECLARE v_field_rule_count INT DEFAULT 0;
    DECLARE v_requires_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_requires_from_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_requires_to_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_allows_from_facility_id TINYINT(1) DEFAULT 1;
    DECLARE v_allows_to_facility_id TINYINT(1) DEFAULT 1;
    DECLARE v_facility_id_must_equal_from_facility_id TINYINT(1) DEFAULT 0;
    DECLARE v_facility_id_must_equal_to_facility_id TINYINT(1) DEFAULT 0;

    DECLARE v_facility_count INT DEFAULT 0;
    DECLARE v_facility_type_id INT DEFAULT NULL;

    DECLARE v_staffing_rule_count INT DEFAULT 0;
    DECLARE v_requires_employee TINYINT(1) DEFAULT 0;
    DECLARE v_required_department_type_id INT DEFAULT NULL;

    DECLARE v_employee_count INT DEFAULT 0;
    DECLARE v_employee_facility_id INT DEFAULT NULL;
    DECLARE v_employee_department_type_id INT DEFAULT NULL;

    DECLARE v_other_final_movement_count INT DEFAULT 0;
    DECLARE v_final_before_new_count INT DEFAULT 0;
    DECLARE v_nonfinal_after_new_count INT DEFAULT 0;

    SELECT
        COUNT(*),
        MAX(COALESCE(met.`is_active`, 0)),
        MAX(met.`default_package_status_name`),
        MAX(met.`event_type_name`)
    INTO
        v_event_count,
        v_event_is_active,
        v_event_default_package_status_name,
        v_event_type_name
    FROM `package_movement_event_type` met
    WHERE met.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`;

    IF COALESCE(@allow_package_movement_route_backfill, 0) = 1
       AND OLD.`to_facility_id` IS NULL
       AND NEW.`to_facility_id` IS NOT NULL
       AND v_event_type_name = 'Sent To Facility'
       AND NEW.`package_movement_id` = OLD.`package_movement_id`
       AND NEW.`package_id` <=> OLD.`package_id`
       AND NEW.`package_movement_event_type_id` <=> OLD.`package_movement_event_type_id`
       AND NEW.`event_timestamp` <=> OLD.`event_timestamp`
       AND NEW.`facility_id` <=> OLD.`facility_id`
       AND NEW.`from_facility_id` <=> OLD.`from_facility_id`
       AND NEW.`package_status_id` <=> OLD.`package_status_id`
       AND NEW.`processed_by_employee_id` <=> OLD.`processed_by_employee_id`
    THEN
        IF NEW.`from_facility_id` = NEW.`to_facility_id` THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Controlled route backfill cannot set to_facility_id equal to from_facility_id.';
        END IF;
    ELSE
        IF NEW.`package_movement_id` <> OLD.`package_movement_id` THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'package_movement_id cannot be changed for an existing package movement.';
        END IF;

        IF NOT (NEW.`package_id` <=> OLD.`package_id`) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'package_id cannot be changed for an existing package movement.';
        END IF;

        IF NOT (NEW.`event_timestamp` <=> OLD.`event_timestamp`) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'event_timestamp cannot be changed for an existing package movement.';
        END IF;

        IF NOT (NEW.`package_movement_event_type_id` <=> OLD.`package_movement_event_type_id`) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'package_movement_event_type_id cannot be changed for an existing package movement.';
        END IF;

        IF NOT (
            NEW.`facility_id` <=> OLD.`facility_id`
            AND NEW.`from_facility_id` <=> OLD.`from_facility_id`
            AND NEW.`to_facility_id` <=> OLD.`to_facility_id`
        ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'facility route fields cannot be changed for an existing package movement.';
        END IF;
    END IF;

    SELECT
        COUNT(*),
        MAX(p.`package_flow_type_id`),
        MAX(p.`service_type_id`),
        MAX(p.`received_date`)
    INTO
        v_package_count,
        v_package_flow_type_id,
        v_package_service_type_id,
        v_package_received_date
    FROM `package` p
    WHERE p.`package_id` = NEW.`package_id`;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package does not exist.';
    END IF;

    IF v_event_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event type does not exist.';
    END IF;

    IF v_event_is_active <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event type is inactive.';
    END IF;

    SELECT
        COUNT(*),
        MAX(ps.`status_name`),
        MAX(COALESCE(ps.`is_active`, 0)),
        MAX(COALESCE(ps.`is_final_status`, 0)),
        MAX(ps.`allowed_service_type_id`)
    INTO
        v_status_count,
        v_status_name,
        v_status_is_active,
        v_status_is_final,
        v_status_allowed_service_type_id
    FROM `package_status` ps
    WHERE ps.`package_status_id` = NEW.`package_status_id`;

    IF v_status_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status does not exist.';
    END IF;

    IF v_status_is_active <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status is inactive.';
    END IF;

    IF NEW.`event_timestamp` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'event_timestamp is required.';
    END IF;

    IF NEW.`event_timestamp` < v_package_received_date THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement event_timestamp cannot be earlier than package.received_date.';
    END IF;

    SELECT
        COUNT(*),
        MAX(pm.`event_timestamp`)
    INTO
        v_previous_movement_count,
        v_previous_movement_timestamp
    FROM `package_movement` pm
    WHERE pm.`package_id` = NEW.`package_id`
      AND pm.`package_movement_id` <> OLD.`package_movement_id`
      AND (
            pm.`event_timestamp` < NEW.`event_timestamp`
            OR (
                pm.`event_timestamp` = NEW.`event_timestamp`
                AND pm.`package_movement_id` < OLD.`package_movement_id`
            )
      );

    IF v_previous_movement_count > 0
       AND NEW.`event_timestamp` < v_previous_movement_timestamp THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Updated movement timestamp cannot be earlier than the previous movement.';
    END IF;

    SELECT
        COUNT(*),
        MIN(pm.`event_timestamp`)
    INTO
        v_next_movement_count,
        v_next_movement_timestamp
    FROM `package_movement` pm
    WHERE pm.`package_id` = NEW.`package_id`
      AND pm.`package_movement_id` <> OLD.`package_movement_id`
      AND (
            pm.`event_timestamp` > NEW.`event_timestamp`
            OR (
                pm.`event_timestamp` = NEW.`event_timestamp`
                AND pm.`package_movement_id` > OLD.`package_movement_id`
            )
      );

    IF v_next_movement_count > 0
       AND NEW.`event_timestamp` > v_next_movement_timestamp THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Updated movement timestamp cannot be later than the next movement.';
    END IF;

    SELECT COUNT(*)
    INTO v_allowed_flow_event_count
    FROM `package_flow_event_rule` pfer
    WHERE pfer.`package_flow_type_id` = v_package_flow_type_id
      AND pfer.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`
      AND pfer.`is_allowed` = 1;

    IF v_allowed_flow_event_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Movement event type is not valid for this package flow type.';
    END IF;

    IF v_status_allowed_service_type_id IS NOT NULL
       AND (
            v_package_service_type_id IS NULL
            OR v_status_allowed_service_type_id <> v_package_service_type_id
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package status is not valid for this package service type.';
    END IF;

    IF v_event_default_package_status_name IS NOT NULL
       AND v_event_default_package_status_name <> v_status_name THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Package movement status must match the event type default status.';
    END IF;

    SELECT
        COUNT(*),
        MAX(pmfr.`requires_facility_id`),
        MAX(pmfr.`requires_from_facility_id`),
        MAX(pmfr.`requires_to_facility_id`),
        MAX(pmfr.`allows_from_facility_id`),
        MAX(pmfr.`allows_to_facility_id`),
        MAX(pmfr.`facility_id_must_equal_from_facility_id`),
        MAX(pmfr.`facility_id_must_equal_to_facility_id`)
    INTO
        v_field_rule_count,
        v_requires_facility_id,
        v_requires_from_facility_id,
        v_requires_to_facility_id,
        v_allows_from_facility_id,
        v_allows_to_facility_id,
        v_facility_id_must_equal_from_facility_id,
        v_facility_id_must_equal_to_facility_id
    FROM `package_movement_field_rule` pmfr
    WHERE pmfr.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`;

    IF v_field_rule_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No movement field rule exists for this event type.';
    END IF;

    IF v_requires_facility_id = 1 AND NEW.`facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id is required for this package movement event type.';
    END IF;

    IF v_requires_from_facility_id = 1 AND NEW.`from_facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id is required for this package movement event type.';
    END IF;

    IF v_requires_to_facility_id = 1 AND NEW.`to_facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'to_facility_id is required for this package movement event type.';
    END IF;

    IF v_allows_from_facility_id = 0 AND NEW.`from_facility_id` IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id is not allowed for this package movement event type.';
    END IF;

    IF v_allows_to_facility_id = 0 AND NEW.`to_facility_id` IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'to_facility_id is not allowed for this package movement event type.';
    END IF;

    IF v_facility_id_must_equal_from_facility_id = 1
       AND NOT (NEW.`facility_id` <=> NEW.`from_facility_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id must equal from_facility_id for this package movement event type.';
    END IF;

    IF v_facility_id_must_equal_to_facility_id = 1
       AND NOT (NEW.`facility_id` <=> NEW.`to_facility_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id must equal to_facility_id for this package movement event type.';
    END IF;

    IF NEW.`from_facility_id` IS NOT NULL
       AND NEW.`to_facility_id` IS NOT NULL
       AND NEW.`from_facility_id` = NEW.`to_facility_id` THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'from_facility_id and to_facility_id cannot be equal.';
    END IF;

    IF NEW.`facility_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id is required to evaluate staffing rules for this package movement.';
    END IF;

    SELECT
        COUNT(*),
        MAX(f.`facility_type_id`)
    INTO
        v_facility_count,
        v_facility_type_id
    FROM `facility` f
    WHERE f.`facility_id` = NEW.`facility_id`;

    IF v_facility_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'facility_id does not reference an existing facility.';
    END IF;

    SELECT
        COUNT(*),
        MAX(pmsr.`requires_employee`),
        MAX(pmsr.`required_department_type_id`)
    INTO
        v_staffing_rule_count,
        v_requires_employee,
        v_required_department_type_id
    FROM `package_movement_staffing_rule` pmsr
    WHERE pmsr.`package_flow_type_id` = v_package_flow_type_id
      AND pmsr.`package_movement_event_type_id` = NEW.`package_movement_event_type_id`
      AND pmsr.`facility_type_id` = v_facility_type_id;

    IF v_staffing_rule_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No staffing rule exists for this package flow, event type, and facility type.';
    END IF;

    IF v_requires_employee = 1
       AND NEW.`processed_by_employee_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'This package movement requires processed_by_employee_id.';
    END IF;

    IF NEW.`processed_by_employee_id` IS NOT NULL THEN
        SELECT
            COUNT(*),
            MAX(d.`facility_id`),
            MAX(d.`department_type_id`)
        INTO
            v_employee_count,
            v_employee_facility_id,
            v_employee_department_type_id
        FROM `employee` e
        LEFT JOIN `departments` d
            ON d.`department_id` = e.`department_id`
        WHERE e.`employee_id` = NEW.`processed_by_employee_id`;

        IF v_employee_count = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'processed_by_employee_id does not reference an existing employee.';
        END IF;

        IF v_employee_facility_id IS NULL
           OR v_employee_facility_id <> NEW.`facility_id` THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Processed employee must work at the same facility as the package movement.';
        END IF;

        IF v_requires_employee = 1
           AND (
                v_employee_department_type_id IS NULL
                OR v_employee_department_type_id <> v_required_department_type_id
           ) THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Processed employee does not belong to the required department type for this package movement.';
        END IF;
    END IF;

    SELECT COUNT(*)
    INTO v_other_final_movement_count
    FROM `package_movement` pm
    JOIN `package_status` ps
        ON ps.`package_status_id` = pm.`package_status_id`
    WHERE pm.`package_id` = NEW.`package_id`
      AND pm.`package_movement_id` <> OLD.`package_movement_id`
      AND ps.`is_final_status` = 1;

    IF v_status_is_final = 1
       AND v_other_final_movement_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A package cannot have more than one final package movement.';
    END IF;

    IF v_status_is_final = 0 THEN
        SELECT COUNT(*)
        INTO v_final_before_new_count
        FROM `package_movement` pm
        JOIN `package_status` ps
            ON ps.`package_status_id` = pm.`package_status_id`
        WHERE pm.`package_id` = NEW.`package_id`
          AND pm.`package_movement_id` <> OLD.`package_movement_id`
          AND ps.`is_final_status` = 1
          AND (
                pm.`event_timestamp` < NEW.`event_timestamp`
                OR (
                    pm.`event_timestamp` = NEW.`event_timestamp`
                    AND pm.`package_movement_id` < OLD.`package_movement_id`
                )
          );

        IF v_final_before_new_count > 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'A non-final movement cannot be placed after an existing final movement.';
        END IF;
    END IF;

    IF v_status_is_final = 1 THEN
        SELECT COUNT(*)
        INTO v_nonfinal_after_new_count
        FROM `package_movement` pm
        JOIN `package_status` ps
            ON ps.`package_status_id` = pm.`package_status_id`
        WHERE pm.`package_id` = NEW.`package_id`
          AND pm.`package_movement_id` <> OLD.`package_movement_id`
          AND ps.`is_final_status` = 0
          AND (
                pm.`event_timestamp` > NEW.`event_timestamp`
                OR (
                    pm.`event_timestamp` = NEW.`event_timestamp`
                    AND pm.`package_movement_id` > OLD.`package_movement_id`
                )
          );

        IF v_nonfinal_after_new_count > 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'A final movement cannot be moved before later non-final movements.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `pl_afterUpdatePackageMovementSyncStatus` AFTER UPDATE ON `package_movement` FOR EACH ROW BEGIN
    UPDATE `package` p
    JOIN (
        SELECT pm.`package_status_id`
        FROM `package_movement` pm
        WHERE pm.`package_id` = NEW.`package_id`
        ORDER BY pm.`event_timestamp` DESC, pm.`package_movement_id` DESC
        LIMIT 1
    ) latest
        ON 1 = 1
    SET p.`package_status_id` = latest.`package_status_id`,
        p.`updated_at` = CURRENT_TIMESTAMP
    WHERE p.`package_id` = NEW.`package_id`;
END */;;
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

-- Dump completed on 2026-06-21 14:45:15
