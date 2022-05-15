-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `cusID` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) NOT NULL,
  `customerEmaill` varchar(45) NOT NULL,
  `customerType` varchar(45) NOT NULL,
  PRIMARY KEY (`cusID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (111,'Fernando M.V.R.','viruniravindi123@gmail.com',''),(112,'Wijesinghe K.H.','wije123@gmail.com','');
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `noticeID` int NOT NULL AUTO_INCREMENT,
  `noticeType` varchar(10) NOT NULL,
  `noticeCode` varchar(45) NOT NULL,
  `noticeDate` varchar(45) NOT NULL,
  `noticeTopic` varchar(100) NOT NULL,
  `noticeDesc` varchar(700) NOT NULL,
  `noticePerson` varchar(100) NOT NULL,
  `noticeMails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'2','EG101/005','12/1/2022','Notice regurading submit reports','It is required to submit type test reports for the materials offered in tenders of CEB Distribution Divisions.As per the latest specifications, a bidder can provide type test reports issued by: Either (a) An accredited independent testing laboratory acceptable to the CEB or (b) An accredited independent testing laboratory acceptable to the CEB where the type tests have been witnessed by CEB or reputed body acceptable to CEB','Fernando M.V.R.','sent'),(3,'2','EG222/004','22/2/2022','Attention','Please confirm your availability via emails','Peiris R.T.','sent'),(4,'1','EG101/005','22/2/2022','Special Notice ','Please submit given forms befor 2022/05/21','Perera M.K.','-'),(5,'2 ','EG101/006','12/1/2022','Special notice regarding submitting type test reports for EG Tenders','It is required to submit type test reports for the materials offered in tenders of CEB Distribution Divisions.As per the latest specifications, a bidder can provide type test reports issued by: Either (a) An accredited independent testing laboratory acceptable to the CEB or (b) An accredited independent testing laboratory acceptable to the CEB where the type tests have been witnessed by CEB or reputed body acceptable to CEB','Fernando M.V.R.','sent'),(6,'1','EG101/007','22/2/2022','Notice reguarding upcoming changes in time tables','Please notice that all the power cuts are postponed to 10th of june 2022','K.H.Wijesinghe','-'),(7,'2','EG101/008','21/04/2022','Important Notice','If you are already served with a disconnection notice or your payment has passed the allowed 30 days, please produce any one of the following as proof of your online bill payment in case disconnection gangs arrived at your location.\n1. A printout of the web payment receipt.\n2. A soft copy of the payment receipt saved in your computer.\n\n','Fernando M.V.R.','sent'),(8,'1','EG102/009','21/04/2022','Special Notice','If you are already served with a disconnection notice or your payment has passed the allowed 30 days, please produce any one of the following as proof of your online bill payment in case disconnection gangs arrived at your location.\n1. A printout of the web payment receipt.\n2. A soft copy of the payment receipt saved in your computer.\n\n','W.A.Silva','-'),(9,'2','EG101/005','12/1/2022','Submitting Reports','It is required to submit type test reports for the materials offered in tenders of CEB Distribution Divisions.As per the latest specifications, a bidder can provide type test reports issued by: Either (a) An accredited independent testing laboratory acceptable to the CEB or (b) An accredited independent testing laboratory acceptable to the CEB where the type tests have been witnessed by CEB or reputed body acceptable to CEB','Fernando M.V.R.','sent'),(10,'1','EG101/555','22/2/2022','special meeting','There will be an event reguarding the power cuts that are going to happen for the next few days','K.H.Wijesinghe','sent'),(11,'1','EG101/555','22/2/20223','No powercuts','There will be no power cuts on poya day','Fernando D.J.','sent'),(12,'1','EG101/555','22/2/2022','Important zoom meeting','There will be a zoom meeting reguarding the upcoming price increases','K.H.Wijesinghe','sent'),(13,'1','EG101/555','22/2/2022','Topic','There will be a specially insert','K.H.Wijesinghe','sent');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 16:04:39
