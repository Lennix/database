/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_variables` (
  `NextMaintenanceDate` int(11) unsigned NOT NULL DEFAULT '0',
  `cleaning_flags` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Variable Saves';
/*!40101 SET character_set_client = @saved_cs_client */;
