-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: voting_system
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
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20250423192936-init-users.cjs');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `resource` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `audit_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'auth','Đăng nhập thành công','2025-04-24 20:26:05','2025-04-24 20:26:05'),(2,1,'event','Tạo sự kiện mới: hee123123','2025-04-24 20:26:15','2025-04-24 20:26:15'),(3,1,'candidate','Tạo ứng viên mới: Nguyen Van Nam','2025-04-24 20:33:48','2025-04-24 20:33:48'),(4,1,'event_candidate','Thêm ứng viên Nguyen Van Nam vào sự kiện hee123123','2025-04-24 20:34:42','2025-04-24 20:34:42'),(5,1,'candidate','Tạo ứng viên mới: Nguyen Van Quang','2025-04-24 20:59:56','2025-04-24 20:59:56'),(6,1,'candidate','Tạo ứng viên mới: Nguyen Van Quang','2025-04-24 21:00:20','2025-04-24 21:00:20'),(7,1,'candidate','Tạo ứng viên mới: Nguyen Van Tuan','2025-04-24 21:00:38','2025-04-24 21:00:38'),(8,1,'event_candidate','Thêm ứng viên Nguyen Van Quang vào sự kiện hee123123','2025-04-24 21:00:57','2025-04-24 21:00:57'),(9,1,'event_candidate','Thêm ứng viên Nguyen Van Quang vào sự kiện hee123123','2025-04-24 21:01:00','2025-04-24 21:01:00'),(10,1,'event_candidate','Thêm ứng viên Nguyen Van Tuan vào sự kiện hee123123','2025-04-24 21:01:01','2025-04-24 21:01:01'),(11,1,'candidate','Tạo ứng viên mới: Nguyen Van Hieu','2025-04-24 21:03:59','2025-04-24 21:03:59'),(12,1,'event_candidate','Thêm ứng viên Nguyen Van Hieu vào sự kiện hee123123','2025-04-24 21:04:04','2025-04-24 21:04:04'),(13,1,'candidate','Tạo ứng viên mới: Nguyen Van Hieu','2025-04-24 21:08:29','2025-04-24 21:08:29'),(14,1,'event_candidate','Thêm ứng viên Nguyen Van Hieu vào sự kiện hee123123','2025-04-24 21:08:35','2025-04-24 21:08:35');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_images`
--

DROP TABLE IF EXISTS `candidate_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `candidate_images_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_images`
--

LOCK TABLES `candidate_images` WRITE;
/*!40000 ALTER TABLE `candidate_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` text,
  `about` text,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'25','Nguyen Văn Năm','https://res.cloudinary.com/dpgbpefe4/image/upload/v1745527770/typ.jpg','hat hay khong bang hay hat',NULL,'2025-04-24 20:33:48','2025-04-24 20:33:48'),(2,'26','Nguyen Van Quang','https://res.cloudinary.com/dpgbpefe4/image/upload/f_auto,q_auto/typ?_a=BAMAJaUm0','hat hay khong bang hay hat',NULL,'2025-04-24 20:59:56','2025-04-24 20:59:56'),(3,'27','Nguyen Van Quang','https://res.cloudinary.com/dpgbpefe4/image/upload/v1745528083/tran-thi-duyen.jpg','hat hay khong bang hay hat',NULL,'2025-04-24 21:00:20','2025-04-24 21:00:20'),(4,'28','Nguyen Van Tuan','https://res.cloudinary.com/dpgbpefe4/image/upload/v1745527476/le-duc-tuan-anh.png','hat hay khong bang hay hat',NULL,'2025-04-24 21:00:38','2025-04-24 21:00:38'),(5,'29','Nguyen Van Hieu','https://res.cloudinary.com/dpgbpefe4/image/upload/v1745528612/ha-quang-minh-duc.png','hat hay khong bang hay hat',NULL,'2025-04-24 21:03:59','2025-04-24 21:03:59'),(6,'30','Nguyen Van Hieu','https://res.cloudinary.com/dpgbpefe4/image/upload/v1745528883/hoang-tien-huy.png','hat hay khong bang hay hat',NULL,'2025-04-24 21:08:29','2025-04-24 21:08:29');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_candidate`
--

DROP TABLE IF EXISTS `event_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `event_candidate_ibfk_15` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `event_candidate_ibfk_16` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_candidate`
--

LOCK TABLES `event_candidate` WRITE;
/*!40000 ALTER TABLE `event_candidate` DISABLE KEYS */;
INSERT INTO `event_candidate` VALUES (1,1,1,NULL,'2025-04-24 20:34:42','2025-04-24 20:34:42'),(2,1,2,NULL,'2025-04-24 21:00:57','2025-04-24 21:00:57'),(3,1,3,NULL,'2025-04-24 21:01:00','2025-04-24 21:01:00'),(4,1,4,NULL,'2025-04-24 21:01:01','2025-04-24 21:01:01'),(5,1,5,NULL,'2025-04-24 21:04:04','2025-04-24 21:04:04'),(6,1,6,NULL,'2025-04-24 21:08:35','2025-04-24 21:08:35');
/*!40000 ALTER TABLE `event_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'SING TO LEARN','Hat hay ko bang hay hat','2025-01-01 06:20:00','2025-05-01 08:20:00',NULL,'2025-04-24 20:26:15','2025-04-24 20:26:15');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `username_4` (`username`),
  UNIQUE KEY `username_5` (`username`),
  UNIQUE KEY `username_6` (`username`),
  UNIQUE KEY `username_7` (`username`),
  UNIQUE KEY `username_8` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2b$10$wfhcZk15VCImu2kTHMDZDeItaAKfh2bJKe4d23wVBSw4p8Lj5/K8y','viên','Quản trị',NULL,NULL,NULL,NULL,1,'2025-04-24 20:25:57','2025-04-24 20:25:57',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_candidate_id` int NOT NULL,
  `voting_time` datetime NOT NULL,
  `fingerprint` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_candidate_id` (`event_candidate_id`),
  CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`event_candidate_id`) REFERENCES `event_candidate` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 15:28:02
