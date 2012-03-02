/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `pet` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`pet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `spell_pet_auras` VALUES
(19028,0,25228),
(19578,0,19579),
(20895,0,24529),
(23785,416,23759),
(23785,417,23762),
(23785,1860,23760),
(23785,1863,23761),
(23822,416,23826),
(23822,417,23837),
(23822,1860,23841),
(23822,1863,23833),
(23823,416,23827),
(23823,417,23838),
(23823,1860,23842),
(23823,1863,23834),
(23824,416,23828),
(23824,417,23839),
(23824,1860,23843),
(23824,1863,23835),
(23825,416,23829),
(23825,417,23840),
(23825,1860,23844),
(23825,1863,23836),
(28757,0,28758);
