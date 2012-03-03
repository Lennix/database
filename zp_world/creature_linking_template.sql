/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_linking_template` (
  `entry` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'creature_template.entry of the slave mob that is linked',
  `map` mediumint(8) unsigned NOT NULL COMMENT 'Id of map of the mobs',
  `master_entry` int(10) unsigned NOT NULL COMMENT 'master to trigger events',
  `flag` mediumint(8) unsigned NOT NULL COMMENT 'flag - describing what should happen when',
  PRIMARY KEY (`entry`,`map`)
) ENGINE=InnoDB AUTO_INCREMENT=16804 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature Linking System';
/*!40101 SET character_set_client = @saved_cs_client */;
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
(11658,409,11658,4103),
(11661,409,12259,1031),
(11662,409,12098,1031),
(11663,409,12018,1031),
(11664,409,12018,1031),
(11665,409,11665,4103),
(11669,409,11669,4103),
(11671,409,11982,1024),
(11672,409,11988,1063),
(11673,409,11982,1024),
(12099,409,12057,1031),
(12101,409,12057,1024),
(12119,409,12118,1543),
(14892,1,14857,512),
(15984,531,15516,519),
(16506,533,15953,7),
(16803,533,16061,7);
