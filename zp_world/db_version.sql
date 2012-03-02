/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_version` (
  `version` varchar(120) DEFAULT NULL,
  `creature_ai_version` varchar(120) DEFAULT NULL,
  `required_z1824_xxxxx_01_mangos_spell_affect_event` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used DB version notes';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `db_version` VALUES
('ZPDB 0.2.0 (003) + Archaica updatepack 901_1000 (10)','ACID 1.0.2 + Archaica fixes',NULL);
