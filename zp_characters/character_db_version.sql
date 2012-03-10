/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_db_version` (
  `required_z1597_s1099_02_characters_pet_aura` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `character_db_version` VALUES (NULL);
