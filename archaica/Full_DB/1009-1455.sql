ALTER TABLE db_version CHANGE COLUMN required_z0986_s0356_01_mangos_quest_template required_z1009_s0379_01_mangos_game_event_creature_quest bit;

ALTER TABLE game_event_creature_quest DROP PRIMARY KEY;
ALTER TABLE game_event_creature_quest ADD PRIMARY KEY (id,quest,event);
ALTER TABLE db_version CHANGE COLUMN required_z1009_s0379_01_mangos_game_event_creature_quest required_z1011_s0382_01_mangos_game_event_quest bit;

DROP TABLE IF EXISTS game_event_quest;
CREATE TABLE game_event_quest (
  quest mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry from quest_template',
  event smallint(5) unsigned NOT NULL default '0' COMMENT 'entry from game_event',
  PRIMARY KEY  (quest,event)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Game event system';

INSERT INTO game_event_quest SELECT DISTINCT quest, event FROM game_event_creature_quest;

DROP TABLE game_event_creature_quest;
ALTER TABLE db_version CHANGE COLUMN required_z1011_s0382_01_mangos_game_event_quest required_z1018_s0391_01_mangos_npc_vendor_template bit;

DROP TABLE IF EXISTS `npc_vendor_template`;
CREATE TABLE `npc_vendor_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `maxcount` tinyint(3) unsigned NOT NULL default '0',
  `incrtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';
ALTER TABLE db_version CHANGE COLUMN required_z1018_s0391_01_mangos_npc_vendor_template required_z1018_s0391_02_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN vendor_id mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id;
ALTER TABLE db_version CHANGE COLUMN required_z1018_s0391_02_mangos_creature_template required_z1018_xxxxx_03_mangos_command bit;

DELETE FROM command WHERE name IN ('npc additem');

INSERT INTO command (name, security, help) VALUES
('npc additem',2,'Syntax: .npc additem #itemId <#maxcount><#incrtime>r\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring.');

ALTER TABLE db_version CHANGE COLUMN required_z1018_xxxxx_03_mangos_command required_z1022_s0117_01_mangos_creature_ai_scripts bit;

UPDATE creature_ai_scripts SET action1_type=43, action1_param1=0 WHERE action1_type=17 AND action1_param1=68;
UPDATE creature_ai_scripts SET action2_type=43, action2_param1=0 WHERE action2_type=17 AND action2_param1=68;
UPDATE creature_ai_scripts SET action3_type=43, action3_param1=0 WHERE action3_type=17 AND action3_param1=68;
ALTER TABLE db_version CHANGE COLUMN required_z1022_s0117_01_mangos_creature_ai_scripts required_z1034_s0407_01_mangos_gossip_menu_option bit;

ALTER TABLE gossip_menu_option CHANGE COLUMN action_menu_id action_menu_id MEDIUMINT(8) NOT NULL DEFAULT '0';
ALTER TABLE db_version CHANGE COLUMN required_z1034_s0407_01_mangos_gossip_menu_option required_z1040_s0418_01_mangos_creature_template bit;

ALTER TABLE creature_template ADD COLUMN unit_class tinyint(3) unsigned NOT NULL default '0' AFTER rangeattacktime;

UPDATE creature_template ct
JOIN creature c ON ct.entry=c.id
JOIN creature_addon ad ON c.guid=ad.guid
SET ct.unit_class=(ad.bytes0 & 0x0000FF00) >> 8
WHERE ct.entry=c.id AND ct.unit_class=0;

UPDATE creature_template ct
JOIN creature_template_addon ad ON ct.entry=ad.entry
SET ct.unit_class=(ad.bytes0 & 0x0000FF00) >> 8
WHERE ct.entry=ad.entry AND ct.unit_class=0;
ALTER TABLE db_version CHANGE COLUMN required_z1040_s0418_01_mangos_creature_template required_z1040_s0418_02_mangos_creature_addon bit;

ALTER TABLE creature_addon
  DROP COLUMN bytes0;
ALTER TABLE db_version CHANGE COLUMN required_z1040_s0418_02_mangos_creature_addon required_z1040_s0418_03_mangos_creature_template_addon bit;

ALTER TABLE creature_template_addon
  DROP COLUMN bytes0;
ALTER TABLE db_version CHANGE COLUMN required_z1040_s0418_03_mangos_creature_template_addon required_z1101_s0498_01_mangos_npc_trainer_template bit;

DROP TABLE IF EXISTS `npc_trainer_template`;
CREATE TABLE `npc_trainer_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `spellcost` int(10) unsigned NOT NULL default '0',
  `reqskill` smallint(5) unsigned NOT NULL default '0',
  `reqskillvalue` smallint(5) unsigned NOT NULL default '0',
  `reqlevel` tinyint(3) unsigned NOT NULL default '0',
  UNIQUE KEY `entry_spell` (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z1101_s0498_01_mangos_npc_trainer_template required_z1101_s0498_02_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN trainer_id mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id;
ALTER TABLE db_version CHANGE COLUMN required_z1101_s0498_02_mangos_creature_template required_z1108_s0481_01_mangos_spell_proc_item_enchant bit;

DROP TABLE IF EXISTS `spell_proc_item_enchant`;
CREATE TABLE `spell_proc_item_enchant` (
  `entry` mediumint unsigned NOT NULL,
  `ppmRate` float NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(8034, 9);        -- Frostbrand Weapon
ALTER TABLE db_version CHANGE COLUMN required_z1108_s0481_01_mangos_spell_proc_item_enchant required_z1108_s0481_02_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN
(8034, 8037, 10458, 16352, 16353, 8680, 8685, 8689, 11335, 11336, 11337, 13218, 13222, 13223, 13224);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(8034,0,8034,1,0),     -- Frostbrand Attack
(8037,8034,8034,2,0),
(10458,8037,8034,3,0),
(16352,10458,8034,4,0),
(16353,16352,8034,5,0),
(8680,0,8680,1,0),     -- Instant Poison
(8685,8680,8680,2,0),
(8689,8685,8680,3,0),
(11335,8689,8680,4,0),
(11336,11335,8680,5,0),
(11337,11336,8680,6,0),
(13218,0,13218,1,0),   -- Wound Poison
(13222,13218,13218,2,0),
(13223,13222,13218,3,0),
(13224,13223,13218,4,0);
ALTER TABLE db_version CHANGE COLUMN required_z1108_s0481_02_mangos_spell_chain required_z1108_s0481_03_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (8037, 10458, 16352, 16353);
ALTER TABLE db_version CHANGE COLUMN required_z1108_s0481_03_mangos_spell_bonus_data required_z1135_s0540_01_mangos_spell_learn_spell bit;

/* All form passives */
DELETE FROM spell_learn_spell WHERE SpellID in (
1178,  /* Bear Form (Passive) */
3025,  /* Cat Form (Passive) */
3122,  /* Tree of Life _passive_ */
5419,  /* Travel Form (Passive) */
5420,  /* Tree of Life _passive_ */
5421,  /* Aquatic Form (Passive) */
7376,  /* Defensive Stance Passive */
7381,  /* Berserker Stance Passive */
9635,  /* Dire Bear Form (Passive) */
21156, /* Battle Stance Passive */
21178, /* Bear Form (Passive2) */
24905  /* Moonkin Form (Passive) */
);
ALTER TABLE db_version CHANGE COLUMN required_z1135_s0540_01_mangos_spell_learn_spell required_z1135_xxxxx_03_mangos_playercreateinfo_spell bit;

/* All form passives */
DELETE FROM playercreateinfo_spell WHERE Spell in (
1178,  /* Bear Form (Passive) */
3025,  /* Cat Form (Passive) */
3122,  /* Tree of Life _passive_ */
5419,  /* Travel Form (Passive) */
5420,  /* Tree of Life _passive_ */
5421,  /* Aquatic Form (Passive) */
7376,  /* Defensive Stance Passive */
7381,  /* Berserker Stance Passive */
9635,  /* Dire Bear Form (Passive) */
21156, /* Battle Stance Passive */
21178, /* Bear Form (Passive2) */
24905  /* Moonkin Form (Passive) */
);
ALTER TABLE db_version CHANGE COLUMN required_z1135_xxxxx_03_mangos_playercreateinfo_spell required_z1159_s0566_01_mangos_mangos_string bit;

-- this sql might delete some of your translated strings, if you translated them

DELETE FROM mangos_string WHERE entry in (714, 716, 752, 753, 754, 755, 757, 758, 783);

INSERT INTO mangos_string VALUES (752,'Only the Alliance can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (753,'Only the Horde can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1159_s0566_01_mangos_mangos_string required_z1186_s0600_01_mangos_game_event_creature_data bit;


DROP TABLE IF EXISTS game_event_creature_data;
RENAME TABLE game_event_model_equip TO game_event_creature_data;

ALTER TABLE game_event_creature_data
  ADD COLUMN entry_id mediumint(8) unsigned NOT NULL default '0' AFTER guid,
  ADD COLUMN spell_start mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id,
  ADD COLUMN spell_end mediumint(8) unsigned NOT NULL default '0' AFTER spell_start;

ALTER TABLE game_event_creature_data
  DROP PRIMARY KEY,
  ADD PRIMARY KEY  (`guid`,`event`);
ALTER TABLE db_version CHANGE COLUMN required_z1186_s0600_01_mangos_game_event_creature_data required_z1192_s0612_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (16257, 16277, 16278, 16279, 16280);
DELETE FROM spell_proc_event WHERE entry IN (12966, 12967, 12968, 12969, 12970);

DELETE FROM spell_proc_event WHERE entry IN (12880);
INSERT INTO `spell_proc_event` VALUES
(12880, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

DELETE FROM spell_proc_event WHERE entry IN (9452, 9799, 12317, 12966, 14531, 16176, 16257, 16487, 17079, 17364, 20127, 20177, 27811, 30003);
INSERT INTO `spell_proc_event` VALUES
(9452,  0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(9799,  0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12317, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12966, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00010000, 0.000000, 0.000000,  0),
(14531, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16176, 0x00, 11, 0x00000000000001C0, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16257, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00010000, 0.000000, 0.000000,  0),
(16487, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17079, 0x00,  7, 0x0000000000080000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(17364, 0x08,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(20127, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20177, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(27811, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30003, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000800, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z1192_s0612_01_mangos_spell_proc_event required_z1192_s0612_02_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (12880,14201,14202,14203,14204);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(12880,0,12880,1,0),   -- Enrage
(14201,12880,12880,2,0),
(14202,14201,12880,3,0),
(14203,14202,12880,4,0),
(14204,14203,12880,5,0);
ALTER TABLE db_version CHANGE COLUMN required_z1192_s0612_02_mangos_spell_chain required_z1194_s0611_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1166,1167,1168);

INSERT INTO mangos_string VALUES
(1166,'Scripting library not found or not accessable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1167,'Scripting library has wrong list functions (outdated?).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1168,'Scripting library reloaded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1194_s0611_01_mangos_mangos_string required_z1202_s0620_01_mangos_mangos_string bit;

UPDATE mangos_string SET content_default='Scripting library not found or not accessible.' WHERE entry=1166;
ALTER TABLE db_version CHANGE COLUMN required_z1202_s0620_01_mangos_mangos_string required_z1205_s0624_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1169);

INSERT INTO mangos_string VALUES
(1169,'Scripting library build for different mangosd revision.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1205_s0624_01_mangos_mangos_string required_z1217_s0636_01_mangos_command bit;

DELETE FROM command WHERE name IN ('send mass items','send mass mail','send mass money');

INSERT INTO command (name, security, help) VALUES
('send mass items',3,'Syntax: .send mass items #racemask|$racename|alliance|horde|all "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to players. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('send mass mail',1,'Syntax: .send mass mail #racemask|$racename|alliance|horde|all "#subject" "#text"\r\n\r\nSend a mail to players. Subject and mail text must be in "".'),
('send mass money','3','Syntax: .send mass money #racemask|$racename|alliance|horde|all "#subject" "#text" #money\r\n\r\nSend mail with money to players. Subject and mail text must be in "".');
ALTER TABLE db_version CHANGE COLUMN required_z1217_s0636_01_mangos_command required_z1217_s0636_03_mangos_game_event_mail bit;

DROP TABLE IF EXISTS `game_event_mail`;
CREATE TABLE `game_event_mail` (
  `event` smallint(6) NOT NULL default '0' COMMENT 'Negatives value to send at event stop, positive value for send at event start.',
  `raceMask` mediumint(8) unsigned NOT NULL default '0',
  `quest`    mediumint(8) unsigned NOT NULL default '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `senderEntry`    mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event`,`raceMask`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Game event system';
ALTER TABLE db_version CHANGE COLUMN required_z1217_s0636_03_mangos_game_event_mail required_z1218_s0638_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE `entry` = 18790;
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(18790, 0, 0, 0,'Warlock - Fel Stamina');
ALTER TABLE db_version CHANGE COLUMN required_z1218_s0638_01_mangos_spell_bonus_data required_z1218_s0638_02_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (12880);
INSERT INTO `spell_proc_event` VALUES
(12880, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00010000, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z1218_s0638_02_mangos_spell_proc_event required_z1225_s0654_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (65,66);

INSERT INTO mangos_string VALUES
(65,'Using script library: <Unknown Script Library>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(66,'Using script library: <No Script Library Loaded>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1225_s0654_01_mangos_mangos_string required_z1227_s0658_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (5707,17712);
INSERT INTO spell_bonus_data VALUES
(5707,0,0,0,'Item - Lifestone Regeneration'),
(17712,0,0,0,'Item - Lifestone Healing');
ALTER TABLE db_version CHANGE COLUMN required_z1227_s0658_01_mangos_spell_bonus_data required_z1228_s0660_01_mangos_loot_template bit;

ALTER TABLE creature_loot_template
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for player insignia loot';

ALTER TABLE fishing_loot_template
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for junk loot at fishing fail (if allowed by config option)';
ALTER TABLE db_version CHANGE COLUMN required_z1228_s0660_01_mangos_loot_template required_z1230_s0663_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 172;
INSERT INTO spell_bonus_data  (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(172,   0,      0.156,   0,     'Warlock - Corruption');
ALTER TABLE db_version CHANGE COLUMN required_z1230_s0663_01_mangos_spell_bonus_data required_z1240_s0671_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (23582);
INSERT INTO spell_proc_event VALUES
(23582, 0x00,  8, 0x0000000000000800, 0x00004000, 0x00000000, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z1240_s0671_01_mangos_spell_proc_event required_z1247_s0693_01_mangos_command bit;

DELETE FROM command WHERE name IN ('send mass mail');

INSERT INTO command (name, security, help) VALUES
('send mass mail',3,'Syntax: .send mass mail #racemask|$racename|alliance|horde|all "#subject" "#text"\r\n\r\nSend a mail to players. Subject and mail text must be in "".');
ALTER TABLE db_version CHANGE COLUMN required_z1247_s0693_01_mangos_command required_z1263_s0696_01_mangos_spell_threat bit;

ALTER TABLE spell_threat ADD COLUMN multiplier FLOAT NOT NULL DEFAULT 1.0 COMMENT 'threat multiplier for damage/healing' AFTER Threat;

ALTER TABLE spell_threat ADD COLUMN ap_bonus FLOAT NOT NULL DEFAULT 0.0 COMMENT 'additional threat bonus from attack power' AFTER multiplier;

DELETE FROM spell_threat WHERE entry IN (
 1672, 20569, 11556, 14921, 11775, 25289, 24583,
 778, 9749, 9907, 17390, 17391, 17392,
 72, 845, 1160, 2649, 3716, 6673, 6807, 24640
);

INSERT INTO `spell_threat` VALUES
(   72, 180, 1, 0),
(  845, 100, 1, 0),
( 1160,  43, 1, 0),
( 2649, 415, 1, 0),
( 3716, 395, 1, 0),
( 6673,  60, 1, 0),
( 6807,  59, 1, 0),
(24640,   5, 1, 0);
ALTER TABLE db_version CHANGE COLUMN required_z1263_s0696_01_mangos_spell_threat required_z1327_s0658_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (18764);
INSERT INTO spell_bonus_data VALUES
(18764,0,0,0,'Item - Fungal Regrowth');
ALTER TABLE db_version CHANGE COLUMN required_z1327_s0658_01_mangos_spell_bonus_data required_z1347_s0794_01_mangos_spell_threat bit;

DELETE FROM spell_threat WHERE entry IN (99, 1735, 9490, 9747, 9898, 20243);

INSERT INTO `spell_threat` VALUES
(   99,  15, 1, 0),
( 1735,  25, 1, 0),
( 9490,  29, 1, 0),
( 9747,  36, 1, 0),
( 9898,  42, 1, 0),
(20243, 101, 1, 0);
ALTER TABLE db_version CHANGE COLUMN required_z1347_s0794_01_mangos_spell_threat required_z1356_s0803_01_mangos_command bit;

DELETE FROM command WHERE name IN ('gm online','gm setview');

INSERT INTO command (name, security, help) VALUES
('gm setview',1,'Syntax: .gm setview\r\n\r\nSet farsight view on selected unit. Select yourself to set view back.');

ALTER TABLE db_version CHANGE COLUMN required_z1356_s0803_01_mangos_command required_z1357_s0811_01_mangos_spell_threat bit;

DELETE FROM spell_threat WHERE entry IN (845, 7369, 11608, 11609, 20569, 14921, 11775);

INSERT INTO `spell_threat` VALUES
/* Cleave */
(  845,  10, 1, 0),
( 7369,  40, 1, 0),
(11608,  60, 1, 0),
(11609,  70, 1, 0),
(20569, 100, 1, 0);
ALTER TABLE db_version CHANGE COLUMN required_z1357_s0811_01_mangos_spell_threat required_z1363_s0817_01_mangos_world_template bit;

--
-- Table structure for table `world_template`
--

DROP TABLE IF EXISTS `world_template`;
CREATE TABLE `world_template` (
  `map` smallint(5) unsigned NOT NULL,
  `ScriptName` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z1363_s0817_01_mangos_world_template required_z1385_s0842_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,1500,1501,1502);

INSERT INTO mangos_string VALUES
(376,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(377,"No pools found for map '%s' (Id:%u)",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(378,"You can't use this command at non-instanceable map '%s' (Id:%u). Use .lookup pool command instead.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(379,"You can't use this command without args at non-instanceable map '%s' (Id:%u).",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(380,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(381,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(382,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(383,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(384,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(385,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(386,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(387,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(388,'Creatures with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(389,'Creatures with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(390,'Gameobjects with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(391,'Gameobjects with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(392,'Pool %u - Mother pool: %u |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(393,'Pool %u - Mother pool: %u [%s] AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(394,'Pool %u - Mother pool: none AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(395,'No pools found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(396,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(397,'Pools with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(398,'Pools with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(399,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u Chance: %f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1500,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u Chance: %f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1501,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1502,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1385_s0842_01_mangos_mangos_string required_z1385_s0842_02_mangos_command bit;

DELETE FROM command WHERE name IN ('lookup pool','pool list','pool spawns','pool');

INSERT INTO command (name, security, help) VALUES
('lookup pool',2,'Syntax: .lookup pool $pooldescpart\r\n\r\nList of pools (anywhere) with substring in description.'),
('pool list',2,'Syntax: .pool list\r\n\r\nList of pools with spawn in current map (only work in instances. Non-instanceable maps share pool system state os useless attempt get all pols at all continents.'),
('pool spawns',2,'Syntax: .pool spawns #pool_id\r\n\r\nList current creatures/objects listed in pools (or in specific #pool_id) and spawned (added to grid data, not meaning show in world.'),
('pool',2,'Syntax: .pool #pool_id\r\n\r\nPool information and full list creatures/gameobjects included in pool.');
ALTER TABLE db_version CHANGE COLUMN required_z1385_s0842_02_mangos_command required_z1398_s0859_01_mangos_pool_creature_template bit;

DROP TABLE IF EXISTS `pool_creature_template`;
CREATE TABLE `pool_creature_template` (
  `id` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  INDEX `pool_idx` (pool_entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z1398_s0859_01_mangos_pool_creature_template required_z1398_s0859_02_mangos_pool_gameobject_template bit;

DROP TABLE IF EXISTS `pool_gameobject_template`;
CREATE TABLE `pool_gameobject_template` (
  `id` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  INDEX `pool_idx` (pool_entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z1398_s0859_02_mangos_pool_gameobject_template required_z1428_s0902_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1202,1203,1204,1205,1206);

INSERT INTO mangos_string VALUES
(1202,'Spell %u %s = %f (*1.88 = %f) DB = %f AP = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1203,'direct heal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1204,'direct damage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1205,'dot heal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1206,'dot damage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1428_s0902_01_mangos_mangos_string required_z1428_s0902_02_mangos_command bit;

DELETE FROM command WHERE name = 'debug spellcoefs';

INSERT INTO command (name, security, help) VALUES
('debug spellcoefs',3,'Syntax: .debug spellcoefs #spellid\r\n\r\nShow default calculated and DB stored coefficients for direct/dot heal/damage.');
ALTER TABLE db_version CHANGE COLUMN required_z1428_s0902_02_mangos_command required_z1429_xxxxx_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (
  17,122,139,589,596,635,689,774,1064,1449,2136,2912,2944,
  2948,5676,6789,8004,8092,11366,11426,13908,17877,17962,
  18265,19750,25902,25903,25911,25912,25913,25914
);
ALTER TABLE db_version CHANGE COLUMN required_z1429_xxxxx_01_mangos_spell_bonus_data required_z1439_s0915_01_mangos_creature_addon bit;

CREATE TABLE `temp_auras` (
  `spell` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER %%

CREATE FUNCTION `ConvertAuras`(`auras` varchar(1024))
RETURNS varchar(1024) CHARSET utf8
DETERMINISTIC
BEGIN
  DECLARE tmp VARCHAR(1024);
  DECLARE curr VARCHAR(10);
  DECLARE k INT;
  DECLARE pos INT;
  DECLARE startp INT;

  SET @k = 0;
  SET @tmp = '';
  SET @startp = 1;
  SET @pos = LOCATE(' ', auras);

  DELETE FROM temp_auras;

  WHILE @pos > 0 DO
    IF @k = 0 THEN
      SET @curr = SUBSTR(auras, @startp, @pos - @startp);

      IF NOT EXISTS(SELECT spell FROM temp_auras WHERE spell = @curr) THEN
        SET @tmp = CONCAT(@tmp, @curr, ' ');
        INSERT INTO temp_auras VALUES(@curr);
      END IF;
    END IF;

    SET @k = 1-@k;
    SET @startp = @pos+1;
    SET @pos = LOCATE(' ', auras, @startp);
  END WHILE;

  SET @tmp = RTRIM(@tmp);
  RETURN @tmp;
END%%

DELIMITER ;

UPDATE `creature_template_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_template_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_template_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;
UPDATE `creature_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;

DROP FUNCTION `ConvertAuras`;
DROP TABLE `temp_auras`;
ALTER TABLE db_version CHANGE COLUMN required_z1439_s0915_01_mangos_creature_addon required_z1442_s0923_01_mangos_spell_affect bit;

DELETE FROM `spell_affect` WHERE `entry` IN (11170,12982,12983,12984,12985);
INSERT INTO spell_affect ( entry , effectId , SpellFamilyMask ) VALUES
(11170, 0, 0x0000000040FE1AF7),
(12982, 0, 0x0000000040FE1AF7),
(12983, 0, 0x0000000040FE1AF7),
(12984, 0, 0x0000000040FE1AF7),
(12985, 0, 0x0000000040FE1AF7);


ALTER TABLE db_version CHANGE COLUMN required_z1442_s0923_01_mangos_spell_affect required_z1455_s0955_01_mangos_creature_equip_template bit;

DROP TABLE IF EXISTS creature_equip_template_raw;

RENAME TABLE creature_equip_template TO creature_equip_template_raw;

DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Unique entry',
  `equipentry1` mediumint(8) unsigned NOT NULL default '0',
  `equipentry2` mediumint(8) unsigned NOT NULL default '0',
  `equipentry3` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';

