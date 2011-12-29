ALTER TABLE db_version CHANGE COLUMN required_z0770_s0080_03_mangos_scripted_event_id required_z0775_s0083_01_mangos_mangos_string bit;

UPDATE mangos_string SET content_default = 'Unit Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.' WHERE entry = 542;
ALTER TABLE db_version CHANGE COLUMN required_z0775_s0083_01_mangos_mangos_string required_z0782_xxxxx_01_mangos_mangos_string bit;

UPDATE mangos_string SET entry = 1400 + (entry - 349) WHERE entry >= 349 AND entry <= 388;
ALTER TABLE db_version CHANGE COLUMN required_z0782_xxxxx_01_mangos_mangos_string required_z0783_s0091_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,512,1105,1152);

INSERT INTO mangos_string VALUES
(357,'Areatrigger %u not has target coordinates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(358,'No areatriggers found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(359,'%s|cffffffff|Hareatrigger_target:%u|h[Trigger target %u]|h|r Map %u X:%f Y:%f Z:%f%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(360,'%s[Trigger target %u] Map %u X:%f Y:%f Z:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(361,'|cffffffff|Hareatrigger:%u|h[Trigger %u]|h|r Map %u X:%f Y:%f Z:%f%s%s%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(362,'[Trigger %u] Map %u X:%f Y:%f Z:%f%s%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(363,' (Dist %f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(364,' [Tavern]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(365,' [Quest]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(366,'Explore quest:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(367,'Required level %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(368,'Required Items:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(369,'Required quest:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1105,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1152,'[usable]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0783_s0091_01_mangos_mangos_string required_z0783_s0091_02_mangos_command bit;

DELETE FROM command WHERE name IN ('trigger','trigger active','trigger near','go trigger');
INSERT INTO command (name, security, help) VALUES
('go trigger',1,'Syntax: .go trigger (#trigger_id|$trigger_shift-link|$trigger_target_shift-link) [target]\r\n\r\nTeleport your character to areatrigger with id #trigger_id or trigger id associated with shift-link. If additional arg "target" provided then character will telported to areatrigger target point.'),
('trigger',2,'Syntax: .trigger [#trigger_id|$trigger_shift-link|$trigger_target_shift-link]\r\n\r\nShow detail infor about areatrigger with id #trigger_id or trigger id associated with shift-link. If areatrigger id or shift-link not provided then selected nearest areatrigger at current map.'),
('trigger active',2,'Syntax: .trigger active\r\n\r\nShow list of areatriggers wiht activation zone including current character position.'),
('trigger near',2,'Syntax: .trigger near [#distance]\r\n\r\nOutput areatriggers at distance #distance from player. If #distance not provided use 10 as default value.');
ALTER TABLE db_version CHANGE COLUMN required_z0783_s0091_02_mangos_command required_z0792_s0103_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (131,132,562,563,564,565,566,567,568,569,570,571,572,575,576,1153,1154,1155,1156,1157,1158,1159,1160);

INSERT INTO mangos_string VALUES
(131,'You changed the %s spellmod %u to value %i for spell with family bit %u for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(132,'%s changed your spellmod %u to value %i for spell with family bit %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(564,'The value index %u is too big to %s (count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(565,'Set for %s field:%u to uint32 value:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(566,'You set for %s field:%u to uint32 value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(567,'Set for %s field:%u to to float value:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(568,'You set for %s field:%u to float value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(569,'Get %s uint32 value:[FIELD]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(570,'%s has uint32 value:[FIELD]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(571,'Get %s float value:[FIELD]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(572,'%s has float value:[FIELD]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(575,'Modify %s uint32 field:%u to sum with:%i = %u (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(576,'You modify for %s uint32 field:%u to sum with:%i = %u (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1153,'Get %s bitstr value:[FIELD]:%u [VALUE]:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1154,'%s has bitstr value:[FIELD]:%u [VALUE]:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1155,'Get %s hex value:[FIELD]:%u [VALUE]:%x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1156,'%s has hex value:[FIELD]:%u [VALUE]:%x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1157,'Modify %s hex field:%u %s %x = %x (hex)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1158,'You modify for %s hex field:%u %s %x = %x (hex)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1159,'Modify %s float field:%u to sum with:%f = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1160,'You modify for %s float field:%u to sum with:%f = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0792_s0103_01_mangos_mangos_string required_z0792_s0103_02_mangos_command bit;

DELETE FROM command WHERE name IN (
  'debug update','debug Mod32Value','debug modvalue','modify spell','debug spellmods','modify bit',
  'debug getvalue','debug getitemvalue','debug setvalue','debug setitemvalue','debug moditemvalue'
);

INSERT INTO command (name, security, help) VALUES
('debug getitemvalue',3,'Syntax: .debug getitemvalue #itemguid #field [int|hex|bit|float]\r\n\r\nGet the field #field of the item #itemguid in your inventroy.\r\n\r\nUse type arg for set output format: int (decimal number), hex (hex value), bit (bitstring), float. By default use integer output.'),
('debug getvalue',3,'Syntax: .debug getvalue #field [int|hex|bit|float]\r\n\r\nGet the field #field of the selected target. If no target is selected, get the content of your field.\r\n\r\nUse type arg for set output format: int (decimal number), hex (hex value), bit (bitstring), float. By default use integer output.'),
('debug moditemvalue',3,'Syntax: .debug modvalue #guid #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the item #itemguid in your inventroy by value #value. \r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.'),
('debug modvalue',3,'Syntax: .debug modvalue #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the selected target by value #value. If no target is selected, set the content of your field.\r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.'),
('debug setitemvalue',3,'Syntax: .debug setitemvalue #guid #field [int|hex|bit|float] #value\r\n\r\nSet the field #field of the item #itemguid in your inventroy to value #value.\r\n\r\nUse type arg for set input format: int (decimal number), hex (hex value), bit (bitstring), float. By default expect integer input format.'),
('debug setvalue',3,'Syntax: .debug setvalue #field [int|hex|bit|float] #value\r\n\r\nSet the field #field of the selected target to value #value. If no target is selected, set the content of your field.\r\n\r\nUse type arg for set input format: int (decimal number), hex (hex value), bit (bitstring), float. By default expect integer input format.'),
('debug spellmods',3,'Syntax: .debug spellmods (flat|pct) #spellMaskBitIndex #spellModOp #value\r\n\r\nSet at client side spellmod affect for spell that have bit set with index #spellMaskBitIndex in spell family mask for values dependent from spellmod #spellModOp to #value.');

ALTER TABLE db_version CHANGE COLUMN required_z0792_s0103_02_mangos_command required_z0801_s0114_02_mangos_command bit;

DELETE FROM command WHERE name IN ('ticket');
INSERT INTO command (name, security, help) VALUES
('ticket',2,'Syntax: .ticket on\r\n        .ticket off\r\n        .ticket #num\r\n        .ticket $character_name\r\n        .ticket respond #num $response\r\n        .ticket respond $character_name $response\r\n\r\non/off for GMs to show or not a new ticket directly, $character_name to show ticket of this character, #num to show ticket #num.');
ALTER TABLE db_version CHANGE COLUMN required_z0801_s0114_02_mangos_command required_z0801_s0114_03_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (373, 374, 375);

INSERT INTO mangos_string VALUES
(373,'Response:\n%s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(374,'Tickets count: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(375,'Player %s not have tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0801_s0114_03_mangos_mangos_string required_z0803_s0116_01_mangos_creature_movement_template bit;

DROP TABLE IF EXISTS `creature_movement_template`;
CREATE TABLE `creature_movement_template` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Creature entry',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `waittime` int(10) unsigned NOT NULL default '0',
  `script_id` mediumint(8) unsigned NOT NULL default '0',
  `textid1` int(11) NOT NULL default '0',
  `textid2` int(11) NOT NULL default '0',
  `textid3` int(11) NOT NULL default '0',
  `textid4` int(11) NOT NULL default '0',
  `textid5` int(11) NOT NULL default '0',
  `emote` mediumint(8) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `wpguid` int(11) NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `model1` mediumint(9) NOT NULL default '0',
  `model2` mediumint(9) NOT NULL default '0',
  PRIMARY KEY  (`entry`,`point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoint system';
ALTER TABLE db_version CHANGE COLUMN required_z0803_s0116_01_mangos_creature_movement_template required_z0817_xxxxx_01_mangos_game_event bit;

ALTER TABLE game_event 
  ADD COLUMN holiday mediumint(8) unsigned NOT NULL default '0' COMMENT 'Client side holiday id' AFTER length;

ALTER TABLE db_version CHANGE COLUMN required_z0817_xxxxx_01_mangos_game_event required_z0830_s0148_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell IN (
  25076, 24398, 688, 6542, 27683, 26064, 469, 603, 974,
  1329, 1804, 2062, 2651, 2825, 2894, 3738, 5277, 5938,
  23028, 20164, 20243, 24224
);

INSERT INTO spell_chain VALUES
/*Elune's Grace*/
(2651,0,2651,1,0),
(19289,2651,2651,2,0),
(19291,19289,2651,3,0),
(19292,19291,2651,4,0),
(19293,19292,2651,5,0);
ALTER TABLE db_version CHANGE COLUMN required_z0830_s0148_01_mangos_spell_chain required_z0831_s0150_01_mangos_spell_chain bit;


DELETE FROM spell_chain WHERE spell_id IN (
 53, 72, 78, 99, 100, 284, 285, 408, 465, 633, 643, 694, 703, 769, 772, 779, 780, 845,
 1032, 1079, 1082, 1160, 1464, 1608, 1671, 1672, 1715, 1735, 1742, 1752, 1753, 1754, 1755,
 1756, 1757, 1758, 1759, 1760, 1766, 1767, 1768, 1769, 1776, 1777, 1784, 1785, 1786, 1787,
 1822, 1823, 1824, 1850, 1856, 1857, 1943, 1966, 2018, 2070, 2098, 2108, 2259, 2366, 2368,
 2550, 2575, 2576, 2589, 2590, 2591, 2649, 2800, 2947, 2983, 3009, 3010, 3029, 3100, 3101,
 3102, 3104, 3110, 3273, 3274, 3413, 3464, 3538, 3564, 3570, 3716, 3811, 3908, 3909, 3910,
 4036, 4037, 4038, 4187, 4188, 4189, 4190, 4191, 4192, 4193, 4194, 5041, 5042, 5171, 5201,
 5211, 5215, 5217, 5221, 5242, 5308, 5487, 6178, 6190, 6192, 6307, 6343, 6360, 6546, 6547,
 6548, 6552, 6554, 6572, 6574, 6673, 6760, 6761, 6762, 6768, 6770, 6774, 6783, 6785, 6787,
 6793, 6798, 6800, 6807, 6808, 6809, 7294, 7369, 7371, 7372, 7373, 7379, 7384, 7386, 7400,
 7402, 7405, 7411, 7412, 7413, 7620, 7731, 7732, 7799, 7800, 7801, 7802, 7804, 7805, 7809,
 7810, 7811, 7812, 7813, 7814, 7815, 7816, 7887, 7924, 8198, 8204, 8205, 8316, 8317, 8380,
 8613, 8617, 8618, 8621, 8623, 8624, 8629, 8631, 8632, 8633, 8637, 8639, 8640, 8643, 8647,
 8649, 8650, 8676, 8696, 8721, 8724, 8725, 8820, 8972, 8983, 8992, 8998, 9000, 9005, 9490,
 9492, 9493, 9634, 9745, 9747, 9752, 9754, 9785, 9821, 9823, 9827, 9829, 9830, 9845, 9846,
 9849, 9850, 9866, 9867, 9880, 9881, 9892, 9894, 9896, 9898, 9904, 9908, 9913, 10248, 10290,
 10291, 10292, 10293, 10298, 10299, 10300, 10301, 10310, 10662, 10768, 10846, 11197, 11198,
 11267, 11268, 11269, 11273, 11274, 11275, 11279, 11280, 11281, 11285, 11286, 11289, 11290,
 11293, 11294, 11297, 11299, 11300, 11303, 11305, 11549, 11550, 11551, 11554, 11555, 11556,
 11564, 11565, 11566, 11567, 11572, 11573, 11574, 11578, 11580, 11581, 11584, 11585, 11596,
 11597, 11600, 11601, 11604, 11605, 11608, 11609, 11611, 11762, 11763, 11766, 11767, 11770,
 11771, 11774, 11775, 11778, 11779, 11780, 11784, 11785, 11993, 12180, 12656, 12294, 13920,
 14916, 14917, 14918, 14919, 14920, 14921, 16511, 16697, 16827, 16828, 16829, 16830, 16831,
 16832, 17253, 17255, 17256, 17257, 17258, 17259, 17260, 17261, 17347, 17348, 17735, 17750,
 17751, 17752, 17767, 17850, 17851, 17852, 17853, 17854, 18248, 18260, 19438, 19440, 19441,
 19442, 19443, 19244, 19478, 19505, 19647, 19655, 19656, 19660, 19731, 19734, 19736, 19876,
 19888, 19891, 19895, 19896, 19897, 19898, 19899, 19900, 20252, 20559, 20560, 20569, 20616,
 20617, 20658, 20660, 20661, 20662, 21551, 21552, 21553, 22568, 22827, 22828, 22829, 22842,
 22895, 22896, 23099, 23109, 23110, 23145, 23147, 23148, 23881, 23892, 23893, 23894, 23922,
 23923, 23924, 23925, 23992, 24423, 24439, 24444, 24445, 24446, 24447, 24448, 24449, 24450,
 24452, 24453, 24488, 24492, 24493, 24497, 24500, 24501, 24502, 24503, 24504, 24505, 24506,
 24507, 24545, 24549, 24550, 24551, 24552, 24553, 24554, 24555, 24577, 24578, 24579, 24583,
 24586, 24587, 24597, 24604, 24605, 24603, 24629, 24630, 24640, 24844, 25008, 25009, 25010,
 25011, 25012, 25286, 25288, 25289, 25300, 25302, 26090, 26177, 26178, 26179, 26187, 26188,
 26201, 31016, 31018,

 20154, 21084, 20287, 20288, 20289, 20290, 20291, 20292, 20293,
 2048, 24248

);

INSERT INTO spell_chain VALUES
(20287,21084,20154,3,0),
(20288,20287,20154,4,0),
(20289,20288,20154,5,0),
(20290,20289,20154,6,0),
(20291,20290,20154,7,0),
(20292,20291,20154,8,0),
(20293,20292,20154,9,0);
ALTER TABLE db_version CHANGE COLUMN required_z0831_s0150_01_mangos_spell_chain required_z0853_xxxxx_01_mangos_creature_template bit;

UPDATE creature_template SET spell1 = 0 WHERE entry = 3968;
ALTER TABLE db_version CHANGE COLUMN required_z0853_xxxxx_01_mangos_creature_template required_z0869_s0190_02_mangos_spell_bonus_data bit;

-- ----------------------------
-- Table structure for spell_bonus_data
-- ----------------------------
DROP TABLE IF EXISTS `spell_bonus_data`;
CREATE TABLE `spell_bonus_data` (
  `entry` smallint(5) unsigned NOT NULL,
  `direct_bonus` float NOT NULL default '0',
  `dot_bonus` float NOT NULL default '0',
  `ap_bonus` float NOT NULL default '0',
  `comments` varchar(255) default NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `spell_bonus_data` VALUES
/* Druid */
(339,   0,      0.1,     0,     'Druid - Entangling Roots'),
(5185,  1.6104, 0,       0,     'Druid - Healing Touch'),
(5570,  0,      0.127,   0,     'Druid - Insect Swarm'),
(8921,  0.1515, 0.13,    0,     'Druid - Moonfire'),
(8936,  0.539,  0.188,   0,     'Druid - Regrowth'),
(774,   0,      0.37604, 0,     'Druid - Rejuvenation'),
(2912,  1,      0,       0,     'Druid - Starfire'),
(18562, 0,      0,       0,     'Druid - Swiftmend'),
(5176,  0.5714, 0,       0,     'Druid - Wrath'),
/* Mage */
(1449,  0.2128, 0,       0,     'Mage - Arcane Explosion'),
(7268,  0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 1'),
(7269,  0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 2'),
(7270,  0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 3'),
(8419,  0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 4'),
(8418,  0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 5'),
(10273, 0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 6'),
(10274, 0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 7'),
(25346, 0.2857, 0,       0,     'Mage - Arcane Missiles Triggered Spell Rank 8'),
(11113, 0.1357, 0,       0,     'Mage - Blast Wave Rank'),
(120,   0.1357, 0,       0,     'Mage - Cone of Cold'),
(2136,  0.4286, 0,       0,     'Mage - Fire Blast'),
(133,   1,      0,       0,     'Mage - Fire Ball'),
(2120,  0.2357, 0.122,   0,     'Mage - Flamestrike'),
(122,   0.193,  0,       0,     'Mage - Frost Nova'),
(116,   0.8143, 0,       0,     'Mage - Frost Bolt'),
(11426, 0.8053, 0,       0,     'Mage - Ice Barrier'),
(1463,  0.8053, 0,       0,     'Mage - Mana Shield'),
(11366, 1.15,   0.05,    0,     'Mage - Pyroblast'),
(2948,  0.4286, 0,       0,     'Mage - Scorch'),
/* Paladin */
(26573, 0,      0.04,    0.04,  'Paladin - Consecration'),
(879,   0.15,   0,       0.15,  'Paladin - Exorcism'),
(19750, 0.4286, 0,       0,     'Paladin - Flash of Light'),
(635,   0.7143, 0,       0,     'Paladin - Holy Light'),
(25912, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Hurt Rank 1'),
(25911, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Hurt Rank 2'),
(25902, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Hurt Rank 3'),
(25914, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Heal Rank 1'),
(25913, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Heal Rank 2'),
(25903, 0.4286, 0,       0,     'Paladin - Holy Shock Triggered Heal Rank 3'),
(24275, 0.15,   0,       0.15,  'Paladin - Hammer of Wrath'),
(20925, 0.09,   0,       0.056, 'Paladin - Holy Shield'),
(2812,  0.07,   0,       0.07,  'Paladin - Holy Wrath'),
(20424, 0.25,   0,       0.16,  'Paladin - Seal of Command Proc'),
(20167, 0.25,   0,       0.16,  'Paladin - Seal of Light Proc'),
(25742, 0.07,   0,       0.039, 'Paladin - Seal of Righteousness Dummy Proc'),
/* Priest */
(13908, 0.8068, 0,       0,     'Priest - Desperate Prayer'),
(2944,  0.1849, 0,       0,     'Priest - Devouring Plague'),
(379,   0,      0,       0,     'Shaman - Earth Shield Triggered'),
(2061,  0.8068, 0,       0,     'Priest - Flash Heal'),
(2060,  1.6135, 0,       0,     'Priest - Greater Heal'),
(14914, 0.5711, 0.024,   0,     'Priest - Holy Fire'),
(15237, 0.1606, 0,       0,     'Priest - Holy Nova Damage'),
(23455, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 1'),
(23458, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 2'),
(23459, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 3'),
(27803, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 4'),
(27804, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 5'),
(27805, 0.3035, 0,       0,     'Priest - Holy Nova Heal Rank 6'),
(8129,  0,      0,       0,     'Priest - Mana Burn'),
(8092,  0.4296, 0,       0,     'Priest - Mind Blast'),
(15407, 0.257,  0,       0,     'Priest - Mind Flay'),
(17,    0.8068, 0,       0,     'Priest - Power Word: Shield'),
(596,   0.8086, 0,       0,     'Priest - Prayer of Healing'),
(139,   0,      0.376,   0,     'Priest - Renew'),
(589,   0,      0.1829,  0,     'Priest - Shadow Word: Pain'),
(585,   0.714,  0,       0,     'Priest - Smite'),
/* Shaman */
(1064,  1.34,   0,       0,     'Shaman - Chain Heal'),
(421,   0.57,   0,       0,     'Shaman - Chain Lightning'),
(974,   0.4762, 0,       0,     'Shaman - Earth Shield'),
(8042,  0.3858, 0,       0,     'Shaman - Earth Shock'),
(8443,  0.2142, 0,       0,     'Shaman - Fire Nova Totem Casted by Totem Rank 1'),
(8504,  0.2142, 0,       0,     'Shaman - Fire Nova Totem Casted by Totem Rank 2'),
(8505,  0.2142, 0,       0,     'Shaman - Fire Nova Totem Casted by Totem Rank 3'),
(11310, 0.2142, 0,       0,     'Shaman - Fire Nova Totem Casted by Totem Rank 4'),
(11311, 0.2142, 0,       0,     'Shaman - Fire Nova Totem Casted by Totem Rank 5'),
(8050,  0.2142, 0.1,     0,     'Shaman - Flame Shock'),
(8026,  0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 1'),
(8028,  0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 2'),
(8029,  0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 3'),
(10445, 0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 4'),
(16343, 0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 5'),
(16344, 0.1,    0,       0,     'Shaman - Flametongue Weapon Proc Rank 6'),
(8056,  0.3858, 0,       0,     'Shaman - Frost Shock'),
(8034,  0.1,    0,       0,     'Shaman - Frostbrand Attack Rank 1'),
(8037,  0.1,    0,       0,     'Shaman - Frostbrand Attack Rank 2'),
(10458, 0.1,    0,       0,     'Shaman - Frostbrand Attack Rank 3'),
(16352, 0.1,    0,       0,     'Shaman - Frostbrand Attack Rank 4'),
(16353, 0.1,    0,       0,     'Shaman - Frostbrand Attack Rank 5'),
(331,   1.6106, 0,       0,     'Shaman - Healing Wave'),
(8004,  0.8082, 0,       0,     'Shaman - Lesser Healing Wave'),
(403,   0.7143, 0,       0,     'Shaman - Lightning Bolt'),
(26364, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 1'),
(26365, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 2'),
(26366, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 3'),
(26367, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 4'),
(26369, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 5'),
(26370, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 6'),
(26363, 0.33,   0,       0,     'Shaman - Lightning Shield Proc Rank 7'),
(8188,  0.1,    0,       0,     'Shaman - Magma Totam Passive Rank 1'),
(10582, 0.1,    0,       0,     'Shaman - Magma Totam Passive Rank 2'),
(10583, 0.1,    0,       0,     'Shaman - Magma Totam Passive Rank 3'),
(10584, 0.1,    0,       0,     'Shaman - Magma Totam Passive Rank 4'),
(3606,  0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 1'),
(6350,  0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 2'),
(6351,  0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 3'),
(6352,  0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 4'),
(10435, 0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 5'),
(10436, 0.1667, 0,       0,     'Shaman - Searing Totem Attack Rank 6'),
/* Warlock */
(17962, 0.4286, 0,       0,     'Warlock - Conflagrate'),
(172,   0,      0.3,     0,     'Warlock - Corruption'),
(980,   0,      0.1,     0,     'Warlock - Curse of Agony'),
(603,   0,      2,       0,     'Warlock - Curse of Doom'),
(18220, 0.96,   0,       0,     'Warlock - Dark Pact'),
(6789,  0.22,   0,       0,     'Warlock - Death Coil'),
(689,   0,      0.1428,  0,     'Warlock - Drain Life'),
(5138,  0,      0,       0,     'Warlock - Drain Mana'),
(1120,  0,      0.4286,  0,     'Warlock - Drain Soul'),
(755,   0,      0.4485,  0,     'Warlock - Health Funnel'),
(1949,  0,      0.0946,  0,     'Warlock - Hellfire'),
(5857,  0.1428, 0,       0,     'Warlock - Hellfire Effect on Enemy Rank 1'),
(11681, 0.1428, 0,       0,     'Warlock - Hellfire Effect on Enemy Rank 2'),
(11682, 0.1428, 0,       0,     'Warlock - Hellfire Effect on Enemy Rank 3'),
(348,   0.2,    0.2,     0,     'Warlock - Immolate'),
(5676,  0.4286, 0,       0,     'Warlock - Searing Pain'),
(686,   0.8571, 0,       0,     'Warlock - Shadow Bolt'),
(6229,  0.3,    0,       0,     'Warlock - Shadow Ward'),
(17877, 0.4286, 0,       0,     'Warlock - Shadowburn'),
(18265, 0,      0.1,     0,     'Warlock - Siphon Life'),
(6353,  1.15,   0,       0,     'Warlock - Soul Fire');
ALTER TABLE db_version CHANGE COLUMN required_z0869_s0190_02_mangos_spell_bonus_data required_z0888_s0221_01_mangos_scripts bit;

ALTER TABLE creature_movement_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE creature_movement_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE creature_movement_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE creature_movement_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE event_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE event_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE event_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE event_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE gameobject_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE gameobject_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE gameobject_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE gameobject_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE gossip_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE gossip_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE gossip_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE gossip_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE quest_end_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE quest_end_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE quest_end_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE quest_end_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE quest_start_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE quest_start_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE quest_start_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE quest_start_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE spell_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE spell_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE spell_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE spell_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;
ALTER TABLE db_version CHANGE COLUMN required_z0888_s0221_01_mangos_scripts required_z0889_s0224_03_mangos_creature_respawn bit;

DROP TABLE IF EXISTS `creature_respawn`;
ALTER TABLE db_version CHANGE COLUMN required_z0889_s0224_03_mangos_creature_respawn required_z0889_s0224_04_mangos_gameobject_respawn bit;

DROP TABLE IF EXISTS `gameobject_respawn`;
ALTER TABLE db_version CHANGE COLUMN required_z0889_s0224_04_mangos_gameobject_respawn required_z0908_s0251_01_mangos_command bit;

DELETE FROM command WHERE name IN ('account characters');

INSERT INTO command (name, security, help) VALUES
('account characters',3,'Syntax: .account characters [#accountId|$accountName]\r\n\r\nShow list all characters for account selected by provided #accountId or $accountName, or for selected player in game.');

ALTER TABLE db_version CHANGE COLUMN required_z0908_s0251_01_mangos_command required_z0919_s0262_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (8936, 139, 596, 15407, 2060, 2061, 13908, 10461, 10460, 6372, 6371, 5672, 974, 8004, 331, 1454);
INSERT INTO `spell_bonus_data`(`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`comments`) VALUES
( 8936, 0.3,    0.1,    0, 'Druid - Regrowth'),
(  139, 0,      0.2,    0, 'Priest - Renew'),
(  596, 0.4285, 0,      0, 'Priest - Prayer of Healing'),
(15407, 0,      0.19,   0, 'Priest - Mind Flay'),
( 2060, 1.2353, 0,      0, 'Priest - Greater Heal'),
( 2061, 0.6177, 0,      0, 'Priest - Flash Heal'),
(13908, 0.4286, 0,      0, 'Priest - Desperate Prayer'),
(  974, 0.2857, 0,      0, 'Shaman - Earth Shield'),
( 5672, 0,      0.0450, 0, 'Shaman - Healing Stream Totem'),
(  331, 0.8571, 0,      0, 'Shaman - Healing Wave'),
( 8004, 0.4286, 0,      0, 'Shaman - Lesser Healing Wave'),
( 1454, 0.8,    0,      0, 'Warlock - Life Tap');
ALTER TABLE db_version CHANGE COLUMN required_z0919_s0262_01_mangos_spell_bonus_data required_z0919_s0298_02_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (5672, 6371, 6372, 10460, 10461);
INSERT INTO spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES
/* Healing Stream */
(5672,0,5672, 1,0),
(6371,5672,5672,2,0),
(6372,6371,5672,3,0),
(10460,6372,5672,4,0),
(10461,10460,5672,5,0);
ALTER TABLE db_version CHANGE COLUMN required_z0919_s0298_02_mangos_spell_chain required_z0967_s0263_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (726,750,751);
INSERT INTO mangos_string VALUES (750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0967_s0263_01_mangos_mangos_string required_z0968_s0283_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry >= 667 and entry <= 687 or entry IN (614,615,755);
INSERT INTO mangos_string VALUES
(614,'The Alliance flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(615,'The Horde flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0968_s0283_01_mangos_mangos_string required_z0977_s0345_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (201);

INSERT INTO mangos_string VALUES
(201,'Object GUID is: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0977_s0345_01_mangos_mangos_string required_z0978_s0346_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (470);

INSERT INTO mangos_string VALUES
(470,'id: %d eff: %d name: %s%s%s caster: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_z0978_s0346_01_mangos_mangos_string required_z0986_s0356_01_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN RequiredClasses smallint(5) unsigned NOT NULL default '0' AFTER Type;

ALTER TABLE quest_template DROP COLUMN CharTitleId;

UPDATE quest_template
  SET RequiredClasses = RequiredClasses|
    CASE SkillOrClass
      WHEN  -1 THEN    1 -- warrior
      WHEN  -2 THEN    2 -- paladin
      WHEN  -3 THEN    4 -- hunter
      WHEN  -4 THEN    8 -- rogue
      WHEN  -5 THEN   16 -- priest
      WHEN  -7 THEN   64 -- shaman
      WHEN  -8 THEN  128 -- mage
      WHEN  -9 THEN  256 -- warlock
      WHEN -11 THEN 1024 -- druid
      ELSE 0
    END
  WHERE SkillOrClass < 0;

UPDATE quest_template
  SET RequiredClasses = RequiredClasses|
    CASE ZoneOrSort
      WHEN  -81 THEN    1 -- warrior
      WHEN -141 THEN    2 -- paladin
      WHEN -261 THEN    4 -- hunter
      WHEN -162 THEN    8 -- rogue
      WHEN -262 THEN   16 -- priest
      WHEN  -82 THEN   64 -- shaman
      WHEN -161 THEN  128 -- mage
      WHEN  -61 THEN  256 -- warlock
      WHEN -263 THEN 1024 -- druid
      ELSE 0
    END
  WHERE ZoneOrSort < 0;

UPDATE quest_template SET SkillOrClass=0 WHERE SkillOrClass<0;
ALTER TABLE quest_template CHANGE COLUMN SkillOrClass RequiredSkill smallint(5) unsigned NOT NULL default '0' AFTER RequiredRaces;
