/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `Threat` smallint(6) NOT NULL,
  `multiplier` float NOT NULL DEFAULT '1' COMMENT 'threat multiplier for damage/healing',
  `ap_bonus` float NOT NULL DEFAULT '0' COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `spell_threat` VALUES
(72,180,1,0),
(78,20,1,0),
(99,15,1,0),
(284,39,1,0),
(285,59,1,0),
(770,108,1,0),
(845,10,1,0),
(1160,43,1,0),
(1608,78,1,0),
(1715,61,1,0),
(1735,25,1,0),
(2139,300,1,0),
(2649,415,1,0),
(3716,395,1,0),
(6343,17,1,0),
(6572,155,1,0),
(6574,195,1,0),
(6673,60,1,0),
(6807,59,1,0),
(6809,89,1,0),
(7369,40,1,0),
(7372,101,1,0),
(7373,141,1,0),
(7379,235,1,0),
(7386,100,1,0),
(7405,140,1,0),
(8198,40,1,0),
(8204,64,1,0),
(8205,96,1,0),
(8380,180,1,0),
(8972,118,1,0),
(9490,29,1,0),
(9745,148,1,0),
(9747,36,1,0),
(9880,178,1,0),
(9881,207,1,0),
(9898,42,1,0),
(11564,98,1,0),
(11565,118,1,0),
(11566,560,1,0),
(11567,145,1,0),
(11580,143,1,0),
(11581,180,1,0),
(11596,220,1,0),
(11597,261,1,0),
(11600,275,1,0),
(11601,315,1,0),
(11608,60,1,0),
(11609,70,1,0),
(14274,200,1,0),
(15629,300,1,0),
(15630,400,1,0),
(15631,500,1,0),
(15632,600,1,0),
(16857,108,1,0),
(17735,200,1,0),
(17750,300,1,0),
(17751,450,1,0),
(17752,600,1,0),
(20116,400,3,5),
(20243,101,1,0),
(20569,100,1,0),
(20736,100,1,0),
(20923,350,1.5,0),
(20925,20,1,0),
(20927,30,1,0),
(20928,40,1,0),
(23922,160,1,0),
(23923,190,1,0),
(23924,220,1,0),
(23925,250,1,0),
(24394,580,1,0),
(24640,5,1,0),
(25286,175,1,0),
(25288,355,1,0);
