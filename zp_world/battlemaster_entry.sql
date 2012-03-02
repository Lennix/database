/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `battlemaster_entry` VALUES
(347,1),
(857,3),
(907,3),
(2302,2),
(2804,2),
(3890,2),
(5118,1),
(7410,1),
(7427,1),
(10360,2),
(12197,1),
(12198,3),
(14942,1),
(14981,2),
(14982,2),
(14990,3),
(14991,3),
(15006,3),
(15007,3),
(15008,3),
(15102,2),
(15103,1),
(15105,2),
(15106,1);
