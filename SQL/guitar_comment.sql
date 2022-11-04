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
INSERT INTO `comment` VALUES (1,'test@test.test',1,'테스트 입니다.','2022-10-13 07:07:12'),(1,'test@test.test',2,'테스트 입니다2.','2022-10-13 07:07:12'),(1,'test@test.test',9,'test','2022-10-17 08:24:17'),(1,'user_emailValue',10,'commemtValue','2022-10-18 01:36:49'),(1,'',11,'wvwvwavwawv','2022-10-18 05:15:09'),(1,'test@test.test',12,'123123123','2022-10-18 05:35:51'),(1,'test@test.test',13,'페이징테스트','2022-10-18 06:53:37'),(1,'test@test.test',14,'페이징테스트','2022-10-18 06:53:38'),(1,'test@test.test',15,'페이징테스트','2022-10-18 06:53:38'),(1,'test@test.test',16,'페이징테스트','2022-10-18 06:53:38'),(1,'test@test.test',17,'페이징테스트','2022-10-18 06:53:39'),(1,'test@test.test',18,'페이징테스트','2022-10-18 06:53:39'),(1,'test@test.test',19,'페이징테스트','2022-10-18 06:53:39'),(1,'test@test.test',20,'페이징테스트','2022-10-18 06:53:39'),(1,'test@test.test',21,'페이징테스트','2022-10-18 06:53:40'),(1,'test@test.test',22,'페이징테스트','2022-10-18 06:53:40'),(1,'test@test.test',23,'페이징테스트','2022-10-18 06:53:40'),(1,'test@test.test',24,'페이징테스트','2022-10-18 06:53:40'),(1,'test@test.test',25,'페이징테스트','2022-10-18 06:53:40'),(1,'test@test.test',26,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',27,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',28,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',29,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',30,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',31,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',32,'페이징테스트','2022-10-18 06:53:41'),(1,'test@test.test',33,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',34,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',35,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',36,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',37,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',38,'페이징테스트','2022-10-18 06:53:42'),(1,'test@test.test',39,'페이징테스트','2022-10-18 06:54:03'),(1,'test@test.test',40,'페이징테스트','2022-10-18 06:54:03'),(1,'test@test.test',41,'페이징테스트','2022-10-18 06:54:03'),(1,'test@test.test',42,'페이징테스트','2022-10-18 06:54:04'),(1,'test@test.test',43,'페이징테스트','2022-10-18 06:54:04'),(1,'test@test.test',44,'페이징테스트','2022-10-18 06:54:04'),(1,'test@test.test',45,'페이징테스트','2022-10-18 06:54:04'),(1,'test@test.test',46,'페이징테스트','2022-10-18 08:27:09'),(1,'test@test.test',47,'페이징테스트','2022-10-18 08:27:09'),(1,'test@test.test',48,'페이징테스트','2022-10-18 08:27:09'),(1,'test@test.test',49,'페이징테스트','2022-10-18 08:27:09'),(1,'test@test.test',50,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',51,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',52,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',53,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',54,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',55,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',56,'페이징테스트','2022-10-18 08:27:10'),(1,'test@test.test',57,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',58,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',59,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',60,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',61,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',62,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',63,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',64,'페이징테스트','2022-10-18 08:27:11'),(1,'test@test.test',65,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',66,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',67,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',68,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',69,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',70,'페이징테스트','2022-10-18 08:27:12'),(1,'test@test.test',71,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',72,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',73,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',74,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',75,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',76,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',77,'페이징테스트','2022-10-18 08:27:13'),(1,'test@test.test',78,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',79,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',80,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',81,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',82,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',83,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',84,'페이징테스트','2022-10-18 08:27:14'),(1,'test@test.test',85,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',86,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',87,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',88,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',89,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',90,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',91,'페이징테스트','2022-10-18 08:27:15'),(1,'test@test.test',92,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',93,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',94,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',95,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',96,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',97,'페이징테스트','2022-10-18 08:27:16'),(1,'test@test.test',98,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',99,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',100,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',101,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',102,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',103,'페이징테스트','2022-10-18 08:27:17'),(1,'test@test.test',104,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',105,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',106,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',107,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',108,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',109,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',110,'페이징테스트','2022-10-18 08:27:18'),(1,'test@test.test',111,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',112,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',113,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',114,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',115,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',116,'페이징테스트','2022-10-18 08:27:19'),(1,'test@test.test',117,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',118,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',119,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',120,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',121,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',122,'페이징테스트','2022-10-18 08:27:20'),(1,'test@test.test',123,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',124,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',125,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',126,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',127,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',128,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',129,'페이징테스트','2022-10-18 08:27:21'),(1,'test@test.test',130,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',131,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',132,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',133,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',134,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',135,'페이징테스트','2022-10-18 08:27:22'),(1,'test@test.test',136,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',137,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',138,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',139,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',140,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',141,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',142,'페이징테스트','2022-10-18 08:27:23'),(1,'test@test.test',143,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',144,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',145,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',146,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',147,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',148,'페이징테스트','2022-10-18 08:27:24'),(1,'test@test.test',149,'페이징테스트','2022-10-18 08:27:25'),(1,'test@test.test',150,'페이징테스트','2022-10-18 08:27:25'),(3,'test@test.test',165,'TEST','2022-10-28 06:21:35'),(4,'test@test.test',166,'TEST','2022-10-28 06:22:25'),(7,'test@test.test',167,'TEST','2022-10-28 06:22:56'),(8,'test@test.test',168,'test','2022-10-28 06:24:49'),(2,'test@test.test',169,'기타가 좋아요','2022-10-28 07:01:52'),(2,'ljseo0111@naver.com',170,'','2022-10-31 07:10:31');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 10:12:28
