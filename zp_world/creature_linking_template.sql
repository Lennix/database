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
-- Table structure for table `creature_linking_template`
--

DROP TABLE IF EXISTS `creature_linking_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_linking_template` (
  `entry` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'creature_template.entry of the slave mob that is linked',
  `map` mediumint(8) unsigned NOT NULL COMMENT 'Id of map of the mobs',
  `master_entry` int(10) unsigned NOT NULL COMMENT 'master to trigger events',
  `flag` mediumint(8) unsigned NOT NULL COMMENT 'flag - describing what should happen when',
  PRIMARY KEY (`entry`,`map`)
) ENGINE=MyISAM AUTO_INCREMENT=16804 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature Linking System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_linking_template`
--

LOCK TABLES `creature_linking_template` WRITE;
/*!40000 ALTER TABLE `creature_linking_template` DISABLE KEYS */;
INSERT INTO `creature_linking_template` VALUES
(2532,0,2533,656),
(5277,109,5709,1),
(5280,109,5709,1),
(5283,109,5709,1),
(5719,109,5709,1),
(5722,109,5709,1),
(7268,209,7267,1),
(8120,209,7267,1),
(8319,109,5709,1),
(10814,229,10363,7),
(11373,309,14507,7),
(11661,409,12259,1031),
(11662,409,12098,1031),
(11663,409,12018,1031),
(11664,409,12018,1031),
(11672,409,11988,1063),
(11673,409,11982,1024),
(12099,409,12057,1031),
(12119,409,12118,1543),
(14892,1,14857,512),
(15984,531,15516,519),
(16506,533,15953,7),
(16803,533,16061,7),
(12101,409,12057,1024),
(11671,409,11982,1024),
(11669,409,11669,4103);
/*!40000 ALTER TABLE `creature_linking_template` ENABLE KEYS */;
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
