/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transports` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `transports` VALUES
(20808,'Ratchet and Booty Bay',350818),
(164871,'Orgrimmar and Undercity',356284),
(175080,'Grom\'Gol Base Camp and Orgrimmar',303463),
(176231,'Menethil Harbor and Theramore Isle',329313),
(176244,'Teldrassil and Auberdine',316251),
(176310,'Menethil Harbor and Auberdine',295579),
(176495,'Grom\'Gol Base Camp and Undercity',333044),
(177233,'Forgotton Coast and Feathermoon Stronghold',317038);
