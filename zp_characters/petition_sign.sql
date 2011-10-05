-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wowc_characters
-- ------------------------------------------------------
-- Server version	5.1.49-3

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
-- Table structure for table `petition_sign`
--

DROP TABLE IF EXISTS `petition_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(11) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(11) unsigned NOT NULL DEFAULT '0',
  `player_account` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition_sign`
--

LOCK TABLES `petition_sign` WRITE;
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
INSERT INTO `petition_sign` VALUES (5792,3255644,5791,51444),(58725,6665756,58727,52399),(60183,7723574,60157,54797),(94048,34530636,94051,72855),(64093,11010751,61006,54992),(57715,14320011,67945,59016),(65280,13733631,59046,53303),(70243,16309105,62419,54381),(65280,13733631,67380,58670),(85111,29764377,86776,66713),(64959,13677687,66173,57054),(67962,14359523,68461,50316),(57715,14320011,55575,52211),(80646,25071207,82230,51303),(89959,30959690,89269,70197),(67111,14590906,67612,58787),(64959,13677687,68124,58977),(89959,30959690,79901,65509),(67111,14590906,67610,58524),(75504,22549213,72438,58313),(80894,24265564,81076,65983),(68217,14994806,68209,59199),(68217,14994806,69095,59497),(75871,20651510,76373,63747),(86043,28480968,86126,68225),(72999,18892140,74294,62657),(72999,18892140,74339,62581),(86043,28480968,86129,68220),(69443,16801514,55219,51347),(4083,16276064,65966,57885),(75871,20651510,75917,63499),(74261,19609561,54853,51657),(78231,22083491,58604,53807),(85477,27510731,85478,67970),(78577,22476592,78753,64995),(70243,16309105,70258,60376),(75326,21183526,76817,63614),(75871,20651510,76734,64004),(79826,23163382,79844,65482),(75871,20651510,76739,64009),(72999,18892140,73451,62236),(75504,22549213,78868,64799),(83102,25916134,82767,66499),(76586,24440148,71788,60574),(75033,24816201,76520,60829),(80894,24265564,81120,66080),(58294,36954651,95560,73605),(83102,25916134,82946,66674),(80894,24265564,81075,66057),(80894,24265564,80838,65945),(64196,26288841,69966,58213),(83886,26344636,83896,67254),(83886,26344636,83887,66888),(83886,26344636,83897,66416),(81980,26564865,64226,56899),(81980,26564865,84300,67404),(80646,25071207,82767,66499),(79111,24432110,83918,60914),(85034,27528191,84310,67395),(83770,36059824,65816,45),(85477,27510731,85468,67969),(97145,37497387,79140,65171),(64196,26288841,78785,59107),(88084,29593735,89050,70051),(86272,28738282,86391,68435),(86272,28738282,86251,67773),(86272,28738282,86359,68361),(93870,37377266,96299,73420),(88084,29593735,87314,68956),(88084,29593735,87911,69344),(93870,37377266,94008,72825),(85111,29764377,87247,68922),(89959,30959690,89262,70118),(89959,30959690,89980,70630),(64196,26288841,90032,70696),(90595,34018843,96383,72685),(87721,34336591,96284,52989),(85111,29764377,82698,66375),(85111,29764377,86931,66767),(85111,29764377,85434,66761),(95023,35905553,95653,73371),(90595,34018843,93977,69454),(90595,34018843,93420,72529),(96249,36460405,96213,73958),(93870,37377266,97054,73971),(93870,37377266,96020,73879);
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
