
-- ========================
--  z0226_081_01_mangos_string.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0183_093_01_mangos_command required_z0226_081_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN(60,61,62);
INSERT INTO mangos_string VALUES
(60,'I\'m busy right now, come back later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(61,'Username: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(62,'Password: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- ========================
--  z0227_094_01_mangos_mangos_string.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0226_081_01_mangos_mangos_string required_z0227_094_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=60;

-- ========================
--  z0238_xxx_01_mangos_quest_template.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0227_094_01_mangos_mangos_string required_z0238_xxx_01_mangos_quest_template bit;

ALTER TABLE quest_template DROP rewhonorablekills;


-- ========================
--  z0271_084_01_mangos_points_of_interest.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0238_xxx_01_mangos_quest_template required_z0271_084_01_mangos_points_of_interest bit;

DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `icon` mediumint(8) unsigned NOT NULL default '0',
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `data` mediumint(8) unsigned NOT NULL default '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ========================
--  z0271_084_02_mangos_locales_points_of_interest.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0271_084_01_mangos_points_of_interest required_z0271_084_02_mangos_locales_points_of_interest bit;

DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `icon_name_loc1` text,
  `icon_name_loc2` text,
  `icon_name_loc3` text,
  `icon_name_loc4` text,
  `icon_name_loc5` text,
  `icon_name_loc6` text,
  `icon_name_loc7` text,
  `icon_name_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ========================
--  z0289_085_01_mangos_gossip.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0271_084_02_mangos_locales_points_of_interest required_z0289_085_01_mangos_gossip bit;

DROP TABLE IF EXISTS gossip_menu;
CREATE TABLE gossip_menu (
  entry smallint(6) unsigned NOT NULL default '0',
  text_id mediumint(8) unsigned NOT NULL default '0',
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (entry, text_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS gossip_menu_option;
CREATE TABLE gossip_menu_option (
  menu_id smallint(6) unsigned NOT NULL default '0',
  id smallint(6) unsigned NOT NULL default '0',
  option_icon mediumint(8) unsigned NOT NULL default '0',
  option_text text,
  option_id tinyint(3) unsigned NOT NULL default '0',
  npc_option_npcflag int(10) unsigned NOT NULL default '0',
  action_menu_id mediumint(8) unsigned NOT NULL default '0',
  action_poi_id mediumint(8) unsigned NOT NULL default '0',
  action_script_id mediumint(8) unsigned NOT NULL default '0',
  box_coded tinyint(3) unsigned NOT NULL default '0',
  box_money int(11) unsigned NOT NULL default '0',
  box_text text,
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_3 tinyint(3) unsigned NOT NULL default '0',
  cond_3_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_3_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (menu_id, id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM gossip_menu_option WHERE menu_id=0;
INSERT INTO gossip_menu_option VALUES
(0,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,1,1,'GOSSIP_OPTION_VENDOR',3,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,2,2,'GOSSIP_OPTION_TAXIVENDOR',4,8192,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,3,3,'GOSSIP_OPTION_TRAINER',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,4,4,'GOSSIP_OPTION_SPIRITHEALER',6,16384,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,5,4,'GOSSIP_OPTION_SPIRITGUIDE',7,32768,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,6,5,'GOSSIP_OPTION_INNKEEPER',8,65536,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,7,6,'GOSSIP_OPTION_BANKER',9,131072,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,8,7,'GOSSIP_OPTION_PETITIONER',10,262144,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,9,8,'GOSSIP_OPTION_TABARDDESIGNER',11,524288,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,10,9,'GOSSIP_OPTION_BATTLEFIELD',12,1048576,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,11,6,'GOSSIP_OPTION_AUCTIONEER',13,2097152,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,12,0,'GOSSIP_OPTION_STABLEPET',14,4194304,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',15,4096,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,14,2,'GOSSIP_OPTION_UNLEARNTALENTS',16,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,15,2,'GOSSIP_OPTION_UNLEARNPETSKILLS',17,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);

ALTER TABLE creature_template ADD gossip_menu_id mediumint(8) unsigned NOT NULL default 0 AFTER subname;

ALTER TABLE locales_npc_option CHANGE COLUMN entry id smallint(6) unsigned NOT NULL default '0';
ALTER TABLE locales_npc_option ADD menu_id smallint(6) unsigned NOT NULL default '0' FIRST;

ALTER TABLE locales_npc_option DROP PRIMARY KEY;
ALTER TABLE locales_npc_option ADD PRIMARY KEY (menu_id, id);

DROP TABLE IF EXISTS locales_gossip_menu_option;
RENAME TABLE locales_npc_option TO locales_gossip_menu_option;

DROP TABLE IF EXISTS npc_option;
DROP TABLE IF EXISTS npc_gossip_textid;

-- ========================
--  z0289_085_02_mangos_gossip_scripts.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0289_085_01_mangos_gossip required_z0289_085_02_mangos_gossip_scripts bit;

DROP TABLE IF EXISTS `gossip_scripts`;
CREATE TABLE `gossip_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ========================
--  z0332_xxx_01_mangos_gossip_menu_option.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0289_085_02_mangos_gossip_scripts required_z0332_xxx_01_mangos_gossip_menu_option bit;

DELETE FROM gossip_menu_option WHERE menu_id=0;
INSERT INTO gossip_menu_option VALUES
(0, 0,0,'GOSSIP_OPTION_QUESTGIVER',       2,0x000002,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 1,1,'GOSSIP_OPTION_VENDOR',           3,0x000004,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 2,2,'GOSSIP_OPTION_TAXIVENDOR',       4,0x000008,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 3,3,'GOSSIP_OPTION_TRAINER',          5,0x000010,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 4,4,'GOSSIP_OPTION_SPIRITHEALER',     6,0x000020,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 5,4,'GOSSIP_OPTION_SPIRITGUIDE',      7,0x000040,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 6,5,'GOSSIP_OPTION_INNKEEPER',        8,0x000080,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 7,6,'GOSSIP_OPTION_BANKER',           9,0x000100,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 8,7,'GOSSIP_OPTION_PETITIONER',      10,0x000200,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0, 9,8,'GOSSIP_OPTION_TABARDDESIGNER',  11,0x000400,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,10,9,'GOSSIP_OPTION_BATTLEFIELD',     12,0x000800,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,11,6,'GOSSIP_OPTION_AUCTIONEER',      13,0x001000,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,12,0,'GOSSIP_OPTION_STABLEPET',       14,0x002000,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',         15,0x004000,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,14,2,'GOSSIP_OPTION_UNLEARNTALENTS',  16,0x000010,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,15,2,'GOSSIP_OPTION_UNLEARNPETSKILLS',17,0x000010,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);


-- ========================
--  z0366_095_01_mangos_creature_template.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0332_xxx_01_mangos_gossip_menu_option required_z0366_095_01_mangos_creature_template bit;

ALTER TABLE creature_template ADD COLUMN speed_run float NOT NULL default '1.14286' COMMENT 'Result of 8.0/7.0, most common value' AFTER speed;
ALTER TABLE creature_template CHANGE COLUMN speed speed_walk float NOT NULL default '1' COMMENT 'Result of 2.5/2.5, most common value';

-- ========================
--  z0367_096_01_mangos_db_script_string.sql
-- ========================

ALTER TABLE db_version CHANGE COLUMN required_z0366_095_01_mangos_creature_template required_z0367_096_01_mangos_db_script_string bit;

ALTER TABLE `db_script_string` CHANGE `entry` `entry` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';


-- ========================
--  z0379_098_01_mangos_gameobject.sql
-- ========================


ALTER TABLE db_version CHANGE COLUMN required_z0367_096_01_mangos_db_script_string required_z0379_098_01_mangos_gameobject bit;

ALTER TABLE gameobject ADD KEY idx_map(map);
ALTER TABLE gameobject ADD KEY idx_id(id);
