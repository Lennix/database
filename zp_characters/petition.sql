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
-- Table structure for table `petition`
--

DROP TABLE IF EXISTS `petition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition`
--

LOCK TABLES `petition` WRITE;
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
INSERT INTO `petition` VALUES
(781,251028,'Frau Muller'),
(1353,422501,'ALIANCE SUPREME'),
(1355,415717,'Wu Tang Clan'),
(2168,844421,'Booty Bay Beach Boys'),
(4165,1953756,'The Guards'),
(3563,1781245,'OLD TiMe'),
(4476,2246209,'Ðonnerkrieger'),
(5792,3255644,'The Old Times'),
(54558,3519136,'Kings Of Hungary'),
(56874,5407694,'AKATSUKI'),
(59033,7362674,'Buendniss des Mondes'),
(58725,6665756,'MotU'),
(57886,6490607,'Kings of Horde'),
(60183,7723574,'AggroWF'),
(59631,7819714,'Eufti MC EuftEuft'),
(60506,8648999,'ChromatiC'),
(94385,35997290,'Kajmeran'),
(62648,9551907,'Bankers Union'),
(62675,10462435,'Eastern Kingdoms'),
(63528,10639709,'Ragnaroeck'),
(64093,11010751,'The OAPs'),
(75871,20651510,'Skill HU'),
(75820,20956587,'Silvershade'),
(66387,12696050,'dafdsad'),
(67962,14359523,'Sons of Liberty'),
(64959,13677687,'Helden ohne Hirn'),
(57715,14320011,'Die Hordler'),
(68375,14716587,'KPL'),
(65280,13733631,'Croft'),
(70243,16309105,'Blackrock'),
(61539,14484795,'Engaredz slaves'),
(97145,37497387,'The Demons'),
(67111,14590906,'we ARHARR Pirates'),
(68217,14994806,'Selbsthilfegilde'),
(4083,16276064,'DuHurensohn'),
(69311,16890858,'Neuenkirchener WOW Freak'),
(68124,15182484,'Selbsthilfegilde'),
(69443,16801514,'STV Coast Guard'),
(73628,18518186,'hungaryianbich'),
(83770,36059824,'Made in Germany'),
(71725,17047650,'Alea Iacta Est'),
(76373,20804711,'Zekk'),
(72999,18892140,'Pals For Life'),
(82946,26108619,'dead'),
(69905,35772278,'VanillaSlaughter'),
(74261,19609561,'Get Epixx or Die Tryin'),
(75326,21183526,'Darkness'),
(75624,19961691,'Lonely American'),
(78123,22305186,'Pauly'),
(76115,21771255,'Bulgaria'),
(76834,21796272,'Memento Mori'),
(75504,22549213,'Mess'),
(75965,22074662,'Horde Ezperia'),
(78231,22083491,'The Last Warrior'),
(78577,22476592,'Heroes From The Past'),
(64226,22882241,'The Scarlet Crusaders'),
(83102,25916134,'so nice'),
(79826,23163382,'the gang'),
(62983,24493081,'immortal'),
(80894,24265564,'Sauerkrauts'),
(75183,23606791,'E X I L'),
(94048,34530636,'Hartleech inc'),
(88084,29593735,'United Hungarian Horde'),
(79111,24432110,'You like cat'),
(76586,24440148,'The Hunters Of Dawn'),
(89959,30959690,'Soul Society'),
(75033,24816201,'IGF'),
(80646,25071207,'HateCrew'),
(69558,26003716,'Ich und mein Zerg'),
(78692,26135938,'BlueSky'),
(64196,26288841,'Brotherhood of the Horse'),
(83886,26344636,'illuminati'),
(85477,27510731,'Bikini Bandits'),
(81980,26564865,'Brave Hearts'),
(84670,26821597,'Guardians Clan'),
(86043,28480968,'Light Holders'),
(93870,37377266,'Bildenber csoport'),
(85034,27528191,'STAFF'),
(90595,34018843,'Becoming Incoming'),
(92989,33685823,'Estonian Army'),
(86272,28738282,'BrothersGrimm'),
(87721,34336591,'mkj'),
(85111,29764377,'Die Himmelschwinge'),
(95023,35905553,'Die alten Saecke'),
(403,35741379,'To the Core'),
(96249,36460405,'I Popped Her Trinket'),
(97613,37520906,'Russian Forever'),
(92901,36434410,'david'),
(58294,36954651,'Moneten'),
(96837,36955025,'Trails INC');
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;
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
