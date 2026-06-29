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
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `refund_id` int NOT NULL AUTO_INCREMENT,
  `package_id` binary(16) NOT NULL,
  `incident_id` int NOT NULL,
  `refund_amount` decimal(8,2) NOT NULL,
  `refund_reason` enum('Late Delivery','Damaged Package','Lost Package','Returned Package','Cancelled Package','Service Failure','Goodwill Adjustment','Other') NOT NULL,
  `refund_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `refund_status` enum('Pending','Approved','Rejected','Paid','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reviewed_at` datetime DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `refund_note` varchar(255) DEFAULT NULL,
  `customer_id` binary(16) NOT NULL,
  `reviewed_by_employee_id` int DEFAULT NULL,
  PRIMARY KEY (`refund_id`),
  KEY `package_fk_idx` (`package_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `idx_refunds_incident_id` (`incident_id`),
  KEY `idx_refunds_reviewed_by_employee_id` (`reviewed_by_employee_id`),
  CONSTRAINT `fk_CustomerRefund` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_refunds_incident` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_refunds_reviewed_by_employee` FOREIGN KEY (`reviewed_by_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `chk_refunds_amount_positive` CHECK ((`refund_amount` > 0)),
  CONSTRAINT `chk_refunds_reason_not_blank` CHECK ((trim(`refund_reason`) <> _utf8mb4'')),
  CONSTRAINT `chk_refunds_status_valid` CHECK ((`refund_status` in (_utf8mb4'Pending',_utf8mb4'Approved',_utf8mb4'Rejected',_utf8mb4'Paid',_utf8mb4'Cancelled')))
) ENGINE=InnoDB AUTO_INCREMENT=3418 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `bi_refunds_business_rules` BEFORE INSERT ON `refunds` FOR EACH ROW BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_incident_count INT DEFAULT 0;
    DECLARE v_duplicate_count INT DEFAULT 0;
    DECLARE v_recipient_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_package_is_final_status TINYINT(1) DEFAULT 0;
    DECLARE v_charge_amount DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_incident_package_id BINARY(16) DEFAULT NULL;
    DECLARE v_incident_package_movement_id INT DEFAULT NULL;
    DECLARE v_incident_type_name VARCHAR(50) DEFAULT NULL;
    DECLARE v_incident_is_closed_status TINYINT(1) DEFAULT 0;
    DECLARE v_incident_severity_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_movement_exists INT DEFAULT 0;

    IF NEW.`package_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.package_id is required.';
    END IF;

    IF NEW.`incident_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id is required.';
    END IF;

    IF NEW.`customer_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.customer_id is required.';
    END IF;

    IF NEW.`refund_amount` IS NULL OR NEW.`refund_amount` <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refund_amount must be greater than 0.';
    END IF;

    IF NEW.`refund_status` IS NULL OR TRIM(CAST(NEW.`refund_status` AS CHAR)) = '' THEN
        SET NEW.`refund_status` = 'Pending';
    END IF;

    SELECT
        COUNT(*),
        MAX(p.`recipient_customer_id`),
        MAX(COALESCE(ps.`is_final_status`, 0))
    INTO
        v_package_count,
        v_recipient_customer_id,
        v_package_is_final_status
    FROM `package` p
    JOIN `package_status` ps
        ON ps.`package_status_id` = p.`package_status_id`
    WHERE p.`package_id` = NEW.`package_id`;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.package_id must reference an existing package.';
    END IF;

    SELECT
        COUNT(*),
        MAX(i.`package_id`),
        MAX(i.`package_movement_id`),
        MAX(it.`type_name`),
        MAX(COALESCE(ist.`is_closed_status`, 0)),
        MAX(isev.`severity_name`)
    INTO
        v_incident_count,
        v_incident_package_id,
        v_incident_package_movement_id,
        v_incident_type_name,
        v_incident_is_closed_status,
        v_incident_severity_name
    FROM `incident` i
    JOIN `incident_type` it
        ON it.`incident_type_id` = i.`incident_type_id`
    JOIN `incident_status` ist
        ON ist.`incident_status_id` = i.`incident_status_id`
    JOIN `incident_severity` isev
        ON isev.`incident_severity_id` = i.`incident_severity_id`
    WHERE i.`incident_id` = NEW.`incident_id`;

    IF v_incident_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an existing incident.';
    END IF;

    IF v_incident_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident with a non-null package_id.';
    END IF;

    IF NOT (v_incident_package_id <=> NEW.`package_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident for the same package.';
    END IF;

    IF v_incident_package_movement_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident with a non-null package_movement_id.';
    END IF;

    SELECT COUNT(*)
    INTO v_movement_exists
    FROM `package_movement` pm
    WHERE pm.`package_movement_id` = v_incident_package_movement_id
      AND pm.`package_id` = NEW.`package_id`;

    IF v_movement_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident whose package_movement exists for the same package.';
    END IF;

    SELECT COUNT(*)
    INTO v_duplicate_count
    FROM `refunds` r
    WHERE r.`package_id` = NEW.`package_id`;

    IF v_duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Only one refund is allowed per package unless the refund model is redesigned.';
    END IF;

    IF NOT (NEW.`customer_id` <=> v_recipient_customer_id) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.customer_id must match package.recipient_customer_id.';
    END IF;

    IF NOT (
        v_package_is_final_status = 1
        OR (
            v_incident_type_name = 'Lost Package'
            AND v_incident_is_closed_status = 0
            AND v_incident_severity_name IN ('High', 'Critical')
        )
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refunds are only allowed for packages in a final status or qualifying open severe lost-package incidents.';
    END IF;

    SELECT sc.`actual_shipping_charge`
    INTO v_charge_amount
    FROM `shipping_cost` sc
    WHERE sc.`package_id` = NEW.`package_id`;

    IF v_charge_amount IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refund requires an existing shipping_cost.actual_shipping_charge.';
    END IF;

    IF NEW.`refund_amount` > v_charge_amount THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refund_amount cannot exceed shipping_cost.actual_shipping_charge.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`ryan`@`%`*/ /*!50003 TRIGGER `bu_refunds_business_rules` BEFORE UPDATE ON `refunds` FOR EACH ROW BEGIN
    DECLARE v_package_count INT DEFAULT 0;
    DECLARE v_incident_count INT DEFAULT 0;
    DECLARE v_duplicate_count INT DEFAULT 0;
    DECLARE v_recipient_customer_id BINARY(16) DEFAULT NULL;
    DECLARE v_package_is_final_status TINYINT(1) DEFAULT 0;
    DECLARE v_charge_amount DECIMAL(8,2) DEFAULT NULL;
    DECLARE v_incident_package_id BINARY(16) DEFAULT NULL;
    DECLARE v_incident_package_movement_id INT DEFAULT NULL;
    DECLARE v_incident_type_name VARCHAR(50) DEFAULT NULL;
    DECLARE v_incident_is_closed_status TINYINT(1) DEFAULT 0;
    DECLARE v_incident_severity_name VARCHAR(30) DEFAULT NULL;
    DECLARE v_movement_exists INT DEFAULT 0;
    DECLARE v_reviewer_is_valid INT DEFAULT 0;

    IF NEW.`package_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.package_id is required.';
    END IF;

    IF NEW.`incident_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id is required.';
    END IF;

    IF NEW.`customer_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.customer_id is required.';
    END IF;

    IF NEW.`refund_amount` IS NULL OR NEW.`refund_amount` <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refund_amount must be greater than 0.';
    END IF;

    IF NEW.`refund_status` IS NULL OR TRIM(CAST(NEW.`refund_status` AS CHAR)) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refund_status is required on update.';
    END IF;

    SELECT
        COUNT(*),
        MAX(p.`recipient_customer_id`),
        MAX(COALESCE(ps.`is_final_status`, 0))
    INTO
        v_package_count,
        v_recipient_customer_id,
        v_package_is_final_status
    FROM `package` p
    JOIN `package_status` ps
        ON ps.`package_status_id` = p.`package_status_id`
    WHERE p.`package_id` = NEW.`package_id`;

    IF v_package_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.package_id must reference an existing package.';
    END IF;

    SELECT
        COUNT(*),
        MAX(i.`package_id`),
        MAX(i.`package_movement_id`),
        MAX(it.`type_name`),
        MAX(COALESCE(ist.`is_closed_status`, 0)),
        MAX(isev.`severity_name`)
    INTO
        v_incident_count,
        v_incident_package_id,
        v_incident_package_movement_id,
        v_incident_type_name,
        v_incident_is_closed_status,
        v_incident_severity_name
    FROM `incident` i
    JOIN `incident_type` it
        ON it.`incident_type_id` = i.`incident_type_id`
    JOIN `incident_status` ist
        ON ist.`incident_status_id` = i.`incident_status_id`
    JOIN `incident_severity` isev
        ON isev.`incident_severity_id` = i.`incident_severity_id`
    WHERE i.`incident_id` = NEW.`incident_id`;

    IF v_incident_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an existing incident.';
    END IF;

    IF v_incident_package_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident with a non-null package_id.';
    END IF;

    IF NOT (v_incident_package_id <=> NEW.`package_id`) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident for the same package.';
    END IF;

    IF v_incident_package_movement_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident with a non-null package_movement_id.';
    END IF;

    SELECT COUNT(*)
    INTO v_movement_exists
    FROM `package_movement` pm
    WHERE pm.`package_movement_id` = v_incident_package_movement_id
      AND pm.`package_id` = NEW.`package_id`;

    IF v_movement_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.incident_id must reference an incident whose package_movement exists for the same package.';
    END IF;

    SELECT COUNT(*)
    INTO v_duplicate_count
    FROM `refunds` r
    WHERE r.`package_id` = NEW.`package_id`
      AND r.`refund_id` <> OLD.`refund_id`;

    IF v_duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Only one refund is allowed per package unless the refund model is redesigned.';
    END IF;

    IF NOT (NEW.`customer_id` <=> v_recipient_customer_id) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refunds.customer_id must match package.recipient_customer_id.';
    END IF;

    IF NOT (
        v_package_is_final_status = 1
        OR (
            v_incident_type_name = 'Lost Package'
            AND v_incident_is_closed_status = 0
            AND v_incident_severity_name IN ('High', 'Critical')
        )
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refunds are only allowed for packages in a final status or qualifying open severe lost-package incidents.';
    END IF;

    SELECT sc.`actual_shipping_charge`
    INTO v_charge_amount
    FROM `shipping_cost` sc
    WHERE sc.`package_id` = NEW.`package_id`;

    IF v_charge_amount IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refund requires an existing shipping_cost.actual_shipping_charge.';
    END IF;

    IF NEW.`refund_amount` > v_charge_amount THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'refund_amount cannot exceed shipping_cost.actual_shipping_charge.';
    END IF;

    IF OLD.`refund_status` = 'Pending'
       AND NEW.`refund_status` NOT IN ('Pending', 'Approved', 'Rejected', 'Cancelled') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid refund status transition from Pending.';
    END IF;

    IF OLD.`refund_status` = 'Approved'
       AND NEW.`refund_status` NOT IN ('Approved', 'Paid', 'Cancelled') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid refund status transition from Approved.';
    END IF;

    IF OLD.`refund_status` = 'Rejected'
       AND NEW.`refund_status` <> 'Rejected' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Rejected refunds are terminal and cannot change.';
    END IF;

    IF OLD.`refund_status` = 'Paid'
       AND NEW.`refund_status` <> 'Paid' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Paid refunds are terminal and cannot change.';
    END IF;

    IF OLD.`refund_status` = 'Cancelled'
       AND NEW.`refund_status` <> 'Cancelled' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cancelled refunds are terminal and cannot change.';
    END IF;

    IF NEW.`refund_status` = 'Paid'
       AND OLD.`refund_status` NOT IN ('Approved', 'Paid') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Refund cannot be marked Paid unless the current status is Approved or Paid.';
    END IF;

    IF NEW.`reviewed_by_employee_id` IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_reviewer_is_valid
        FROM `employee` e
        JOIN `departments` d
            ON d.`department_id` = e.`department_id`
        JOIN `facility` f
            ON f.`facility_id` = d.`facility_id`
        JOIN `facility_type` ft
            ON ft.`facility_type_id` = f.`facility_type_id`
        WHERE e.`employee_id` = NEW.`reviewed_by_employee_id`
          AND ft.`facility_type_name` = 'Administrative Office';

        IF v_reviewer_is_valid = 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Only employees assigned to an Administrative Office facility may review refunds.';
        END IF;
    END IF;

    IF NEW.`refund_status` IN ('Approved', 'Rejected', 'Cancelled')
       AND NEW.`reviewed_by_employee_id` IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'reviewed_by_employee_id is required when refund_status is Approved, Rejected, or Cancelled.';
    END IF;

    IF NEW.`refund_status` <> OLD.`refund_status`
       AND NEW.`refund_status` IN ('Approved', 'Rejected', 'Cancelled')
       AND NEW.`reviewed_at` IS NULL THEN
        SET NEW.`reviewed_at` = CURRENT_TIMESTAMP;
    END IF;

    IF NEW.`refund_status` <> OLD.`refund_status`
       AND NEW.`refund_status` = 'Paid'
       AND NEW.`paid_at` IS NULL THEN
        SET NEW.`paid_at` = CURRENT_TIMESTAMP;
    END IF;
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

-- Dump completed on 2026-06-21 14:45:33
