/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(11) unsigned NOT NULL DEFAULT '120',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Summon Comment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `creature_ai_summons` VALUES
(1,8074.84,-3840,690.061,4.6,180000,'10727'),
(4,-9967.55,-135.956,24.5909,0.170326,180000,'6846'),
(5,-9958.49,-140.526,24.2409,4.0015,180000,'6846'),
(6,-9964.59,-140.567,24.5105,0.741307,180000,'6846'),
(7,-9232.11,342.473,74.4399,4.31658,180000,'5917'),
(8,-1209.65,-2738.38,102.646,4.99352,300000,'3395'),
(9,274.415,-416.159,-119.962,4.86179,18000000,'11460'),
(10,272.422,-418.679,-119.962,4.76048,18000000,'11460'),
(11,268.91,-417.027,-119.962,5.03693,18000000,'11460'),
(1000,-441.485,-85.2876,-90.8275,3.11955,180000,'5710'),
(1001,-441.11,-75.2876,-90.3401,3.11955,180000,'5710');
