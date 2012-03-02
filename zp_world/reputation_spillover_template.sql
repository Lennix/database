/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_spillover_template` (
  `faction` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT 'faction entry',
  `faction1` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL DEFAULT '0' COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'max rank, above this will not give any spillover',
  `faction2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rate_2` float NOT NULL DEFAULT '0',
  `rank_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `faction3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rate_3` float NOT NULL DEFAULT '0',
  `rank_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `faction4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rate_4` float NOT NULL DEFAULT '0',
  `rank_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `reputation_spillover_template` VALUES
(21,369,0.5,7,470,0.5,7,577,0.5,7,0,0,0),
(47,72,0.25,7,54,0.25,7,69,0.25,7,0,0,0),
(54,47,0.25,7,72,0.25,7,69,0.25,7,0,0,0),
(68,76,0.25,7,81,0.25,7,530,0.25,7,0,0,0),
(69,47,0.25,7,54,0.25,7,72,0.25,7,0,0,0),
(72,47,0.25,7,54,0.25,7,69,0.25,7,0,0,0),
(76,68,0.25,7,81,0.25,7,530,0.25,7,0,0,0),
(81,76,0.25,7,68,0.25,7,530,0.25,7,0,0,0),
(369,21,0.5,7,470,0.5,7,577,0.5,7,0,0,0),
(470,369,0.5,7,21,0.5,7,577,0.5,7,0,0,0),
(530,76,0.25,7,81,0.25,7,68,0.25,7,0,0,0),
(577,369,0.5,7,470,0.5,7,21,0.5,7,0,0,0);
