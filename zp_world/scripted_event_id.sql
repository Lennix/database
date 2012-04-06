/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scripted_event_id` (
  `id` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Script library scripted events';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `scripted_event_id` VALUES
(2228,'event_spell_altar_boss_aggro'),
(2268,'event_spell_altar_boss_aggro'),
(4884,'event_spell_emberseer_start'),
(7060,'event_spell_BG_AV_BOSS'),
(7268,'event_spell_BG_AV_BOSS'),
(8328,'npc_kroshius'),
(8436,'event_spell_place_scryer'),
(8502,'event_spell_awaken_the_soulflayer');
