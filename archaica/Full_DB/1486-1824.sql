ALTER TABLE db_version CHANGE COLUMN required_z1482_s0967_01_mangos_spell_proc_event required_z1486_s0972_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 10444;
INSERT INTO spell_bonus_data VALUES (10444, 0, 0, 0, "Shaman - Flametongue Attack");
ALTER TABLE db_version CHANGE COLUMN required_z1486_s0972_01_mangos_spell_bonus_data required_z1488_s0974_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1165);

INSERT INTO mangos_string VALUES
(1165,'Spell %u not have auras.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1488_s0974_01_mangos_mangos_string required_z1524_s1019_01_mangos_spell_bonus_data bit;

ALTER TABLE spell_bonus_data
  ADD COLUMN ap_dot_bonus float NOT NULL default '0' AFTER ap_bonus;


DELETE FROM spell_bonus_data WHERE entry in (26573,703);
INSERT INTO `spell_bonus_data` VALUES
(26573, 0,      0.04,    0,  0.04,     'Paladin - Consecration'),
(703,   0,      0,       0,     0.03,  'Rogue - Garrote');
ALTER TABLE db_version CHANGE COLUMN required_z1524_s1019_01_mangos_spell_bonus_data required_z1524_s1019_02_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `first_spell` IN (2818,13797,13812,42243);
INSERT INTO `spell_chain` VALUES
/* Explosive Trap Effect */
(13812,0,13812,1,0),
(14314,13812,13812,2,0),
(14315,14314,13812,3,0),
/* Immolation Trap Triggered */
(13797,0,13797,1,0),
(14298,13797,13797,2,0),
(14299,14298,13797,3,0),
(14300,14299,13797,4,0),
(14301,14300,13797,5,0),
/* Deadly Poison Triggered */
(2818,0,2818,1,0),
(2819,2818,2818,2,0),
(11353,2819,2818,3,0),
(11354,11353,2818,4,0),
(25349,11354,2818,5,0);
ALTER TABLE db_version CHANGE COLUMN required_z1524_s1019_02_mangos_spell_chain required_z1527_s1022_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (468);

INSERT INTO mangos_string VALUES
(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1527_s1022_01_mangos_mangos_string required_z1529_s1024_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (274);

INSERT INTO mangos_string VALUES
(274,'Game Object (GUID: %u) has references in not found owner %s GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1529_s1024_01_mangos_mangos_string required_z1539_s1035_01_mangos_spell_proc_item_enchant bit;

DELETE FROM spell_proc_item_enchant  WHERE entry IN (13897, 20004, 20005);
INSERT INTO spell_proc_item_enchant VALUES
(13897, 6.0), -- Enchant Weapon - Fiery Weapon
(20004, 6.0), -- Enchant Weapon - Lifestealing
(20005, 1.6); -- Enchant Weapon - Icy Chill
ALTER TABLE db_version CHANGE COLUMN required_z1539_s1035_01_mangos_spell_proc_item_enchant required_z1540_s1036_01_mangos_creature_addon bit;

ALTER TABLE creature_addon
  ADD COLUMN b2_0_sheath tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER bytes1,
  ADD COLUMN b2_1_flags tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER b2_0_sheath;

UPDATE creature_addon SET b2_0_sheath = bytes2 & 0x000000FF;
UPDATE creature_addon SET b2_1_flags = (bytes2 & 0x0000FF00) >> 8;

ALTER TABLE creature_addon
  DROP COLUMN bytes2;
ALTER TABLE db_version CHANGE COLUMN required_z1540_s1036_01_mangos_creature_addon required_z1540_s1036_02_mangos_creature_template_addon bit;

ALTER TABLE creature_template_addon
  ADD COLUMN b2_0_sheath tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER bytes1,
  ADD COLUMN b2_1_flags tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER b2_0_sheath;

UPDATE creature_template_addon SET b2_0_sheath = bytes2 & 0x000000FF;
UPDATE creature_template_addon SET b2_1_flags = (bytes2 & 0x0000FF00) >> 8;

ALTER TABLE creature_template_addon
  DROP COLUMN bytes2;
ALTER TABLE db_version CHANGE COLUMN required_z1540_s1036_02_mangos_creature_template_addon required_z1603_s1106_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Server restart is required before command can be used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1603_s1106_01_mangos_mangos_string required_z1614_s1120_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (503);

INSERT INTO mangos_string VALUES
(503,'The distance is: (3D) %f (2D) %f - (3D, point-to-point) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1614_s1120_02_mangos_mangos_string required_z1661_s1188_01_mangos_item_template bit;

UPDATE item_template
  SET ScriptName = '' WHERE ScriptName = 'internalItemHandler';

ALTER TABLE db_version CHANGE COLUMN required_z1661_s1188_01_mangos_item_template required_z1671_s1201_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (15662, 11538, 21179);
INSERT INTO spell_bonus_data VALUES
(15662, 0,  0,       0,     0,     'Item - Six Demon Bag - Fireball'),
(11538, 0,  0,       0,     0,     'Item - Six Demon Bag - Frostbolt'),
(21179, 0,  0,       0,     0,     'Item - Six Demon Bag - Chain Lightning');
ALTER TABLE db_version CHANGE COLUMN required_z1671_s1201_01_mangos_spell_bonus_data required_z1683_s1231_01_mangos_creature_template bit;

UPDATE creature_template SET flags_extra=flags_extra|0x00000400 WHERE npcflag=npcflag|0x00008000;
UPDATE creature_template SET npcflag=npcflag & ~0x00008000;
ALTER TABLE db_version CHANGE COLUMN required_z1683_s1231_01_mangos_creature_template required_z1695_s1244_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (8);
INSERT INTO mangos_string VALUES
(8,'Command %s have subcommands:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1695_s1244_01_mangos_mangos_string required_z1697_s1246_01_mangos_command bit;

DELETE FROM command WHERE name = 'debug moditemvalue';

INSERT INTO command (name, security, help) VALUES
('debug moditemvalue',3,'Syntax: .debug moditemvalue #guid #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the item #itemguid in your inventroy by value #value. \r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.');
ALTER TABLE db_version CHANGE COLUMN required_z1697_s1246_01_mangos_command required_z1698_s1248_01_mangos_command bit;

DELETE FROM command WHERE name = 'npc aiinfo';

INSERT INTO command (name, security, help) VALUES
('npc aiinfo',2,'Syntax: .npc npc aiinfo\r\n\r\nShow npc AI and script information.');
ALTER TABLE db_version CHANGE COLUMN required_z1698_s1248_01_mangos_command required_z1698_s1248_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1504,1505,1506,1507,1508);

INSERT INTO mangos_string VALUES
(1504,'AI-Information for Npc Entry %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1505,'AIName: %s (%s) ScriptName: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1506,'Current phase = %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1507,'Combat-Movement is %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1508,'Melee attacking is %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1698_s1248_02_mangos_mangos_string required_z1719_s1272_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (539);

INSERT INTO mangos_string VALUES
(539,'Player selected: %s.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1719_s1272_01_mangos_mangos_string required_z1730_xxxxx_01_mangos_instance_template bit;

DELETE FROM instance_template WHERE map IN (33,36,43,70,109,229,289,329,429);

INSERT INTO `instance_template` VALUES
(33,0,20,26,10,0,0,-230.989,1571.57,''),
(36,0,17,26,10,0,0,-11207.8,1681.15,''),
(43,0,17,24,10,0,1,-751.131,-2209.24,''),
(70,0,41,51,10,0,0,-6060.18,-2955,''),
(109,0,50,0,10,0,0,-10170.1,-3995.97,''),
(229,0,55,0,10,3,0,-7522.53,-1233.04,''),
(289,0,58,0,5,0,0,1274.78,-2552.56,''),
(329,0,58,0,5,0,0,3392.32,-3378.48,''),
(429,0,55,0,5,0,1,-3908.03,1130,'');
ALTER TABLE db_version CHANGE COLUMN required_z1730_xxxxx_01_mangos_instance_template required_z1756_s1308_01_mangos_instance_template bit;

TRUNCATE TABLE instance_template;
INSERT INTO instance_template VALUES
(33,0,20,26,10,0,0,-230.989,1571.57,''),
(34,0,24,32,10,0,0,-8762.38,848.01,''),
(36,0,17,26,10,0,0,-11207.8,1681.15,''),
(43,0,17,24,10,0,1,-751.131,-2209.24,''),
(47,0,29,38,10,0,1,-4459.45,-1660.21,''),
(48,0,24,32,10,0,1,4249.12,748.387,''),
(70,0,41,51,10,0,0,-6060.18,-2955,''),
(90,0,29,38,10,0,0,-5162.66,931.599,''),
(109,0,50,0,10,0,0,-10170.1,-3995.97,''),
(129,0,37,46,10,0,1,-4662.88,-2535.87,''),
(189,0,34,45,10,0,0,2892.24,-811.264,''),
(209,0,44,54,10,0,1,-6790.58,-2891.28,''),
(229,0,55,0,10,3,0,-7522.53,-1233.04,''),
(230,0,52,0,5,0,0,-7178.1,-928.639,''),
(249,0,60,0,40,5,1,-4753.31,-3752.42,''),
(289,0,58,0,5,0,0,1274.78,-2552.56,''),
(309,0,60,0,20,3,0,-11916.1,-1224.58,''),
(329,0,58,0,5,0,0,3392.32,-3378.48,''),
(349,0,46,55,10,0,1,-1432.7,2924.98,''),
(389,0,13,18,10,0,1,1816.76,-4423.37,''),
(409,0,60,0,40,7,0,-7510.56,-1036.7,''),
(429,0,55,0,5,0,1,-3908.03,1130,''),
(469,0,60,0,40,7,0,-7663.41,-1218.67,''),
(509,0,60,0,20,3,1,-8114.46,1526.37,''),
(531,0,60,0,40,7,1,-8111.72,1526.79,''),
(533,0,60,0,40,7,-1,0,0,'');
ALTER TABLE db_version CHANGE COLUMN required_z1756_s1308_01_mangos_instance_template required_z1765_xxxxx_01_mangos_spell_affect bit;

DELETE FROM `spell_affect` WHERE `entry` IN (18275, 18274, 18273, 18272, 18271) AND effectId = 1;
INSERT INTO spell_affect ( entry , effectId , SpellFamilyMask ) VALUES
(18275, 1, 4295492618),
(18274, 1, 4295492618),
(18273, 1, 4295492618),
(18272, 1, 4295492618),
(18271, 1, 4295492618);
ALTER TABLE db_version CHANGE COLUMN required_z1765_xxxxx_01_mangos_spell_affect required_z1807_xxxxx_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 6346;
INSERT INTO `spell_proc_event` VALUES
( 6346, 0x7F,  0, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000, 0x00000100, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_z1807_xxxxx_01_mangos_spell_proc_event required_z1814_11827_01_mangos_creature_linking_template bit;

DROP TABLE IF EXISTS creature_linking_template;
CREATE TABLE creature_linking_template (
  entry INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'creature_template.entry of the slave mob that is linked',
  map MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Id of map of the mobs',
  master_entry INT(10) UNSIGNED NOT NULL COMMENT 'master to trigger events',
  flag MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'flag - describing what should happen when',
  PRIMARY KEY (entry, map)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature Linking System';
ALTER TABLE db_version CHANGE COLUMN required_z1814_11827_01_mangos_creature_linking_template required_z1819_11831_01_mangos_mangos_string bit;

delete from mangos_string where entry = 1170;
insert into mangos_string values (1170,'Gear Score of Player %s is %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z1819_11831_01_mangos_mangos_string required_z1819_11831_02_mangos_command bit;

DELETE FROM command WHERE name = 'gearscore';
INSERT INTO command (name, security, help) VALUES
('gearscore',3,'Syntax: .gearscore [#withBags] [#withBank]\r\n\r\nShow selected player\'s gear score. Check items in bags if #withBags != 0 and check items in Bank if #withBank != 0. Default: 1 for bags and 0 for bank');
ALTER TABLE db_version CHANGE COLUMN required_z1819_11831_02_mangos_command required_z1824_xxxxx_01_mangos_spell_affect_event bit;

DELETE FROM `spell_affect` WHERE `entry` = 28854;
INSERT INTO `spell_affect` VALUES (28854, 0, 2);
