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
-- Table structure for table `playercreateinfo_spell`
--

DROP TABLE IF EXISTS `playercreateinfo_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_spell` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_spell`
--

LOCK TABLES `playercreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell` VALUES
(1,1,78,'Heroic Strike'),
(1,1,81,'Dodge'),
(1,1,107,'Block'),
(1,1,196,'One-Handed Axes'),
(1,1,198,'One-Handed Maces'),
(1,1,201,'One-Handed Swords'),
(1,1,203,'Unarmed'),
(1,1,204,'Defense'),
(1,1,522,'SPELLDEFENSE (DND)'),
(1,1,668,'Language Common'),
(1,1,2382,'Generic'),
(1,1,2457,'Battle Stance'),
(1,1,2479,'Honorless Target'),
(1,1,3050,'Detect'),
(1,1,3365,'Opening'),
(1,1,5301,'Defensive State (DND)'),
(1,1,6233,'Closing'),
(1,1,6246,'Closing'),
(1,1,6247,'Opening'),
(1,1,6477,'Opening'),
(1,1,6478,'Opening'),
(1,1,6603,'Attack'),
(1,1,7266,'Duel'),
(1,1,7267,'Grovel'),
(1,1,7355,'Stuck'),
(1,1,8386,'Attacking'),
(1,1,8737,'Mail'),
(1,1,9077,'Leather'),
(1,1,9078,'Cloth'),
(1,1,9116,'Shield'),
(1,1,9125,'Generic'),
(1,1,20597,'Sword Specialization'),
(1,1,20598,'The Human Spirit'),
(1,1,20599,'Diplomacy'),
(1,1,20600,'Perception'),
(1,1,20864,'Mace Specialization'),
(1,1,21651,'Opening'),
(1,1,21652,'Closing'),
(1,1,22027,'Remove Insignia'),
(1,1,22810,'Opening - No Text'),
(1,2,81,'Dodge'),
(1,2,107,'Block'),
(1,2,198,'One-Handed Maces'),
(1,2,199,'Two-Handed Maces'),
(1,2,203,'Unarmed'),
(1,2,204,'Defense'),
(1,2,522,'SPELLDEFENSE (DND)'),
(1,2,635,'Holy Light'),
(1,2,668,'Language Common'),
(1,2,2382,'Generic'),
(1,2,2479,'Honorless Target'),
(1,2,3050,'Detect'),
(1,2,3365,'Opening'),
(1,2,6233,'Closing'),
(1,2,6246,'Closing'),
(1,2,6247,'Opening'),
(1,2,6477,'Opening'),
(1,2,6478,'Opening'),
(1,2,6603,'Attack'),
(1,2,7266,'Duel'),
(1,2,7267,'Grovel'),
(1,2,7355,'Stuck'),
(1,2,8386,'Attacking'),
(1,2,8737,'Mail'),
(1,2,9077,'Leather'),
(1,2,9078,'Cloth'),
(1,2,9116,'Shield'),
(1,2,9125,'Generic'),
(1,2,21084,'Seal of Righteousness'),
(1,2,20597,'Sword Specialization'),
(1,2,20598,'The Human Spirit'),
(1,2,20599,'Diplomacy'),
(1,2,20600,'Perception'),
(1,2,20864,'Mace Specialization'),
(1,2,21651,'Opening'),
(1,2,21652,'Closing'),
(1,2,22027,'Remove Insignia'),
(1,2,22810,'Opening - No Text'),
(1,2,27762,'Libram'),
(1,4,81,'Dodge'),
(1,4,203,'Unarmed'),
(1,4,204,'Defense'),
(1,4,522,'SPELLDEFENSE (DND)'),
(1,4,668,'Language Common'),
(1,4,1180,'Daggers'),
(1,4,1752,'Sinister Strike'),
(1,4,2098,'Eviscerate'),
(1,4,2382,'Generic'),
(1,4,2479,'Honorless Target'),
(1,4,2567,'Thrown'),
(1,4,2764,'Throw'),
(1,4,3050,'Detect'),
(1,4,3365,'Opening'),
(1,4,6233,'Closing'),
(1,4,6246,'Closing'),
(1,4,6247,'Opening'),
(1,4,6477,'Opening'),
(1,4,6478,'Opening'),
(1,4,6603,'Attack'),
(1,4,7266,'Duel'),
(1,4,7267,'Grovel'),
(1,4,7355,'Stuck'),
(1,4,8386,'Attacking'),
(1,4,9077,'Leather'),
(1,4,9078,'Cloth'),
(1,4,9125,'Generic'),
(1,4,16092,'Defensive State (DND)'),
(1,4,20597,'Sword Specialization'),
(1,4,20598,'The Human Spirit'),
(1,4,20599,'Diplomacy'),
(1,4,20600,'Perception'),
(1,4,20864,'Mace Specialization'),
(1,4,21184,'Rogue Passive (DND)'),
(1,4,21651,'Opening'),
(1,4,21652,'Closing'),
(1,4,22027,'Remove Insignia'),
(1,4,22810,'Opening - No Text'),
(1,5,81,'Dodge'),
(1,5,198,'One-Handed Maces'),
(1,5,203,'Unarmed'),
(1,5,204,'Defense'),
(1,5,522,'SPELLDEFENSE (DND)'),
(1,5,585,'Smite'),
(1,5,668,'Language Common'),
(1,5,2050,'Lesser Heal'),
(1,5,2382,'Generic'),
(1,5,2479,'Honorless Target'),
(1,5,3050,'Detect'),
(1,5,3365,'Opening'),
(1,5,5009,'Wands'),
(1,5,5019,'Shoot'),
(1,5,6233,'Closing'),
(1,5,6246,'Closing'),
(1,5,6247,'Opening'),
(1,5,6477,'Opening'),
(1,5,6478,'Opening'),
(1,5,6603,'Attack'),
(1,5,7266,'Duel'),
(1,5,7267,'Grovel'),
(1,5,7355,'Stuck'),
(1,5,8386,'Attacking'),
(1,5,9078,'Cloth'),
(1,5,9125,'Generic'),
(1,5,20597,'Sword Specialization'),
(1,5,20598,'The Human Spirit'),
(1,5,20599,'Diplomacy'),
(1,5,20600,'Perception'),
(1,5,20864,'Mace Specialization'),
(1,5,21651,'Opening'),
(1,5,21652,'Closing'),
(1,5,22027,'Remove Insignia'),
(1,5,22810,'Opening - No Text'),
(1,8,81,'Dodge'),
(1,8,133,'Fireball'),
(1,8,168,'Frost Armor'),
(1,8,203,'Unarmed'),
(1,8,204,'Defense'),
(1,8,227,'Staves'),
(1,8,522,'SPELLDEFENSE (DND)'),
(1,8,668,'Language Common'),
(1,8,2382,'Generic'),
(1,8,2479,'Honorless Target'),
(1,8,3050,'Detect'),
(1,8,3365,'Opening'),
(1,8,5009,'Wands'),
(1,8,5019,'Shoot'),
(1,8,6233,'Closing'),
(1,8,6246,'Closing'),
(1,8,6247,'Opening'),
(1,8,6477,'Opening'),
(1,8,6478,'Opening'),
(1,8,6603,'Attack'),
(1,8,7266,'Duel'),
(1,8,7267,'Grovel'),
(1,8,7355,'Stuck'),
(1,8,8386,'Attacking'),
(1,8,9078,'Cloth'),
(1,8,9125,'Generic'),
(1,8,20597,'Sword Specialization'),
(1,8,20598,'The Human Spirit'),
(1,8,20599,'Diplomacy'),
(1,8,20600,'Perception'),
(1,8,20864,'Mace Specialization'),
(1,8,21651,'Opening'),
(1,8,21652,'Closing'),
(1,8,22027,'Remove Insignia'),
(1,8,22810,'Opening - No Text'),
(1,9,81,'Dodge'),
(1,9,203,'Unarmed'),
(1,9,204,'Defense'),
(1,9,522,'SPELLDEFENSE (DND)'),
(1,9,668,'Language Common'),
(1,9,686,'Shadow Bolt'),
(1,9,687,'Demon Skin'),
(1,9,1180,'Daggers'),
(1,9,2382,'Generic'),
(1,9,2479,'Honorless Target'),
(1,9,3050,'Detect'),
(1,9,3365,'Opening'),
(1,9,5009,'Wands'),
(1,9,5019,'Shoot'),
(1,9,6233,'Closing'),
(1,9,6246,'Closing'),
(1,9,6247,'Opening'),
(1,9,6477,'Opening'),
(1,9,6478,'Opening'),
(1,9,6603,'Attack'),
(1,9,7266,'Duel'),
(1,9,7267,'Grovel'),
(1,9,7355,'Stuck'),
(1,9,8386,'Attacking'),
(1,9,9078,'Cloth'),
(1,9,9125,'Generic'),
(1,9,20597,'Sword Specialization'),
(1,9,20598,'The Human Spirit'),
(1,9,20599,'Diplomacy'),
(1,9,20600,'Perception'),
(1,9,20864,'Mace Specialization'),
(1,9,21651,'Opening'),
(1,9,21652,'Closing'),
(1,9,22027,'Remove Insignia'),
(1,9,22810,'Opening - No Text'),
(2,1,78,'Heroic Strike'),
(2,1,81,'Dodge'),
(2,1,107,'Block'),
(2,1,196,'One-Handed Axes'),
(2,1,197,'Two-Handed Axes'),
(2,1,201,'One-Handed Swords'),
(2,1,203,'Unarmed'),
(2,1,204,'Defense'),
(2,1,522,'SPELLDEFENSE (DND)'),
(2,1,669,'Language Orcish'),
(2,1,2382,'Generic'),
(2,1,2457,'Battle Stance'),
(2,1,2479,'Honorless Target'),
(2,1,3050,'Detect'),
(2,1,3365,'Opening'),
(2,1,5301,'Defensive State (DND)'),
(2,1,6233,'Closing'),
(2,1,6246,'Closing'),
(2,1,6247,'Opening'),
(2,1,6477,'Opening'),
(2,1,6478,'Opening'),
(2,1,6603,'Attack'),
(2,1,7266,'Duel'),
(2,1,7267,'Grovel'),
(2,1,7355,'Stuck'),
(2,1,8386,'Attacking'),
(2,1,8737,'Mail'),
(2,1,9077,'Leather'),
(2,1,9078,'Cloth'),
(2,1,9116,'Shield'),
(2,1,9125,'Generic'),
(2,1,20572,'Blood Fury'),
(2,1,20573,'Hardiness'),
(2,1,20574,'Axe Specialization'),
(2,1,21563,'Command'),
(2,1,21651,'Opening'),
(2,1,21652,'Closing'),
(2,1,22027,'Remove Insignia'),
(2,1,22810,'Opening - No Text'),
(2,3,75,'Auto Shot'),
(2,3,81,'Dodge'),
(2,3,196,'One-Handed Axes'),
(2,3,203,'Unarmed'),
(2,3,204,'Defense'),
(2,3,264,'Bows'),
(2,3,522,'SPELLDEFENSE (DND)'),
(2,3,669,'Language Orcish'),
(2,3,2382,'Generic'),
(2,3,2479,'Honorless Target'),
(2,3,2973,'Raptor Strike'),
(2,3,3050,'Detect'),
(2,3,3365,'Opening'),
(2,3,6233,'Closing'),
(2,3,6246,'Closing'),
(2,3,6247,'Opening'),
(2,3,6477,'Opening'),
(2,3,6478,'Opening'),
(2,3,6603,'Attack'),
(2,3,7266,'Duel'),
(2,3,7267,'Grovel'),
(2,3,7355,'Stuck'),
(2,3,8386,'Attacking'),
(2,3,9077,'Leather'),
(2,3,9078,'Cloth'),
(2,3,9125,'Generic'),
(2,3,13358,'Defensive State (DND)'),
(2,3,20572,'Blood Fury'),
(2,3,20573,'Hardiness'),
(2,3,20574,'Axe Specialization'),
(2,3,20576,'Command'),
(2,3,21651,'Opening'),
(2,3,21652,'Closing'),
(2,3,22027,'Remove Insignia'),
(2,3,22810,'Opening - No Text'),
(2,3,24949,'Defensive State 2 (DND)'),
(2,4,81,'Dodge'),
(2,4,203,'Unarmed'),
(2,4,204,'Defense'),
(2,4,522,'SPELLDEFENSE (DND)'),
(2,4,669,'Language Orcish'),
(2,4,1180,'Daggers'),
(2,4,1752,'Sinister Strike'),
(2,4,2098,'Eviscerate'),
(2,4,2382,'Generic'),
(2,4,2479,'Honorless Target'),
(2,4,2567,'Thrown'),
(2,4,2764,'Throw'),
(2,4,3050,'Detect'),
(2,4,3365,'Opening'),
(2,4,6233,'Closing'),
(2,4,6246,'Closing'),
(2,4,6247,'Opening'),
(2,4,6477,'Opening'),
(2,4,6478,'Opening'),
(2,4,6603,'Attack'),
(2,4,7266,'Duel'),
(2,4,7267,'Grovel'),
(2,4,7355,'Stuck'),
(2,4,8386,'Attacking'),
(2,4,9077,'Leather'),
(2,4,9078,'Cloth'),
(2,4,9125,'Generic'),
(2,4,16092,'Defensive State (DND)'),
(2,4,20572,'Blood Fury'),
(2,4,20573,'Hardiness'),
(2,4,20574,'Axe Specialization'),
(2,4,21184,'Rogue Passive (DND)'),
(2,4,21563,'Command'),
(2,4,21651,'Opening'),
(2,4,21652,'Closing'),
(2,4,22027,'Remove Insignia'),
(2,4,22810,'Opening - No Text'),
(2,7,81,'Dodge'),
(2,7,107,'Block'),
(2,7,198,'One-Handed Maces'),
(2,7,203,'Unarmed'),
(2,7,204,'Defense'),
(2,7,227,'Staves'),
(2,7,331,'Healing Wave'),
(2,7,403,'Lightning Bolt'),
(2,7,522,'SPELLDEFENSE (DND)'),
(2,7,669,'Language Orcish'),
(2,7,2382,'Generic'),
(2,7,2479,'Honorless Target'),
(2,7,3050,'Detect'),
(2,7,3365,'Opening'),
(2,7,6233,'Closing'),
(2,7,6246,'Closing'),
(2,7,6247,'Opening'),
(2,7,6477,'Opening'),
(2,7,6478,'Opening'),
(2,7,6603,'Attack'),
(2,7,7266,'Duel'),
(2,7,7267,'Grovel'),
(2,7,7355,'Stuck'),
(2,7,8386,'Attacking'),
(2,7,9077,'Leather'),
(2,7,9078,'Cloth'),
(2,7,9116,'Shield'),
(2,7,9125,'Generic'),
(2,7,20573,'Hardiness'),
(2,7,20574,'Axe Specialization'),
(2,7,21563,'Command'),
(2,7,21651,'Opening'),
(2,7,21652,'Closing'),
(2,7,22027,'Remove Insignia'),
(2,7,22810,'Opening - No Text'),
(2,7,27763,'Totem'),
(2,7,20572,'Blood Fury'),
(2,9,81,'Dodge'),
(2,9,203,'Unarmed'),
(2,9,204,'Defense'),
(2,9,522,'SPELLDEFENSE (DND)'),
(2,9,669,'Language Orcish'),
(2,9,686,'Shadow Bolt'),
(2,9,687,'Demon Skin'),
(2,9,1180,'Daggers'),
(2,9,2382,'Generic'),
(2,9,2479,'Honorless Target'),
(2,9,3050,'Detect'),
(2,9,3365,'Opening'),
(2,9,5009,'Wands'),
(2,9,5019,'Shoot'),
(2,9,6233,'Closing'),
(2,9,6246,'Closing'),
(2,9,6247,'Opening'),
(2,9,6477,'Opening'),
(2,9,6478,'Opening'),
(2,9,6603,'Attack'),
(2,9,7266,'Duel'),
(2,9,7267,'Grovel'),
(2,9,7355,'Stuck'),
(2,9,8386,'Attacking'),
(2,9,9078,'Cloth'),
(2,9,9125,'Generic'),
(2,9,20573,'Hardiness'),
(2,9,20574,'Axe Specialization'),
(2,9,20575,'Command'),
(2,9,21651,'Opening'),
(2,9,21652,'Closing'),
(2,9,22027,'Remove Insignia'),
(2,9,22810,'Opening - No Text'),
(2,9,20572,'Blood Fury'),
(3,1,78,'Heroic Strike'),
(3,1,81,'Dodge'),
(3,1,107,'Block'),
(3,1,196,'One-Handed Axes'),
(3,1,197,'Two-Handed Axes'),
(3,1,198,'One-Handed Maces'),
(3,1,203,'Unarmed'),
(3,1,204,'Defense'),
(3,1,522,'SPELLDEFENSE (DND)'),
(3,1,668,'Language Common'),
(3,1,672,'Language Dwarven'),
(3,1,2382,'Generic'),
(3,1,2457,'Battle Stance'),
(3,1,2479,'Honorless Target'),
(3,1,2481,'Find Treasure'),
(3,1,3050,'Detect'),
(3,1,3365,'Opening'),
(3,1,5301,'Defensive State (DND)'),
(3,1,6233,'Closing'),
(3,1,6246,'Closing'),
(3,1,6247,'Opening'),
(3,1,6477,'Opening'),
(3,1,6478,'Opening'),
(3,1,6603,'Attack'),
(3,1,7266,'Duel'),
(3,1,7267,'Grovel'),
(3,1,7355,'Stuck'),
(3,1,8386,'Attacking'),
(3,1,8737,'Mail'),
(3,1,9077,'Leather'),
(3,1,9078,'Cloth'),
(3,1,9116,'Shield'),
(3,1,9125,'Generic'),
(3,1,20594,'Stoneform'),
(3,1,20595,'Gun Specialization'),
(3,1,20596,'Frost Resistance'),
(3,1,21651,'Opening'),
(3,1,21652,'Closing'),
(3,1,22027,'Remove Insignia'),
(3,1,22810,'Opening - No Text'),
(3,2,81,'Dodge'),
(3,2,107,'Block'),
(3,2,198,'One-Handed Maces'),
(3,2,199,'Two-Handed Maces'),
(3,2,203,'Unarmed'),
(3,2,204,'Defense'),
(3,2,522,'SPELLDEFENSE (DND)'),
(3,2,635,'Holy Light'),
(3,2,668,'Language Common'),
(3,2,672,'Language Dwarven'),
(3,2,2382,'Generic'),
(3,2,2479,'Honorless Target'),
(3,2,2481,'Find Treasure'),
(3,2,3050,'Detect'),
(3,2,3365,'Opening'),
(3,2,6233,'Closing'),
(3,2,6246,'Closing'),
(3,2,6247,'Opening'),
(3,2,6477,'Opening'),
(3,2,6478,'Opening'),
(3,2,6603,'Attack'),
(3,2,7266,'Duel'),
(3,2,7267,'Grovel'),
(3,2,7355,'Stuck'),
(3,2,8386,'Attacking'),
(3,2,8737,'Mail'),
(3,2,9077,'Leather'),
(3,2,9078,'Cloth'),
(3,2,9116,'Shield'),
(3,2,9125,'Generic'),
(3,2,21084,'Seal of Righteousness'),
(3,2,20594,'Stoneform'),
(3,2,20595,'Gun Specialization'),
(3,2,20596,'Frost Resistance'),
(3,2,21651,'Opening'),
(3,2,21652,'Closing'),
(3,2,22027,'Remove Insignia'),
(3,2,22810,'Opening - No Text'),
(3,2,27762,'Libram'),
(3,3,75,'Auto Shot'),
(3,3,81,'Dodge'),
(3,3,196,'One-Handed Axes'),
(3,3,203,'Unarmed'),
(3,3,204,'Defense'),
(3,3,266,'Guns'),
(3,3,522,'SPELLDEFENSE (DND)'),
(3,3,668,'Language Common'),
(3,3,672,'Language Dwarven'),
(3,3,2382,'Generic'),
(3,3,2479,'Honorless Target'),
(3,3,2481,'Find Treasure'),
(3,3,2973,'Raptor Strike'),
(3,3,3050,'Detect'),
(3,3,3365,'Opening'),
(3,3,6233,'Closing'),
(3,3,6246,'Closing'),
(3,3,6247,'Opening'),
(3,3,6477,'Opening'),
(3,3,6478,'Opening'),
(3,3,6603,'Attack'),
(3,3,7266,'Duel'),
(3,3,7267,'Grovel'),
(3,3,7355,'Stuck'),
(3,3,8386,'Attacking'),
(3,3,9077,'Leather'),
(3,3,9078,'Cloth'),
(3,3,9125,'Generic'),
(3,3,13358,'Defensive State (DND)'),
(3,3,20594,'Stoneform'),
(3,3,20595,'Gun Specialization'),
(3,3,20596,'Frost Resistance'),
(3,3,21651,'Opening'),
(3,3,21652,'Closing'),
(3,3,22027,'Remove Insignia'),
(3,3,22810,'Opening - No Text'),
(3,3,24949,'Defensive State 2 (DND)'),
(3,4,81,'Dodge'),
(3,4,203,'Unarmed'),
(3,4,204,'Defense'),
(3,4,522,'SPELLDEFENSE (DND)'),
(3,4,668,'Language Common'),
(3,4,672,'Language Dwarven'),
(3,4,1180,'Daggers'),
(3,4,1752,'Sinister Strike'),
(3,4,2098,'Eviscerate'),
(3,4,2382,'Generic'),
(3,4,2479,'Honorless Target'),
(3,4,2481,'Find Treasure'),
(3,4,2567,'Thrown'),
(3,4,2764,'Throw'),
(3,4,3050,'Detect'),
(3,4,3365,'Opening'),
(3,4,6233,'Closing'),
(3,4,6246,'Closing'),
(3,4,6247,'Opening'),
(3,4,6477,'Opening'),
(3,4,6478,'Opening'),
(3,4,6603,'Attack'),
(3,4,7266,'Duel'),
(3,4,7267,'Grovel'),
(3,4,7355,'Stuck'),
(3,4,8386,'Attacking'),
(3,4,9077,'Leather'),
(3,4,9078,'Cloth'),
(3,4,9125,'Generic'),
(3,4,16092,'Defensive State (DND)'),
(3,4,20594,'Stoneform'),
(3,4,20595,'Gun Specialization'),
(3,4,20596,'Frost Resistance'),
(3,4,21184,'Rogue Passive (DND)'),
(3,4,21651,'Opening'),
(3,4,21652,'Closing'),
(3,4,22027,'Remove Insignia'),
(3,4,22810,'Opening - No Text'),
(3,5,81,'Dodge'),
(3,5,198,'One-Handed Maces'),
(3,5,203,'Unarmed'),
(3,5,204,'Defense'),
(3,5,522,'SPELLDEFENSE (DND)'),
(3,5,585,'Smite'),
(3,5,668,'Language Common'),
(3,5,672,'Language Dwarven'),
(3,5,2050,'Lesser Heal'),
(3,5,2382,'Generic'),
(3,5,2479,'Honorless Target'),
(3,5,2481,'Find Treasure'),
(3,5,3050,'Detect'),
(3,5,3365,'Opening'),
(3,5,5009,'Wands'),
(3,5,5019,'Shoot'),
(3,5,6233,'Closing'),
(3,5,6246,'Closing'),
(3,5,6247,'Opening'),
(3,5,6477,'Opening'),
(3,5,6478,'Opening'),
(3,5,6603,'Attack'),
(3,5,7266,'Duel'),
(3,5,7267,'Grovel'),
(3,5,7355,'Stuck'),
(3,5,8386,'Attacking'),
(3,5,9078,'Cloth'),
(3,5,9125,'Generic'),
(3,5,20594,'Stoneform'),
(3,5,20595,'Gun Specialization'),
(3,5,20596,'Frost Resistance'),
(3,5,21651,'Opening'),
(3,5,21652,'Closing'),
(3,5,22027,'Remove Insignia'),
(3,5,22810,'Opening - No Text'),
(4,1,78,'Heroic Strike'),
(4,1,81,'Dodge'),
(4,1,107,'Block'),
(4,1,198,'One-Handed Maces'),
(4,1,201,'One-Handed Swords'),
(4,1,203,'Unarmed'),
(4,1,204,'Defense'),
(4,1,522,'SPELLDEFENSE (DND)'),
(4,1,668,'Language Common'),
(4,1,671,'Language Darnassian'),
(4,1,1180,'Daggers'),
(4,1,2382,'Generic'),
(4,1,2457,'Battle Stance'),
(4,1,2479,'Honorless Target'),
(4,1,3050,'Detect'),
(4,1,3365,'Opening'),
(4,1,5301,'Defensive State (DND)'),
(4,1,6233,'Closing'),
(4,1,6246,'Closing'),
(4,1,6247,'Opening'),
(4,1,6477,'Opening'),
(4,1,6478,'Opening'),
(4,1,6603,'Attack'),
(4,1,7266,'Duel'),
(4,1,7267,'Grovel'),
(4,1,7355,'Stuck'),
(4,1,8386,'Attacking'),
(4,1,8737,'Mail'),
(4,1,9077,'Leather'),
(4,1,9078,'Cloth'),
(4,1,9116,'Shield'),
(4,1,9125,'Generic'),
(4,1,20580,'Shadowmeld'),
(4,1,20582,'Quickness'),
(4,1,20583,'Nature Resistance'),
(4,1,20585,'Wisp Spirit'),
(4,1,21009,'Shadowmeld Passive'),
(4,1,21651,'Opening'),
(4,1,21652,'Closing'),
(4,1,22027,'Remove Insignia'),
(4,1,22810,'Opening - No Text'),
(4,3,75,'Auto Shot'),
(4,3,81,'Dodge'),
(4,3,203,'Unarmed'),
(4,3,204,'Defense'),
(4,3,264,'Bows'),
(4,3,522,'SPELLDEFENSE (DND)'),
(4,3,668,'Language Common'),
(4,3,671,'Language Darnassian'),
(4,3,1180,'Daggers'),
(4,3,2382,'Generic'),
(4,3,2479,'Honorless Target'),
(4,3,2973,'Raptor Strike'),
(4,3,3050,'Detect'),
(4,3,3365,'Opening'),
(4,3,6233,'Closing'),
(4,3,6246,'Closing'),
(4,3,6247,'Opening'),
(4,3,6477,'Opening'),
(4,3,6478,'Opening'),
(4,3,6603,'Attack'),
(4,3,7266,'Duel'),
(4,3,7267,'Grovel'),
(4,3,7355,'Stuck'),
(4,3,8386,'Attacking'),
(4,3,9077,'Leather'),
(4,3,9078,'Cloth'),
(4,3,9125,'Generic'),
(4,3,13358,'Defensive State (DND)'),
(4,3,20580,'Shadowmeld'),
(4,3,20582,'Quickness'),
(4,3,20583,'Nature Resistance'),
(4,3,20585,'Wisp Spirit'),
(4,3,21009,'Shadowmeld Passive'),
(4,3,21651,'Opening'),
(4,3,21652,'Closing'),
(4,3,22027,'Remove Insignia'),
(4,3,22810,'Opening - No Text'),
(4,3,24949,'Defensive State 2 (DND)'),
(4,4,81,'Dodge'),
(4,4,203,'Unarmed'),
(4,4,204,'Defense'),
(4,4,522,'SPELLDEFENSE (DND)'),
(4,4,668,'Language Common'),
(4,4,671,'Language Darnassian'),
(4,4,1180,'Daggers'),
(4,4,1752,'Sinister Strike'),
(4,4,2098,'Eviscerate'),
(4,4,2382,'Generic'),
(4,4,2479,'Honorless Target'),
(4,4,2567,'Thrown'),
(4,4,2764,'Throw'),
(4,4,3050,'Detect'),
(4,4,3365,'Opening'),
(4,4,6233,'Closing'),
(4,4,6246,'Closing'),
(4,4,6247,'Opening'),
(4,4,6477,'Opening'),
(4,4,6478,'Opening'),
(4,4,6603,'Attack'),
(4,4,7266,'Duel'),
(4,4,7267,'Grovel'),
(4,4,7355,'Stuck'),
(4,4,8386,'Attacking'),
(4,4,9077,'Leather'),
(4,4,9078,'Cloth'),
(4,4,9125,'Generic'),
(4,4,16092,'Defensive State (DND)'),
(4,4,20580,'Shadowmeld'),
(4,4,20582,'Quickness'),
(4,4,20583,'Nature Resistance'),
(4,4,20585,'Wisp Spirit'),
(4,4,21009,'Shadowmeld Passive'),
(4,4,21184,'Rogue Passive (DND)'),
(4,4,21651,'Opening'),
(4,4,21652,'Closing'),
(4,4,22027,'Remove Insignia'),
(4,4,22810,'Opening - No Text'),
(4,5,81,'Dodge'),
(4,5,198,'One-Handed Maces'),
(4,5,203,'Unarmed'),
(4,5,204,'Defense'),
(4,5,522,'SPELLDEFENSE (DND)'),
(4,5,585,'Smite'),
(4,5,668,'Language Common'),
(4,5,671,'Language Darnassian'),
(4,5,2050,'Lesser Heal'),
(4,5,2382,'Generic'),
(4,5,2479,'Honorless Target'),
(4,5,3050,'Detect'),
(4,5,3365,'Opening'),
(4,5,5009,'Wands'),
(4,5,5019,'Shoot'),
(4,5,6233,'Closing'),
(4,5,6246,'Closing'),
(4,5,6247,'Opening'),
(4,5,6477,'Opening'),
(4,5,6478,'Opening'),
(4,5,6603,'Attack'),
(4,5,7266,'Duel'),
(4,5,7267,'Grovel'),
(4,5,7355,'Stuck'),
(4,5,8386,'Attacking'),
(4,5,9078,'Cloth'),
(4,5,9125,'Generic'),
(4,5,20580,'Shadowmeld'),
(4,5,20582,'Quickness'),
(4,5,20583,'Nature Resistance'),
(4,5,20585,'Wisp Spirit'),
(4,5,21009,'Shadowmeld Passive'),
(4,5,21651,'Opening'),
(4,5,21652,'Closing'),
(4,5,22027,'Remove Insignia'),
(4,5,22810,'Opening - No Text'),
(4,11,81,'Dodge'),
(4,11,203,'Unarmed'),
(4,11,204,'Defense'),
(4,11,227,'Staves'),
(4,11,522,'SPELLDEFENSE (DND)'),
(4,11,668,'Language Common'),
(4,11,671,'Language Darnassian'),
(4,11,1180,'Daggers'),
(4,11,2382,'Generic'),
(4,11,2479,'Honorless Target'),
(4,11,3050,'Detect'),
(4,11,3365,'Opening'),
(4,11,5176,'Wrath'),
(4,11,5185,'Healing Touch'),
(4,11,6233,'Closing'),
(4,11,6246,'Closing'),
(4,11,6247,'Opening'),
(4,11,6477,'Opening'),
(4,11,6478,'Opening'),
(4,11,6603,'Attack'),
(4,11,7266,'Duel'),
(4,11,7267,'Grovel'),
(4,11,7355,'Stuck'),
(4,11,8386,'Attacking'),
(4,11,9077,'Leather'),
(4,11,9078,'Cloth'),
(4,11,9125,'Generic'),
(4,11,20580,'Shadowmeld'),
(4,11,20582,'Quickness'),
(4,11,20583,'Nature Resistance'),
(4,11,20585,'Wisp Spirit'),
(4,11,21009,'Shadowmeld Passive'),
(4,11,21651,'Opening'),
(4,11,21652,'Closing'),
(4,11,22027,'Remove Insignia'),
(4,11,22810,'Opening - No Text'),
(4,11,27764,'Fetish'),
(5,1,78,'Heroic Strike'),
(5,1,81,'Dodge'),
(5,1,107,'Block'),
(5,1,201,'One-Handed Swords'),
(5,1,202,'Two-Handed Swords'),
(5,1,203,'Unarmed'),
(5,1,204,'Defense'),
(5,1,522,'SPELLDEFENSE (DND)'),
(5,1,669,'Language Orcish'),
(5,1,1180,'Daggers'),
(5,1,2382,'Generic'),
(5,1,2457,'Battle Stance'),
(5,1,2479,'Honorless Target'),
(5,1,3050,'Detect'),
(5,1,3365,'Opening'),
(5,1,5227,'Underwater Breathing'),
(5,1,5301,'Defensive State (DND)'),
(5,1,6233,'Closing'),
(5,1,6246,'Closing'),
(5,1,6247,'Opening'),
(5,1,6477,'Opening'),
(5,1,6478,'Opening'),
(5,1,6603,'Attack'),
(5,1,7266,'Duel'),
(5,1,7267,'Grovel'),
(5,1,7355,'Stuck'),
(5,1,7744,'Will of the Forsaken'),
(5,1,8386,'Attacking'),
(5,1,8737,'Mail'),
(5,1,9077,'Leather'),
(5,1,9078,'Cloth'),
(5,1,9116,'Shield'),
(5,1,9125,'Generic'),
(5,1,17737,'Language Gutterspeak'),
(5,1,20577,'Cannibalize'),
(5,1,20579,'Shadow Resistance'),
(5,1,21651,'Opening'),
(5,1,21652,'Closing'),
(5,1,22027,'Remove Insignia'),
(5,1,22810,'Opening - No Text'),
(5,4,81,'Dodge'),
(5,4,203,'Unarmed'),
(5,4,204,'Defense'),
(5,4,522,'SPELLDEFENSE (DND)'),
(5,4,669,'Language Orcish'),
(5,4,1180,'Daggers'),
(5,4,1752,'Sinister Strike'),
(5,4,2098,'Eviscerate'),
(5,4,2382,'Generic'),
(5,4,2479,'Honorless Target'),
(5,4,2567,'Thrown'),
(5,4,2764,'Throw'),
(5,4,3050,'Detect'),
(5,4,3365,'Opening'),
(5,4,5227,'Underwater Breathing'),
(5,4,6233,'Closing'),
(5,4,6246,'Closing'),
(5,4,6247,'Opening'),
(5,4,6477,'Opening'),
(5,4,6478,'Opening'),
(5,4,6603,'Attack'),
(5,4,7266,'Duel'),
(5,4,7267,'Grovel'),
(5,4,7355,'Stuck'),
(5,4,7744,'Will of the Forsaken'),
(5,4,8386,'Attacking'),
(5,4,9077,'Leather'),
(5,4,9078,'Cloth'),
(5,4,9125,'Generic'),
(5,4,16092,'Defensive State (DND)'),
(5,4,17737,'Language Gutterspeak'),
(5,4,20577,'Cannibalize'),
(5,4,20579,'Shadow Resistance'),
(5,4,21184,'Rogue Passive (DND)'),
(5,4,21651,'Opening'),
(5,4,21652,'Closing'),
(5,4,22027,'Remove Insignia'),
(5,4,22810,'Opening - No Text'),
(5,5,81,'Dodge'),
(5,5,198,'One-Handed Maces'),
(5,5,203,'Unarmed'),
(5,5,204,'Defense'),
(5,5,522,'SPELLDEFENSE (DND)'),
(5,5,585,'Smite'),
(5,5,669,'Language Orcish'),
(5,5,2050,'Lesser Heal'),
(5,5,2382,'Generic'),
(5,5,2479,'Honorless Target'),
(5,5,3050,'Detect'),
(5,5,3365,'Opening'),
(5,5,5009,'Wands'),
(5,5,5019,'Shoot'),
(5,5,5227,'Underwater Breathing'),
(5,5,6233,'Closing'),
(5,5,6246,'Closing'),
(5,5,6247,'Opening'),
(5,5,6477,'Opening'),
(5,5,6478,'Opening'),
(5,5,6603,'Attack'),
(5,5,7266,'Duel'),
(5,5,7267,'Grovel'),
(5,5,7355,'Stuck'),
(5,5,7744,'Will of the Forsaken'),
(5,5,8386,'Attacking'),
(5,5,9078,'Cloth'),
(5,5,9125,'Generic'),
(5,5,17737,'Language Gutterspeak'),
(5,5,20577,'Cannibalize'),
(5,5,20579,'Shadow Resistance'),
(5,5,21651,'Opening'),
(5,5,21652,'Closing'),
(5,5,22027,'Remove Insignia'),
(5,5,22810,'Opening - No Text'),
(5,8,81,'Dodge'),
(5,8,133,'Fireball'),
(5,8,168,'Frost Armor'),
(5,8,203,'Unarmed'),
(5,8,204,'Defense'),
(5,8,227,'Staves'),
(5,8,522,'SPELLDEFENSE (DND)'),
(5,8,669,'Language Orcish'),
(5,8,2382,'Generic'),
(5,8,2479,'Honorless Target'),
(5,8,3050,'Detect'),
(5,8,3365,'Opening'),
(5,8,5009,'Wands'),
(5,8,5019,'Shoot'),
(5,8,5227,'Underwater Breathing'),
(5,8,6233,'Closing'),
(5,8,6246,'Closing'),
(5,8,6247,'Opening'),
(5,8,6477,'Opening'),
(5,8,6478,'Opening'),
(5,8,6603,'Attack'),
(5,8,7266,'Duel'),
(5,8,7267,'Grovel'),
(5,8,7355,'Stuck'),
(5,8,7744,'Will of the Forsaken'),
(5,8,8386,'Attacking'),
(5,8,9078,'Cloth'),
(5,8,9125,'Generic'),
(5,8,17737,'Language Gutterspeak'),
(5,8,20577,'Cannibalize'),
(5,8,20579,'Shadow Resistance'),
(5,8,21651,'Opening'),
(5,8,21652,'Closing'),
(5,8,22027,'Remove Insignia'),
(5,8,22810,'Opening - No Text'),
(5,9,81,'Dodge'),
(5,9,203,'Unarmed'),
(5,9,204,'Defense'),
(5,9,522,'SPELLDEFENSE (DND)'),
(5,9,669,'Language Orcish'),
(5,9,686,'Shadow Bolt'),
(5,9,687,'Demon Skin'),
(5,9,1180,'Daggers'),
(5,9,2382,'Generic'),
(5,9,2479,'Honorless Target'),
(5,9,3050,'Detect'),
(5,9,3365,'Opening'),
(5,9,5009,'Wands'),
(5,9,5019,'Shoot'),
(5,9,5227,'Underwater Breathing'),
(5,9,6233,'Closing'),
(5,9,6246,'Closing'),
(5,9,6247,'Opening'),
(5,9,6477,'Opening'),
(5,9,6478,'Opening'),
(5,9,6603,'Attack'),
(5,9,7266,'Duel'),
(5,9,7267,'Grovel'),
(5,9,7355,'Stuck'),
(5,9,7744,'Will of the Forsaken'),
(5,9,8386,'Attacking'),
(5,9,9078,'Cloth'),
(5,9,9125,'Generic'),
(5,9,17737,'Language Gutterspeak'),
(5,9,20577,'Cannibalize'),
(5,9,20579,'Shadow Resistance'),
(5,9,21651,'Opening'),
(5,9,21652,'Closing'),
(5,9,22027,'Remove Insignia'),
(5,9,22810,'Opening - No Text'),
(6,1,78,'Heroic Strike'),
(6,1,81,'Dodge'),
(6,1,107,'Block'),
(6,1,196,'One-Handed Axes'),
(6,1,198,'One-Handed Maces'),
(6,1,199,'Two-Handed Maces'),
(6,1,203,'Unarmed'),
(6,1,204,'Defense'),
(6,1,522,'SPELLDEFENSE (DND)'),
(6,1,669,'Language Orcish'),
(6,1,670,'Language Taurahe'),
(6,1,2382,'Generic'),
(6,1,2457,'Battle Stance'),
(6,1,2479,'Honorless Target'),
(6,1,3050,'Detect'),
(6,1,3365,'Opening'),
(6,1,5301,'Defensive State (DND)'),
(6,1,6233,'Closing'),
(6,1,6246,'Closing'),
(6,1,6247,'Opening'),
(6,1,6477,'Opening'),
(6,1,6478,'Opening'),
(6,1,6603,'Attack'),
(6,1,7266,'Duel'),
(6,1,7267,'Grovel'),
(6,1,7355,'Stuck'),
(6,1,8386,'Attacking'),
(6,1,8737,'Mail'),
(6,1,9077,'Leather'),
(6,1,9078,'Cloth'),
(6,1,9116,'Shield'),
(6,1,9125,'Generic'),
(6,1,20549,'War Stomp'),
(6,1,20550,'Endurance'),
(6,1,20551,'Nature Resistance'),
(6,1,20552,'Cultivation'),
(6,1,21651,'Opening'),
(6,1,21652,'Closing'),
(6,1,22027,'Remove Insignia'),
(6,1,22810,'Opening - No Text'),
(6,3,75,'Auto Shot'),
(6,3,81,'Dodge'),
(6,3,196,'One-Handed Axes'),
(6,3,203,'Unarmed'),
(6,3,204,'Defense'),
(6,3,266,'Guns'),
(6,3,522,'SPELLDEFENSE (DND)'),
(6,3,669,'Language Orcish'),
(6,3,670,'Language Taurahe'),
(6,3,2382,'Generic'),
(6,3,2479,'Honorless Target'),
(6,3,2973,'Raptor Strike'),
(6,3,3050,'Detect'),
(6,3,3365,'Opening'),
(6,3,6233,'Closing'),
(6,3,6246,'Closing'),
(6,3,6247,'Opening'),
(6,3,6477,'Opening'),
(6,3,6478,'Opening'),
(6,3,6603,'Attack'),
(6,3,7266,'Duel'),
(6,3,7267,'Grovel'),
(6,3,7355,'Stuck'),
(6,3,8386,'Attacking'),
(6,3,9077,'Leather'),
(6,3,9078,'Cloth'),
(6,3,9125,'Generic'),
(6,3,13358,'Defensive State (DND)'),
(6,3,20549,'War Stomp'),
(6,3,20550,'Endurance'),
(6,3,20551,'Nature Resistance'),
(6,3,20552,'Cultivation'),
(6,3,21651,'Opening'),
(6,3,21652,'Closing'),
(6,3,22027,'Remove Insignia'),
(6,3,22810,'Opening - No Text'),
(6,3,24949,'Defensive State 2 (DND)'),
(6,7,81,'Dodge'),
(6,7,107,'Block'),
(6,7,198,'One-Handed Maces'),
(6,7,203,'Unarmed'),
(6,7,204,'Defense'),
(6,7,227,'Staves'),
(6,7,331,'Healing Wave'),
(6,7,403,'Lightning Bolt'),
(6,7,522,'SPELLDEFENSE (DND)'),
(6,7,669,'Language Orcish'),
(6,7,670,'Language Taurahe'),
(6,7,2382,'Generic'),
(6,7,2479,'Honorless Target'),
(6,7,3050,'Detect'),
(6,7,3365,'Opening'),
(6,7,6233,'Closing'),
(6,7,6246,'Closing'),
(6,7,6247,'Opening'),
(6,7,6477,'Opening'),
(6,7,6478,'Opening'),
(6,7,6603,'Attack'),
(6,7,7266,'Duel'),
(6,7,7267,'Grovel'),
(6,7,7355,'Stuck'),
(6,7,8386,'Attacking'),
(6,7,9077,'Leather'),
(6,7,9078,'Cloth'),
(6,7,9116,'Shield'),
(6,7,9125,'Generic'),
(6,7,20549,'War Stomp'),
(6,7,20550,'Endurance'),
(6,7,20551,'Nature Resistance'),
(6,7,20552,'Cultivation'),
(6,7,21651,'Opening'),
(6,7,21652,'Closing'),
(6,7,22027,'Remove Insignia'),
(6,7,22810,'Opening - No Text'),
(6,7,27763,'Totem'),
(6,11,81,'Dodge'),
(6,11,198,'One-Handed Maces'),
(6,11,203,'Unarmed'),
(6,11,204,'Defense'),
(6,11,227,'Staves'),
(6,11,522,'SPELLDEFENSE (DND)'),
(6,11,669,'Language Orcish'),
(6,11,670,'Language Taurahe'),
(6,11,2382,'Generic'),
(6,11,2479,'Honorless Target'),
(6,11,3050,'Detect'),
(6,11,3365,'Opening'),
(6,11,5176,'Wrath'),
(6,11,5185,'Healing Touch'),
(6,11,6233,'Closing'),
(6,11,6246,'Closing'),
(6,11,6247,'Opening'),
(6,11,6477,'Opening'),
(6,11,6478,'Opening'),
(6,11,6603,'Attack'),
(6,11,7266,'Duel'),
(6,11,7267,'Grovel'),
(6,11,7355,'Stuck'),
(6,11,8386,'Attacking'),
(6,11,9077,'Leather'),
(6,11,9078,'Cloth'),
(6,11,9125,'Generic'),
(6,11,20549,'War Stomp'),
(6,11,20550,'Endurance'),
(6,11,20551,'Nature Resistance'),
(6,11,20552,'Cultivation'),
(6,11,21651,'Opening'),
(6,11,21652,'Closing'),
(6,11,22027,'Remove Insignia'),
(6,11,22810,'Opening - No Text'),
(6,11,27764,'Fetish'),
(7,1,78,'Heroic Strike'),
(7,1,81,'Dodge'),
(7,1,107,'Block'),
(7,1,198,'One-Handed Maces'),
(7,1,201,'One-Handed Swords'),
(7,1,203,'Unarmed'),
(7,1,204,'Defense'),
(7,1,522,'SPELLDEFENSE (DND)'),
(7,1,668,'Language Common'),
(7,1,1180,'Daggers'),
(7,1,2382,'Generic'),
(7,1,2457,'Battle Stance'),
(7,1,2479,'Honorless Target'),
(7,1,3050,'Detect'),
(7,1,3365,'Opening'),
(7,1,5301,'Defensive State (DND)'),
(7,1,6233,'Closing'),
(7,1,6246,'Closing'),
(7,1,6247,'Opening'),
(7,1,6477,'Opening'),
(7,1,6478,'Opening'),
(7,1,6603,'Attack'),
(7,1,7266,'Duel'),
(7,1,7267,'Grovel'),
(7,1,7340,'Language Gnomish'),
(7,1,7355,'Stuck'),
(7,1,8386,'Attacking'),
(7,1,8737,'Mail'),
(7,1,9077,'Leather'),
(7,1,9078,'Cloth'),
(7,1,9116,'Shield'),
(7,1,9125,'Generic'),
(7,1,20589,'Escape Artist'),
(7,1,20591,'Expansive Mind'),
(7,1,20592,'Arcane Resistance'),
(7,1,20593,'Engineering Specialization'),
(7,1,21651,'Opening'),
(7,1,21652,'Closing'),
(7,1,22027,'Remove Insignia'),
(7,1,22810,'Opening - No Text'),
(7,4,81,'Dodge'),
(7,4,203,'Unarmed'),
(7,4,204,'Defense'),
(7,4,522,'SPELLDEFENSE (DND)'),
(7,4,668,'Language Common'),
(7,4,1180,'Daggers'),
(7,4,1752,'Sinister Strike'),
(7,4,2098,'Eviscerate'),
(7,4,2382,'Generic'),
(7,4,2479,'Honorless Target'),
(7,4,2567,'Thrown'),
(7,4,2764,'Throw'),
(7,4,3050,'Detect'),
(7,4,3365,'Opening'),
(7,4,6233,'Closing'),
(7,4,6246,'Closing'),
(7,4,6247,'Opening'),
(7,4,6477,'Opening'),
(7,4,6478,'Opening'),
(7,4,6603,'Attack'),
(7,4,7266,'Duel'),
(7,4,7267,'Grovel'),
(7,4,7340,'Language Gnomish'),
(7,4,7355,'Stuck'),
(7,4,8386,'Attacking'),
(7,4,9077,'Leather'),
(7,4,9078,'Cloth'),
(7,4,9125,'Generic'),
(7,4,16092,'Defensive State (DND)'),
(7,4,20589,'Escape Artist'),
(7,4,20591,'Expansive Mind'),
(7,4,20592,'Arcane Resistance'),
(7,4,20593,'Engineering Specialization'),
(7,4,21184,'Rogue Passive (DND)'),
(7,4,21651,'Opening'),
(7,4,21652,'Closing'),
(7,4,22027,'Remove Insignia'),
(7,4,22810,'Opening - No Text'),
(7,8,81,'Dodge'),
(7,8,133,'Fireball'),
(7,8,168,'Frost Armor'),
(7,8,203,'Unarmed'),
(7,8,204,'Defense'),
(7,8,227,'Staves'),
(7,8,522,'SPELLDEFENSE (DND)'),
(7,8,668,'Language Common'),
(7,8,2382,'Generic'),
(7,8,2479,'Honorless Target'),
(7,8,3050,'Detect'),
(7,8,3365,'Opening'),
(7,8,5009,'Wands'),
(7,8,5019,'Shoot'),
(7,8,6233,'Closing'),
(7,8,6246,'Closing'),
(7,8,6247,'Opening'),
(7,8,6477,'Opening'),
(7,8,6478,'Opening'),
(7,8,6603,'Attack'),
(7,8,7266,'Duel'),
(7,8,7267,'Grovel'),
(7,8,7340,'Language Gnomish'),
(7,8,7355,'Stuck'),
(7,8,8386,'Attacking'),
(7,8,9078,'Cloth'),
(7,8,9125,'Generic'),
(7,8,20589,'Escape Artist'),
(7,8,20591,'Expansive Mind'),
(7,8,20592,'Arcane Resistance'),
(7,8,20593,'Engineering Specialization'),
(7,8,21651,'Opening'),
(7,8,21652,'Closing'),
(7,8,22027,'Remove Insignia'),
(7,8,22810,'Opening - No Text'),
(7,9,81,'Dodge'),
(7,9,203,'Unarmed'),
(7,9,204,'Defense'),
(7,9,522,'SPELLDEFENSE (DND)'),
(7,9,668,'Language Common'),
(7,9,686,'Shadow Bolt'),
(7,9,687,'Demon Skin'),
(7,9,1180,'Daggers'),
(7,9,2382,'Generic'),
(7,9,2479,'Honorless Target'),
(7,9,3050,'Detect'),
(7,9,3365,'Opening'),
(7,9,5009,'Wands'),
(7,9,5019,'Shoot'),
(7,9,6233,'Closing'),
(7,9,6246,'Closing'),
(7,9,6247,'Opening'),
(7,9,6477,'Opening'),
(7,9,6478,'Opening'),
(7,9,6603,'Attack'),
(7,9,7266,'Duel'),
(7,9,7267,'Grovel'),
(7,9,7340,'Language Gnomish'),
(7,9,7355,'Stuck'),
(7,9,8386,'Attacking'),
(7,9,9078,'Cloth'),
(7,9,9125,'Generic'),
(7,9,20589,'Escape Artist'),
(7,9,20591,'Expansive Mind'),
(7,9,20592,'Arcane Resistance'),
(7,9,20593,'Engineering Specialization'),
(7,9,21651,'Opening'),
(7,9,21652,'Closing'),
(7,9,22027,'Remove Insignia'),
(7,9,22810,'Opening - No Text'),
(8,1,78,'Heroic Strike'),
(8,1,81,'Dodge'),
(8,1,107,'Block'),
(8,1,196,'One-Handed Axes'),
(8,1,203,'Unarmed'),
(8,1,204,'Defense'),
(8,1,522,'SPELLDEFENSE (DND)'),
(8,1,669,'Language Orcish'),
(8,1,1180,'Daggers'),
(8,1,2382,'Generic'),
(8,1,2457,'Battle Stance'),
(8,1,2479,'Honorless Target'),
(8,1,2567,'Thrown'),
(8,1,2764,'Throw'),
(8,1,3050,'Detect'),
(8,1,3365,'Opening'),
(8,1,5301,'Defensive State (DND)'),
(8,1,6233,'Closing'),
(8,1,6246,'Closing'),
(8,1,6247,'Opening'),
(8,1,6477,'Opening'),
(8,1,6478,'Opening'),
(8,1,6603,'Attack'),
(8,1,7266,'Duel'),
(8,1,7267,'Grovel'),
(8,1,7341,'Language Troll'),
(8,1,7355,'Stuck'),
(8,1,8386,'Attacking'),
(8,1,8737,'Mail'),
(8,1,9077,'Leather'),
(8,1,9078,'Cloth'),
(8,1,9116,'Shield'),
(8,1,9125,'Generic'),
(8,1,20555,'Regeneration'),
(8,1,20557,'Beast Slaying'),
(8,1,20558,'Throwing Specialization'),
(8,1,21651,'Opening'),
(8,1,21652,'Closing'),
(8,1,22027,'Remove Insignia'),
(8,1,22810,'Opening - No Text'),
(8,1,26290,'Bow Specialization'),
(8,1,26296,'Berserking'),
(8,3,75,'Auto Shot'),
(8,3,81,'Dodge'),
(8,3,196,'One-Handed Axes'),
(8,3,203,'Unarmed'),
(8,3,204,'Defense'),
(8,3,264,'Bows'),
(8,3,522,'SPELLDEFENSE (DND)'),
(8,3,669,'Language Orcish'),
(8,3,2382,'Generic'),
(8,3,2479,'Honorless Target'),
(8,3,2973,'Raptor Strike'),
(8,3,3050,'Detect'),
(8,3,3365,'Opening'),
(8,3,6233,'Closing'),
(8,3,6246,'Closing'),
(8,3,6247,'Opening'),
(8,3,6477,'Opening'),
(8,3,6478,'Opening'),
(8,3,6603,'Attack'),
(8,3,7266,'Duel'),
(8,3,7267,'Grovel'),
(8,3,7341,'Language Troll'),
(8,3,7355,'Stuck'),
(8,3,8386,'Attacking'),
(8,3,9077,'Leather'),
(8,3,9078,'Cloth'),
(8,3,9125,'Generic'),
(8,3,13358,'Defensive State (DND)'),
(8,3,20554,'Berserking'),
(8,3,20555,'Regeneration'),
(8,3,20557,'Beast Slaying'),
(8,3,20558,'Throwing Specialization'),
(8,3,21651,'Opening'),
(8,3,21652,'Closing'),
(8,3,22027,'Remove Insignia'),
(8,3,22810,'Opening - No Text'),
(8,3,24949,'Defensive State 2 (DND)'),
(8,3,26290,'Bow Specialization'),
(8,4,81,'Dodge'),
(8,4,203,'Unarmed'),
(8,4,204,'Defense'),
(8,4,522,'SPELLDEFENSE (DND)'),
(8,4,669,'Language Orcish'),
(8,4,1180,'Daggers'),
(8,4,1752,'Sinister Strike'),
(8,4,2098,'Eviscerate'),
(8,4,2382,'Generic'),
(8,4,2479,'Honorless Target'),
(8,4,2567,'Thrown'),
(8,4,2764,'Throw'),
(8,4,3050,'Detect'),
(8,4,3365,'Opening'),
(8,4,6233,'Closing'),
(8,4,6246,'Closing'),
(8,4,6247,'Opening'),
(8,4,6477,'Opening'),
(8,4,6478,'Opening'),
(8,4,6603,'Attack'),
(8,4,7266,'Duel'),
(8,4,7267,'Grovel'),
(8,4,7341,'Language Troll'),
(8,4,7355,'Stuck'),
(8,4,8386,'Attacking'),
(8,4,9077,'Leather'),
(8,4,9078,'Cloth'),
(8,4,9125,'Generic'),
(8,4,16092,'Defensive State (DND)'),
(8,4,20555,'Regeneration'),
(8,4,20557,'Beast Slaying'),
(8,4,20558,'Throwing Specialization'),
(8,4,21184,'Rogue Passive (DND)'),
(8,4,21651,'Opening'),
(8,4,21652,'Closing'),
(8,4,22027,'Remove Insignia'),
(8,4,22810,'Opening - No Text'),
(8,4,26290,'Bow Specialization'),
(8,4,26297,'Berserking'),
(8,5,81,'Dodge'),
(8,5,198,'One-Handed Maces'),
(8,5,203,'Unarmed'),
(8,5,204,'Defense'),
(8,5,522,'SPELLDEFENSE (DND)'),
(8,5,585,'Smite'),
(8,5,669,'Language Orcish'),
(8,5,2050,'Lesser Heal'),
(8,5,2382,'Generic'),
(8,5,2479,'Honorless Target'),
(8,5,3050,'Detect'),
(8,5,3365,'Opening'),
(8,5,5009,'Wands'),
(8,5,5019,'Shoot'),
(8,5,6233,'Closing'),
(8,5,6246,'Closing'),
(8,5,6247,'Opening'),
(8,5,6477,'Opening'),
(8,5,6478,'Opening'),
(8,5,6603,'Attack'),
(8,5,7266,'Duel'),
(8,5,7267,'Grovel'),
(8,5,7341,'Language Troll'),
(8,5,7355,'Stuck'),
(8,5,8386,'Attacking'),
(8,5,9078,'Cloth'),
(8,5,9125,'Generic'),
(8,5,20554,'Berserking'),
(8,5,20555,'Regeneration'),
(8,5,20557,'Beast Slaying'),
(8,5,20558,'Throwing Specialization'),
(8,5,21651,'Opening'),
(8,5,21652,'Closing'),
(8,5,22027,'Remove Insignia'),
(8,5,22810,'Opening - No Text'),
(8,5,26290,'Bow Specialization'),
(8,7,81,'Dodge'),
(8,7,107,'Block'),
(8,7,198,'One-Handed Maces'),
(8,7,203,'Unarmed'),
(8,7,204,'Defense'),
(8,7,227,'Staves'),
(8,7,331,'Healing Wave'),
(8,7,403,'Lightning Bolt'),
(8,7,522,'SPELLDEFENSE (DND)'),
(8,7,669,'Language Orcish'),
(8,7,2382,'Generic'),
(8,7,2479,'Honorless Target'),
(8,7,3050,'Detect'),
(8,7,3365,'Opening'),
(8,7,6233,'Closing'),
(8,7,6246,'Closing'),
(8,7,6247,'Opening'),
(8,7,6477,'Opening'),
(8,7,6478,'Opening'),
(8,7,6603,'Attack'),
(8,7,7266,'Duel'),
(8,7,7267,'Grovel'),
(8,7,7341,'Language Troll'),
(8,7,7355,'Stuck'),
(8,7,8386,'Attacking'),
(8,7,9077,'Leather'),
(8,7,9078,'Cloth'),
(8,7,9116,'Shield'),
(8,7,9125,'Generic'),
(8,7,20554,'Berserking'),
(8,7,20555,'Regeneration'),
(8,7,20557,'Beast Slaying'),
(8,7,20558,'Throwing Specialization'),
(8,7,21651,'Opening'),
(8,7,21652,'Closing'),
(8,7,22027,'Remove Insignia'),
(8,7,22810,'Opening - No Text'),
(8,7,26290,'Bow Specialization'),
(8,7,27763,'Totem'),
(8,8,81,'Dodge'),
(8,8,133,'Fireball'),
(8,8,168,'Frost Armor'),
(8,8,203,'Unarmed'),
(8,8,204,'Defense'),
(8,8,227,'Staves'),
(8,8,522,'SPELLDEFENSE (DND)'),
(8,8,669,'Language Orcish'),
(8,8,2382,'Generic'),
(8,8,2479,'Honorless Target'),
(8,8,3050,'Detect'),
(8,8,3365,'Opening'),
(8,8,5009,'Wands'),
(8,8,5019,'Shoot'),
(8,8,6233,'Closing'),
(8,8,6246,'Closing'),
(8,8,6247,'Opening'),
(8,8,6477,'Opening'),
(8,8,6478,'Opening'),
(8,8,6603,'Attack'),
(8,8,7266,'Duel'),
(8,8,7267,'Grovel'),
(8,8,7341,'Language Troll'),
(8,8,7355,'Stuck'),
(8,8,8386,'Attacking'),
(8,8,9078,'Cloth'),
(8,8,9125,'Generic'),
(8,8,20554,'Berserking'),
(8,8,20555,'Regeneration'),
(8,8,20557,'Beast Slaying'),
(8,8,20558,'Throwing Specialization'),
(8,8,21651,'Opening'),
(8,8,21652,'Closing'),
(8,8,22027,'Remove Insignia'),
(8,8,22810,'Opening - No Text'),
(8,8,26290,'Bow Specialization');
/*!40000 ALTER TABLE `playercreateinfo_spell` ENABLE KEYS */;
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
