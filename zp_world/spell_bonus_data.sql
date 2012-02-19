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
-- Table structure for table `spell_bonus_data`
--

DROP TABLE IF EXISTS `spell_bonus_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_bonus_data` (
  `entry` smallint(5) unsigned NOT NULL,
  `direct_bonus` float NOT NULL DEFAULT '0',
  `dot_bonus` float NOT NULL DEFAULT '0',
  `ap_bonus` float NOT NULL DEFAULT '0',
  `ap_dot_bonus` float NOT NULL DEFAULT '0',
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_bonus_data`
--

LOCK TABLES `spell_bonus_data` WRITE;
/*!40000 ALTER TABLE `spell_bonus_data` DISABLE KEYS */;
INSERT INTO `spell_bonus_data` VALUES
(17,0.1,0,0,0,'Priest - Power Word: Shield'),
(133,1,0,0,0,'Mage - Fireball'),
(172,0,0.166667,0,0,'Warlock - Corruption'),
(339,0,0.0356667,0,0,'Druid - Entangling Roots'),
(689,0,0.1,0,0,'Warlock - Drain Life'),
(740,0,0.0666,0,0,'Druid - Tranquility'),
(980,0,0.166667,0,0,'Warlock - Curse of Agony'),
(1120,0,0.1,0,0,'Warlock - Drain Soul'),
(2050,0.124,0,0,0,'Priest - Lesser Heal Rank 1 ?'),
(2052,0.238,0,0,0,'Priest - Lesser Heal Rank 2 ?'),
(2053,0.448,0,0,0,'Priest - Lesser Heal Rank 3 ?'),
(2120,0.19,0.025,0,0,'Mage - Flamestrike'),
(2944,0,0.0625,0,0,'Priest - Devouring Plague'),
(5857,0.0209333,0,0,0,'Warlock - Hellfire Effect Rank 1'),
(6353,1,0,0,0,'Warlock - Soul Fire'),
(6789,0.214,0,0,0,'Warlock - Death Coil'),
(7268,0.24,0,0,0,'Mage - Arcane Missiles Rank 1'),
(7269,0.24,0,0,0,'Mage - Arcane Missiles Rank 2'),
(7270,0.24,0,0,0,'Mage - Arcane Missiles Rank 3'),
(8418,0.24,0,0,0,'Mage - Arcane Missiles Rank 5'),
(8419,0.24,0,0,0,'Mage - Arcane Missiles Rank 4'),
(8921,0.2,0.15,0,0,'Druid - Moonfire'),
(8936,0.325,0.0714286,0,0,'Druid - Regrowth'),
(10273,0.24,0,0,0,'Mage - Arcane Missiles Rank 6'),
(10274,0.24,0,0,0,'Mage - Arcane Missiles Rank 7'),
(10797,0,0.166667,0,0,'Priest - Starshards'),
(11366,1,0.1786,0,0,'Mage - Pyroblast'),
(11426,0.1,0,0,0,'Mage ice Barrier'),
(11681,0.0209333,0,0,0,'Warlock - Hellfire Effect Rank 2'),
(11682,0.0209333,0,0,0,'Warlock - Hellfire Effect Rank 3'),
(14914,0.75,0.06,0,0,'Priest - Holy Fire'),
(15237,0.114,0,0,0,'Priest - Holy Nova'),
(15407,0,0.152,0,0,'Priest - Mind Flay'),
(18562,0,0,0,0,'Druid - Swiftmend (no bonus)'),
(19993,0.428571,0.428571,0,0,'Paladin - Flash of Light ?'),
(25346,0.24,0,0,0,'Mage - Arcane Missiles Rank 8');
/*!40000 ALTER TABLE `spell_bonus_data` ENABLE KEYS */;
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
