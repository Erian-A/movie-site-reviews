-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: movies_api
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

USE movies_api;
--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author` (
  `Author_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Author_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (1,'Marcos');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Backdrop`
--

DROP TABLE IF EXISTS `Backdrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Backdrop` (
  `Backdrop_Id` int NOT NULL AUTO_INCREMENT,
  `FK_Movie_Id` int NOT NULL,
  `Backdrop_Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Backdrop_Id`),
  KEY `FK_Movie_Id` (`FK_Movie_Id`),
  CONSTRAINT `Backdrop_ibfk_1` FOREIGN KEY (`FK_Movie_Id`) REFERENCES `Movie` (`Movie_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Backdrop`
--

LOCK TABLES `Backdrop` WRITE;
/*!40000 ALTER TABLE `Backdrop` DISABLE KEYS */;
INSERT INTO `Backdrop` VALUES (1,1,'https://image.tmdb.org/t/p/original/r9PkFnRUIthgBp2JZZzD380MWZy.jpg'),(2,1,'https://image.tmdb.org/t/p/original/faXT8V80JRhnArTAeYXz0Eutpv9.jpg'),(3,1,'https://image.tmdb.org/t/p/original/pdrlEaknhta2wvE2dcD8XDEbAI4.jpg'),(4,1,'https://image.tmdb.org/t/p/original/tGwO4xcBjhXC0p5qlkw37TrH6S6.jpg'),(5,1,'https://image.tmdb.org/t/p/original/cP8YNG3XUeBmO8Jk7Skzq3vwHy1.jpg'),(6,1,'https://image.tmdb.org/t/p/original/qLE8yuieTDN93WNJRmFSAEJChOg.jpg'),(7,1,'https://image.tmdb.org/t/p/original/vNuHqmOJRQXY0PBd887DklSDlBP.jpg'),(8,1,'https://image.tmdb.org/t/p/original/uUCc62M0I3lpZy0SiydbBmUIpNi.jpg'),(9,1,'https://image.tmdb.org/t/p/original/2wPJIFrBhzzAP8oHDOlShMkERH6.jpg'),(10,1,'https://image.tmdb.org/t/p/original/fnfirCEDIkxZnQEtEMMSgllm0KZ.jpg'),(11,2,'https://image.tmdb.org/t/p/original/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg'),(12,2,'https://image.tmdb.org/t/p/original/evaFLqtswezLosllRZtJNMiO1UR.jpg'),(13,2,'https://image.tmdb.org/t/p/original/198vrF8k7mfQ4FjDJsBmdQcaiyq.jpg'),(14,2,'https://image.tmdb.org/t/p/original/zaapQ1zjKe2BGhhowh5pM251Gpl.jpg'),(15,2,'https://image.tmdb.org/t/p/original/tQ91wWQJ2WRNDXwxuO7GCXX5VPC.jpg'),(16,2,'https://image.tmdb.org/t/p/original/5gPQKfFJnl8d1edbkOzKONo4mnr.jpg'),(17,2,'https://image.tmdb.org/t/p/original/2fS9cpar9rzxixwnRptg4bGmIym.jpg'),(18,2,'https://image.tmdb.org/t/p/original/fkGR1ltNbvERk3topo4dP3gWsvR.jpg'),(19,2,'https://image.tmdb.org/t/p/original/rb9IHprKNoSKqatP2vr25unUDSu.jpg'),(20,2,'https://image.tmdb.org/t/p/original/37ZswIuRQcRBN7kHij5MBjzRMRt.jpg'),(21,3,'https://image.tmdb.org/t/p/original/5kAGbi9MFAobQTVfK4kWPnIfnP0.jpg'),(22,3,'https://image.tmdb.org/t/p/original/dlxzUj7z1MqEcFiwvvrj0bvBKDY.jpg'),(23,3,'https://image.tmdb.org/t/p/original/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg'),(24,3,'https://image.tmdb.org/t/p/original/pTxwFdsdDWzpCRYuk1QbggdaOlL.jpg'),(25,3,'https://image.tmdb.org/t/p/original/1zuz2RgFoOjulkjjNHHFc3WiHGB.jpg'),(26,3,'https://image.tmdb.org/t/p/original/7HqxI1IXMloT9VTSuDC8ikaj810.jpg'),(27,3,'https://image.tmdb.org/t/p/original/vpK2rp3J5LiC01HoNM0j9DEHQ1T.jpg'),(28,3,'https://image.tmdb.org/t/p/original/cNHXdmr4amP6EPCMa0dqD8rwzDV.jpg'),(29,3,'https://image.tmdb.org/t/p/original/txQLFd6rfQrskQhFENkS1jElptt.jpg'),(30,3,'https://image.tmdb.org/t/p/original/dC4tj1ONdlZ2TWv4XD2SA1KUnJN.jpg'),(31,4,'https://image.tmdb.org/t/p/original/53BC9F2tpZnsGno2cLhzvGprDYS.jpg'),(32,4,'https://image.tmdb.org/t/p/original/e9Qb2kmBnMXHCmNMI8NX1JbWhh1.jpg'),(33,4,'https://image.tmdb.org/t/p/original/2WjOOOGUu6dp4r8VqR5n48DY7JG.jpg'),(34,4,'https://image.tmdb.org/t/p/original/duIsyybgrC4S8kcCIVaxNOttV15.jpg'),(35,4,'https://image.tmdb.org/t/p/original/3RS8runn9AfrYDzRVPWuGPmvXQf.jpg'),(36,4,'https://image.tmdb.org/t/p/original/8wLRn2VvBlCu6cqYS4ypipnwosr.jpg'),(37,4,'https://image.tmdb.org/t/p/original/zDqVVkmfvj47FBUE5lwE4rWnITu.jpg'),(38,4,'https://image.tmdb.org/t/p/original/682Ui5DwZDdbIPzKAEOR7cJlMXa.jpg'),(39,4,'https://image.tmdb.org/t/p/original/6jdlppcnGi3XuJamfs4Vl7HyxB.jpg'),(40,4,'https://image.tmdb.org/t/p/original/uIq83ogs7QBEWi1aqmUrdDIH61m.jpg'),(41,5,'https://image.tmdb.org/t/p/original/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg'),(42,5,'https://image.tmdb.org/t/p/original/9hNtTwY8P5v2MKnUeb7iuREI7Yb.jpg'),(43,5,'https://image.tmdb.org/t/p/original/zplntIhzXyBiXFYWReETxh0uyFF.jpg'),(44,5,'https://image.tmdb.org/t/p/original/yxkhM18dYwsRRffLnd9lz2d4i0v.jpg'),(45,5,'https://image.tmdb.org/t/p/original/bgaBKREAfUtZgvd6zoV6RQRcIUt.jpg'),(46,5,'https://image.tmdb.org/t/p/original/uqYxoj4hqwocwfBs2xxGyQT88Yk.jpg'),(47,5,'https://image.tmdb.org/t/p/original/qBx97wytqlyPqXATHqRgIVFxJRU.jpg'),(48,5,'https://image.tmdb.org/t/p/original/d6MhreFdMHONqX3iZlJGCF8UkIt.jpg'),(49,5,'https://image.tmdb.org/t/p/original/9inNotReApz0n50WvWbrt0n1cbL.jpg'),(50,5,'https://image.tmdb.org/t/p/original/pSOuqtJmdh7aI1yiK7M8e0PmbPC.jpg'),(51,6,'https://image.tmdb.org/t/p/original/o0s4XsEDfDlvit5pDRKjzXR4pp2.jpg'),(52,6,'https://image.tmdb.org/t/p/original/8I37NtDffNV7AZlDa7uDvvqhovU.jpg'),(53,6,'https://image.tmdb.org/t/p/original/2YLOjUiczXEgVZFDSIeH3iWB3Ub.jpg'),(54,6,'https://image.tmdb.org/t/p/original/Yc9q6QuWrMp9nuDm5R8ExNqbEq.jpg'),(55,6,'https://image.tmdb.org/t/p/original/jlQJDD0L5ZojjlS0KYnApdO0n19.jpg'),(56,6,'https://image.tmdb.org/t/p/original/sfw4m2tOgQRzhF6VXxaXGfd1vX.jpg'),(57,6,'https://image.tmdb.org/t/p/original/7ABsaBkO1jA2psC8Hy4IDhkID4h.jpg'),(58,6,'https://image.tmdb.org/t/p/original/xMMrBziwJqrgjerqpNeQvwuwiUp.jpg'),(59,6,'https://image.tmdb.org/t/p/original/chauy3iJaZtrMbTr72rgNmOZwo3.jpg'),(60,6,'https://image.tmdb.org/t/p/original/mYJkJ7YxJsUNI1nAOOUOpRN2auC.jpg'),(61,7,'https://image.tmdb.org/t/p/original/nWs0auTqn2UaFGfTKtUE5tlTeBu.jpg'),(62,7,'https://image.tmdb.org/t/p/original/bPftMelR4N3jUg2LTlEblFz0gWk.jpg'),(63,7,'https://image.tmdb.org/t/p/original/u2MLMkGEjJGQDs17Vmoej1RYFph.jpg'),(64,7,'https://image.tmdb.org/t/p/original/jG52tsazn04F1fe8hPZfVv7ICKt.jpg'),(65,7,'https://image.tmdb.org/t/p/original/4INEI7t7Vcg0cFvze7UIgwYCeSG.jpg'),(66,7,'https://image.tmdb.org/t/p/original/krAu6znzW8c54NdJPneNi4bem1l.jpg'),(67,7,'https://image.tmdb.org/t/p/original/6TUMppDMrYA4gzoaDUbbSnZFlxW.jpg'),(68,7,'https://image.tmdb.org/t/p/original/hacV1h1SWrPlrerF3xpetvEdqT.jpg'),(69,7,'https://image.tmdb.org/t/p/original/7iXsB1r9IK17ZFShqoxcHKQ7dLp.jpg'),(70,7,'https://image.tmdb.org/t/p/original/dwiRYDLcFyDOkgkSc1JFtTr6Kdk.jpg'),(71,8,'https://image.tmdb.org/t/p/original/yYrvN5WFeGYjJnRzhY0QXuo4Isw.jpg'),(72,8,'https://image.tmdb.org/t/p/original/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg'),(73,8,'https://image.tmdb.org/t/p/original/cs3LpA38BS2XDPfUzdgMB537XOo.jpg'),(74,8,'https://image.tmdb.org/t/p/original/6SGMzCsaU094Mt32IHGkIYtIl06.jpg'),(75,8,'https://image.tmdb.org/t/p/original/bty0TwJGsxMqYRptgyzn28Cxq5y.jpg'),(76,8,'https://image.tmdb.org/t/p/original/h2jp3CSdTPc22mUqps9I8vXDPaN.jpg'),(77,8,'https://image.tmdb.org/t/p/original/fSfWloWi5rmqbmC7GhO0HY2TMZW.jpg'),(78,8,'https://image.tmdb.org/t/p/original/vZujZnmkYB5nGUC5d5llK9DbGLk.jpg'),(79,8,'https://image.tmdb.org/t/p/original/8sMmAmN2x7mBiNKEX2o0aOTozEB.jpg'),(80,8,'https://image.tmdb.org/t/p/original/geI3Mk7nehX1kvyIY3K5ajaiNfI.jpg'),(81,9,'https://image.tmdb.org/t/p/original/5wDBVictj4wUYZ31gR5WzCM9dLD.jpg'),(82,9,'https://image.tmdb.org/t/p/original/zNIlXd7CAz0hHAInbs2nsFRc0xQ.jpg'),(83,9,'https://image.tmdb.org/t/p/original/1rukJHAP5p6DNHe75Oo1D0m3SnR.jpg'),(84,9,'https://image.tmdb.org/t/p/original/aKbe411WyjTZy1OZUVIdNDYVf21.jpg'),(85,9,'https://image.tmdb.org/t/p/original/9RKvxz0IryD2ofLYyGpnE7HeWlR.jpg'),(86,9,'https://image.tmdb.org/t/p/original/kFURsDklj7QGMMkGJVwDBaJJn05.jpg'),(87,9,'https://image.tmdb.org/t/p/original/v6oBDkd7ogXzTQxIU0H5SXq0hOL.jpg'),(88,9,'https://image.tmdb.org/t/p/original/fBshLiEJcjdfrU3qQBIINcePSsm.jpg'),(89,9,'https://image.tmdb.org/t/p/original/3oie0kID8SNCjkqN6Raweg5dJa.jpg'),(90,9,'https://image.tmdb.org/t/p/original/zgFldVKON1Nxp8ui7HVABGKDQKM.jpg'),(91,10,'https://image.tmdb.org/t/p/original/gkseI3CUfQtMKX41XD4AxDzhQb7.jpg'),(92,10,'https://image.tmdb.org/t/p/original/wSILunFEbvw00Ql2aaMHCSZf3cI.jpg'),(93,10,'https://image.tmdb.org/t/p/original/xTsERrOCW15OIYl5aPX7Jbj38wu.jpg'),(94,10,'https://image.tmdb.org/t/p/original/j06sSrtbqnZdSgG6yEduao95y48.jpg'),(95,10,'https://image.tmdb.org/t/p/original/v4YV4ne1nwNni35iz4WmpZRZpCD.jpg'),(96,10,'https://image.tmdb.org/t/p/original/6n5ln1vWGD3JyT6Ibt7ZxjSxY3v.jpg'),(97,10,'https://image.tmdb.org/t/p/original/gi47WUUYVQWaLE5mJraS87ycdy6.jpg'),(98,10,'https://image.tmdb.org/t/p/original/dTQOU5a32K3UPTIXHgipEqN41OM.jpg'),(99,10,'https://image.tmdb.org/t/p/original/7zQJYV02yehWrQN6NjKsBorqUUS.jpg'),(100,10,'https://image.tmdb.org/t/p/original/rdDL4y7BxGyXFEDJgAG4lz89bG2.jpg');
/*!40000 ALTER TABLE `Backdrop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `Genre_id` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Genre_id`),
  UNIQUE KEY `Type` (`Type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (2,'Action'),(3,'Adventure'),(1,'Animation'),(4,'Comedy'),(9,'Drama'),(5,'Family'),(8,'Fantasy'),(10,'History'),(7,'Horror'),(6,'Science Fiction');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_Id` int NOT NULL AUTO_INCREMENT,
  `ImbId` varchar(255) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Trailer_Link` varchar(255) DEFAULT NULL,
  `Poster_Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Movie_Id`),
  UNIQUE KEY `ImbId` (`ImbId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'tt3915174','Puss in Boots: The Last Wish','2022-12-21','https://www.youtube.com/watch?v=tHb7WlgyaUc','https://image.tmdb.org/t/p/w500/1NqwE6LP9IEdOZ57NCT51ftHtWT.jpg'),(2,'tt1630029','Avatar: The Way of Water','2022-12-16','https://www.youtube.com/watch?v=d9MyW72ELq0','https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg'),(3,'tt8760708','M3GAN','2023-01-06','https://www.youtube.com/watch?v=BRb4U99OU80','https://image.tmdb.org/t/p/w500/xBl5AGw7HXZcv1nNXPlzGgO4Cfo.jpg'),(4,'tt11116912','Troll','2022-12-01','https://www.youtube.com/watch?v=AiohkY_XQYQ','https://image.tmdb.org/t/p/w500/9z4jRr43JdtU66P0iy8h18OyLql.jpg'),(5,'tt6443346','Black Adam','2022-10-19','https://www.youtube.com/watch?v=JaV7mmc9HGw','https://image.tmdb.org/t/p/w500/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg'),(6,'tt0499549','Avatar','2009-12-15','https://www.youtube.com/watch?v=5PSNL1qE6VY','https://image.tmdb.org/t/p/w500/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg'),(7,'tt3447590','Roald Dahl\'s Matilda the Musical','2022-11-25','https://www.youtube.com/watch?v=lroAhsDr2vI','https://image.tmdb.org/t/p/w500/ga8R3OiOMMgSvZ4cOj8x7prUNYZ.jpg'),(8,'tt9114286','Black Panther: Wakanda Forever','2022-11-11','https://www.youtube.com/watch?v=_Z3QKkl1WyM','https://image.tmdb.org/t/p/w500/cryEN3sWlgB2wTzcUNVtDGI8bkM.jpg'),(9,'tt10298840','Strange World','2022-11-23','https://www.youtube.com/watch?v=bKh2G73gCCs','https://image.tmdb.org/t/p/w500/kgJ8bX3zDQDM2Idkleis28XSVnu.jpg'),(10,'tt8093700','The Woman King','2022-09-15','https://www.youtube.com/watch?v=3RDaPV_rJ1Y','https://image.tmdb.org/t/p/w500/5O1GLla5vNuegqNxNhKL1OKE1lO.jpg');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Has_Genre`
--

DROP TABLE IF EXISTS `Movie_Has_Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie_Has_Genre` (
  `FK_Movie_Id` int NOT NULL,
  `FK_Genre_Id` int NOT NULL,
  PRIMARY KEY (`FK_Movie_Id`,`FK_Genre_Id`),
  KEY `FK_Genre_Id` (`FK_Genre_Id`),
  CONSTRAINT `Movie_Has_Genre_ibfk_1` FOREIGN KEY (`FK_Movie_Id`) REFERENCES `Movie` (`Movie_Id`),
  CONSTRAINT `Movie_Has_Genre_ibfk_2` FOREIGN KEY (`FK_Genre_Id`) REFERENCES `Genre` (`Genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Has_Genre`
--

LOCK TABLES `Movie_Has_Genre` WRITE;
/*!40000 ALTER TABLE `Movie_Has_Genre` DISABLE KEYS */;
INSERT INTO `Movie_Has_Genre` VALUES (1,1),(9,1),(1,2),(2,2),(4,2),(5,2),(6,2),(8,2),(10,2),(1,3),(2,3),(4,3),(6,3),(8,3),(9,3),(1,4),(3,4),(7,4),(1,5),(7,5),(9,5),(2,6),(3,6),(5,6),(6,6),(8,6),(9,6),(3,7),(4,8),(5,8),(6,8),(7,8),(10,9),(10,10);
/*!40000 ALTER TABLE `Movie_Has_Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Has_Review_From_Author`
--

DROP TABLE IF EXISTS `Movie_Has_Review_From_Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie_Has_Review_From_Author` (
  `Review_Id` int NOT NULL AUTO_INCREMENT,
  `FK_Author_Id` int NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `FK_Movie_ImbId` varchar(255) NOT NULL,
  PRIMARY KEY (`Review_Id`),
  KEY `FK_Author_Id` (`FK_Author_Id`),
  KEY `FK_Movie_ImbId` (`FK_Movie_ImbId`),
  CONSTRAINT `Movie_Has_Review_From_Author_ibfk_2` FOREIGN KEY (`FK_Author_Id`) REFERENCES `Author` (`Author_Id`),
  CONSTRAINT `Movie_Has_Review_From_Author_ibfk_3` FOREIGN KEY (`FK_Movie_ImbId`) REFERENCES `Movie` (`ImbId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Has_Review_From_Author`
--

LOCK TABLES `Movie_Has_Review_From_Author` WRITE;
/*!40000 ALTER TABLE `Movie_Has_Review_From_Author` DISABLE KEYS */;
INSERT INTO `Movie_Has_Review_From_Author` VALUES (1,1,'Que filmão','tt8093700'),(2,1,'I would like to watch this movie again','tt8093700');
/*!40000 ALTER TABLE `Movie_Has_Review_From_Author` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-24 14:16:57
