-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for messenger
CREATE DATABASE IF NOT EXISTS `messenger` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `messenger`;

-- Dumping structure for table messenger.access
CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `devices_id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.access: ~0 rows (approximately)
DELETE FROM `access`;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;

-- Dumping structure for table messenger.activities
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(11) NOT NULL,
  `activity_type` varchar(45) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.activities: ~0 rows (approximately)
DELETE FROM `activities`;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;

-- Dumping structure for table messenger.attachments
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL,
  `messages_id` int(11) NOT NULL,
  `thumb_url` varchar(45) NOT NULL,
  `file_url` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.attachments: ~0 rows (approximately)
DELETE FROM `attachments`;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;

-- Dumping structure for table messenger.block_list
CREATE TABLE IF NOT EXISTS `block_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `participants_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.block_list: ~0 rows (approximately)
DELETE FROM `block_list`;
/*!40000 ALTER TABLE `block_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_list` ENABLE KEYS */;

-- Dumping structure for table messenger.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL COMMENT 'Sync the contacts to this table',
  `first_name` varchar(20) NOT NULL DEFAULT '',
  `middle_name` varchar(20) NOT NULL DEFAULT '',
  `last_name` varchar(20) NOT NULL DEFAULT '',
  `phone` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.contacts: ~0 rows (approximately)
DELETE FROM `contacts`;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table messenger.conversation
CREATE TABLE IF NOT EXISTS `conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `channel_id` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.conversation: ~0 rows (approximately)
DELETE FROM `conversation`;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;

-- Dumping structure for table messenger.deleted_conversations
CREATE TABLE IF NOT EXISTS `deleted_conversations` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.deleted_conversations: ~0 rows (approximately)
DELETE FROM `deleted_conversations`;
/*!40000 ALTER TABLE `deleted_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_conversations` ENABLE KEYS */;

-- Dumping structure for table messenger.deleted_messages
CREATE TABLE IF NOT EXISTS `deleted_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.deleted_messages: ~0 rows (approximately)
DELETE FROM `deleted_messages`;
/*!40000 ALTER TABLE `deleted_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_messages` ENABLE KEYS */;

-- Dumping structure for table messenger.devices
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `device_id` varchar(120) NOT NULL,
  `type` enum('APPLE') NOT NULL,
  `device_token` varchar(120) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.devices: ~0 rows (approximately)
DELETE FROM `devices`;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;

-- Dumping structure for table messenger.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `guid` varchar(100) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message_type` enum('text','image','vedio','audio') NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.messages: ~0 rows (approximately)
DELETE FROM `messages`;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table messenger.participants
CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `type` enum('single','group') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `participants_UNIQUE` (`conversation_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.participants: ~0 rows (approximately)
DELETE FROM `participants`;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;

-- Dumping structure for table messenger.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `participants_id` int(11) NOT NULL,
  `report_type` varchar(45) NOT NULL,
  `notes` text NOT NULL,
  `status` enum('pending','resolved') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.reports: ~0 rows (approximately)
DELETE FROM `reports`;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Dumping structure for table messenger.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(20) NOT NULL DEFAULT '',
  `last_name` varchar(20) NOT NULL DEFAULT '',
  `middle_name` varchar(20) NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_reported` tinyint(1) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `preferences` text NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table messenger.user_contact
CREATE TABLE IF NOT EXISTS `user_contact` (
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL DEFAULT '',
  `last_name` varchar(45) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.user_contact: ~0 rows (approximately)
DELETE FROM `user_contact`;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;

-- Dumping structure for table messenger.user_verification
CREATE TABLE IF NOT EXISTS `user_verification` (
  `users_id` int(11) NOT NULL,
  `verification_code` varchar(45) NOT NULL,
  `created_at` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table messenger.user_verification: ~0 rows (approximately)
DELETE FROM `user_verification`;
/*!40000 ALTER TABLE `user_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_verification` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
