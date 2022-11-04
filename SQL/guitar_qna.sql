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
INSERT INTO `qna` VALUES (1,'test@test.test',1,'qna테스트 입니다.','2022-10-13 07:07:53'),(1,'test@test.test',2,'qna테스트 입니다2.','2022-10-13 07:07:53'),(1,'test@test.test',3,'123123123','2022-10-18 05:43:26'),(1,'',4,'테스트','2022-10-19 05:25:25'),(1,'test@test.test',5,'ㅂㅂㅂㅂ','2022-10-21 02:51:20'),(1,'',6,'페이징테스트','2022-10-21 05:40:14'),(1,'',7,'','2022-10-21 05:40:19'),(1,'',8,'','2022-10-21 05:40:21'),(1,'',9,'','2022-10-21 05:40:23'),(1,'',10,'','2022-10-21 05:40:25'),(1,'',11,'','2022-10-21 05:40:26'),(1,'',12,'','2022-10-21 05:40:27'),(1,'',13,'','2022-10-21 05:40:28'),(1,'',14,'','2022-10-21 05:40:29'),(1,'',15,'','2022-10-21 05:40:29'),(1,'test@test.test',20,'test','2022-10-28 06:10:42'),(3,'test@test.test',23,'TEST','2022-10-28 06:21:39'),(4,'test@test.test',24,'TEST','2022-10-28 06:22:28'),(7,'test@test.test',25,'TSET','2022-10-28 06:22:59'),(8,'test@test.test',26,'testset','2022-10-28 06:24:52'),(2,'test@test.test',27,'배달은 언제 되나요','2022-10-28 07:02:00'),(2,'ljseo0111@naver.com',28,'본인삭제 테스트','2022-11-01 03:15:40');
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

-- Dump completed on 2022-11-04 10:12:27
