-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: polyoe
-- ------------------------------------------------------
-- Server version	8.2.0

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
  `Id` int NOT NULL AUTO_INCREMENT,
  `VideoId` varchar(20) NOT NULL,
  `UserId` varchar(20) NOT NULL,
  `Content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Likes` int DEFAULT '0',
  `CommentDate` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `VideoId` (`VideoId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`VideoId`) REFERENCES `video` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) NOT NULL,
  `VideoId` varchar(20) NOT NULL,
  `LikedDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserId` (`UserId`,`VideoId`),
  KEY `favorite_ibfk_1` (`VideoId`),
  KEY `favorite_ibfk_2_idx` (`UserId`),
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`VideoId`) REFERENCES `video` (`Id`),
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,'us001','vid001','2024-11-03'),(2,'us001','vid002','2024-11-03'),(3,'us001','vid003','2024-11-03'),(4,'us001','vid004','2024-11-03'),(5,'us001','vid005','2024-11-03'),(6,'us002','vid001','2024-11-03'),(7,'us002','vid002','2024-11-03'),(8,'us002','vid003','2024-11-03'),(9,'us002','vid004','2024-11-03'),(10,'us002','vid005','2024-11-03'),(11,'us003','vid005','2024-11-03'),(12,'us003','vid004','2024-11-03'),(13,'us003','vid003','2024-11-03'),(14,'us003','vid002','2024-11-03'),(15,'us003','vid001','2024-11-03'),(16,'us004','vid001','2024-11-03'),(17,'us004','vid002','2024-11-03'),(18,'us004','vid003','2024-11-03'),(19,'us004','vid004','2024-11-03'),(20,'us004','vid005','2024-11-03');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) NOT NULL,
  `VideoId` varchar(20) NOT NULL,
  `Emails` varchar(255) NOT NULL,
  `ShareDate` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `share_ibfk_1` (`UserId`),
  KEY `share_ibfk_2` (`VideoId`),
  CONSTRAINT `share_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`),
  CONSTRAINT `share_ibfk_2` FOREIGN KEY (`VideoId`) REFERENCES `video` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Id` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Fullname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Admin` bit(1) DEFAULT b'0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('us001','fake001','Spongebob','Spongebob@example.com',_binary ''),('us002','fake002','Pattrick','Pattrick@example.com',_binary '\0'),('us003','fake003','Sandy','Sandy@example.com',_binary '\0'),('us004','fake004','Marley','Marley@example.com',_binary ''),('us005','fake005','Steve','Steve@example.com',_binary '\0'),('us006','1234','Peter','peter@fpt.edu.vn',_binary '\0'),('us007','1234','Harry','harry@fpt.edu.vn',_binary '\0'),('us008','1234','Tom','tom@fpt.edu.vn',_binary ''),('us009','1234','Michael','michael@fpt.edu.vn',_binary ''),('us010','1234','Jack','Jack@fpt.edu.vn',_binary '\0'),('us011','1234','John','John@fpt.edu.vn',_binary '\0'),('us012','1234','Lucy','Lucy@fpt.edu.vn',_binary ''),('us013','1234','Alex','Alex@fpt.edu.vn',_binary '\0'),('us014','1234','Nick','Nick@fpt.edu.vn',_binary '\0'),('us015','1234','Ryan','Ryan@fpt.edu.vn',_binary ''),('us016','1234','Walter','Walter@fpt.edu.vn',_binary '\0'),('us017','1234','Jesse','Jesse@fpt.edu.vn',_binary '\0'),('us018','1234','Adele','Adele@fpt.edu.vn',_binary ''),('us019','1234','Taylor','Taylor@fpt.edu.vn',_binary '\0'),('us020','1234','Nguyễn Văn A','anguyen@gmail.com',_binary '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `Id` varchar(20) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Poster` varchar(100) NOT NULL,
  `YTCode` varchar(50) NOT NULL,
  `Views` int NOT NULL DEFAULT '0',
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `postedDate` datetime(6) DEFAULT NULL,
  `Likes` int NOT NULL DEFAULT '0',
  `Active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES ('vid001','Video Title','no poster','testcode',0,'Video Description','2024-11-03 14:34:28.586000',0,_binary ''),('vid002','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:19.366000',0,_binary ''),('vid003','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.251000',0,_binary ''),('vid004','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.259000',0,_binary ''),('vid005','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.270000',0,_binary ''),('vid006','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.276000',0,_binary ''),('vid007','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.282000',0,_binary ''),('vid008','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.287000',0,_binary ''),('vid009','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.293000',0,_binary ''),('vid010','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.299000',0,_binary ''),('vid011','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.305000',0,_binary ''),('vid012','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.312000',0,_binary ''),('vid013','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.318000',0,_binary ''),('vid014','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.325000',0,_binary ''),('vid015','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.332000',0,_binary ''),('vid016','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.338000',0,_binary ''),('vid017','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.344000',0,_binary ''),('vid018','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.350000',0,_binary ''),('vid019','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.355000',0,_binary ''),('vid020','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.362000',0,_binary ''),('vid021','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.368000',0,_binary ''),('vid022','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.375000',0,_binary ''),('vid023','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.381000',0,_binary ''),('vid024','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.387000',0,_binary ''),('vid025','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.393000',0,_binary ''),('vid026','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.401000',0,_binary ''),('vid027','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.409000',0,_binary ''),('vid028','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.429000',0,_binary ''),('vid029','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.441000',0,_binary ''),('vid030','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.451000',0,_binary ''),('vid031','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.460000',0,_binary ''),('vid032','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.468000',0,_binary ''),('vid033','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.476000',0,_binary ''),('vid034','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.484000',0,_binary ''),('vid035','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.491000',0,_binary ''),('vid036','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.499000',0,_binary ''),('vid037','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.505000',0,_binary ''),('vid038','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.511000',0,_binary ''),('vid039','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.519000',0,_binary ''),('vid040','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.524000',0,_binary ''),('vid041','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.529000',0,_binary ''),('vid042','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.534000',0,_binary ''),('vid043','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.538000',0,_binary ''),('vid044','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.544000',0,_binary ''),('vid045','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.549000',0,_binary ''),('vid046','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.555000',0,_binary ''),('vid047','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.560000',0,_binary ''),('vid048','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.565000',0,_binary ''),('vid049','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.570000',0,_binary ''),('vid050','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.577000',0,_binary ''),('vid051','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.581000',0,_binary ''),('vid052','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.585000',0,_binary ''),('vid053','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.589000',0,_binary ''),('vid054','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.595000',0,_binary ''),('vid055','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.599000',0,_binary ''),('vid056','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.604000',0,_binary ''),('vid057','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.613000',0,_binary ''),('vid058','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.622000',0,_binary ''),('vid059','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.633000',0,_binary ''),('vid060','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.645000',0,_binary ''),('vid061','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.657000',0,_binary ''),('vid062','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.667000',0,_binary ''),('vid063','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.676000',0,_binary ''),('vid064','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.686000',0,_binary ''),('vid065','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.694000',0,_binary ''),('vid066','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.707000',0,_binary ''),('vid067','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.717000',0,_binary ''),('vid068','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.725000',0,_binary ''),('vid069','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.731000',0,_binary ''),('vid070','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.736000',0,_binary ''),('vid071','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.741000',0,_binary ''),('vid072','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.747000',0,_binary ''),('vid073','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.752000',0,_binary ''),('vid074','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.756000',0,_binary ''),('vid075','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.761000',0,_binary ''),('vid076','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.766000',0,_binary ''),('vid077','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.770000',0,_binary ''),('vid078','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.775000',0,_binary ''),('vid079','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.781000',0,_binary ''),('vid080','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.785000',0,_binary ''),('vid081','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.789000',0,_binary ''),('vid082','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.796000',0,_binary ''),('vid083','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.800000',0,_binary ''),('vid084','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.806000',0,_binary ''),('vid085','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.813000',0,_binary ''),('vid086','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.819000',0,_binary ''),('vid087','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.826000',0,_binary ''),('vid088','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.834000',0,_binary ''),('vid089','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.844000',0,_binary ''),('vid090','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.853000',0,_binary ''),('vid091','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.864000',0,_binary ''),('vid092','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.873000',0,_binary ''),('vid093','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.882000',0,_binary ''),('vid094','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.892000',0,_binary ''),('vid095','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.901000',0,_binary ''),('vid096','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.908000',0,_binary ''),('vid097','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.917000',0,_binary ''),('vid098','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.926000',0,_binary ''),('vid099','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.931000',0,_binary ''),('vid100','Video Title','Video poster','Youtube code',0,'Video Description','2024-11-03 14:37:23.937000',0,_binary '');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08  8:50:19
