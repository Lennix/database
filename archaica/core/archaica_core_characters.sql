/*
    ==============================================
     Archaica core updates for character database
    ==============================================
*/


-- ====================================================
--  Support for OutdoorPvP - saving world states to DB
-- ====================================================

DROP TABLE IF EXISTS `outdoor_pvp`;
CREATE TABLE `outdoor_pvp` (
  `id` mediumint(8) unsigned NOT NULL,
  `data0` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
