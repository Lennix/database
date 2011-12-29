ALTER TABLE db_version CHANGE COLUMN required_z0379_098_01_mangos_gameobject required_z0385_099_01_mangos_item_template bit;

alter table item_template
  add column NonConsumable tinyint(1) UNSIGNED DEFAULT '0' NOT NULL after Duration;
ALTER TABLE db_version CHANGE COLUMN required_z0385_099_01_mangos_item_template required_z0385_099_02_mangos_item_template bit;

ALTER TABLE item_template
  CHANGE COLUMN NonConsumable ExtraFlags tinyint(1) UNSIGNED DEFAULT '0' NOT NULL;

UPDATE item_template
  SET ExtraFlags = ExtraFlags | 0x2 WHERE Duration < 0 ;

UPDATE item_template
  SET Duration = abs(Duration);

ALTER TABLE item_template
  CHANGE COLUMN Duration Duration int(11) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE db_version CHANGE COLUMN required_z0385_099_02_mangos_item_template required_z0394_xxx_01_mangos_mangos_string bit;

UPDATE mangos_string SET content_default ='Player: %s - %s (Rank %u)' WHERE entry = 379;
UPDATE mangos_string SET content_default ='Life Time: [Rank Points: |c0000ff00%u|r] [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r] [Highest Rank %u: %s]' WHERE entry = 384;
ALTER TABLE db_version CHANGE COLUMN required_z0394_xxx_01_mangos_mangos_string required_z0395_xxx_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 349 AND 384;
INSERT INTO mangos_string VALUES
(349,'Private ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(350,'Corporal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(351,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(352,'Master Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(353,'Sergeant Major ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(354,'Knight ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(355,'Knight-Lieutenant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(356,'Knight-Captain ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(357,'Knight-Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(358,'Lieutenant Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(359,'Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(360,'Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(361,'Field Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(362,'Grand Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(363,'Scout ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(364,'Grunt ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(365,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(366,'Senior Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(367,'First Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(368,'Stone Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(369,'Blood Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(370,'Legionnare ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(371,'Centurion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(372,'Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(373,'Lieutenant General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(374,'General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(375,'Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(376,'High Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(377,'Game Master ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(378,'No Rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(379,'Dishonored ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(380,'Exiled ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(381,'Outlaw ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(382,'Pariah ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(383,'Player: %s - %s (Rank %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(384,'Today: [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(385,'Yesterday: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(386,'This Week: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(387,'Last Week: [Kills: |c0000ff00%u|r] [Honor: %u] [Standing: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(388,'Life Time: [Rank Points: |c0000ff00%f|r] [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r] [Highest Rank %u: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0395_xxx_01_mangos_mangos_string required_z0404_100_01_mangos_command bit;

DELETE FROM command WHERE name IN ('list talents');
INSERT INTO command VALUES
('list talents',3,'Syntax: .list talents\r\n\r\nShow list all really known (as learned spells) talent rank spells for selected player or self.');
ALTER TABLE db_version CHANGE COLUMN required_z0404_100_01_mangos_command required_z0404_100_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (1135,1136);

INSERT INTO mangos_string VALUES
(1135,'List known talents:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1136,'   (Found talents: %u used talent points: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0404_100_02_mangos_mangos_string required_z0405_101_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=517;
INSERT INTO mangos_string VALUES (517,'%d, Entry %d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0405_101_01_mangos_mangos_string required_z0447_107_01_mangos_gossip_menu_option bit;

UPDATE gossip_menu_option SET option_icon=0 WHERE menu_id=0 AND option_id=16;
ALTER TABLE db_version CHANGE COLUMN required_z0447_107_01_mangos_gossip_menu_option required_z0451_108_01_mangos_gameobject_template bit;

ALTER TABLE gameobject_template ADD COLUMN mingold MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER data23;
ALTER TABLE gameobject_template ADD COLUMN maxgold MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER mingold;
ALTER TABLE db_version CHANGE COLUMN required_z0451_108_01_mangos_gameobject_template required_z0452_109_01_mangos_instance_template bit;

ALTER TABLE instance_template
  DROP COLUMN startLocX,
  DROP COLUMN startLocY,
  DROP COLUMN startLocZ,
  DROP COLUMN startLocO;

ALTER TABLE instance_template
  ADD COLUMN ghostEntranceMap smallint(5) NOT NULL default '-1' AFTER reset_delay,
  ADD COLUMN ghostEntranceX float NOT NULL default '0' AFTER ghostEntranceMap,
  ADD COLUMN ghostEntranceY float NOT NULL default '0' AFTER ghostEntranceX;

UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -230.989,  ghostEntranceY =  1571.57  WHERE map = 33;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -8762.379, ghostEntranceY =  848.01   WHERE map = 34;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -11207.799,ghostEntranceY =  1681.151 WHERE map = 36;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -751.131,  ghostEntranceY = -2209.24  WHERE map = 43;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -4459.449, ghostEntranceY = -1660.212 WHERE map = 47;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX =  4249.121, ghostEntranceY =  748.387  WHERE map = 48;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -6060.182, ghostEntranceY = -2954.997 WHERE map = 70;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -5162.662, ghostEntranceY =  931.599  WHERE map = 90;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -10170.104,ghostEntranceY = -3995.968 WHERE map = 109;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -4662.883, ghostEntranceY = -2535.872 WHERE map = 129;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX =  2892.235, ghostEntranceY = -811.264  WHERE map = 189;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -6790.577, ghostEntranceY = -2891.278 WHERE map = 209;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -7522.527, ghostEntranceY = -1233.042 WHERE map = 229;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -7178.095, ghostEntranceY = -928.639  WHERE map = 230;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -4753.313, ghostEntranceY = -3752.421 WHERE map = 249;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX =  1274.781, ghostEntranceY = -2552.564 WHERE map = 289;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -11916.06, ghostEntranceY = -1224.577 WHERE map = 309;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX =  3392.317, ghostEntranceY = -3378.483 WHERE map = 329;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -1432.697, ghostEntranceY =  2924.978 WHERE map = 349;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX =  1816.756, ghostEntranceY = -4423.372 WHERE map = 389;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -7510.565, ghostEntranceY = -1036.698 WHERE map = 409;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -3908.032, ghostEntranceY =  1130.004 WHERE map = 429;
UPDATE instance_template SET ghostEntranceMap = 0, ghostEntranceX = -7663.413, ghostEntranceY = -1218.667 WHERE map = 469;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -8114.464, ghostEntranceY =  1526.366 WHERE map = 509;
UPDATE instance_template SET ghostEntranceMap = 1, ghostEntranceX = -8111.724, ghostEntranceY =  1526.786 WHERE map = 531;
ALTER TABLE db_version CHANGE COLUMN required_z0452_109_01_mangos_instance_template required_z0456_110_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=1137;
INSERT INTO mangos_string VALUES (1137,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0456_110_01_mangos_mangos_string required_z0457_111_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026);
INSERT INTO mangos_string VALUES
(1016, '| GUID       | Name                 | Account                      | Delete Date         |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1017, '| %10u | %20s | %15s (%10u) | %19s |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1018, '==========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1019, 'No characters found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1020, 'Restoring the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1021, 'Deleting the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1022, 'ERROR: You can only assign a new name if you have only selected a single character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1023, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1024, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account character list full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1025, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: new name already used!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1026, 'GUID: %u Name: %s Account: %s (%u) Date: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0457_111_01_mangos_mangos_string required_z0457_111_02_mangos_command bit;

DELETE FROM command WHERE name IN('character delete', 'character deleted list', 'character deleted restore', 'character deleted delete', 'character deleted old', 'character erase');
INSERT INTO command (name, security, help) VALUES
('character erase',4,'Syntax: .character erase $name\r\n\r\nDelete character $name. Character finally deleted in case any deleting options.'),
('character deleted delete', 4, 'Syntax: .character deleted delete $guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if $guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [$guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if $guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [$keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer $keepDays. If $keepDays not provided the  used value from mangosd.conf option \'CharDelete.KeepDays\'. If referenced config option disabled (use 0 value) then command can\'t be used without $keepDays.'),
('character deleted restore', 3, 'Syntax: .character deleted restore #guid|$name [$newname] [#new account]\r\n\r\nRestores deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be restored, if $guid is supplied, only the character with that GUID will be restored.\r\nIf $newname is set, the character will be restored with that name instead of the original one. If #newaccount is set, the character will be restored to specific account character list. This works only with one character!');
ALTER TABLE db_version CHANGE COLUMN required_z0457_111_02_mangos_command required_z0457_111_04_mangos_command bit;

DELETE FROM command WHERE name IN('character deleted list', 'character deleted delete', 'character deleted old');
INSERT INTO command (name, security, help) VALUES
('character deleted delete', 4, 'Syntax: .character deleted delete #guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if #guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [#keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer #keepDays. If #keepDays not provided the  used value from mangosd.conf option \'CharDelete.KeepDays\'. If referenced config option disabled (use 0 value) then command can\'t be used without #keepDays.');
ALTER TABLE db_version CHANGE COLUMN required_z0457_111_04_mangos_command required_z0468_113_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1138, 1139, 1140, 1141);
INSERT INTO mangos_string VALUES
(1138, '=================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1139, '| GUID       | Name                 | Race            | Class           | Level |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1140, '| %10u | %20s | %15s | %15s | %5u |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1141, '%u - |cffffffff|Hplayer:%s|h[%s]|h|r %s %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0468_113_01_mangos_mangos_string required_z0468_113_02_mangos_command bit;

DELETE FROM command WHERE name IN('account characters','account set addon','account set gmlevel','account set password');
INSERT INTO command (name, security, help) VALUES
('account characters',3,'Syntax: .account characters [#accountId|$accountName]\r\n\r\nShow list all characters for account seelcted by provided #accountId or $accountName, or for selected player in game.'),
('account set addon',3,'Syntax: .account set addon [#accountId|$accountName] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('account set gmlevel',4,'Syntax: .account set gmlevel [#accountId|$accountName] #level\r\n\r\nSet the security level for targeted player (can''t be used at self) or for #accountId or $accountName to a level of #level.\r\n\r\n#level may range from 0 to 3.'),
('account set password',4,'Syntax: .account set password (#accountId|$accountName) $password $password\r\n\r\nSet password for account.');
ALTER TABLE db_version CHANGE COLUMN required_z0468_113_02_mangos_command required_z0488_xxx_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (20210,20212,20213,20214,20215);
INSERT INTO spell_proc_event VALUES
(20210,0,0,0,10,0x00000000C0200000,0x10000000,0,0),
(20212,0,0,0,10,0x00000000C0200000,0x10000000,0,0),
(20213,0,0,0,10,0x00000000C0200000,0x10000000,0,0),
(20214,0,0,0,10,0x00000000C0200000,0x10000000,0,0),
(20215,0,0,0,10,0x00000000C0200000,0x10000000,0,0);

ALTER TABLE db_version CHANGE COLUMN required_z0488_xxx_01_mangos_spell_proc_event required_z0513_xxx_01_mangos_item_template bit;

ALTER TABLE item_template
  DROP COLUMN RequiredDisenchantSkill,
  DROP COLUMN ArmorDamageModifier;
ALTER TABLE db_version CHANGE COLUMN required_z0513_xxx_01_mangos_item_template required_z0524_115_01_mangos_scripts bit;

ALTER TABLE event_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE event_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE event_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE gameobject_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE gameobject_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE gameobject_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE gossip_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE gossip_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE gossip_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE quest_end_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE quest_end_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE quest_end_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE quest_start_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE quest_start_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE quest_start_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE spell_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE spell_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE spell_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;
ALTER TABLE db_version CHANGE COLUMN required_z0524_115_01_mangos_scripts required_z0524_115_02_mangos_scripts bit;

-- convert to CHAT_TYPE_WHISPER
UPDATE event_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE gameobject_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE gossip_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE quest_end_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE quest_start_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE spell_scripts SET datalong=4 WHERE command=0 AND datalong=1;

-- convert to CHAT_TYPE_YELL
UPDATE event_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE gameobject_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE gossip_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE quest_end_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE quest_start_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE spell_scripts SET datalong=1 WHERE command=0 AND datalong=2;

-- convert to CHAT_TYPE_TEXT_EMOTE
UPDATE event_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE gameobject_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE gossip_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE quest_end_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE quest_start_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE spell_scripts SET datalong=2 WHERE command=0 AND datalong=3;
ALTER TABLE db_version CHANGE COLUMN required_z0524_115_02_mangos_scripts required_z0525_116_01_mangos_creature_movement bit;

ALTER TABLE creature_movement ADD COLUMN script_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER waittime;
ALTER TABLE db_version CHANGE COLUMN required_z0525_116_01_mangos_creature_movement required_z0525_116_02_mangos_creature_movement_scripts bit;

DROP TABLE IF EXISTS `creature_movement_scripts`;
CREATE TABLE `creature_movement_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datalong3` int(10) unsigned NOT NULL default '0',
  `datalong4` int(10) unsigned NOT NULL default '0',
  `data_flags` tinyint(3) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z0525_116_02_mangos_creature_movement_scripts required_z0526_117_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1011,1010,1012,1013,1142);
INSERT INTO mangos_string VALUES
(1010,'| ID         |    Account    |       Character      |       IP        | GM | Expansion |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1012,'========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1013,'| %10u |%15s| %20s | %15s |%4d| %9d |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1142,'%u - %s (Online:%s IP:%s GM:%u Expansion:%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0526_117_01_mangos_mangos_string required_z0526_117_9886_02_mangos_command bit;

DELETE FROM command WHERE name IN('lookup account email','lookup account ip','lookup account name','lookup player account','lookup player ip','lookup player email');
INSERT INTO command (name, security, help) VALUES
('lookup account email',2,'Syntax: .lookup account email $emailpart [#limit] \r\n\r\n Searchs accounts, which email including $emailpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup account ip',2,'Syntax: lookup account ip $ippart [#limit] \r\n\r\n Searchs accounts, which last used ip inluding $ippart (textual) with optional parametr #$limit of results. If #limit not provided expected 100.'),
('lookup account name',2,'Syntax: .lookup account name $accountpart [#limit] \r\n\r\n Searchs accounts, which username including $accountpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player account',2,'Syntax: .lookup player account $accountpart [#limit] \r\n\r\n Searchs players, which account username including $accountpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player email',2,'Syntax: .lookup player email $emailpart [#limit] \r\n\r\n Searchs players, which account email including $emailpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player ip',2,'Syntax: .lookup player ip $ippart [#limit] \r\n\r\n Searchs players, which account last used ip inluding $ippart (textual) with optional parametr #limit of results. If #limit not provided expected 100.');
ALTER TABLE db_version CHANGE COLUMN required_z0526_117_9886_02_mangos_command required_z0537_118_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1027,1028);
INSERT INTO mangos_string VALUES
(1027, 'Log filters state:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1028, 'All log filters set to: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0537_118_01_mangos_mangos_string required_z0537_118_02_mangos_command bit;

DELETE FROM command WHERE name IN('server set loglevel','server log level','server log filter');
INSERT INTO command (name, security, help) VALUES
('server log filter',4,'Syntax: .server log filter [($filtername|all) (on|off)]\r\n\r\nShow or set server log filters. If used "all" then all filters will be set to on/off state.'),
('server log level',4,'Syntax: .server log level [#level]\r\n\r\nShow or set server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).');
ALTER TABLE db_version CHANGE COLUMN required_z0537_118_02_mangos_command required_z0540_119_01_mangos_quest_template bit;

ALTER TABLE quest_template
  DROP COLUMN ReqSourceRef1,
  DROP COLUMN ReqSourceRef2,
  DROP COLUMN ReqSourceRef3,
  DROP COLUMN ReqSourceRef4;
ALTER TABLE db_version CHANGE COLUMN  required_z0540_119_01_mangos_quest_template required_z0555_120_01_mangos_spell_proc_event bit;

DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `SchoolMask` tinyint(4) unsigned NOT NULL default '0',
  `SpellFamilyName` smallint(5) unsigned NOT NULL default '0',
  `SpellFamilyMask` bigint(40) unsigned NOT NULL default '0',
  `procFlags` int(10) unsigned NOT NULL default '0',
  `procEx` int(10) unsigned NOT NULL default '0',
  `ppmRate` float NOT NULL default '0',
  `CustomChance` float NOT NULL default '0',
  `Cooldown` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `spell_proc_event` VALUES
(  324, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  3),
( 2565, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
( 6866, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000070, 0.000000, 0.000000,  0),
( 7131, 0x00,  0, 0x0000000000000000, 0x00000008, 0x00000020, 0.000000, 0.000000,  0),
( 9452, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000010, 3.000000, 0.000000,  0),
( 9782, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
( 9784, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(11103, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(11119, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(11120, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(11129, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(11180, 0x10,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(11185, 0x00,  3, 0x0000000000000080, 0x00050000, 0x00000000, 0.000000, 0.000000,  0),
(11255, 0x00,  3, 0x0000000000004000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12099, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12169, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12284, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.332520, 0.000000,  3),
(12289, 0x00,  0, 0x0000000000000002, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12298, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12311, 0x00,  4, 0x0000000000000800, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12319, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12322, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(12357, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12358, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12359, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12360, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12487, 0x00,  3, 0x0000000000000080, 0x00050000, 0x00000000, 0.000000, 0.000000,  0),
(12488, 0x00,  3, 0x0000000000000080, 0x00050000, 0x00000000, 0.000000, 0.000000,  0),
(12598, 0x00,  3, 0x0000000000004000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12668, 0x00,  0, 0x0000000000000002, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12701, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.665040, 0.000000,  3),
(12702, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.997560, 0.000000,  3),
(12703, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 1.330080, 0.000000,  3),
(12704, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 1.662600, 0.000000,  3),
(12724, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12725, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12726, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12727, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12782, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(12797, 0x00,  0, 0x0000000000000400, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12799, 0x00,  0, 0x0000000000000400, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12800, 0x00,  0, 0x0000000000000400, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12834, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12846, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12847, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12848, 0x04,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12849, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12867, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12958, 0x00,  4, 0x0000000000000800, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(12966, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(12967, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(12968, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(12969, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(12970, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(12971, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12972, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12973, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12974, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(12999, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 4.000000, 0.000000,  3),
(13000, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 6.000000, 0.000000,  3),
(13001, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 8.000000, 0.000000,  3),
(13002, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 10.00000, 0.000000,  3),
(13754, 0x00,  0, 0x0000000000000010, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(13867, 0x00,  0, 0x0000000000000010, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(13877, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(13983, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000018, 0.000000, 0.000000,  0),
(14070, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000018, 0.000000, 0.000000,  0),
(14071, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000018, 0.000000, 0.000000,  0),
(14156, 0x00,  0, 0x00000000003E0000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(14160, 0x00,  0, 0x00000000003E0000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(14161, 0x00,  0, 0x00000000003E0000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(14186, 0x00,  8, 0x0000000040800508, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(14190, 0x00,  8, 0x0000000040800508, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(14193, 0x00,  8, 0x0000000040800508, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(14194, 0x00,  8, 0x0000000040800508, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(14195, 0x00,  8, 0x0000000040800508, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(14892, 0x00,  6, 0x0000000410001E00, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(15088, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(15268, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15277, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 6.000000, 0.000000,  3),
(15286, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15323, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15324, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15325, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15326, 0x20,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(15346, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 6.000000, 0.000000,  3),
(15362, 0x00,  6, 0x0000000410001E00, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(15363, 0x00,  6, 0x0000000410001E00, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(15600, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.600000, 0.000000,  3),
(16164, 0x1C,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16176, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16235, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16240, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16256, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16257, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(16277, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(16278, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(16279, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(16280, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(16281, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16282, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16283, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16284, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16620, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 30),
(16624, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(16850, 0x00,  0, 0x0000000000000004, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(16864, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(16880, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16923, 0x00,  0, 0x0000000000000004, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(16924, 0x00,  0, 0x0000000000000004, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(16952, 0x00,  0, 0x0000040000039000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16954, 0x00,  0, 0x0000040000039000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16958, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16961, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17495, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(17670, 0x00,  0, 0x0000000000000000, 0x00000008, 0x00000000, 0.000000, 0.000000,  0),
(17687, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(17793, 0x00,  5, 0x0000000000000001, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17796, 0x00,  5, 0x0000000000000001, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17801, 0x00,  5, 0x0000000000000001, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17802, 0x00,  5, 0x0000000000000001, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(17803, 0x00,  5, 0x0000000000000001, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(18073, 0x00,  0, 0x0000008000000060, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18094, 0x00,  5, 0x000000000000000A, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18095, 0x00,  5, 0x000000000000000A, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18096, 0x00,  0, 0x0000008000000060, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18119, 0x00,  5, 0x00000000000023e5, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18120, 0x00,  5, 0x00000000000023e5, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18121, 0x00,  5, 0x00000000000023e5, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18122, 0x00,  5, 0x00000000000023e5, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18123, 0x00,  5, 0x00000000000023e5, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(18137, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  3),
(18765, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(18800, 0x00,  0, 0x0000000000000000, 0x00000008, 0x00000000, 0.000000, 0.000000,  0),
(19228, 0x00,  0, 0x0000000000000040, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19232, 0x00,  0, 0x0000000000000040, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19233, 0x00,  0, 0x0000000000000040, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19407, 0x00,  0, 0x0000000000000200, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19412, 0x00,  0, 0x0000000000000200, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19413, 0x00,  0, 0x0000000000000200, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19414, 0x00,  0, 0x0000000000000200, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19415, 0x00,  0, 0x0000000000000200, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(19572, 0x00,  9, 0x0000000000800000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0),
(19573, 0x00,  9, 0x0000000000800000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0),
(20049, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20056, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20057, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20058, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20059, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20128, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20131, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20132, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20133, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20134, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20164, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 5.000000, 0.000000,  3),
(20165, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 20.00000, 0.000000,  3),
(20166, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 20.00000, 0.000000,  3),
(20210, 0x00, 10, 0x00000000C0200000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20212, 0x00, 10, 0x00000000C0200000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20213, 0x00, 10, 0x00000000C0200000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20214, 0x00, 10, 0x00000000C0200000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20215, 0x00, 10, 0x00000000C0200000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20234, 0x00,  0, 0x0000000000008000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(20235, 0x00,  0, 0x0000000000008000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(20375, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 7.000000, 0.000000,  3),
(20500, 0x00,  4, 0x0000000010000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(20501, 0x00,  4, 0x0000000010000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(20725, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20784, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20891, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(20911, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(20925, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(21185, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 10),
(21882, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(21890, 0x00,  4, 0x0000036C2A764EEF, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(22007, 0x00,  0, 0x0000000000200821, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(22618, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(22620, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(22648, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(23547, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000020, 0.000000, 0.000000,  0),
(23548, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(23551, 0x00,  0, 0x00000000000000C0, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(23552, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  3),
(23572, 0x00,  0, 0x00000000000000C0, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(23578, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(23581, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(23686, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(23689, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 4.000000, 0.000000,  3),
(23695, 0x00,  0, 0x0000000000000002, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(23721, 0x00,  0, 0x0000000000000800, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(24658, 0x00,  0, 0x0000000000000000, 0x00014110, 0x00000000, 0.000000, 0.000000,  0),
(25669, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 1.000000, 0.000000,  3),
(25899, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000040, 0.000000, 0.000000,  0),
(26016, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(26021, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 2.000000, 0.000000,  3),
(26107, 0x00,  7, 0x0000008000800000, 0x00000000, 0x00000074, 0.000000, 0.000000,  0),
(26119, 0x00, 11, 0x0000000090100003, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(26128, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  0),
(26135, 0x00,  0, 0x0000000000800000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(26480, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(27419, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(27498, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(27656, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(27787, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(28592, 0x10,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28593, 0x10,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28594, 0x10,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28595, 0x10,  0, 0x0000000000000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28716, 0x00,  7, 0x0000000000000010, 0x00048000, 0x00000000, 0.000000, 0.000000,  0),
(28719, 0x00,  7, 0x0000000000000020, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(28744, 0x00,  7, 0x0000000000000040, 0x00044000, 0x00000000, 0.000000, 0.000000,  0),
(28752, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(28789, 0x00, 10, 0x0000000000006000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28809, 0x00,  0, 0x0000000000001000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(28812, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(28816, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(28823, 0x00,  0, 0x00000000000000C0, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28847, 0x00,  7, 0x0000000000000020, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(28849, 0x00, 11, 0x0000000000000080, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(29074, 0x14,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(29075, 0x14,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(29076, 0x14,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(29150, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29179, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(29180, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(29441, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  1),
(29444, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  1),
(29445, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  1),
(29446, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  1),
(29447, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000008, 0.000000, 0.000000,  1),
(29501, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29624, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29625, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29626, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29632, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29633, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29634, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29635, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29636, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(29637, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000000, 3.000000, 0.000000,  0),
(30160, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30802, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30808, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30809, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30810, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(30811, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z0555_120_01_mangos_spell_proc_event required_z0557_124_01_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN dmg_multiplier float NOT NULL default '1' AFTER attackpower;

UPDATE creature_template SET mindmg      = round(mindmg + attackpower / 14);
UPDATE creature_template SET maxdmg      = round(maxdmg + attackpower / 14);
UPDATE creature_template SET attackpower = round((maxdmg + mindmg) * 0.3);
UPDATE creature_template SET mindmg      = round(mindmg * 0.7), maxdmg = round(maxdmg * 0.7);
ALTER TABLE db_version CHANGE COLUMN required_z0557_124_01_mangos_creature_template required_z0557_124_02_mangos_creature_template bit;

UPDATE creature_template
  SET mindmg = ROUND(mindmg + attackpower), maxdmg=ROUND(maxdmg+attackpower);
ALTER TABLE db_version CHANGE COLUMN required_z0557_124_02_mangos_creature_template required_z0588_126_02_mangos_spell_proc_event bit;

DELETE FROM  `spell_proc_event` WHERE `entry` IN (
 11120, 12357, 12358, 12359, 12360, 12487, 12488,
 12598, 12668, 12724, 12725, 12726, 12727, 12799,
 12800, 12846, 12847, 12848, 12849, 12867, 12958,
 12971, 12972, 12973, 12974, 13867, 14070, 14071,
 14160, 14161, 14190, 14193, 14194, 14195, 15323,
 15324, 15325, 15326, 15362, 15363, 16235, 16240,
 16281, 16282, 16283, 16284, 16923, 16924, 16954,
 16961, 17796, 17801, 17802, 17803, 18073, 18095,
 18120, 18121, 18122, 18123, 19232, 19233, 19412,
 19413, 19414, 19415, 19573, 20056, 20057, 20058,
 20059, 20212, 20213, 20214, 20215, 20235, 20501,
 23695, 28592, 28593, 28594, 28595, 29075, 29076,
 29179, 29180, 29444, 29445, 29446, 29447, 26016,
 26021
);
ALTER TABLE db_version CHANGE COLUMN required_z0588_126_02_mangos_spell_proc_event required_z0595_xxx_01_mangos_spell_proc_event bit;

DELETE FROM  `spell_proc_event` WHERE `entry` IN (29062);

INSERT INTO `spell_proc_event` VALUES
(29062, 0x00,  0, 0x0000000000000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z0595_xxx_01_mangos_spell_proc_event required_z0627_130_01_mangos_command bit;

DELETE FROM command WHERE name IN('go');
INSERT INTO command (name, security, help) VALUES
('go',1,'Syntax: .go  [$playername|pointlink|#x #y #z [#mapid]]\r\nTeleport your character to point with coordinates of player $playername, or coordinates of one from shift-link types: player, tele, taxinode, creature, gameobject, or explicit #x #y #z #mapid coordinates.');
ALTER TABLE db_version CHANGE COLUMN required_z0627_130_01_mangos_command required_z0630_131_01_mangos_game_event_pool bit;

DROP TABLE IF EXISTS `game_event_pool`;
ALTER TABLE db_version CHANGE COLUMN required_z0630_131_01_mangos_game_event_pool required_z0648_132_01_mangos_command bit;

DELETE FROM command WHERE name IN('go', 'go creature','go object');
INSERT INTO command (name, security, help) VALUES
('go',1,'Syntax: .go  [$playername|pointlink|#x #y #z [#mapid]]\r\nTeleport your character to point with coordinates of player $playername, or coordinates of one from shift-link types: player, tele, taxinode, creature/creature_entry, gameobject/gameobject_entry, or explicit #x #y #z #mapid coordinates.'),
('go creature',1,'Syntax: .go creature (#creature_guid|$creature_name|id #creature_id)\r\nTeleport your character to creature with guid #creature_guid, or teleport your character to creature with name including as part $creature_name substring, or teleport your character to a creature that was spawned from the template with this entry #creature_id.'),
('go object',1,'Syntax: .go object (#gameobject_guid|$gameobject_name|id #gameobject_id)\r\nTeleport your character to gameobject with guid #gameobject_guid, or teleport your character to gameobject with name including as part $gameobject_name substring, or teleport your character to a gameobject that was spawned from the template with this entry #gameobject_id.');
ALTER TABLE db_version CHANGE COLUMN required_z0648_132_01_mangos_command required_z0648_132_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (269);
ALTER TABLE db_version CHANGE COLUMN required_z0648_132_02_mangos_mangos_string required_z0649_133_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 1143 AND 1148;

INSERT INTO mangos_string VALUES
(1143, 'Spawned by event %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1144, 'Despawned by event %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1145, 'Part of pool %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1146, 'Part of pool %u, top pool %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1147, 'The (top)pool %u is spawned by event %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1148, 'The (top)pool %u is despawned by event %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0649_133_01_mangos_mangos_string required_z0652_134_01_mangos_creature_model_info bit;

DELETE FROM creature_model_info WHERE modelid IN (49,50,51,52,53,54,55,56,57,58,59,60,1478,1479,1563,1564,10045);
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender) VALUES
(49, 0.3060, 1.5, 0, 50),
(50, 0.2080, 1.5, 1, 49),
(51, 0.3720, 1.5, 0, 52),
(52, 0.2360, 1.5, 1, 51),
(53, 0.3470, 1.5, 0, 54),
(54, 0.3470, 1.5, 1, 53),
(55, 0.3890, 1.5, 0, 56),
(56, 0.3060, 1.5, 1, 55),
(57, 0.3830, 1.5, 0, 58),
(58, 0.3830, 1.5, 1, 57),
(59, 0.9747, 1.5, 0, 60),
(60, 0.8725, 1.5, 1, 59),
(1478, 0.3060, 1.5, 0, 1479),
(1479, 0.3060, 1.5, 1, 1478),
(1563, 0.3519, 1.5, 0, 1564),
(1564, 0.3519, 1.5, 1, 1563),
(10045, 1.0000, 1.5, 2, 0);
ALTER TABLE db_version CHANGE COLUMN required_z0652_134_01_mangos_creature_model_info required_z0662_135_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 1149 AND 1151;

INSERT INTO mangos_string VALUES
(1149,' (Pool %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1150,' (Event %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1151,' (Pool %u Event %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM mangos_string WHERE entry in (515, 517, 1110, 1111, 1137);

INSERT INTO mangos_string VALUES
(515,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_CREATURE_LIST_CHAT (.list creature)
(517,'%d%s, Entry %d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_GO_MIXED_LIST_CHAT (.gobject near)
(1110,'%d%s - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_CREATURE_LIST_CONSOLE
(1111,'%d%s - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_GO_LIST_CONSOLE
(1137,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); -- LANG_GO_LIST_CHAT (.list object)
ALTER TABLE db_version CHANGE COLUMN required_z0662_135_01_mangos_mangos_string required_z0672_136_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (63, 64);
INSERT INTO mangos_string () VALUES
(63, "Accepts whispers", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, "Doesn't accept whispers", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0672_136_01_mangos_mangos_string required_z0684_139_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (27,1029);

INSERT INTO mangos_string VALUES
(27,'The old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1029, 'Command can be called only from RA-console.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0684_139_01_mangos_mangos_string required_z0718_s0020_01_mangos_playercreateinfo bit;

ALTER TABLE playercreateinfo
  ADD COLUMN orientation float NOT NULL default '0' AFTER position_z;
ALTER TABLE db_version CHANGE COLUMN required_z0718_s0020_01_mangos_playercreateinfo required_z0726_s0028_01_mangos_playercreateinfo bit;

UPDATE playercreateinfo SET orientation= 5.696318 WHERE race=4;
UPDATE playercreateinfo SET orientation= 6.177156 WHERE race=3;
UPDATE playercreateinfo SET orientation= 2.70526 WHERE race=5;
ALTER TABLE db_version CHANGE COLUMN required_z0726_s0028_01_mangos_playercreateinfo required_z0735_s0038_01_mangos_command bit;

DELETE FROM command WHERE name = 'wp';
ALTER TABLE db_version CHANGE COLUMN required_z0735_s0038_01_mangos_command required_z0736_s0039_01_mangos_command bit;

DELETE FROM command WHERE name = 'stable';
INSERT INTO command (name, security, help) VALUES
('stable',3,'Syntax: .stable\r\n\r\nShow your pet stable.');
ALTER TABLE db_version CHANGE COLUMN required_z0736_s0039_01_mangos_command required_z0738_s0041_02_mangos_command bit;

DELETE FROM command WHERE name IN ('auction','auction aliance','auction goblin','auction horde');
INSERT INTO command (name, security, help) VALUES
('auction',3,'Syntax: .auction\r\n\r\nShow your team auction store.'),
('auction alliance',3,'Syntax: .auction alliance\r\n\r\nShow alliance auction store independent from your team.'),
('auction goblin',3,'Syntax: .auction goblin\r\n\r\nShow goblin auction store common for all teams.'),
('auction horde',3,'Syntax: .auction horde\r\n\r\nShow horde auction store independent from your team.');
ALTER TABLE db_version CHANGE COLUMN required_z0738_s0041_02_mangos_command required_z0742_s0046_01_mangos_pool_creature bit;

DROP TABLE IF EXISTS pool_creature_temp;
CREATE TABLE pool_creature_temp
SELECT guid, pool_entry, chance, description FROM pool_creature GROUP BY guid;

ALTER TABLE pool_creature_temp
  ADD PRIMARY KEY  (guid),
  ADD INDEX pool_idx (pool_entry);

DROP TABLE IF EXISTS pool_creature;
RENAME TABLE pool_creature_temp TO pool_creature;
ALTER TABLE db_version CHANGE COLUMN required_z0742_s0046_01_mangos_pool_creature required_z0742_s0046_02_mangos_pool_gameobject bit;

DROP TABLE IF EXISTS pool_gameobject_temp;
CREATE TABLE pool_gameobject_temp
SELECT guid, pool_entry, chance, description FROM pool_gameobject GROUP BY guid;

ALTER TABLE pool_gameobject_temp
  ADD PRIMARY KEY  (guid),
  ADD INDEX pool_idx (pool_entry);

DROP TABLE IF EXISTS pool_gameobject;
RENAME TABLE pool_gameobject_temp TO pool_gameobject;
ALTER TABLE db_version CHANGE COLUMN required_z0742_s0046_02_mangos_pool_gameobject required_z0742_s0046_03_mangos_pool_pool bit;

DROP TABLE IF EXISTS pool_pool_temp;
CREATE TABLE pool_pool_temp
SELECT pool_id, mother_pool, chance, description FROM pool_pool GROUP BY pool_id;

ALTER TABLE pool_pool_temp
  ADD PRIMARY KEY  (pool_id),
  ADD INDEX pool_idx (mother_pool);

DROP TABLE IF EXISTS pool_pool;
RENAME TABLE pool_pool_temp TO pool_pool;
ALTER TABLE db_version CHANGE COLUMN required_z0742_s0046_03_mangos_pool_pool required_z0759_s0065_01_mangos_creature_addon bit;

ALTER TABLE creature_addon
  CHANGE `guid` `guid` int(10) unsigned NOT NULL default '0';
ALTER TABLE db_version CHANGE COLUMN required_z0759_s0065_01_mangos_creature_addon required_z0763_s0069_01_mangos_reputation_reward_rate bit;

DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE `reputation_reward_rate` (
  `faction` mediumint(8) unsigned NOT NULL default '0',
  `quest_rate` float NOT NULL default '1',
  `creature_rate` float NOT NULL default '1',
  `spell_rate` float NOT NULL default '1',
  PRIMARY KEY  (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_z0763_s0069_01_mangos_reputation_reward_rate required_z0764_s0070_01_mangos_reputation_spillover_template bit;

DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template` (
  `faction` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction entry',
  `faction1` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL default '0' COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL default '0' COMMENT 'max rank, above this will not give any spillover',
  `faction2` smallint(6) unsigned NOT NULL default '0',
  `rate_2` float NOT NULL default '0',
  `rank_2` tinyint(3) unsigned NOT NULL default '0',
  `faction3` smallint(6) unsigned NOT NULL default '0',
  `rate_3` float NOT NULL default '0',
  `rank_3` tinyint(3) unsigned NOT NULL default '0',
  `faction4` smallint(6) unsigned NOT NULL default '0',
  `rate_4` float NOT NULL default '0',
  `rank_4` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';
ALTER TABLE db_version CHANGE COLUMN required_z0764_s0070_01_mangos_reputation_spillover_template required_z0767_s0075_01_mangos_creature_model_info bit;

ALTER TABLE creature_model_info ADD COLUMN modelid_other_team mediumint(8) unsigned NOT NULL default '0' AFTER modelid_other_gender;
ALTER TABLE db_version CHANGE COLUMN required_z0767_s0075_01_mangos_creature_model_info required_z0769_s0077_10299_01_mangos_event_id_scripts bit;

DROP TABLE IF EXISTS `event_id_scripts`;
CREATE TABLE `event_id_scripts` (
  `id` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Script library scripted events';
ALTER TABLE db_version CHANGE COLUMN required_z0769_s0077_10299_01_mangos_event_id_scripts required_z0770_s0080_01_mangos_instance_template bit;

ALTER TABLE instance_template CHANGE COLUMN `script` `ScriptName` varchar(128) NOT NULL default '';
ALTER TABLE db_version CHANGE COLUMN required_z0770_s0080_01_mangos_instance_template required_z0770_s0080_02_mangos_scripted_areatrigger bit;

RENAME TABLE areatrigger_scripts TO scripted_areatrigger;
ALTER TABLE db_version CHANGE COLUMN required_z0770_s0080_02_mangos_scripted_areatrigger required_z0770_s0080_03_mangos_scripted_event_id bit;

RENAME TABLE event_id_scripts TO scripted_event_id;
