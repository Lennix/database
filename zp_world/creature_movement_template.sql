/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_movement_template` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Creature entry',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `waittime` int(10) unsigned NOT NULL DEFAULT '0',
  `script_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `textid1` int(11) NOT NULL DEFAULT '0',
  `textid2` int(11) NOT NULL DEFAULT '0',
  `textid3` int(11) NOT NULL DEFAULT '0',
  `textid4` int(11) NOT NULL DEFAULT '0',
  `textid5` int(11) NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `wpguid` int(11) NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `model1` mediumint(9) NOT NULL DEFAULT '0',
  `model2` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`point`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoint system';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `creature_movement_template` VALUES
(10509,1,150.828,-272.484,110.944,0,0,0,0,0,0,0,0,0,0,1.56962,0,0),
(10509,2,151.515,-297.591,110.652,0,0,0,0,0,0,0,0,0,0,4.72299,0,0),
(10509,3,151.723,-317.225,110.652,0,0,0,0,0,0,0,0,0,0,4.72299,0,0),
(10509,4,151.986,-342.022,110.956,0,0,0,0,0,0,0,0,0,0,4.72299,0,0),
(10509,5,152.349,-319.676,110.652,0,0,0,0,0,0,0,0,0,0,1.63795,0,0),
(10509,6,153.237,-297.336,110.652,0,0,0,0,0,0,0,0,0,0,1.58925,0,0),
(10509,7,152.753,-271.126,110.943,0,0,0,0,0,0,0,0,0,0,1.58925,0,0);
