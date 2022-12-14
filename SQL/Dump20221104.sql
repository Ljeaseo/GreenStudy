-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: guitar
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `user_email` varchar(50) DEFAULT NULL,
  `guitar_no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_cnt` int NOT NULL AUTO_INCREMENT,
  `guitar_no` int DEFAULT NULL,
  `guitar_name` varchar(20) DEFAULT NULL,
  `guitar_price` int DEFAULT NULL,
  PRIMARY KEY (`cart_cnt`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (70,2,'FGX3',1664);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `guitar_no` int DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `commemt_cno` int NOT NULL AUTO_INCREMENT,
  `commemt_content` varchar(300) DEFAULT NULL,
  `commemt_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commemt_cno`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'test@test.test',1,'????????? ?????????.','2022-10-13 07:07:12'),(1,'test@test.test',2,'????????? ?????????2.','2022-10-13 07:07:12'),(1,'test@test.test',9,'test','2022-10-17 08:24:17'),(1,'user_emailValue',10,'commemtValue','2022-10-18 01:36:49'),(1,'',11,'wvwvwavwawv','2022-10-18 05:15:09'),(1,'test@test.test',12,'123123123','2022-10-18 05:35:51'),(1,'test@test.test',13,'??????????????????','2022-10-18 06:53:37'),(1,'test@test.test',14,'??????????????????','2022-10-18 06:53:38'),(1,'test@test.test',15,'??????????????????','2022-10-18 06:53:38'),(1,'test@test.test',16,'??????????????????','2022-10-18 06:53:38'),(1,'test@test.test',17,'??????????????????','2022-10-18 06:53:39'),(1,'test@test.test',18,'??????????????????','2022-10-18 06:53:39'),(1,'test@test.test',19,'??????????????????','2022-10-18 06:53:39'),(1,'test@test.test',20,'??????????????????','2022-10-18 06:53:39'),(1,'test@test.test',21,'??????????????????','2022-10-18 06:53:40'),(1,'test@test.test',22,'??????????????????','2022-10-18 06:53:40'),(1,'test@test.test',23,'??????????????????','2022-10-18 06:53:40'),(1,'test@test.test',24,'??????????????????','2022-10-18 06:53:40'),(1,'test@test.test',25,'??????????????????','2022-10-18 06:53:40'),(1,'test@test.test',26,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',27,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',28,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',29,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',30,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',31,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',32,'??????????????????','2022-10-18 06:53:41'),(1,'test@test.test',33,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',34,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',35,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',36,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',37,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',38,'??????????????????','2022-10-18 06:53:42'),(1,'test@test.test',39,'??????????????????','2022-10-18 06:54:03'),(1,'test@test.test',40,'??????????????????','2022-10-18 06:54:03'),(1,'test@test.test',41,'??????????????????','2022-10-18 06:54:03'),(1,'test@test.test',42,'??????????????????','2022-10-18 06:54:04'),(1,'test@test.test',43,'??????????????????','2022-10-18 06:54:04'),(1,'test@test.test',44,'??????????????????','2022-10-18 06:54:04'),(1,'test@test.test',45,'??????????????????','2022-10-18 06:54:04'),(1,'test@test.test',46,'??????????????????','2022-10-18 08:27:09'),(1,'test@test.test',47,'??????????????????','2022-10-18 08:27:09'),(1,'test@test.test',48,'??????????????????','2022-10-18 08:27:09'),(1,'test@test.test',49,'??????????????????','2022-10-18 08:27:09'),(1,'test@test.test',50,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',51,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',52,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',53,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',54,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',55,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',56,'??????????????????','2022-10-18 08:27:10'),(1,'test@test.test',57,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',58,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',59,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',60,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',61,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',62,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',63,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',64,'??????????????????','2022-10-18 08:27:11'),(1,'test@test.test',65,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',66,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',67,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',68,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',69,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',70,'??????????????????','2022-10-18 08:27:12'),(1,'test@test.test',71,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',72,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',73,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',74,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',75,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',76,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',77,'??????????????????','2022-10-18 08:27:13'),(1,'test@test.test',78,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',79,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',80,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',81,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',82,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',83,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',84,'??????????????????','2022-10-18 08:27:14'),(1,'test@test.test',85,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',86,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',87,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',88,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',89,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',90,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',91,'??????????????????','2022-10-18 08:27:15'),(1,'test@test.test',92,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',93,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',94,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',95,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',96,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',97,'??????????????????','2022-10-18 08:27:16'),(1,'test@test.test',98,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',99,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',100,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',101,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',102,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',103,'??????????????????','2022-10-18 08:27:17'),(1,'test@test.test',104,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',105,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',106,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',107,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',108,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',109,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',110,'??????????????????','2022-10-18 08:27:18'),(1,'test@test.test',111,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',112,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',113,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',114,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',115,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',116,'??????????????????','2022-10-18 08:27:19'),(1,'test@test.test',117,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',118,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',119,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',120,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',121,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',122,'??????????????????','2022-10-18 08:27:20'),(1,'test@test.test',123,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',124,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',125,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',126,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',127,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',128,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',129,'??????????????????','2022-10-18 08:27:21'),(1,'test@test.test',130,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',131,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',132,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',133,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',134,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',135,'??????????????????','2022-10-18 08:27:22'),(1,'test@test.test',136,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',137,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',138,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',139,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',140,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',141,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',142,'??????????????????','2022-10-18 08:27:23'),(1,'test@test.test',143,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',144,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',145,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',146,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',147,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',148,'??????????????????','2022-10-18 08:27:24'),(1,'test@test.test',149,'??????????????????','2022-10-18 08:27:25'),(1,'test@test.test',150,'??????????????????','2022-10-18 08:27:25'),(3,'test@test.test',165,'TEST','2022-10-28 06:21:35'),(4,'test@test.test',166,'TEST','2022-10-28 06:22:25'),(7,'test@test.test',167,'TEST','2022-10-28 06:22:56'),(8,'test@test.test',168,'test','2022-10-28 06:24:49'),(2,'test@test.test',169,'????????? ?????????','2022-10-28 07:01:52'),(2,'ljseo0111@naver.com',170,'','2022-10-31 07:10:31');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guitar_list`
--

DROP TABLE IF EXISTS `guitar_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guitar_list` (
  `guitar_no` int NOT NULL,
  `guitar_name` varchar(20) DEFAULT NULL,
  `guitar_price` int DEFAULT NULL,
  PRIMARY KEY (`guitar_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guitar_list`
--

LOCK TABLES `guitar_list` WRITE;
/*!40000 ALTER TABLE `guitar_list` DISABLE KEYS */;
INSERT INTO `guitar_list` VALUES (1,'FG3',1339),(2,'FGX3',1664),(3,'FG5',2216),(4,'FGX5',2651),(5,'FS3',1339),(6,'FSX3',1664),(7,'FS5',2216),(8,'FSX5',2651);
/*!40000 ALTER TABLE `guitar_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_firstname` varchar(20) DEFAULT NULL,
  `user_lastname` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('ljseo0111@naver.com','wotj951204!!','lee','jeaseo'),('login@test.test','test123!!','test','test');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `guitar_no` int DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `qna_qno` int NOT NULL AUTO_INCREMENT,
  `qna_content` varchar(300) DEFAULT NULL,
  `qna_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qna_qno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'test@test.test',1,'qna????????? ?????????.','2022-10-13 07:07:53'),(1,'test@test.test',2,'qna????????? ?????????2.','2022-10-13 07:07:53'),(1,'test@test.test',3,'123123123','2022-10-18 05:43:26'),(1,'',4,'?????????','2022-10-19 05:25:25'),(1,'test@test.test',5,'????????????','2022-10-21 02:51:20'),(1,'',6,'??????????????????','2022-10-21 05:40:14'),(1,'',7,'','2022-10-21 05:40:19'),(1,'',8,'','2022-10-21 05:40:21'),(1,'',9,'','2022-10-21 05:40:23'),(1,'',10,'','2022-10-21 05:40:25'),(1,'',11,'','2022-10-21 05:40:26'),(1,'',12,'','2022-10-21 05:40:27'),(1,'',13,'','2022-10-21 05:40:28'),(1,'',14,'','2022-10-21 05:40:29'),(1,'',15,'','2022-10-21 05:40:29'),(1,'test@test.test',20,'test','2022-10-28 06:10:42'),(3,'test@test.test',23,'TEST','2022-10-28 06:21:39'),(4,'test@test.test',24,'TEST','2022-10-28 06:22:28'),(7,'test@test.test',25,'TSET','2022-10-28 06:22:59'),(8,'test@test.test',26,'testset','2022-10-28 06:24:52'),(2,'test@test.test',27,'????????? ?????? ?????????','2022-10-28 07:02:00'),(2,'ljseo0111@naver.com',28,'???????????? ?????????','2022-11-01 03:15:40');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 10:13:49
