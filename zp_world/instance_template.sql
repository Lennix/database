/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `levelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `levelMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reset_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `ghostEntranceMap` smallint(5) NOT NULL DEFAULT '-1',
  `ghostEntranceX` float NOT NULL DEFAULT '0',
  `ghostEntranceY` float NOT NULL DEFAULT '0',
  `ScriptName` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`map`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `instance_template` VALUES
(33,0,20,26,10,0,0,-230.989,1571.57,'instance_shadowfang_keep'),
(34,0,24,32,10,0,0,-8762.38,848.01,''),
(36,0,17,26,10,0,0,-11207.8,1681.15,'instance_deadmines'),
(43,0,17,24,10,0,1,-751.131,-2209.24,'instance_wailing_caverns'),
(47,0,29,38,10,0,1,-4459.45,-1660.21,'instance_razorfen_kraul'),
(48,0,24,32,10,0,1,4249.12,748.387,'instance_blackfathom_deeps'),
(70,0,41,51,10,0,0,-6060.18,-2955,'instance_uldaman'),
(90,0,29,38,10,0,0,-5162.66,931.599,'instance_gnomeregan'),
(109,0,50,0,10,0,0,-10170.1,-3995.97,'instance_sunken_temple'),
(129,0,37,46,10,0,1,-4662.88,-2535.87,'instance_razorfen_downs'),
(189,0,34,45,10,0,0,2892.24,-811.264,'instance_scarlet_monastery'),
(209,0,44,54,10,0,1,-6790.58,-2891.28,'instance_zulfarrak'),
(229,0,55,0,10,0,0,-7522.53,-1233.04,'instance_blackrock_spire'),
(230,0,52,0,5,0,0,-7178.1,-928.639,'instance_blackrock_depths'),
(249,0,60,0,40,5,1,-4753.31,-3752.42,'instance_onyxias_lair'),
(289,0,58,0,5,0,0,1274.78,-2552.56,'instance_scholomance'),
(309,0,61,0,20,3,0,-11916.1,-1224.58,'instance_zulgurub'),
(329,0,58,0,5,0,0,3392.32,-3378.48,'instance_stratholme'),
(349,0,46,55,10,0,1,-1432.7,2924.98,'instance_maraudon'),
(389,0,13,18,10,0,1,1816.76,-4423.37,''),
(409,0,60,0,40,7,0,-7510.56,-1036.7,'instance_molten_core'),
(429,0,55,0,5,0,1,-3908.03,1130,'instance_dire_maul'),
(469,0,60,0,40,7,0,-7663.41,-1218.67,'instance_blackwing_lair'),
(509,0,61,0,20,3,1,-8114.46,1526.37,'instance_ruins_of_ahnqiraj'),
(531,0,61,0,40,7,1,-8111.72,1526.79,'instance_temple_of_ahnqiraj'),
(533,0,61,0,40,7,-1,0,0,'instance_naxxramas');
