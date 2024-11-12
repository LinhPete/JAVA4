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
INSERT INTO `user` VALUES ('us001','123','Spongebob','Spongebob@example.com',_binary ''),('us002','123','Pattrick','Pattrick@example.com',_binary '\0'),('us003','fake003','Sandy','Sandy@example.com',_binary '\0'),('us004','123','Marley','Marley@example.com',_binary ''),('us005','fake005','Steve','Steve@example.com',_binary '\0'),('us006','1234','Peter','peter@fpt.edu.vn',_binary '\0'),('us007','1234','Harry','harry@fpt.edu.vn',_binary '\0'),('us008','1234','Tom','tom@fpt.edu.vn',_binary ''),('us009','1234','Michael','michael@fpt.edu.vn',_binary ''),('us010','1234','Jack','Jack@fpt.edu.vn',_binary '\0'),('us011','1234','John','John@fpt.edu.vn',_binary '\0'),('us012','1234','Lucy','Lucy@fpt.edu.vn',_binary ''),('us013','1234','Alex','Alex@fpt.edu.vn',_binary '\0'),('us014','1234','Nick','Nick@fpt.edu.vn',_binary '\0'),('us015','1234','Ryan','Ryan@fpt.edu.vn',_binary ''),('us016','1234','Walter','Walter@fpt.edu.vn',_binary '\0'),('us017','1234','Jesse','Jesse@fpt.edu.vn',_binary '\0'),('us018','1234','Adele','Adele@fpt.edu.vn',_binary ''),('us019','1234','Taylor','Taylor@fpt.edu.vn',_binary '\0'),('us020','1234','Nguyễn Văn A','anguyen@gmail.com',_binary '');
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
  `PostedDate` datetime(6) NOT NULL,
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
INSERT INTO `video` VALUES ('vid001','Shape of You','shape-of-you.jpg','JGwWNGJdvx8',0,'Ed Sheeran - Shape of You (Official Video)','2017-01-30 12:00:00.000000',31000000,_binary ''),('vid002','Despacito','despacito.jpg','kJQP7kiw5Fk',0,'Luis Fonsi ft. Daddy Yankee - Despacito','2017-01-12 12:00:00.000000',51000000,_binary ''),('vid003','See You Again','see-you-again.jpg','RgKAFK5djSk',0,'Wiz Khalifa - See You Again ft. Charlie Puth [Official Video]','2015-04-06 12:00:00.000000',32000000,_binary ''),('vid004','Uptown Funk','uptown-funk.jpg','OPf0YbXqDm0',0,'Mark Ronson - Uptown Funk ft. Bruno Mars (Official Video)','2014-11-19 12:00:00.000000',28000000,_binary ''),('vid005','Gangnam Style','gangnam-style.jpg','9bZkp7q19f0',0,'PSY - GANGNAM STYLE(강남스타일) M/V','2012-07-15 12:00:00.000000',25000000,_binary ''),('vid006','Sorry','poster6.jpg','fRh_vgS2dFE',0,'Justin Bieber - Sorry (PURPOSE : The Movement)','2015-10-22 12:00:00.000000',21000000,_binary ''),('vid007','Sugar','poster7.jpg','09R8_2nJtjg',0,'Maroon 5 - Sugar (Official Music Video)','2015-01-14 12:00:00.000000',20000000,_binary ''),('vid008','Roar','poster8.jpg','CevxZvSJLk8',0,'Katy Perry - Roar (Official)','2013-09-05 12:00:00.000000',24000000,_binary ''),('vid009','Thinking Out Loud','poster9.jpg','lp-EO5I60KA',0,'Ed Sheeran - Thinking Out Loud (Official Video)','2014-10-07 12:00:00.000000',30000000,_binary ''),('vid010','Dark Horse','poster10.jpg','0KSOMA3QBU0',0,'Katy Perry - Dark Horse ft. Juicy J','2014-02-20 12:00:00.000000',25000000,_binary ''),('vid011','Faded','poster11.jpg','60ItHLz5WEA',0,'Alan Walker - Faded','2015-12-03 12:00:00.000000',22000000,_binary ''),('vid012','Girls Like You','poster12.jpg','aJOTlE1K90k',0,'Maroon 5 - Girls Like You ft. Cardi B','2018-05-30 12:00:00.000000',29000000,_binary ''),('vid013','Lean On','poster13.jpg','YqeW9_5kURI',0,'Major Lazer & DJ Snake - Lean On (feat. MØ) (Official Music Video)','2015-03-22 12:00:00.000000',21000000,_binary ''),('vid014','Hello','poster14.jpg','YQHsXMglC9A',0,'Adele - Hello','2015-10-22 12:00:00.000000',20000000,_binary ''),('vid015','Counting Stars','poster15.jpg','hT_nvWreIhg',0,'OneRepublic - Counting Stars (Official Music Video)','2013-05-31 12:00:00.000000',19000000,_binary ''),('vid016','Cheap Thrills','poster16.jpg','nYh-n7EOtMA',0,'Sia - Cheap Thrills (Performance Edit)','2016-03-17 12:00:00.000000',18000000,_binary ''),('vid017','Work From Home','poster17.jpg','5GL9JoH4Sws',0,'Fifth Harmony - Work from Home ft. Ty Dolla $ign','2016-02-26 12:00:00.000000',17000000,_binary ''),('vid018','Shake It Off','poster18.jpg','nfWlot6h_JM',0,'Taylor Swift - Shake It Off','2014-08-18 12:00:00.000000',26000000,_binary ''),('vid019','Bailando','poster19.jpg','NUsoVlDFqZg',0,'Enrique Iglesias - Bailando ft. Descemer Bueno, Gente De Zona (Español)','2014-04-11 12:00:00.000000',18000000,_binary ''),('vid020','Waka Waka','poster20.jpg','pRpeEdMmmQ0',0,'Shakira - Waka Waka (This Time for Africa) (The Official 2010 FIFA World Cup™ Song)','2010-06-04 12:00:00.000000',23000000,_binary '');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;  4
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10 20:41:18
