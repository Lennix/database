/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_creature_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `event` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `game_event_creature_data` VALUES
(12088,0,0,504,0,0,27),
(12093,0,0,504,0,0,27),
(12095,0,0,504,0,0,27),
(79670,0,0,504,0,0,27),
(79675,0,0,504,0,0,27),
(79676,0,0,504,0,0,27),
(79690,0,0,504,0,0,27),
(79792,0,0,504,0,0,27),
(79807,0,0,504,0,0,27),
(79814,0,0,504,0,0,27);
