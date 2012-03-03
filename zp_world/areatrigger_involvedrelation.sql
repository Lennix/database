/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `areatrigger_involvedrelation` VALUES
(78,155),
(87,76),
(88,62),
(98,201),
(169,287),
(175,455),
(178,503),
(196,578),
(216,870),
(225,944),
(230,954),
(231,984),
(232,984),
(235,984),
(246,1149),
(302,1265),
(362,1448),
(482,1699),
(522,1719),
(1205,2989),
(1388,3505),
(2327,4842),
(2486,4811),
(2926,25),
(2946,6421),
(3367,6025),
(3986,8286);
