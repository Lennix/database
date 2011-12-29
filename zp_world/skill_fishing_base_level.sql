-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wowc_world
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
-- Table structure for table `skill_fishing_base_level`
--

DROP TABLE IF EXISTS `skill_fishing_base_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_fishing_base_level`
--

LOCK TABLES `skill_fishing_base_level` WRITE;
/*!40000 ALTER TABLE `skill_fishing_base_level` DISABLE KEYS */;
INSERT INTO `skill_fishing_base_level` VALUES
(1,1),
(12,1),
(14,1),
(85,1),
(141,1),
(215,1),
(17,50),
(38,50),
(40,50),
(130,50),
(148,50),
(718,50),
(719,50),
(1519,1),
(1537,1),
(1581,50),
(1637,1),
(1638,1),
(1657,1),
(10,95),
(11,105),
(44,80),
(267,100),
(331,75),
(406,75),
(8,175),
(15,150),
(33,150),
(36,150),
(45,150),
(400,75),
(405,100),
(796,130),
(16,200),
(28,255),
(47,200),
(357,150),
(361,175),
(440,225),
(490,225),
(493,200),
(1417,205),
(2100,205),
(41,330),
(46,240),
(139,265),
(618,250),
(1377,330),
(1977,330),
(2017,330),
(2057,330),
(297,205),
(1112,330),
(1222,330),
(1227,330),
(3140,330);
/*!40000 ALTER TABLE `skill_fishing_base_level` ENABLE KEYS */;
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
