-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wowc_testworld
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
-- Table structure for table `gameobject_involvedrelation`
--

DROP TABLE IF EXISTS `gameobject_involvedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_involvedrelation`
--

LOCK TABLES `gameobject_involvedrelation` WRITE;
/*!40000 ALTER TABLE `gameobject_involvedrelation` DISABLE KEYS */;
INSERT INTO `gameobject_involvedrelation` VALUES
(31,94),
(33,140),
(34,139),
(35,136),
(36,138),
(55,37),
(56,45),
(59,95),
(61,231),
(76,248),
(257,250),
(259,285),
(261,281),
(269,403),
(270,310),
(287,200),
(288,328),
(1557,410),
(1561,72),
(1585,280),
(1586,431),
(1593,438),
(1599,460),
(1609,465),
(1627,477),
(1728,524),
(1767,553),
(2059,419),
(2076,584),
(2076,585),
(2076,586),
(2083,595),
(2289,619),
(2553,624),
(2555,625),
(2556,626),
(2652,631),
(2688,652),
(2701,642),
(2702,651),
(2703,645),
(2734,321),
(2875,738),
(2908,749),
(2933,779),
(2933,795),
(3643,67),
(4141,894),
(4141,900),
(4141,901),
(5620,926),
(7510,2399),
(7923,941),
(10076,944),
(12666,949),
(17182,983),
(17183,1001),
(17184,1002),
(17185,1003),
(19024,1028),
(19599,1089),
(20805,1190),
(24776,264),
(32569,1393),
(35251,1454),
(50961,1437),
(51708,254),
(61934,1526),
(89931,1714),
(112888,461),
(112948,290),
(113791,63),
(131474,2278),
(138492,635),
(138492,656),
(142071,2741),
(142071,8893),
(142127,2742),
(142151,284),
(142179,2866),
(142194,2882),
(142195,2902),
(142343,2946),
(142343,2954),
(142343,2966),
(142487,2945),
(142487,2951),
(142487,2952),
(142487,2953),
(144063,2879),
(148498,3372),
(148504,3913),
(148512,3373),
(148836,3446),
(148838,3447),
(149047,3454),
(149502,3481),
(151286,3505),
(161504,3844),
(164689,3802),
(164869,4083),
(164885,4119),
(164886,2523),
(164887,996),
(164888,4117),
(164909,4125),
(164953,4131),
(164954,4135),
(164955,4381),
(164955,4385),
(164956,4383),
(164956,4384),
(164957,4382),
(164957,4386),
(171939,2878),
(171942,3363),
(173265,4449),
(173265,4451),
(173284,4443),
(173324,4448),
(173327,998),
(174594,4113),
(174595,4114),
(174596,4116),
(174598,4401),
(174599,1514),
(174600,4115),
(174601,4221),
(174602,4222),
(174603,4343),
(174604,4403),
(174605,4444),
(174606,4445),
(174607,4446),
(174608,4462),
(174684,4447),
(174686,4461),
(174708,4466),
(174709,4467),
(174712,4464),
(174713,4465),
(174848,4661),
(175084,4601),
(175084,4603),
(175084,4605),
(175085,4602),
(175085,4604),
(175085,4606),
(175265,4561),
(175524,4812),
(175586,4863),
(175587,4861),
(175704,3367),
(175894,5021),
(175924,5060),
(175925,5059),
(175926,5058),
(176091,5084),
(176192,5164),
(176317,5265),
(176361,5216),
(176361,5218),
(176361,5229),
(176392,5225),
(176392,5227),
(176392,5235),
(176393,5222),
(176393,5224),
(176393,5233),
(176631,5463),
(177289,5219),
(177289,5221),
(177289,5231),
(177491,5902),
(177491,5904),
(177544,5942),
(177675,6024),
(177786,6161),
(179485,1193),
(179517,7462),
(179517,7877),
(179551,7486),
(179880,7761),
(180024,7938),
(180025,7937),
(180056,7945),
(180503,8307),
(180570,8322),
(180633,8305),
(180642,8577),
(180652,8597),
(180715,8763),
(180743,8744),
(180747,8768),
(180748,8769),
(180793,8803);
/*!40000 ALTER TABLE `gameobject_involvedrelation` ENABLE KEYS */;
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
