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
-- Table structure for table `pool_gameobject_template`
--

DROP TABLE IF EXISTS `pool_gameobject_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_gameobject_template` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_gameobject_template`
--

LOCK TABLES `pool_gameobject_template` WRITE;
/*!40000 ALTER TABLE `pool_gameobject_template` DISABLE KEYS */;
INSERT INTO `pool_gameobject_template` VALUES
(1731,10000,0,'Copper Vein - 1731'),
(2055,10000,0,'Copper Vein - 2055'),
(3763,10000,0,'Copper Vein - 3763'),
(2054,10001,0,'Tin Vein - 2054'),
(181249,10001,0,'Tin Vein - 181249'),
(103711,10001,0,'Tin Vein - 103711'),
(3764,10001,0,'Tin Vein - 3764'),
(1732,10001,0,'Tin Vein - 1732'),
(105569,10002,0,'Silver Vein - 105569'),
(1733,10002,0,'Silver Vein - 1733'),
(1735,10003,0,'Iron Deposit - 1735'),
(181109,10004,0,'Gold Vein - 181109'),
(150080,10004,0,'Gold Vein - 150080'),
(1734,10004,0,'Gold Vein - 1734'),
(176645,10005,0,'Mithril Deposit - 176645'),
(150079,10005,0,'Mithril Deposit - 150079'),
(2040,10005,0,'Mithril Deposit - 2040'),
(2047,10006,0,'Truesilver Deposit - 2047'),
(150081,10006,0,'Truesilver Deposit - 150081'),
(181108,10006,0,'Truesilver Deposit - 181108'),
(324,10007,0,'Small Thorium Vein - 324'),
(123848,10007,0,'Small Thorium Vein - 123848'),
(150082,10007,0,'Small Thorium Vein - 150082'),
(176643,10007,0,'Small Thorium Vein - 176643'),
(175404,10008,0,'Big Thorium Vein - 175404'),
(177388,10008,0,'Big Thorium Vein - 177388'),
(1618,10010,0,'Peacebloom - 1618'),
(3724,10010,0,'Peacebloom - 3724'),
(1617,10011,0,'Silverleaf - 1617'),
(3725,10011,0,'Silverleaf - 3725'),
(1619,10012,0,'Earthroot - 1619'),
(3726,10012,0,'Earthroot - 3726'),
(1620,10013,0,'Mageroyal - 1620'),
(3727,10013,0,'Mageroyal - 3727'),
(1621,10014,0,'Briarthorn - 1621'),
(3729,10014,0,'Briarthorn - 3729'),
(1622,10015,0,'Bruiseweed - 1622'),
(3730,10015,0,'Bruiseweed - 3730'),
(1623,10016,0,'Wild Steelbloom - 1623'),
(1624,10017,0,'Kingsblood - 1624'),
(1628,10018,0,'Grave Moss - 1628'),
(2041,10019,0,'Liferoot - 2041'),
(2042,10020,0,'Fadeleaf - 2042'),
(2046,10021,0,'Goldthorn - 2046'),
(2043,10022,0,'Khadgar\'s Whisker - 2043'),
(2866,10023,0,'Firebloom - 2866'),
(142140,10024,0,'Purple Lotus - 142140'),
(180165,10024,0,'Purple Lotus - 180165'),
(142142,10025,0,'Sungrass - 142142'),
(180164,10025,0,'Sungrass - 180164'),
(176636,10025,0,'Sungrass - 176636'),
(142143,10026,0,'Blindweed - 142143'),
(183046,10026,0,'Blindweed - 183046'),
(142144,10027,0,'Ghost Mushroom - 142144'),
(142145,10028,0,'Gromsblood - 142145'),
(176637,10028,0,'Gromsblood - 176637'),
(176584,10029,0,'Dreamfoil - 176584'),
(180168,10029,0,'Dreamfoil - 180168'),
(176639,10029,0,'Dreamfoil - 176639'),
(176583,10030,0,'Golden Sansam - 176583'),
(180167,10030,0,'Golden Sansam - 180167'),
(176638,10030,0,'Golden Sansam - 176638'),
(176586,10031,0,'Mountain Silversage - 176586'),
(180166,10031,0,'Mountain Silversage - 180166'),
(176640,10031,0,'Mountain Silversage - 176640'),
(176588,10032,0,'Icecap - 176588'),
(176589,10033,0,'Black Lotus - 176589'),
(176587,10034,0,'Plaguebloom - 176587'),
(176641,10034,0,'Plaguebloom - 176641'),
(142141,10035,0,'Arthas\' Tears - 142141'),
(176642,10035,0,'Arthas\' Tears - 176642'),
(2044,10036,0,'Wintersbite - 2044'),
(165658,10009,0,'Dark Iron - Master');
/*!40000 ALTER TABLE `pool_gameobject_template` ENABLE KEYS */;
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
