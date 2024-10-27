-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin@edoc.com','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appoid` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `apponum` int DEFAULT NULL,
  `scheduleid` int DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  PRIMARY KEY (`appoid`),
  KEY `pid` (`pid`),
  KEY `scheduleid` (`scheduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (3,4,2,1,'2024-03-25'),(6,11,1,13,'2024-04-04');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `docid` int NOT NULL AUTO_INCREMENT,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `specialties` (`specialties`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'doctor@edoc.com','Test Doctor','123','000000000','0110000000',1),(3,'drsuresh@h2c.com','Dr Suresh Pathak ','123','4554','017654567',13),(4,'drramesh@h2c.com','Dr Ramesh Singh','12345','5445','01234765',1),(5,'hari@h2c.com','Hari Bahadur','12345678','0089','0987654567',6);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'patient@h2c.com','Ram Bahadur Gurung','123','Nepal','1243','2000-01-01','01234567896'),(13,'suman@h2c.com','Suman Rijal','12345678','Kathmandu','0067','2001-02-08','0987656567'),(14,'ramesh@h2c.com','Ramesh Kharel','ramesh123','Birgunj','0098','2002-02-06','0987654567'),(4,'tenzing@rai.com','Tenzing Rai ','12345','Ktm','123','2024-03-14','0123456789'),(12,'diwakar@h2c.com','Diwakar  Sapkota','diwakar123','Hetauda ','0025','1995-10-03','0987654567'),(6,'ramshah@gmail.com','Ram  Shah','123','Janakpur','3433','1995-10-03','0984557512'),(7,'sanjeev@h2c.com','Sanjeev Pandey','123','Kathmandu ','608','1998-07-09','0123459876'),(8,'pabingurung@h2c.com','Pabin  Gurung','123','Kathmandu','4565','2004-02-06','0981234567'),(9,'prajwal@h2c.com','Prajwal Maharjan','123','Kathmandu ','4563','1999-03-11','0984532167'),(10,'ram@h2c.com','Ram  Kharel','123','Thamel','23323','2024-04-16','0897897898'),(11,'shyam@h2c.com','Shyam  Dhital','123','Hetauda','0022','2008-02-13','0986745321'),(15,'dibas@h2c.com','Dibas Kharel','12345678','Kathmandu','0098','2022-07-15','0987878678');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `scheduleid` int NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int DEFAULT NULL,
  PRIMARY KEY (`scheduleid`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (14,'3','OPD','2024-04-04','23:30:00',3),(11,'4','Follow UP','2024-03-27','18:10:00',3),(7,'1','1','2022-06-24','20:36:00',1),(9,'2','Check Up','2024-03-28','05:32:00',5),(12,'3','Tuberculosis','2024-04-12','08:00:00',5),(13,'3','Asthma','2024-04-10','10:20:00',3);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialties` (
  `id` int NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialties`
--

LOCK TABLES `specialties` WRITE;
/*!40000 ALTER TABLE `specialties` DISABLE KEYS */;
INSERT INTO `specialties` VALUES (1,'Accident and emergency medicine'),(2,'Allergology'),(3,'Anaesthetics'),(4,'Biological hematology'),(5,'Cardiology'),(6,'Child psychiatry'),(7,'Clinical biology'),(8,'Clinical chemistry'),(9,'Clinical neurophysiology'),(10,'Clinical radiology'),(11,'Dental, oral and maxillo-facial surgery'),(12,'Dermato-venerology'),(13,'Dermatology'),(14,'Endocrinology'),(15,'Gastro-enterologic surgery'),(16,'Gastroenterology'),(17,'General hematology'),(18,'General Practice'),(19,'General surgery'),(20,'Geriatrics'),(21,'Immunology'),(22,'Infectious diseases'),(23,'Internal medicine'),(24,'Laboratory medicine'),(25,'Maxillo-facial surgery'),(26,'Microbiology'),(27,'Nephrology'),(28,'Neuro-psychiatry'),(29,'Neurology'),(30,'Neurosurgery'),(31,'Nuclear medicine'),(32,'Obstetrics and gynecology'),(33,'Occupational medicine'),(34,'Ophthalmology'),(35,'Orthopaedics'),(36,'Otorhinolaryngology'),(37,'Paediatric surgery'),(38,'Paediatrics'),(39,'Pathology'),(40,'Pharmacology'),(41,'Physical medicine and rehabilitation'),(42,'Plastic surgery'),(43,'Podiatric Medicine'),(44,'Podiatric Surgery'),(45,'Psychiatry'),(46,'Public health and Preventive Medicine'),(47,'Radiology'),(48,'Radiotherapy'),(49,'Respiratory medicine'),(50,'Rheumatology'),(51,'Stomatology'),(52,'Thoracic surgery'),(53,'Tropical medicine'),(54,'Urology'),(55,'Vascular surgery'),(56,'Venereology');
/*!40000 ALTER TABLE `specialties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser`
--

LOCK TABLES `webuser` WRITE;
/*!40000 ALTER TABLE `webuser` DISABLE KEYS */;
INSERT INTO `webuser` VALUES ('admin@edoc.com','a'),('doctor@edoc.com','d'),('patient@h2c.com','p'),('suman@h2c.com','p'),('tenzing@rai.com','p'),('ramshah@gmail.com','p'),('diwakar@h2c.com','p'),('drsuresh@h2c.com','d'),('drramesh@h2c.com','d'),('sanjeev@h2c.com','p'),('pabingurung@h2c.com','p'),('prajwal@h2c.com','p'),('ram@h2c.com','p'),('shyam@h2c.com','p'),('ramesh@h2c.com','p'),('dibas@h2c.com','p'),('hari@h2c.com','d');
/*!40000 ALTER TABLE `webuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-28 21:06:02
