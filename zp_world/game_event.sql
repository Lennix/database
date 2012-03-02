/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `game_event` VALUES
(1,'2020-06-20 22:00:00','2020-12-30 22:00:00',525600,20160,0,'Midsummer Fire Festival'),
(2,'2010-12-13 23:00:00','2020-12-30 22:00:00',525600,24480,0,'Winter Veil'),
(4,'2010-09-05 05:00:00','2020-12-30 22:00:00',86400,10020,0,'Darkmoon Faire (Elwynn Forest)'),
(5,'2010-10-03 05:00:00','2020-12-30 22:00:00',86400,10020,0,'Darkmoon Faire (Mulgore)'),
(6,'2020-12-31 22:00:00','2020-12-30 22:00:00',525600,120,0,'New Year\'s Eve'),
(7,'2020-02-04 23:00:00','2020-12-30 22:00:00',525600,27360,0,'Lunar Festival'),
(8,'2008-02-09 22:00:00','2020-12-30 22:00:00',525600,7200,0,'Love is in the Air'),
(9,'2020-04-08 22:00:00','2020-12-30 22:00:00',524160,1440,0,'Noblegarden'),
(10,'2020-05-21 22:00:00','2020-12-30 22:00:00',525600,10080,0,'Children\'s Week '),
(11,'2020-09-23 22:00:00','2020-12-30 22:00:00',525600,10080,0,'Harvest Festival'),
(12,'2020-10-17 22:00:00','2020-12-30 22:00:00',525600,20160,0,'Hallow\'s End'),
(13,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Elemental Invasions'),
(14,'2020-08-05 06:00:00','2020-12-30 22:00:00',10080,300,0,'Fishing Extravaganza Announce'),
(15,'2020-08-05 12:00:00','2020-12-30 22:00:00',10080,120,0,'Fishing Extravaganza'),
(16,'2007-08-04 20:00:00','2020-12-30 22:00:00',180,120,0,'Gurubashi Arena Booty Run'),
(17,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Scourge Invasion'),
(18,'2020-08-02 21:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Alterac Valley!'),
(19,'2020-08-09 21:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Warsong Gulch!'),
(20,'2020-08-16 21:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Arathi Basin!'),
(22,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'AQ War Effort'),
(23,'2007-09-01 03:00:00','2020-12-30 22:00:00',131040,4320,0,'Darkmoon Faire Building (Elwynn Forest)'),
(24,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Unknown Holiday PVP Event'),
(25,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Call to Arms: Unknown Event'),
(26,'2020-10-02 22:00:00','2020-12-30 22:00:00',525600,20160,0,'Brewfest'),
(27,'2020-01-01 20:00:00','2020-12-30 22:00:00',1440,720,0,'Nights'),
(28,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,2880,0,'Noblegarden'),
(29,'2008-01-29 00:00:00','2020-12-30 22:00:00',80640,20160,0,'Edge of Madness, Gri\'lek'),
(30,'2008-02-12 00:00:00','2020-12-30 22:00:00',80640,20160,0,'Edge of Madness, Hazza\'rah'),
(31,'2008-01-01 00:00:00','2020-12-30 22:00:00',80640,20160,0,'Edge of Madness, Renataki'),
(32,'2008-01-15 00:00:00','2020-12-30 22:00:00',80640,20160,0,'Edge of Madness, Wushoolay');
