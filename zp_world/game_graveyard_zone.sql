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
-- Table structure for table `game_graveyard_zone`
--

DROP TABLE IF EXISTS `game_graveyard_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_graveyard_zone` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ghost_zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`ghost_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_graveyard_zone`
--

LOCK TABLES `game_graveyard_zone` WRITE;
/*!40000 ALTER TABLE `game_graveyard_zone` DISABLE KEYS */;
INSERT INTO `game_graveyard_zone` VALUES
(100,1,469),
(101,1,469),
(103,3,67),
(104,10,67),
(854,1519,67),
(104,44,0),
(105,12,469),
(106,12,469),
(569,28,67),
(107,1519,469),
(108,8,67),
(109,33,0),
(149,130,469),
(149,267,469),
(149,36,469),
(39,722,0),
(189,15,469),
(97,209,0),
(909,139,0),
(209,440,0),
(209,1941,0),
(229,17,0),
(429,796,0),
(869,2057,0),
(249,1638,469),
(249,17,67),
(249,215,469),
(289,85,67),
(3,10,469),
(309,357,469),
(189,2159,469),
(310,357,67),
(32,14,0),
(329,400,0),
(850,2917,67),
(34,215,67),
(349,47,469),
(35,148,469),
(36,41,0),
(369,16,0),
(370,4,0),
(370,8,469),
(389,33,0),
(92,719,0),
(850,2437,0),
(39,400,0),
(4,40,0),
(512,719,0),
(409,406,0),
(429,2057,0),
(449,361,0),
(450,490,0),
(469,141,67),
(469,148,469),
(469,1657,67),
(489,11,0),
(510,139,0),
(511,618,0),
(512,148,67),
(850,1637,67),
(512,17,469),
(512,331,0),
(569,85,67),
(6,38,469),
(609,16,0),
(509,28,469),
(629,85,469),
(629,2057,0),
(630,16,0),
(631,15,67),
(632,46,0),
(633,493,0),
(635,361,0),
(649,14,67),
(7,1,67),
(7,11,0),
(7,38,67),
(789,47,67),
(8,3,0),
(8,38,67),
(829,28,0),
(849,357,0),
(92,331,0),
(850,14,67),
(851,1638,67),
(851,215,67),
(852,1,469),
(631,2159,67),
(89,215,67),
(90,1657,469),
(91,141,469),
(911,10,0),
(93,141,469),
(94,85,67),
(96,85,67),
(97,130,67),
(39,491,0),
(98,267,67),
(98,36,67),
(99,45,0),
(669,22,0),
(670,22,0),
(671,22,0),
(529,22,0),
(751,2597,469),
(749,2597,67),
(750,2597,67),
(610,2597,67),
(611,2597,469),
(689,2597,0),
(729,2597,469),
(829,2597,0),
(830,2597,0),
(169,2597,0),
(769,3277,469),
(770,3277,67),
(771,3277,469),
(772,3277,67),
(809,3277,0),
(810,3277,0),
(889,3358,67),
(890,3358,469),
(891,3358,0),
(892,3358,0),
(893,3358,67),
(894,3358,0),
(895,3358,469),
(896,3358,0),
(897,3358,0),
(898,3358,469),
(899,3358,67),
(10,718,0),
(709,14,67),
(106,717,0),
(10,17,67),
(209,1176,0),
(8,1337,0),
(70,1377,0),
(910,1377,0),
(149,209,0),
(108,1417,0),
(636,2677,0),
(849,2557,0),
(31,405,0),
(31,2100,0),
(636,2717,0),
(636,1583,0),
(634,139,0),
(108,1477,0),
(309,1477,0),
(4,1581,0),
(389,1581,0),
(389,1977,0),
(636,51,0),
(909,2017,0),
(107,2918,0),
(854,12,0),
(101,721,0),
(90,141,469),
(913,3478,0),
(913,1377,0),
(636,1584,0),
(512,1637,469),
(289,1497,0),
(636,25,0);
/*!40000 ALTER TABLE `game_graveyard_zone` ENABLE KEYS */;
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
