/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scripted_areatrigger` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `scripted_areatrigger` VALUES
(522,'at_twiggy_flathead'),
(822,'at_map_chamber'),
(962,'at_zumrah'),
(1105,'at_clockwerk_run'),
(1526,'at_ring_of_law'),
(1736,'at_larkorwi_eggs'),
(1740,'at_larkorwi_eggs'),
(1946,'at_backrock_spire'),
(1986,'at_backrock_spire'),
(1987,'at_backrock_spire'),
(2026,'at_backrock_spire'),
(2046,'at_backrock_spire'),
(2209,'at_bastion'),
(2210,'at_bastion'),
(2527,'at_pvp_barracks'),
(2532,'at_pvp_barracks'),
(3066,'at_ravenholdt'),
(3587,'at_irontree_woods'),
(3626,'at_vaelastrasz'),
(3956,'at_zulgurub'),
(3958,'at_zulgurub'),
(3960,'at_zulgurub'),
(3964,'at_zulgurub'),
(4016,'at_shade_of_eranikus'),
(4089,'at_sm_cathedral_entrance'),
(4112,'at_naxxramas');
