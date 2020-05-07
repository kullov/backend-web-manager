-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2020 at 09:02 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability`
--

DROP TABLE IF EXISTS `ability`;
CREATE TABLE IF NOT EXISTS `ability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg8d596496wa4jxiv2nr4ror1n` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ability`
--

INSERT INTO `ability` (`id`, `name`, `description`, `type_id`) VALUES
(1, 'Course', 'Jewelery', 5),
(2, 'De-engineered didactic Cotton', 'deposit', NULL),
(3, 'Auto Loan Account', 'programming HTTP Borders', NULL),
(4, 'challenge', 'CSS unleash haptic', NULL),
(5, 'Cambridgeshire', 'Chicken', NULL),
(6, 'Zimbabwe', 'solution-oriented District Central', NULL),
(7, 'deposit', 'application', NULL),
(8, 'violet driver', 'Union', NULL),
(9, 'interactive calculate', 'Dominican Republic Computers', NULL),
(10, 'alliance maximize tan', 'Dam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ability_category`
--

DROP TABLE IF EXISTS `ability_category`;
CREATE TABLE IF NOT EXISTS `ability_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ability_category`
--

INSERT INTO `ability_category` (`id`, `name`) VALUES
(1, 'Computer Denar'),
(2, 'SQL Overpass'),
(3, 'Mongolia 1080p'),
(4, 'unleash'),
(5, 'withdrawal Customizable strategic'),
(6, 'Somalia'),
(7, 'recontextualize'),
(8, 'out-of-the-box'),
(9, 'Cook Islands hard drive Delaware'),
(10, 'Checking Account');

-- --------------------------------------------------------

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE IF NOT EXISTS `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', '2020-05-04 15:06:30', 1, 'EXECUTED', '8:dbc3cbe43c494a58902289d23f01aeab', 'createTable tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableName=jhi_user_authority; createTable tableName=jhi_persistent_token; addForeignKeyConstraint baseTableName=jhi_user_a...', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504075800-1', 'jhipster', 'config/liquibase/changelog/20200504075800_added_entity_Organization.xml', '2020-05-04 15:06:30', 2, 'EXECUTED', '8:cc17df445f290f3f3acc5f73bc3c651f', 'createTable tableName=organization', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504075800-1-relations', 'jhipster', 'config/liquibase/changelog/20200504075800_added_entity_Organization.xml', '2020-05-04 15:06:30', 3, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504075800-1-data', 'jhipster', 'config/liquibase/changelog/20200504075800_added_entity_Organization.xml', '2020-05-04 15:06:30', 4, 'EXECUTED', '8:77d65ea53763d1d976712170ba2d47a0', 'loadData tableName=organization', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504075900-1', 'jhipster', 'config/liquibase/changelog/20200504075900_added_entity_Intern.xml', '2020-05-04 15:06:30', 5, 'EXECUTED', '8:22aa6173c22cee82f1ddd56e073381d1', 'createTable tableName=intern; dropDefaultValue columnName=date_of_birth, tableName=intern; dropDefaultValue columnName=join_date, tableName=intern', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504075900-1-relations', 'jhipster', 'config/liquibase/changelog/20200504075900_added_entity_Intern.xml', '2020-05-04 15:06:30', 6, 'EXECUTED', '8:f455cc9c3be2328314adf910c4e7bdd7', 'createTable tableName=intern_intern_ability; addPrimaryKey tableName=intern_intern_ability', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504075900-1-data', 'jhipster', 'config/liquibase/changelog/20200504075900_added_entity_Intern.xml', '2020-05-04 15:06:30', 7, 'EXECUTED', '8:f0d8219e10db01ac4165b435cc6fddbd', 'loadData tableName=intern', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080000-1', 'jhipster', 'config/liquibase/changelog/20200504080000_added_entity_Teacher.xml', '2020-05-04 15:06:30', 8, 'EXECUTED', '8:1bb1f56c4d5138e7f6cab07c28f254a9', 'createTable tableName=teacher', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080000-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080000_added_entity_Teacher.xml', '2020-05-04 15:06:30', 9, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080000-1-data', 'jhipster', 'config/liquibase/changelog/20200504080000_added_entity_Teacher.xml', '2020-05-04 15:06:30', 10, 'EXECUTED', '8:0cd6ff5b618b6697b255afb2b44b2f15', 'loadData tableName=teacher', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080100-1', 'jhipster', 'config/liquibase/changelog/20200504080100_added_entity_Ability.xml', '2020-05-04 15:06:31', 11, 'EXECUTED', '8:90cb0e3280317ebe155a8e6281c6de0a', 'createTable tableName=ability', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080100-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080100_added_entity_Ability.xml', '2020-05-04 15:06:31', 12, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080100-1-data', 'jhipster', 'config/liquibase/changelog/20200504080100_added_entity_Ability.xml', '2020-05-04 15:06:31', 13, 'EXECUTED', '8:3120c1c6f0e1d9e560fe379d4f9d8bdd', 'loadData tableName=ability', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080200-1', 'jhipster', 'config/liquibase/changelog/20200504080200_added_entity_RegisterRequest.xml', '2020-05-04 15:06:31', 14, 'EXECUTED', '8:119257eae0e78549a16b3b992280d584', 'createTable tableName=register_request; dropDefaultValue columnName=date_created, tableName=register_request; dropDefaultValue columnName=start_date, tableName=register_request; dropDefaultValue columnName=end_date, tableName=register_request', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080200-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080200_added_entity_RegisterRequest.xml', '2020-05-04 15:06:31', 15, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080200-1-data', 'jhipster', 'config/liquibase/changelog/20200504080200_added_entity_RegisterRequest.xml', '2020-05-04 15:06:31', 16, 'EXECUTED', '8:6f96eaabf7c18b5050fe491df21275b9', 'loadData tableName=register_request', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080300-1', 'jhipster', 'config/liquibase/changelog/20200504080300_added_entity_RequestAssignment.xml', '2020-05-04 15:06:31', 17, 'EXECUTED', '8:1e8c4dd249c1d68d7ff3806997baeef7', 'createTable tableName=request_assignment; dropDefaultValue columnName=start_date, tableName=request_assignment; dropDefaultValue columnName=end_date, tableName=request_assignment; dropDefaultValue columnName=date_created, tableName=request_assignment', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080300-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080300_added_entity_RequestAssignment.xml', '2020-05-04 15:06:31', 18, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080300-1-data', 'jhipster', 'config/liquibase/changelog/20200504080300_added_entity_RequestAssignment.xml', '2020-05-04 15:06:31', 19, 'EXECUTED', '8:457440ef2526c313aa5bef07ffa9f82b', 'loadData tableName=request_assignment', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080400-1', 'jhipster', 'config/liquibase/changelog/20200504080400_added_entity_Request.xml', '2020-05-04 15:06:31', 20, 'EXECUTED', '8:11a95d6873ceb387c76a8f0943c4c468', 'createTable tableName=request; dropDefaultValue columnName=date_created, tableName=request', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080400-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080400_added_entity_Request.xml', '2020-05-04 15:06:31', 21, 'EXECUTED', '8:5e2b9337c5221a6cab309c08602832e9', 'createTable tableName=request_request_ability; addPrimaryKey tableName=request_request_ability', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080400-1-data', 'jhipster', 'config/liquibase/changelog/20200504080400_added_entity_Request.xml', '2020-05-04 15:06:31', 22, 'EXECUTED', '8:74370f4c9798e6f9128895b96ad3e2c6', 'loadData tableName=request', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080500-1', 'jhipster', 'config/liquibase/changelog/20200504080500_added_entity_AbilityCategory.xml', '2020-05-04 15:06:31', 23, 'EXECUTED', '8:e92d15716ef1f66547df1d9cad874dd6', 'createTable tableName=ability_category', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080500-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080500_added_entity_AbilityCategory.xml', '2020-05-04 15:06:31', 24, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080500-1-data', 'jhipster', 'config/liquibase/changelog/20200504080500_added_entity_AbilityCategory.xml', '2020-05-04 15:06:31', 25, 'EXECUTED', '8:d76650820c7d0316d85a2b08457dc95a', 'loadData tableName=ability_category', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504080600-1', 'jhipster', 'config/liquibase/changelog/20200504080600_added_entity_Status.xml', '2020-05-04 15:06:31', 26, 'EXECUTED', '8:3fdcbd242579d9f63d07d084d262ac3e', 'createTable tableName=status', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080600-1-relations', 'jhipster', 'config/liquibase/changelog/20200504080600_added_entity_Status.xml', '2020-05-04 15:06:31', 27, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080600-1-data', 'jhipster', 'config/liquibase/changelog/20200504080600_added_entity_Status.xml', '2020-05-04 15:06:31', 28, 'EXECUTED', '8:b80874c219601c618403567e63cc9a30', 'loadData tableName=status', '', NULL, '3.8.7', 'faker', NULL, '8579589937'),
('20200504075900-2', 'jhipster', 'config/liquibase/changelog/20200504075900_added_entity_constraints_Intern.xml', '2020-05-04 15:06:31', 29, 'EXECUTED', '8:9e16917a31924b0a1397865ce680990d', 'addForeignKeyConstraint baseTableName=intern_intern_ability, constraintName=fk_intern_intern_ability_intern_id, referencedTableName=intern; addForeignKeyConstraint baseTableName=intern_intern_ability, constraintName=fk_intern_intern_ability_intern...', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080100-2', 'jhipster', 'config/liquibase/changelog/20200504080100_added_entity_constraints_Ability.xml', '2020-05-04 15:06:31', 30, 'EXECUTED', '8:898a300f10b104d950f53c141e3de133', 'addForeignKeyConstraint baseTableName=ability, constraintName=fk_ability_type_id, referencedTableName=ability_category', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080200-2', 'jhipster', 'config/liquibase/changelog/20200504080200_added_entity_constraints_RegisterRequest.xml', '2020-05-04 15:06:32', 31, 'EXECUTED', '8:a885844d6690d595f179b197d01bd931', 'addForeignKeyConstraint baseTableName=register_request, constraintName=fk_register_request_intern_register_id, referencedTableName=intern; addForeignKeyConstraint baseTableName=register_request, constraintName=fk_register_request_request_register_...', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080300-2', 'jhipster', 'config/liquibase/changelog/20200504080300_added_entity_constraints_RequestAssignment.xml', '2020-05-04 15:06:32', 32, 'EXECUTED', '8:6384cd0eed41cd93b05d9fab176b12c0', 'addForeignKeyConstraint baseTableName=request_assignment, constraintName=fk_request_assignment_status_id, referencedTableName=status; addForeignKeyConstraint baseTableName=request_assignment, constraintName=fk_request_assignment_intern_request_ass...', '', NULL, '3.8.7', NULL, NULL, '8579589937'),
('20200504080400-2', 'jhipster', 'config/liquibase/changelog/20200504080400_added_entity_constraints_Request.xml', '2020-05-04 15:06:32', 33, 'EXECUTED', '8:a58de13b496244088f5e5513821bb82c', 'addForeignKeyConstraint baseTableName=request, constraintName=fk_request_request_status_id, referencedTableName=status; addForeignKeyConstraint baseTableName=request_request_ability, constraintName=fk_request_request_ability_request_id, referenced...', '', NULL, '3.8.7', NULL, NULL, '8579589937');

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE IF NOT EXISTS `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

DROP TABLE IF EXISTS `intern`;
CREATE TABLE IF NOT EXISTS `intern` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime,
  `join_date` datetime,
  `class_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `organization_intern_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3lfjmnd7ng99wd1wo25d64o0` (`organization_intern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `code`, `first_name`, `last_name`, `date_of_birth`, `join_date`, `class_name`, `avatar`, `password`, `email`, `phone`, `description`, `address`, `organization_intern_id`) VALUES
(1, 9022, 'Albina', 'Hessel', '2020-05-03 11:33:52', '2020-05-03 09:35:51', 'process improvement overriding Outdoors', 'XSS copying', 'back-end', 'Talia5@hotmail.com', 6440, 'bandwidth De-engineered', 'Cross-platform', NULL),
(2, 57808, 'Lucius', 'Williamson', '2020-05-03 07:14:34', '2020-05-03 02:19:31', 'Keyboard Saint Helena invoice', 'withdrawal Fresh', 'withdrawal markets array', 'Earline_Johns42@hotmail.com', 20278, 'RSS Direct', 'XSS Toys', NULL),
(3, 20189, 'Viva', 'Sporer', '2020-05-03 23:53:20', '2020-05-03 02:03:11', 'Future-proofed Savings Account white', 'hacking', 'Balboa US Dollar', 'Jewel84@hotmail.com', 71202, 'Cayman Islands Dollar Bike', 'Sleek pixel payment', NULL),
(4, 69835, 'Brennon', 'White', '2020-05-03 23:56:59', '2020-05-03 17:16:29', 'data-warehouse Ergonomic Wooden Bike communities', 'Kids Sausages', 'Grocery Small', 'Dax93@gmail.com', 92425, 'override', 'harness sensor', NULL),
(5, 18482, 'Raphaelle', 'Kuhic', '2020-05-03 13:31:42', '2020-05-03 23:43:53', 'Gloves payment e-markets', 'integrated open-source', 'Quality Computers transition', 'Bette13@gmail.com', 90103, 'Credit Card Account vortals', 'Personal Loan Account Investor', NULL),
(6, 98455, 'Louvenia', 'Auer', '2020-05-03 02:57:06', '2020-05-03 16:27:06', 'withdrawal', 'pink', 'mindshare Global Electronics', 'Rory32@hotmail.com', 51478, 'zero defect Home Loan Account', 'West Virginia Cook Islands', NULL),
(7, 91680, 'Maya', 'Jerde', '2020-05-03 03:00:48', '2020-05-03 01:06:24', 'HDD', 'Handmade Soft', 'Parkways Health Tugrik', 'Marlin_Kris@hotmail.com', 25653, 'Home matrix', 'portal Indian Rupee web-readiness', NULL),
(8, 16048, 'Raleigh', 'Kuvalis', '2020-05-03 16:05:03', '2020-05-03 09:53:08', 'Silver Hat Designer', 'back-end', 'IB upward-trending calculate', 'Reanna.Rogahn93@yahoo.com', 98060, 'Profit-focused', 'Kids Granite transparent', NULL),
(9, 12787, 'Ryann', 'Yost', '2020-05-03 08:53:16', '2020-05-03 11:37:48', 'composite New York Spur', 'USB', 'Organic quantify transform', 'Edwin_Gerhold25@yahoo.com', 5156, 'bluetooth', 'plum Rustic Granite Pizza Illinois', NULL),
(10, 39146, 'Lyla', 'Robel', '2020-05-03 08:40:17', '2020-05-03 08:01:08', 'Future-proofed', 'cohesive', 'cutting-edge Gorgeous Rubber Shirt', 'Damien.Kuphal83@yahoo.com', 95134, 'Table Savings Account invoice', 'Turnpike green', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intern_intern_ability`
--

DROP TABLE IF EXISTS `intern_intern_ability`;
CREATE TABLE IF NOT EXISTS `intern_intern_ability` (
  `intern_ability_id` bigint(20) NOT NULL,
  `intern_id` bigint(20) NOT NULL,
  PRIMARY KEY (`intern_id`,`intern_ability_id`),
  KEY `FK8brbjeq9on85y7slhyfugbym4` (`intern_ability_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
CREATE TABLE IF NOT EXISTS `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jhi_authority`
--

INSERT INTO `jhi_authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
CREATE TABLE IF NOT EXISTS `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jhi_persistent_audit_event`
--

INSERT INTO `jhi_persistent_audit_event` (`event_id`, `principal`, `event_date`, `event_type`) VALUES
(1, 'admin', '2020-05-04 01:06:46', 'AUTHENTICATION_SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
CREATE TABLE IF NOT EXISTS `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jhi_persistent_audit_evt_data`
--

INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`, `name`, `value`) VALUES
(1, 'remoteAddress', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `jhi_persistent_token`
--

DROP TABLE IF EXISTS `jhi_persistent_token`;
CREATE TABLE IF NOT EXISTS `jhi_persistent_token` (
  `series` varchar(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `token_value` varchar(20) NOT NULL,
  `token_date` date DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `fk_user_persistent_token` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
CREATE TABLE IF NOT EXISTS `jhi_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(10) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_user_login` (`login`),
  UNIQUE KEY `ux_user_email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jhi_user`
--

INSERT INTO `jhi_user` (`id`, `login`, `password_hash`, `first_name`, `last_name`, `email`, `image_url`, `activated`, `lang_key`, `activation_key`, `reset_key`, `created_by`, `created_date`, `reset_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(2, 'anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(3, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(4, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
CREATE TABLE IF NOT EXISTS `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jhi_user_authority`
--

INSERT INTO `jhi_user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(3, 'ROLE_ADMIN'),
(3, 'ROLE_USER'),
(4, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_count` int(11) DEFAULT NULL,
  `gross_revenue` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `employee_count`, `gross_revenue`, `name`, `tax_number`, `password`, `email`, `contact`, `description`, `address`) VALUES
(1, 68833, 'maroon', 'frame', 'Towels infrastructure', 'orchid payment Ergonomic', 'Clifton_Bailey@hotmail.com', 'Small', 'wireless Belarussian Ruble', 'Global French Polynesia e-business'),
(2, 55496, 'overriding Sri Lanka Rupee', 'SSL United States of America violet', 'withdrawal', 'global', 'Lowell_Von@gmail.com', 'Sleek Wooden Car Sharable', 'Creative', 'overriding cross-platform'),
(3, 84247, 'Nauru open architecture Optimization', 'Sierra Leone intermediate', 'white 1080p', 'Multi-lateral', 'Katheryn24@yahoo.com', 'programming', 'capacitor Jamaican Dollar', 'optimize'),
(4, 38219, 'deposit cross-platform', 'Canada Yemeni Rial Rustic', 'calculating Generic', 'redundant blue robust', 'Scot_Adams@gmail.com', 'parse quantifying bypass', '1080p', 'deposit plum'),
(5, 52219, 'Grocery Fantastic Wooden Fish', 'North Carolina Vision-oriented Multi-channelled', 'Sri Lanka bypass', 'Manager', 'Zion_Sporer48@yahoo.com', 'Handcrafted Wooden Car Villages Program', 'Rustic Swedish Krona', 'Generic Frozen Pizza'),
(6, 16448, 'hack Wells Florida', 'National parsing', 'Beauty', 'Metrics', 'Forrest_Herman@hotmail.com', 'ivory interface olive', 'Supervisor', 'Idaho Concrete'),
(7, 75607, 'Guarani high-level', 'impactful', 'hierarchy deposit Auto Loan Account', 'frame Representative leading edge', 'Bria.Marks@hotmail.com', 'Yemen Oklahoma', 'Distributed quantifying User-friendly', 'Fresh pink green'),
(8, 84270, 'Tools contextually-based JBOD', 'portals online', 'Incredible Steel Shirt', 'Moldovan Leu optical', 'Allene33@hotmail.com', 'array Rubber', 'Response', 'Buckinghamshire'),
(9, 87625, 'Brand Regional Future', 'compressing Phased mindshare', 'deposit cross-media Metal', 'payment Credit Card Account Awesome', 'Marcelino.Torphy20@gmail.com', 'bus', 'payment model', 'CSS sensor SCSI'),
(10, 59642, 'interface maximized', 'Rue payment quantifying', 'Incredible', 'sky blue Integration', 'Kevon86@yahoo.com', 'alarm hacking methodical', 'SAS Senior', 'archive');

-- --------------------------------------------------------

--
-- Table structure for table `register_request`
--

DROP TABLE IF EXISTS `register_request`;
CREATE TABLE IF NOT EXISTS `register_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime,
  `start_date` datetime,
  `end_date` datetime,
  `intern_register_id` bigint(20) DEFAULT NULL,
  `request_register_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2agnitn0e83xvyxwhy93sxlgi` (`intern_register_id`),
  KEY `FKqmiygfc08vfl7mnbxpl1vqmds` (`request_register_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_request`
--

INSERT INTO `register_request` (`id`, `date_created`, `start_date`, `end_date`, `intern_register_id`, `request_register_id`) VALUES
(1, '2020-05-03 10:51:00', '2020-05-03 20:33:00', '2020-05-03 08:32:00', 2, 4),
(2, '2020-05-03 18:47:19', '2020-05-04 00:35:22', '2020-05-03 15:45:29', NULL, NULL),
(3, '2020-05-03 13:08:27', '2020-05-03 23:48:44', '2020-05-04 00:24:06', NULL, NULL),
(4, '2020-05-03 19:42:20', '2020-05-03 12:21:46', '2020-05-03 23:10:10', NULL, NULL),
(5, '2020-05-03 06:38:06', '2020-05-03 14:25:43', '2020-05-03 21:51:08', NULL, NULL),
(6, '2020-05-03 06:13:07', '2020-05-03 18:43:26', '2020-05-03 13:38:41', NULL, NULL),
(7, '2020-05-03 01:11:44', '2020-05-03 22:14:19', '2020-05-03 17:22:41', NULL, NULL),
(8, '2020-05-03 23:20:29', '2020-05-03 10:16:42', '2020-05-03 09:18:35', NULL, NULL),
(9, '2020-05-03 01:08:41', '2020-05-03 12:37:45', '2020-05-03 16:21:51', NULL, NULL),
(10, '2020-05-03 04:07:16', '2020-05-03 10:20:15', '2020-05-03 20:46:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date_created` datetime,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `request_status_id` bigint(20) DEFAULT NULL,
  `organization_request_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe1bb9i0t07irwwerrmxftv4na` (`organization_request_id`),
  KEY `FKaogp8mhbxmbjse7m6ud6yrec2` (`request_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `position`, `amount`, `date_created`, `status`, `description`, `type`, `request_status_id`, `organization_request_id`) VALUES
(1, 'Rustic Frozen Shirt', 88688, '2020-05-03 23:22:15', 1610, '24/365', 'Tasty Steel Soap quantifying District', NULL, NULL),
(2, 'orange', 18483, '2020-05-03 17:56:31', 61033, 'solid state Lakes', 'vortals', NULL, NULL),
(3, 'system engine', 33721, '2020-05-03 06:37:29', 22694, 'interactive', 'Garden Arkansas Architect', NULL, NULL),
(4, 'uniform Investor Pine', 73054, '2020-05-03 04:42:40', 45765, 'Kids', 'Group', NULL, NULL),
(5, 'Wyoming International Internal', 60383, '2020-05-03 21:56:43', 15718, 'Mississippi efficient', 'morph', NULL, NULL),
(6, 'transparent Cambridgeshire Incredible', 15106, '2020-05-03 22:03:12', 77659, 'bypass', 'digital engage', NULL, NULL),
(7, 'ADP Unbranded Steel Bike', 60894, '2020-05-03 13:32:50', 82206, 'Agent', 'Underpass Ohio', NULL, NULL),
(8, 'Assurance Producer cross-platform', 67235, '2020-05-04 00:02:43', 80482, 'capacitor compress', 'system', NULL, NULL),
(9, 'Tunnel Azerbaijanian Manat Washington', 13753, '2020-05-03 16:57:42', 48811, 'RSS', 'Directives TCP', NULL, NULL),
(10, 'redundant Licensed Plastic Table Crossroad', 94644, '2020-05-03 05:03:32', 77652, 'Principal red', 'Car Computer neural', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_assignment`
--

DROP TABLE IF EXISTS `request_assignment`;
CREATE TABLE IF NOT EXISTS `request_assignment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_date` datetime,
  `end_date` datetime,
  `date_created` datetime,
  `status_id` bigint(20) DEFAULT NULL,
  `intern_request_assignment_id` bigint(20) DEFAULT NULL,
  `organization_request_assignment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhwmoknlkn26mi5vfytaiv13gj` (`intern_request_assignment_id`),
  KEY `FKkdqexm1o5uvc514gtig3shlik` (`organization_request_assignment_id`),
  KEY `FK6lqs0csrno2j8qj0pboumij6s` (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_assignment`
--

INSERT INTO `request_assignment` (`id`, `start_date`, `end_date`, `date_created`, `status_id`, `intern_request_assignment_id`, `organization_request_assignment_id`) VALUES
(1, '2020-05-03 01:03:20', '2020-05-03 12:14:53', '2020-05-03 08:43:36', NULL, NULL, NULL),
(2, '2020-05-03 19:32:18', '2020-05-03 15:36:51', '2020-05-03 18:14:06', NULL, NULL, NULL),
(3, '2020-05-03 12:55:37', '2020-05-03 11:35:33', '2020-05-03 12:33:42', NULL, NULL, NULL),
(4, '2020-05-03 03:15:55', '2020-05-03 01:22:39', '2020-05-03 07:31:45', NULL, NULL, NULL),
(5, '2020-05-03 06:25:53', '2020-05-04 00:48:24', '2020-05-03 03:23:45', NULL, NULL, NULL),
(6, '2020-05-03 20:57:21', '2020-05-03 18:31:03', '2020-05-03 01:59:43', NULL, NULL, NULL),
(7, '2020-05-03 09:47:00', '2020-05-03 17:31:54', '2020-05-03 13:20:57', NULL, NULL, NULL),
(8, '2020-05-03 16:06:18', '2020-05-03 12:12:30', '2020-05-03 08:17:09', NULL, NULL, NULL),
(9, '2020-05-04 00:16:13', '2020-05-03 04:11:50', '2020-05-04 00:20:29', NULL, NULL, NULL),
(10, '2020-05-03 03:04:09', '2020-05-03 13:10:43', '2020-05-03 19:02:24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_request_ability`
--

DROP TABLE IF EXISTS `request_request_ability`;
CREATE TABLE IF NOT EXISTS `request_request_ability` (
  `request_ability_id` bigint(20) NOT NULL,
  `request_id` bigint(20) NOT NULL,
  PRIMARY KEY (`request_id`,`request_ability_id`),
  KEY `FKew5hm469als01o55dm2wm1357` (`request_ability_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Tennessee TCP indigo'),
(2, 'Rustic Rubber Car Steel'),
(3, 'Generic SMS withdrawal'),
(4, 'pixel'),
(5, 'Soap'),
(6, 'Gorgeous Granite Hat system-worthy Synchronised'),
(7, 'Sri Lanka Agent'),
(8, 'firmware Intranet AI'),
(9, 'bus'),
(10, 'Handmade Checking Account');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `class_name`, `contact`, `password`, `email`, `address`) VALUES
(1, 'Sleek Buckinghamshire', 'Buckinghamshire Legacy', 9436, 'Incredible', 'Coby71@gmail.com', 'neural'),
(2, 'Refined Fresh Chicken', 'Security gold', 44160, 'invoice Computers', 'Clara.Waters2@gmail.com', 'invoice Pizza'),
(3, 'e-business', 'Cotton Bhutan convergence', 28686, 'Auto Loan Account', 'Brennan43@gmail.com', 'Research'),
(4, 'Branding Garden Multi-channelled', 'Soap Granite', 33018, 'models Indian Rupee Ngultrum', 'Stuart_Jones30@gmail.com', 'Plaza invoice'),
(5, 'firmware Sleek', 'Run Cheese AGP', 67441, 'Executive', 'Hector_Keebler55@yahoo.com', 'multi-byte'),
(6, 'Fresh', 'Radial Automotive', 46610, 'Isle Digitized Union', 'Carroll_Rath96@gmail.com', 'Monaco Saint Martin'),
(7, 'Tasty', 'Bedfordshire primary architectures', 25123, 'withdrawal', 'Delbert_Kohler22@hotmail.com', 'recontextualize'),
(8, 'array', 'Oregon', 47498, 'Personal Loan Account Future', 'Janelle_Hermiston4@hotmail.com', 'auxiliary'),
(9, 'Soap radical', 'Martinique', 13274, 'Infrastructure', 'Joanie_Doyle66@yahoo.com', 'Missouri Nebraska'),
(10, 'deposit', 'payment Savings Account compress', 50522, 'Macao Equatorial Guinea Baby', 'Lottie70@gmail.com', 'web-readiness support Rustic Metal Salad');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
