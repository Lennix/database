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
-- Table structure for table `gossip_texts`
--

DROP TABLE IF EXISTS `gossip_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gossip_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gossip Texts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gossip_texts`
--

LOCK TABLES `gossip_texts` WRITE;
/*!40000 ALTER TABLE `gossip_texts` DISABLE KEYS */;
INSERT INTO `gossip_texts` VALUES
(-3429011,'A very sad tale. Thank you, spirit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_7'),
(-3429010,'We live in a world of endless tragedy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_6'),
(-3429009,'I\'m going to have to kill something, aren\'t I?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_5'),
(-3429008,'Fascinating. Continue, please.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_4'),
(-3429007,'Continue, please.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_3'),
(-3429006,'I know very little of the Highborne and nothing of the Shen\'dralar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_2'),
(-3429005,'What happened here, spirit?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shendralar GOSSIP_1'),
(-3429004,'Maybe... What do I do now?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lyndros GOSSIP_6'),
(-3429003,'Eh?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lyndros GOSSIP_5'),
(-3429002,'(Continue.)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lyndros GOSSIP_2'),
(-3429001,'Fascinating, Lorekeeper. Continue please.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lyndros GOSSIP_1'),
(-3429000,'Tell my more about Dragon slaying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lyndros GOSSIP_0'),
(-3000000,'default - delete later with new texts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `gossip_texts` ENABLE KEYS */;
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
