/* Updatepack rev. 701 - 800 */

/* spell_proc_event data */
DELETE FROM `spell_proc_event` WHERE `entry` IN (9799, 11185, 12317, 13165, 14076, 14156, 14186, 14531, 15268, 16164, 16176, 16550, 16487, 16689, 16850, 17794, 18094, 18096, 19184, 19407, 20127, 20177, 27811, 30003);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(9799, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(11185, 0, 3, 128, 128, 128, 327680, 0, 0, 0, 0),
(12317, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(14156, 0, 0, 4063232, 4063232, 4063232, 0, 0, 0, 0, 0),
(14186, 0, 8, 1082131720, 1082131720, 1082131720, 0, 2, 0, 0, 0),
(14531, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(15268, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16164, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16176, 0, 11, 448, 448, 448, 0, 2, 0, 0, 0),
(16487, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(16850, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0),
(18094, 0, 5, 10, 10, 10, 0, 0, 0, 0, 0),
(18096, 0, 0, 549755813984, 549755813984, 549755813984, 0, 0, 0, 0, 0),
(19407, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0),
(20127, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(20177, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(27811, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(30003, 0, 0, 0, 0, 0, 0, 2048, 0, 0, 0);

-- Improved Shadow Vulnerability (Imp. Shadow Bolt) spell chain
DELETE FROM `spell_chain` WHERE `spell_id` IN (17794, 17798, 17797, 17799, 17800);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(17794, 0, 17794, 1, 0),
(17798, 17794, 17794, 2, 0),
(17797, 17798, 17794, 3, 0),
(17799, 17797, 17794, 4, 0),
(17800, 17799, 17794, 5, 0);

/* Hitboxes - Zataron */
-- Outdoor dragons
UPDATE `creature_model_info` SET `bounding_radius` = '5' WHERE `modelid` IN (15366, 15363, 15364, 15365, 15366, 6109, 10184);
-- Hakkar
UPDATE `creature_model_info` SET `bounding_radius` = '1.3', `combat_reach` = '3' WHERE `modelid` = 15295;

-- Flamewaker Healer should not be immune to polymorph by default (rest in scripts)
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`&~65536 WHERE `entry`=11663;

-- Matrix Punchograph 3005-D
UPDATE `gameobject_template` SET `type` = '2', `data1` = '0', `data7` = '0', `data10` = '0' WHERE `entry`=142696;
-- Zulian Crocolisk HP
UPDATE `creature_template` SET `minhealth`=9156,`maxhealth`=9156 WHERE `entry`=15043;
-- req races for More Dense Grinding Stones
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `entry`=7939;
-- More Thorium Widgets should not give rep
UPDATE `quest_template` SET `RewRepFaction1` = '0', `RewRepValue1` = '0' WHERE `entry`=7942;

/* REV 706 */
-- Same spawntime as Majordomo Executus for his Adds (entries 11663, 11664) --
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id` IN (11663, 11664);

/* REV 707 by Yenza */
-- Some veins fixed
UPDATE `gameobject_template` SET `faction`='94', `size`='0.5', `data0`='380', `data3`='1', `data4`='2', `data5`='4' WHERE `entry`='181108';
UPDATE `gameobject_template` SET `faction`='94' WHERE `entry` IN ('150081','150079','150080','150082');

-- Dark iron veins in BRD missing
DELETE FROM `gameobject` WHERE `guid` IN ('632407', '632408', '632409', '632410');
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(632407, 165658, 230, 679.721, 102.181, -73.2564, -1.18682, 0, 0, 0.559193, -0.829037, 1800, 100, 1),
(632408, 165658, 230, 748.476, -53.7894, -71.278, 2.96706, 0, 0, 0.996195, 0.087156, 1800, 100, 1),
(632409, 165658, 230, 1001.83, -395.972, -62.7024, 0.15708, 0, 0, 0.078459, 0.996917, 1800, 100, 1),
(632410, 165658, 230, 545.169, -128.195, -60.3184, -1.72788, 0, 0, 0.760406, -0.649448, 1800, 100, 1);

/* Alterac Valley */
-- Equipment fixes
UPDATE `creature_template` SET `equipment_id`='792' WHERE `entry`='12127';
UPDATE `creature_template` SET `equipment_id`='885' WHERE `entry`='12050';
UPDATE `creature_template` SET `equipment_id`='8' WHERE `entry`='13358';
UPDATE `creature_template` SET `equipment_id`='1354' WHERE `entry`='14763';
UPDATE `creature_template` SET `equipment_id`='1341' WHERE `entry`='13138';
UPDATE `creature_template` SET `equipment_id`='1355' WHERE `entry`='13296';
UPDATE `creature_template` SET `equipment_id`='1393' WHERE `entry`='13299';
UPDATE `creature_template` SET `equipment_id`='4192' WHERE `entry`='14765';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14775';
UPDATE `creature_template` SET `equipment_id`='1364' WHERE `entry`='11949';
UPDATE `creature_template` SET `equipment_id`='1354' WHERE `entry`='14769';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14777';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14777';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14772';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14773';
UPDATE `creature_template` SET `equipment_id`='1354' WHERE `entry`='14766';
UPDATE `creature_template` SET `equipment_id`='1245' WHERE `entry`='13447';
UPDATE `creature_template` SET `equipment_id`='1230' WHERE `entry`='13438';
UPDATE `creature_template` SET `equipment_id`='160' WHERE `entry`='12096';
UPDATE `creature_template` SET `equipment_id`='1322' WHERE `entry`='4255';
UPDATE `creature_template` SET `equipment_id`='502' WHERE `entry`='5134';
UPDATE `creature_template` SET `equipment_id`='738' WHERE `entry`='5135';
UPDATE `creature_template` SET `equipment_id`='1440' WHERE `entry`='5139';
UPDATE `creature_template` SET `equipment_id`='502' WHERE `entry`='13617';
UPDATE `creature_template` SET `equipment_id`='1356' WHERE `entry`='13577';
UPDATE `creature_template` SET `equipment_id`='429' WHERE `entry`='4257';
UPDATE `creature_template` SET `equipment_id`='429' WHERE `entry`='13257';
UPDATE `creature_template` SET `equipment_id`='1278' WHERE `entry`='14187';
UPDATE `creature_template` SET `equipment_id`='1061' WHERE `entry`='14188';
UPDATE `creature_template` SET `equipment_id`='1354' WHERE `entry`='14762';
UPDATE `creature_template` SET `equipment_id`='1231' WHERE `entry`='13318';
UPDATE `creature_template` SET `equipment_id`='1256' WHERE `entry`='13443';
UPDATE `creature_template` SET `equipment_id`='1298' WHERE `entry`='13442';
UPDATE `creature_template` SET `equipment_id`='429' WHERE `entry`='13216';
UPDATE `creature_template` SET `equipment_id`='1298' WHERE `entry`='13442';
UPDATE `creature_template` SET `equipment_id`='1298' WHERE `entry`='13442';
UPDATE `creature_template` SET `equipment_id`='1013' WHERE `entry`='13319';
UPDATE `creature_template` SET `equipment_id`='1236' WHERE `entry`='13320';
UPDATE `creature_template` SET `equipment_id`='915' WHERE `entry`='12051';
UPDATE `creature_template` SET `equipment_id`='1277' WHERE `entry`='13147';
UPDATE `creature_template` SET `equipment_id`='1363' WHERE `entry`='13140';
UPDATE `creature_template` SET `equipment_id`='1361' WHERE `entry`='13144';
UPDATE `creature_template` SET `equipment_id`='1389' WHERE `entry`='11947';
UPDATE `creature_template` SET `equipment_id`='6' WHERE `entry`='13359';
UPDATE `creature_template` SET `equipment_id`='1018' WHERE `entry`='13143';
UPDATE `creature_template` SET `equipment_id`='1050' WHERE `entry`='13137';
UPDATE `creature_template` SET `equipment_id`='1276' WHERE `entry`='13154';
UPDATE `creature_template` SET `equipment_id`='1369' WHERE `entry`='11839';
UPDATE `creature_template` SET `equipment_id`='1040' WHERE `entry`='11840';
UPDATE `creature_template` SET `equipment_id`='85' WHERE `entry`='11837';
UPDATE `creature_template` SET `equipment_id`='145' WHERE `entry`='11838';
UPDATE `creature_template` SET `equipment_id`='1292' WHERE `entry`='13798';
UPDATE `creature_template` SET `equipment_id`='1107' WHERE `entry`='13284';
UPDATE `creature_template` SET `equipment_id`='603' WHERE `entry`='13236';
UPDATE `creature_template` SET `equipment_id`='559' WHERE `entry`='14185';
UPDATE `creature_template` SET `equipment_id`='1424' WHERE `entry`='14186';
UPDATE `creature_template` SET `equipment_id`='738' WHERE `entry`='2225';
UPDATE `creature_template` SET `equipment_id`='865' WHERE `entry`='3625';
UPDATE `creature_template` SET `equipment_id`='435' WHERE `entry`='3343';
UPDATE `creature_template` SET `equipment_id`='429' WHERE `entry`='13176';
UPDATE `creature_template` SET `equipment_id`='458' WHERE `entry`='13218';
UPDATE `creature_template` SET `equipment_id`='1313' WHERE `entry`='10367';
UPDATE `creature_template` SET `equipment_id`='1252' WHERE `entry`='10364';
UPDATE `creature_template` SET `equipment_id`='1158' WHERE `entry`='12097';
UPDATE `creature_template` SET `equipment_id`='1286' WHERE `entry`='13448';
UPDATE `creature_template` SET `equipment_id`='922' WHERE `entry`='13179';
UPDATE `creature_template` SET `equipment_id`='1274' WHERE `entry`='13181';
UPDATE `creature_template` SET `equipment_id`='1183' WHERE `entry`='13153';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14774';
UPDATE `creature_template` SET `equipment_id`='1416' WHERE `entry`='14776';
UPDATE `creature_template` SET `equipment_id`='994' WHERE `entry`='11946';
UPDATE `creature_template` SET `equipment_id`='1387' WHERE `entry`='13180';
UPDATE `creature_template` SET `equipment_id`='1228' WHERE `entry`='13439';
UPDATE `creature_template` SET `equipment_id`='143' WHERE `entry`='11600';
UPDATE `creature_template` SET `equipment_id`='466' WHERE `entry`='10987';
UPDATE `creature_template` SET `equipment_id`='838' WHERE `entry`='11657';
UPDATE `creature_template` SET `equipment_id`='117' WHERE `entry`='13080';
UPDATE `creature_template` SET `equipment_id`='1357' WHERE `entry`='13078';
UPDATE `creature_template` SET `equipment_id`='738' WHERE `entry`='13396';

-- NPCs walking inside walls/floors - should not be moving(moves inside walls etc)
UPDATE `creature` SET `spawndist`='0' WHERE `id` IN ('14284', '13331', '13422', '13443', '13676', '12050', '12053', '12051', '14285', '13618', '13284', '13554');      

-- NPCs bad spawnpoints, data or/and double spawns
-- Moving NPC instead of standing inside gate
UPDATE `creature` SET `position_x`='790.362', `position_y`='-498.310', `position_z`='99.665', `orientation`='0.479081' WHERE `guid`='51878';

-- Moving NPC to better location
UPDATE `creature` SET `position_x`='713.738', `position_y`='-5.866', `position_z`='50.135' WHERE `guid`='54296';
UPDATE `creature` SET `position_x`='775.751', `position_y`='-496.893', `position_z`='99.337' WHERE `guid`='150140';
UPDATE `creature` SET `position_x`='-770.205', `position_y`='-366.228', `position_z`='90.895' WHERE `guid`='53115';
UPDATE `creature` SET `position_x`='-544.134', `position_y`='-167.923', `position_z`='57.0122', `orientation`='6.28171' WHERE `guid`='150145';

-- Moving the flags to better locaiton
UPDATE `gameobject` SET `position_x`='-1084.145', `position_y`='-339.069', `position_z`='54.895' WHERE `guid` IN ('90407', '90406', '90393', '90392', '90379', '90378', '90365', '90364');

-- Double spawns deleted
DELETE FROM `creature` WHERE `guid` IN ('51866', '49649', '150884', '150892', '150861', '150720', '150722', '150908', '150909', '150905', '150904', '150903', '150905', '150878', '150875', '150877', '150898', '150871', '150901', '150869', '150900', '150874', '150873', '150870', '150872', '150741', '150739', '150866', '150896','53615', '53616');

-- Deleting unused troggs in script
DELETE FROM `creature` WHERE `guid` IN ('48324', '48322', '48327', '48325', '49578', '49580', '48326', '48323', '49579');

-- Wrong faction
UPDATE `creature_template` SET `faction_A`='1216', `faction_H`='1216' WHERE `entry`='13446';

-- Wrong scale
UPDATE `creature_template` SET `scale`='1' WHERE `entry` IN ('13145', '13143', '13236', '14186', '13153');

/* REV 709 */
-- Somnus spawn
DELETE FROM `creature` WHERE `id` = '12900'; 
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('2536458', '12900', '0', '0', '0', '-10281,9', '-4039,35', '23,5946', '1,76596', '600', '5', '0', '38547', '8343', '0', '1');

-- Fixed loot NPC Burning Blade Fanatic
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0,02' WHERE `entry` = '3199' AND `item` IN ('9754', '9744'); 

-- Vaelan should not be spawned by default
DELETE FROM `creature` WHERE `id`=10296;

-- Firesworn should be immune to fear
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|16 WHERE `entry`=12099;

-- Not existing items removed from loot
DELETE FROM `creature_loot_template` WHERE `item` IN ('24016', '24017', '24018', '24019', '24020', '35032');
DELETE FROM `gameobject_loot_template` WHERE `item` IN ('24016', '24017', '24018', '24019', '24020', '35032');
DELETE FROM `item_loot_template` WHERE `item` IN ('24016', '24017', '24018', '24019', '24020', '35032');
DELETE FROM `reference_loot_template` WHERE `item` IN ('24016', '24017', '24018', '24019', '24020', '35032');

-- Molten Core: Shazzrah won´t be immune to taunt
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~256 WHERE `entry`=12264;

/* REV 714 */
-- 12 hours respawn time for Majordomo and his adds --
UPDATE `creature` SET `spawntimesecs`=43200 WHERE `id` IN (12018, 11663, 11664);
-- Larger trigger diameter for spell cast of GO Hot Coal in Molten Core (entry 177000) --
UPDATE `gameobject_template` SET `data2`=9 WHERE `entry`=177000;

-- FA Doctors learn stuff via gossip (not via training window)
UPDATE `creature_template` SET `npcflag`=`npcflag`&~16 WHERE `entry` IN (12939, 12920);
DELETE FROM `npc_trainer` WHERE `entry` IN (12939, 12920);

/* REV 724 */
-- Some server startup errors fixed
DELETE FROM `creature_model_info` WHERE `modelid` = '11227'; 
UPDATE `creature_model_info` SET `modelid_other_gender` = '11225' WHERE `modelid` = '11226';
UPDATE `creature_model_info` SET `modelid_other_gender` = '0' WHERE `modelid` = '15552';
UPDATE `creature_template` SET `equipment_id` ='0' WHERE `entry` IN ('14764', '14765');
DELETE FROM `creature_linked_respawn` WHERE `guid` = '56663';
UPDATE `creature_template` SET `lootid` = '11447' WHERE `entry` = '11447';
UPDATE `creature_template` SET `lootid` = '11497' WHERE `entry` = '11497';
UPDATE `creature_template` SET `lootid` = '11498' WHERE `entry` = '11498';
UPDATE `item_template` SET `Flags` = '4' WHERE `entry` IN ('6712', '20229');    
DELETE FROM `reference_loot_template` WHERE `entry` IN ('24016', '24017', '24018', '24019', '24020', '35032');
UPDATE `creature_template` SET `gossip_menu_id` = '0' WHERE `entry` = '3921';
DELETE FROM `creature_movement` WHERE `id` = '54043';
DELETE FROM `creature_battleground` WHERE `guid` IN ('150722', '150875', '150905', '150739', '150877', '150908', '150741', '150878', '150909', '150861', '150884', '150866', '150892', '150869', '150896', '150870', '150898', '150871', '150900', '150872', '150901', '150873', '150903', '150720', '150874', '150904');
DELETE FROM `creature_loot_template` WHERE `entry` = '3199' AND `item` = '9754';

/* Onyxia's Lair */
-- Onyxian Whelp should attack only melee
UPDATE `creature_template` SET `ScriptName` = '', `spell1` = '0' WHERE `entry`= '11262';

-- Onyxian Warder bigger melee damage 
UPDATE `creature_template` SET `attackpower` = '2010', `mindmg` = '1000', `maxdmg` = '2000' WHERE `entry`= '12129';

-- Fixed spawn - Vartrus the Ancient (entry 14524)
DELETE FROM `creature` WHERE `guid`=2536459 AND `id`=14524;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('2536459', '14524', '1', '0', '0', '6199.94', '-1172.30', '370.21', '0.78', '300', '0', '0', '10111', '0', '0', '0');

-- Friendly faction for Vartrus the Ancient (entry 14524)
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=14524;

-- NPC Precious (entry 14528) relocation + remove IGNORE_AGGRO extra_flag --
UPDATE `creature` SET `position_x`='-6977.82', `position_y`='-742.29', `position_z`='-265.96', `orientation`='1.97' WHERE `id`=14528;
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=14528;

-- some gossips
UPDATE `creature_template` SET `gossip_menu_id`=4654 WHERE `entry`=2124;
UPDATE `creature_template` SET `gossip_menu_id`=20011 WHERE `entry`=7166;
UPDATE `creature_template` SET `gossip_menu_id`=11390 WHERE `entry`=7937;
UPDATE `creature_template` SET `gossip_menu_id`=1080 WHERE `entry`=7998;
UPDATE `creature_template` SET `gossip_menu_id`=1962 WHERE `entry`=9545;
UPDATE `creature_template` SET `gossip_menu_id`=1966 WHERE `entry`=9554;
UPDATE `creature_template` SET `gossip_menu_id`=11393 WHERE `entry`=11390;
UPDATE `creature_template` SET `gossip_menu_id`=6343 WHERE `entry`=15011;
UPDATE `creature_template` SET `gossip_menu_id`=8453 WHERE `entry`=15103;
UPDATE `creature_template` SET `gossip_menu_id`=8463 WHERE `entry`=15105;
UPDATE `creature_template` SET `gossip_menu_id`=9148 WHERE `entry`=16781;

DELETE FROM `gossip_menu` WHERE `entry` IN (4654,20011,11390,1080,1962,1966,11393,6343,8453,8463,9148);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`) VALUES
(1080, 1693, 0, 0, 0, 0, 0, 0),
(1962, 2636, 0, 0, 0, 0, 0, 0),
(1966, 2758, 0, 0, 0, 0, 0, 0),
(4654, 563, 0, 0, 0, 0, 0, 0),
(6343, 7536, 0, 0, 0, 0, 0, 0),
(8453, 10560, 0, 0, 0, 0, 0, 0),
(8463, 10572, 0, 0, 0, 0, 0, 0),
(9148, 12376, 0, 0, 0, 0, 0, 0),
(11390, 15863, 0, 0, 0, 0, 0, 0),
(11393, 15868, 0, 0, 0, 0, 0, 0),
(11393, 15870, 0, 0, 0, 0, 0, 0),
(20011, 1041, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=20011;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES
(20011, 0, 0, '[PH] Get E.C.A.C.', 1, 1, -1, 0, 2001101, 0, 0, '', 9, 2381, 0, 0, 0, 0, 0, 0, 0),
(20011, 1, 0, '[PH] Get Thieves'' Tools', 1, 1, -1, 0, 2001102, 0, 0, '', 9, 2381, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_scripts` WHERE `id` IN (2001101, 2001102);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2001101, 0, 15, 9977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Conjure E.C.A.C'),
(2001102, 0, 15, 9949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Thieves'' Tool Rack Conjure');

DELETE FROM `npc_text` WHERE `ID` IN (15863, 15868, 15870);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(15863, 'Welcome to Tinker Town!', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15868, '', 'It''s my job to ensure that this whole assault runs like clockwork.$B$BHigh Tinker Mekkatorque is out in the field now, but he''s scheduled to come back to get some more troops any time now.  $B$BHe''s never late, so just stick around and he''ll be here.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15870, '', 'Hurry! You should talk to Mekkatorque! If we don''t start the assault soon, we''re going to be late.$B$BAnd my boss HATES it when we''re late!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- some spell_script_target data from UDB
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(7728, 0, 92015),
(8674, 0, 92015),
(9002, 1, 1051),
(10259, 1, 7077),
(10259, 1, 7309),
(10747, 1, 7271),
(10860, 1, 7732),
(11792, 0, 144070),
(12139, 1, 5270),
(19773, 1, 12018),
(24731, 0, 180452),
(24731, 1, 15218),
(26294, 0, 180771),
(26333, 0, 180771),
(26334, 0, 180771),
(26335, 0, 180771),
(26338, 0, 180771);

-- add zone aggro for bosses
UPDATE creature_template SET flags_extra=flags_extra|512 WHERE entry IN (
-- Molten Core
12098, 12056, 12057, 12264, 12118, 11982, 11988, 12259, 12018,
-- Zul'Gurub
11380, -- Jin'do the Hexxer
11382, -- Bloodlord Mandokir
14507, -- High Priest Venoxis
14509, -- High Priest Thekal
14510, -- High Priestess Mar'li
14517, -- High Priestess Jeklik
14834, -- Hakkar
-- not spawned
15114, -- Gahz'ranka
14515, -- High Priestess Arlokk
14988, -- Ohgan
15083, -- Hazza'rah
-- BWL
10162, -- Lord Victor Nefarius
11981, -- Flamegor
11983, -- Firemaw
12017, -- Broodlord Lashlayer
12435, -- Razorgore the Untamed
13020, -- Vaelastrasz the Corrupt
14020, -- Chromaggus
14601, -- Ebonroc
-- not spawned
11583, -- Nefarian
-- Onyxia's Lair
10184,  -- Onyxia
-- AQ20
15339, -- Ossirian the Unscarred
15340, -- Moam
15341, -- General Rajaxx
15348, -- Kurinnaxx
15369, -- Ayamiss the Hunter
15370, -- Buru the Gorger
-- AQ40
15263, -- The Prophet Skeram
15275, -- Emperor Vek'nilash
15276, -- Emperor Vek'lor
15299, -- Viscidus
15509, -- Princess Huhuran
15510, -- Fankriss the Unyielding
15511, -- Lord Kri
15516, -- Battleguard Sartura
15517, -- Ouro
15543, -- Princess Yauj
15544, -- Vem
15727, -- C'Thun
-- Naxxramas
15928, -- Thaddius
15929, -- Stalagg
15930, -- Feugen
15931, -- Grobbulus
15932, -- Gluth
15936, -- Heigan the Unclean
15952, -- Maexxna
15953, -- Grand Widow Faerlina
15954, -- Noth the Plaguebringer
15956, -- Anub'Rekhan
15989, -- Sapphiron
15990, -- Kel'Thuzad
16011, -- Loatheb
16028, -- Patchwerk
16060, -- Gothik the Harvester
16061, -- Instructor Razuvious
16063, -- Sir Zeliek
16064, -- Thane Korth'azz
16065  -- Lady Blaumeux
);

-- Lower damage for Simone the Inconspicuous (entry 14527) (before: 3540 / 3558) --
-- Lower damage for Simone the Seductress    (entry 14533) (before: 3459 / 3478) --
UPDATE `creature_template` SET `mindmg`='100', `maxdmg`='160', `dmg_multiplier`='1' WHERE `entry` IN (14527, 14533);
-- Lower damage for Precious && Precious the Devourer (entry 14258) --
UPDATE `creature_template` SET `mindmg`='100', `maxdmg`='200', `dmg_multiplier`='1' WHERE `entry` IN (14528, 14538);
-- 4500-5000 damage for The Cleaner (entry 14503) --
UPDATE `creature_template` SET `mindmg`='4500', `maxdmg`='5000', `dmg_multiplier`=1 WHERE `entry`=14503;

-- Lightforge(T0) should only drop for Ally
UPDATE `creature_loot_template` SET `lootcondition`='6', `condition_value1`='469' WHERE `item` IN ('16728', '16729', '16724', '16722', '16725', '16727', '16723', '16726');

-- Lawbringer (T1)
UPDATE `creature_loot_template` SET `lootcondition`='6', `condition_value1`='469' WHERE `item` IN ('16860', '16859', '16858', '16857', '16856');
UPDATE `reference_loot_template` SET `lootcondition`='6', `condition_value1`='469' WHERE `item` IN ('16853', '16854', '16855', '16856', '16857', '16858', '16859', '16860');

-- Judgement (T2)
UPDATE `reference_loot_template` SET `lootcondition`='6', `condition_value1`='469' WHERE `item` IN ('16951', '16952', '16953', '16954', '16955', '16956', '16957', '16958');

-- HORDE
-- Elements (T0) should only drop for Horde
UPDATE `creature_loot_template` SET `lootcondition`='6', `condition_value1`='67' WHERE `item` IN ('16666', '16667', '16668', '16669', '16670', '16671', '16672', '16673');

-- Earthfury (T1)
UPDATE `creature_loot_template` SET `lootcondition`='6', `condition_value1`='67' WHERE `item` IN ('16837', '16838', '16839', '16840', '16844');
UPDATE `reference_loot_template` SET `lootcondition`='6', `condition_value1`='67' WHERE `item` IN ('16837', '16838', '16839', '16840', '16841', '16842', '16843', '16844');

-- Ten Storms (T2)
UPDATE `reference_loot_template` SET `lootcondition`='6', `condition_value1`='67' WHERE `item` IN ('16943', '16944', '16945', '16946', '16947', '16948', '16949', '16950');

-- Adding waypoints for Defias Messenger
-- it's a complete route, 100% blizzlike
DELETE FROM `creature_movement` WHERE `id`=45525;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(45525, 1, -10550.3, 1577.72, 45.5003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 2, -10537, 1585.05, 44.7354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 3, -10524.8, 1596.13, 43.908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 4, -10513.2, 1610.19, 42.4904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 5, -10496.4, 1630.86, 39.6653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 6, -10485.4, 1642.4, 38.1113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 7, -10491.2, 1636.42, 38.8817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 8, -10482.9, 1646.13, 37.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 9, -10474.1, 1654.38, 36.7315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 10, -10464.8, 1662.31, 35.7216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 11, -10456.4, 1670.82, 35.1188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 12, -10449, 1679.66, 34.7549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 13, -10444.4, 1693.57, 35.0979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 14, -10442.6, 1702.29, 36.605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 15, -10440.4, 1715.67, 35.5027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 16, -10440.7, 1731.23, 34.4916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 17, -10436.8, 1740.01, 34.124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 18, -10432.5, 1750.71, 33.018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 19, -10428.9, 1759.59, 31.4869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 20, -10424.3, 1771.2, 29.8744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 21, -10421.2, 1779.45, 28.7988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 22, -10417.6, 1790.58, 27.036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 23, -10414.8, 1800.73, 25.6406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 24, -10412.4, 1809.74, 24.3954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 25, -10408.9, 1820.97, 22.9263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 26, -10405.9, 1829.87, 21.4834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 27, -10404.2, 1838.54, 20.1959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 28, -10401.5, 1851.01, 18.0383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 29, -10398.1, 1868.48, 15.2132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 30, -10393.6, 1878.59, 13.1162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 31, -10390.4, 1889.55, 11.8432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 32, -10393.7, 1902.56, 11.1944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 33, -10395.8, 1913.63, 10.7943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 34, -10408.3, 1912.52, 8.65769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 35, -10422.8, 1912.1, 7.27358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 36, -10424.5, 1899.54, 6.86304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 37, -10414.1, 1895.85, 9.8266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 38, -10408.3, 1886.83, 11.8488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 39, -10405.4, 1875.01, 14.5132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 40, -10401.8, 1865.04, 16.2026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 41, -10404.5, 1850.87, 18.4987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 42, -10405.1, 1841.7, 19.9323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 43, -10407.6, 1829.77, 21.6951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 44, -10410.4, 1819.45, 23.2117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 45, -10414.1, 1808.19, 24.7937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 46, -10417.9, 1794.73, 26.5766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 47, -10422.8, 1778.14, 29.122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 48, -10430.2, 1760.91, 31.4147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 49, -10434.8, 1746.54, 33.6351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 50, -10437.8, 1737.26, 34.2445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 51, -10441, 1724.03, 35.0227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 52, -10443.3, 1707.95, 36.1507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 53, -10444.9, 1697.44, 36.0451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 54, -10446.5, 1684.36, 34.7704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 55, -10457.9, 1671.12, 35.1486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 56, -10469, 1659.24, 36.1166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 57, -10481.6, 1649.39, 37.3711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 58, -10490.3, 1638.39, 38.703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 59, -10501.8, 1625.24, 40.2209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 60, -10513.5, 1612.25, 42.3668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 61, -10522.3, 1601.34, 43.5036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 62, -10532.9, 1590.09, 44.2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 63, -10546.4, 1580.2, 45.1734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 64, -10558.1, 1572.55, 45.8448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 65, -10575.6, 1558.85, 47.2825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 66, -10591.9, 1556.21, 47.3183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 67, -10614, 1550.96, 47.2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 68, -10634.6, 1540.06, 47.3456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 69, -10644.7, 1531.37, 47.3011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 70, -10656.5, 1518.45, 47.1684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 71, -10670.2, 1507.34, 46.306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 72, -10687.5, 1504.65, 46.1438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 73, -10703.6, 1503.68, 47.2899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 74, -10719.3, 1503.65, 48.4051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 75, -10736.7, 1502.69, 48.0537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 76, -10761, 1498.96, 47.5403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 77, -10780.4, 1495.42, 47.6932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 78, -10799.1, 1489.53, 46.765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 79, -10836.6, 1477.77, 44.1874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 80, -10849.8, 1473.14, 43.1436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 81, -10875.8, 1462.88, 41.4709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 82, -10893.3, 1453.38, 41.1719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 83, -10908.2, 1437.35, 42.3018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 84, -10918.3, 1419.77, 42.7436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 85, -10928.6, 1422.12, 43.0843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 86, -10948.8, 1424.68, 43.3806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 87, -10951.4, 1423.89, 43.3969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 88, -10986.5, 1411.09, 42.8741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 89, -11006.3, 1423.64, 43.1756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 90, -11017.2, 1435.16, 43.0285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 91, -11022.2, 1455.45, 42.981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 92, -11023.5, 1472.9, 43.0735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 93, -11024.7, 1494.81, 43.1793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 94, -11023.5, 1480.86, 42.9867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 95, -11022.7, 1463.39, 42.951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 96, -11017.9, 1437.76, 43.0466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 97, -11009.5, 1426.61, 43.0811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 98, -10997.5, 1416.84, 43.0371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 99, -10984.2, 1412.07, 42.8526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 100, -10952.8, 1424.03, 43.3844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 101, -10929.9, 1422.79, 43.0661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 102, -10916.5, 1421.21, 42.7585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 103, -10910, 1433.56, 42.4899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 104, -10894.9, 1450.22, 41.2401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 105, -10881, 1460.86, 41.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 106, -10860.5, 1469.05, 42.1661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 107, -10840.5, 1475.62, 43.9035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 108, -10827.2, 1479.93, 44.6775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 109, -10812.2, 1484.78, 45.7459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 110, -10797.9, 1489.28, 46.8308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 111, -10788, 1492.71, 47.4666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 112, -10768.6, 1497.32, 47.6491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 113, -10751.2, 1499.7, 47.6024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 114, -10733.8, 1501.23, 48.0672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 115, -10719.8, 1501.86, 48.5168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 116, -10705.9, 1502.62, 47.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 117, -10688.4, 1503.22, 46.1356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 118, -10676.8, 1504.78, 46.0409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 119, -10665.1, 1509.25, 46.5207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 120, -10654.3, 1518.81, 47.226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 121, -10642.6, 1531.81, 47.3172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 122, -10622.2, 1546.18, 47.237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 123, -10606.1, 1552.95, 47.3139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 124, -10596, 1555.84, 47.3344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 125, -10578.7, 1557.15, 47.4847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 126, -10565, 1565.82, 46.5241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45525, 127, -10548.7, 1578.98, 45.3267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Jitters patrol route
DELETE FROM `creature_movement` WHERE `id`='4273';
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(4273, 0, -10731.3, 337.1, 38.5164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 1, -10729.3, 338.9, 38.3591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 2, -10729.0, 341.6, 38.1865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 3, -10731.2, 343.5, 38.0773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 4, -10734.2, 343.0, 38.0928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 5, -10735.3, 340.6, 38.1759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4273, 6, -10733.9, 338.1, 38.3614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- Gazelles should move around for a more "blizzlike" feeling
DELETE FROM `creature_movement` WHERE `id` IN ('14049','14050', '14051', '14052', '14053', '14054', '14042', '14043', '14044', '14045', '14046', '14047', '14023', '14024', '14025', '14026', '14009', '14010', '14011', '14012', '14013', '14014', '14015', '14017');

-- All that have 0 in MovementType should be on a route
UPDATE `creature` SET `MovementType`='2' WHERE (`MovementType`='0' AND `id`='4166');

-- First Herd
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(14049, 1, -2577.2, -1858.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 2, -2529.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 3, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 4, -2481.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 5, -2432.9, -1690.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 6, -2417.6, -1737.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 7, -2481.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 8, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 9, -2529.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 10, -2577.2, -1858.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 11, -2623.6, -1884.2, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 12, -2619.4, -1919.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 13, -2599.1, -1976.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 14, -2589.3, -2054.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 15, -2529.6, -2033.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14049, 16, -2593.3, -1939.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 1, -2580.2, -1864.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 2, -2534.4, -1820.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 3, -2505.0, -1794.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 4, -2480.6, -1742.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 5, -2429.9, -1686.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 6, -2420.6, -1738.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 7, -2483.6, -1746.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 8, -2515.0, -1790.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 9, -2532.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 10, -2579.2, -1859.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 11, -2626.6, -1886.2, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 12, -2625.4, -1922.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 13, -2595.1, -1979.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 14, -2595.3, -2052.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 15, -2532.6, -2036.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14050, 16, -2598.3, -1935.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 1, -2577.2, -1858.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 2, -2529.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 3, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 4, -2481.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 5, -2432.9, -1690.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 6, -2417.6, -1737.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 7, -2481.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 8, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 9, -2529.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 10, -2577.2, -1858.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 11, -2623.6, -1884.2, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 12, -2619.4, -1919.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 13, -2599.1, -1976.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 14, -2589.3, -2054.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 15, -2529.6, -2033.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14051, 16, -2593.3, -1939.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 1, -2575.2, -1855.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 2, -2529.4, -1827.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 3, -2513.0, -1786.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 4, -2480.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 5, -2431.9, -1691.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 6, -2419.6, -1740.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 7, -2480.6, -1740.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 8, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 9, -2525.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 10, -2574.2, -1856.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 11, -2621.6, -1886.2, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 12, -2617.4, -1912.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 13, -2600.1, -1975.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 14, -2590.3, -2056.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 15, -2527.6, -2035.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14052, 16, -2591.3, -1940.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 1, -2575.2, -1855.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 2, -2529.4, -1827.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 3, -2515.0, -1789.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 4, -2480.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 5, -2431.9, -1691.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 6, -2419.6, -1740.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 7, -2481.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 8, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 9, -2525.4, -1828.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 10, -2570.2, -1852.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 11, -2621.6, -1886.2, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 12, -2617.4, -1912.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 13, -2601.1, -1976.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 14, -2590.3, -2056.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 15, -2527.6, -2035.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14053, 16, -2589.3, -1938.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 1, -2572.2, -1858.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 2, -2528.4, -1825.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 3, -2511.0, -1784.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 4, -2489.6, -1743.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 5, -2432.9, -1693.4, 95.1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 6, -2415.6, -1738.7, 91.7289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 7, -2480.3, -1739.1, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 8, -2512.0, -1788.7, 91.6680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 9, -2523.4, -1825.0, 94.4881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 10, -2574.2, -1856.7, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 11, -2618.6, -1888.6, 94.3189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 12, -2615.4, -1912.8, 97.1135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 13, -2600.1, -1972.3, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 14, -2586.3, -2056.7, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 15, -2527.6, -2033.1, 93.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14054, 16, -2590.9, -1940.2, 93.2829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Second Herd
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(14042, 1, -582.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 2, -524.8, -1776.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 3, -582.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 4, -485.5, -2012.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 5, -389.4, -2037.4, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 6, -422.8, -2117.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14042, 7, -485.5, -2012.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 1, -584.3, -1902.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 2, -524.8, -1777.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 3, -580.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 4, -485.5, -2010.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 5, -390.4, -2037.4, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 6, -422.8, -2118.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14043, 7, -484.6, -2011.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 1, -579.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 2, -521.8, -1774.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 3, -579.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 4, -485.5, -2009.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 5, -391.4, -2037.4, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 6, -422.8, -2120.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14044, 7, -486.9, -2012.0, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 1, -583.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 2, -524.8, -1775.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 3, -580.3, -1901.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 4, -485.5, -2013.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 5, -391.4, -2037.4, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 6, -422.8, -2119.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14045, 7, -484.1, -2010.8, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 1, -582.3, -1903.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 2, -525.8, -1776.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 3, -582.3, -1903.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 4, -486.3, -2012.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 5, -389.4, -2036.4, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 6, -423.8, -2118.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14046, 7, -485.9, -2011.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 1, -582.3, -1899.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 2, -522.5, -1776.6, 93.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 3, -582.3, -1900.1, 92.8255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 4, -486.5, -2012.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 5, -389.4, -2035.9, 91.6676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 6, -422.5, -2117.8, 91.7514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14047, 7, -485.5, -2012.2, 93.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Third Herd
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(14023, 1, -826.5, -2532.7, 93.7251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14023, 2, -871.7, -2379.0, 91.7175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14023, 3, -777.9, -2518.8, 94.4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14023, 4, -512.1, -2476.0, 92.7286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14023, 5, -576.8, -2571.5, 92.5221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14024, 1, -824.5, -2531.7, 93.7251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14024, 2, -871.7, -2381.0, 91.7175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14024, 3, -775.9, -2518.8, 94.4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14024, 4, -512.1, -2478.0, 92.7286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14024, 5, -572.8, -2571.5, 92.5221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14025, 1, -827.5, -2534.7, 93.7251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14025, 2, -871.7, -2379.0, 91.7175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14025, 3, -772.9, -2518.8, 94.4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14025, 4, -512.1, -2475.0, 92.7286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14025, 5, -576.8, -2571.5, 92.5221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14026, 1, -827.5, -2530.7, 93.7251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14026, 2, -868.7, -2381.0, 91.7175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14026, 3, -775.9, -2516.8, 94.4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14026, 4, -509.1, -2478.0, 92.7286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14026, 5, -571.8, -2569.5, 92.5221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14009, 1, -828.5, -2530.7, 93.7251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14009, 2, -868.7, -2379.0, 91.7175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14009, 3, -776.1, -2516.8, 94.4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14009, 4, -509.1, -2475.0, 92.7286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14009, 5, -569.8, -2569.5, 92.5221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Forth Herd
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(14010, 1, -1686.5, -2155.7, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14010, 2, -1914.7, -2227.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14010, 3, -2036.2, -2032.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14010, 4, -1951.1, -1926.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14010, 5, -1834.7, -2069.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14010, 6, -1513.1, -1885.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 1, -1685.5, -2155.7, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 2, -1914.7, -2229.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 3, -2033.2, -2032.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 4, -1951.1, -1923.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 5, -1830.7, -2069.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14011, 6, -1513.1, -1880.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 1, -1680.5, -2155.7, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 2, -1914.7, -2220.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 3, -2030.2, -2032.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 4, -1951.1, -1920.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 5, -1830.7, -2069.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14012, 6, -1513.1, -1880.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 1, -1681.5, -2152.7, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 2, -1912.7, -2221.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 3, -2031.2, -2032.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 4, -1951.1, -1921.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 5, -1831.7, -2065.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14013, 6, -1510.1, -1880.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 1, -1683.5, -2152.0, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 2, -1912.0, -2225.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 3, -2037.2, -2036.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 4, -1950.1, -1925.3, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 5, -1833.7, -2066.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14014, 6, -1510.1, -1889.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 1, -1688.5, -2156.7, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 2, -1916.7, -2229.9, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 3, -2037.2, -2030.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 4, -1952.1, -1929.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 5, -1835.7, -2068.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14015, 6, -1514.1, -1886.1, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 1, -1688.1, -2154.6, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 2, -1913.1, -2230.0, 95.9039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 3, -2035.2, -2031.0, 93.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 4, -1949.1, -1922.7, 93.9246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 5, -1830.7, -2071.7, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14017, 6, -1511.9, -1887.9, 94.6350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Stratholme
DELETE FROM `creature_equip_template_raw` WHERE `entry` IN('25001', '25002', '25003', '25004', '25005', '25006', '25007', '25008', '25009', '25010');
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
('25001', '5223', '23446', '0', '352453634', '234948100', '0', '781', '4', '0'),
('25002', '21606', '0', '0', '50267138', '0', '0', '781', '0', '0'),
('25003', '31138', '0', '0', '50267138', '0', '0', '781', '0', '0'), 
('25004', '22209', '0', '0', '285279746', '0', '0', '2', '0', '0'),
('25005', '25609', '0', '0', '33492738', '0', '0', '781', '0', '0'),
('25006', '15806', '0', '0', '50268674', '0', '0', '2', '0', '0'),
('25007', '24109', '24109', '0', '218172674', '218172674', '0', '781', '781', '0'),
('25008', '7438', '21604', '0', '352453634', '50267138', '0', '781', '781', '0'),
('25009', '8581', '18751', '0', '352453634', '234948100', '0', '781', '4', '0'),
('25010', '28458', '20391', '0', '33490690', '50267138', '0', '781', '781', '0');
UPDATE `creature_template` SET `equipment_id`='25001' WHERE `entry`='10418';
UPDATE `creature_template` SET `equipment_id`='25002' WHERE `entry`='10419';
UPDATE `creature_template` SET `equipment_id`='25003' WHERE `entry`='10420';
UPDATE `creature_template` SET `equipment_id`='25004' WHERE `entry`='10424';
UPDATE `creature_template` SET `equipment_id`='25005' WHERE `entry`='10426';
UPDATE `creature_template` SET `equipment_id`='25006' WHERE `entry`='10422';
UPDATE `creature_template` SET `equipment_id`='25007' WHERE `entry`='11043';
UPDATE `creature_template` SET `equipment_id`='25008' WHERE `entry`='10423';
UPDATE `creature_template` SET `equipment_id`='25009' WHERE `entry`='10421';
UPDATE `creature_template` SET `equipment_id`='25010' WHERE `entry`='10425';

-- Blackrock Shadowcasters missing Mana
UPDATE `creature_template` SET `minmana`='1357', `maxmana`='1443' WHERE `entry`='436';

-- Tinkmaster have wrong text in Dialog
UPDATE `npc_text` SET `text0_0`='I am Tinkmaster Overspark, and I am the chief architect for modern gnomish engineering principles in the world today.  It is my job to ensure that the power of invention continues to shine brighter from our arclight spanners than anywhere else!$B$BAlso, if you happen to know a good schematic for radiation elimination, we just so happen to be in the market for one right about now...' WHERE `id`='2137';

-- GO Core Fragment have to long respawntime(10min) set to 10sec
UPDATE `gameobject` SET `spawntimesecs`='10' WHERE `id`='179553';

-- mature blue dragon sinew should have 100% dropchance from Azuregos
DELETE FROM `creature_loot_template` WHERE (`entry`=6109) AND (`item`=18704);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (6109, 18704, 100, 0, 1, 1, 0, 0, 0);

-- gordok inner door is at wrong location
UPDATE `gameobject` SET `position_x`='491.215', `position_y`='520.011', `position_z`='29.4625' WHERE `guid`='13428';

-- gordok inner door has wrong size
UPDATE `gameobject_template` SET `size`='1.2' WHERE `entry`='177217';

-- gordok inner door shouldn't close
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE `guid`='13428';

-- gordok courtyard door shouldn't close
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE `guid`='14737';

-- quest(s) should be available to both ally and horde since patch 1.10
UPDATE `quest_template` SET `RequiredRaces`='255' WHERE `entry` IN ('975', '969', '4801', '4802', '4803', '4804', '4805', '4806', '4807');

-- More quest that should be available for both
UPDATE `quest_template` SET `RequiredRaces`='255' WHERE `entry` IN ('6981');

-- Should be lootable
UPDATE `gameobject_template` SET `flags`='0' WHERE `entry`='176089';

-- Troll Necklace Bounty (2) needs full redoing
DELETE FROM `creature_questrelation` WHERE `quest` = 2881;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (7884, 2881);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 2881;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (7884, 2881);

UPDATE `quest_template` SET `SpecialFlags`='1', `OfferRewardText`='Another set of necklaces means that there are fewer trolls in the Hinterlands we have to worry about!
You\'ve done it again, $N.

Keep up the good work!', `RequestItemsText`='You\'ve done it already, but we will continue to accept any troll tribal necklaces you find and are willing to turn in.  By turning them in to me, you\'ll continue to improve your standing amongst the Wildhammers; if you\'re willing to fight for us, then we\'ll be willing to fight for you!

I need five troll tribal necklaces for them to count, $N.', PrevQuestId='2880', `DetailsEmote1`='25', `RewRepFaction1`='471', `RewRepValue1`='25' WHERE `entry`='2881';

-- Warpwood Crusher should be immune to Banish
UPDATE `creature_template` SET `mechanic_immune_mask`='131073' WHERE `entry`='13021';

-- Warpwood Crusher was able to hit players from far away
-- 50% shorter
UPDATE `creature_model_info` SET `bounding_radius`='3.801' WHERE `modelid`='12929';

-- Wrong spawnlocation for Defias Messenger
UPDATE `creature` SET `currentwaypoint`='1', `MovementType`='2', `position_x`='-10546', `position_y`='1580.18', `position_z`='45.168' WHERE `guid`='45525';

-- Raven Hill and Jitters growling gut quest have wrong text
UPDATE `quest_template` SET `RequestItemsText`='' WHERE `entry` IN ('163', '5');

-- Jitters should have patrol route
UPDATE `creature_template` SET `MovementType`='2' WHERE `entry`='288';
UPDATE `creature` SET `MovementType`='2' WHERE `id`='288';

-- Paragons of Power: The Vindicator's Armguards should only be available to Warriors
UPDATE `quest_template` SET `RequiredClasses`='1' WHERE `entry`='8058';

-- Ascension... had wrong quest text
UPDATE `quest_template` SET `Objectives`='It would appear as if the charade is over. You know that the Amulet of Draconic Subversion that Myranda the Hag created for you will not function inside Blackrock Spire. Perhaps you should find Rexxar and explain your predicament. Show him the Dull Drakefire Amulet. Hopefully he will know what to do next.' WHERE `entry`='6601';

-- Blood of the Black Dragon Champion had wrong quest text
UPDATE `quest_template` SET `Objectives`='Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.' WHERE `entry`='6602';

-- The Testament of Rexxar had wrong quest text
UPDATE `quest_template` SET `Objectives`='Deliver Rexxar\'s Letter to Myranda the Hag in the Western Plaguelands.' WHERE `entry`='6568';

-- Craftsman's Writ should be repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`='9142';

-- Mantles of the Dawn didn't give reputation
UPDATE `quest_template` SET `RewRepFaction1`='529', `RewRepValue1`='250' WHERE `entry`='5504';

-- Chromatic Mantle of the Dawn didn't give reputation
UPDATE `quest_template` SET `RewRepFaction1`='529', `RewRepValue1`='350' WHERE `entry`='5524';

-- Argent Quartermaster Hasana was not selling correct Vendor items
DELETE FROM `npc_vendor` WHERE (`entry`=10856);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(10856, 13444, 0, 0),
(10856, 13446, 0, 0),
(10856, 13482, 0, 0),
(10856, 13724, 0, 0),
(10856, 13810, 0, 0),
(10856, 13813, 0, 0),
(10856, 18169, 0, 0),
(10856, 18170, 0, 0),
(10856, 18171, 0, 0),
(10856, 18172, 0, 0),
(10856, 18173, 0, 0),
(10856, 18182, 0, 0),
(10856, 19203, 0, 0),
(10856, 19205, 0, 0),
(10856, 19216, 0, 0),
(10856, 19217, 0, 0),
(10856, 19328, 0, 0),
(10856, 19329, 0, 0),
(10856, 19442, 0, 0),
(10856, 19446, 0, 0),
(10856, 19447, 0, 0),
(10856, 22014, 0, 0);

-- DarrowShire GO for quest was at wrong location
UPDATE `gameobject` SET `position_x`='1442.67', `position_y`='-3702.75',`position_z`='77.3847' WHERE `guid`='99891';

/* REV 748 */
-- Infernal Bodyguard spawn
DELETE FROM `creature` WHERE `id` = 7135; 
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536460, 7135, 1, 0, 0, 5518.41, -651.837, 346.317, 5.79304, 300, 5, 0, 7820, 0, 0, 1),
(2536461, 7135, 1, 0, 0, 5576.21, -648.802, 343.078, 3.5201, 300, 5, 0, 7820, 0, 0, 1),
(2536462, 7135, 1, 0, 0, 5609.78, -744.417, 341.281, 4.57489, 300, 5, 0, 7820, 0, 0, 1);

-- Quests Epic Armaments of Battle - Exalted Amongst the Dawn, Arena Grandmaster, Conquering Arathi Basin should be repeteable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry` IN (9228, 9211, 9213, 7838, 8436, 8437, 8438, 8439, 8440, 8441, 8442, 8443, 8370, 8390);

-- Correct RequiredRaces for quest Bijou's Belongings
UPDATE `quest_template` SET `RequiredRaces`=77 WHERE `entry`=5001;
UPDATE `quest_template` SET `RequiredRaces`=178 WHERE `entry`=4982;

-- One wrong loot fixed
DELETE FROM `item_loot_template` WHERE `entry` IN (10569, 11107) AND `item` =11570;

-- One quest, that should not exist, deleted
DELETE FROM `quest_template` WHERE `entry` = 8411;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8411;
DELETE FROM `creature_questrelation` WHERE `quest` = 8411;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8411;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8411;

-- Correct max level for NPC Silithid Swarm
UPDATE `creature_template` SET `maxlevel`=22 WHERE `entry`=4196;

-- Razorgore spells for proper controlling phase
UPDATE `creature_template` SET `spell1` = '19873', `spell2` = '19872', `spell3` = '22425', `spell4` = '0' WHERE `entry`=12435;
-- Black Dragon Egg - respawn to 7 days
UPDATE `gameobject` SET `spawntimesecs` = '604800' WHERE `id`=177807;

DELETE FROM `spell_script_target` WHERE `entry` IN (19873, 23018);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(19873, 0, 177807), -- Destroy Egg
(23018, 1, 12435); -- Use Dragon Orb

-- "Stormwind Harbor" POI (Point of Interest) removed --
-- Should be in Wratch of the Lich King and higher expansion --
DELETE FROM `points_of_interest` WHERE `entry`=20;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=435 AND `id`=2 AND `option_text`='Stormwind Harbor';

-- Healable faction for Garments of the Light (quests) creatures --
UPDATE `creature_template` SET `faction_A`=11, `faction_H`=11, `RegenHealth`=0 WHERE `entry` IN (12423, 12427, 12428, 12429, 12430);

-- Correct learn-spell for item Plans: Dawnbringer Shoulders (entry 12698) --
UPDATE `item_template` SET
`spellid_1`=16686, `spelltrigger_1`=0, `spellcharges_1`='-1', `spellcooldown_1`='-1', `spellcategory_1`='0', `spellcategorycooldown_1`='-1',
`spellid_2`=0, `spelltrigger_2`=0, `spellcharges_2`='0', `spellcooldown_2`='-1', `spellcategory_2`='0', `spellcategorycooldown_2`='-1',
`spellid_3`=0, `spelltrigger_3`=0, `spellcharges_3`='0', `spellcooldown_3`='-1', `spellcategory_3`='0', `spellcategorycooldown_3`='-1',
`spellid_4`=0, `spelltrigger_4`=0, `spellcharges_4`='0', `spellcooldown_4`='-1', `spellcategory_4`='0', `spellcategorycooldown_4`='-1',
`spellid_5`=0, `spelltrigger_5`=0, `spellcharges_5`='0', `spellcooldown_5`='0', `spellcategory_5`='0', `spellcategorycooldown_5`='0',
`description`='', `Material`=0, `ScriptName`='internalitemhandler' WHERE `entry`=12698;

-- Mana for Simone the Seductress --
UPDATE `creature_template` SET `minmana`=12170, `maxmana`=12170 WHERE `entry`=14533;

-- Fixes so that the Thorium Boxes drops items
DELETE FROM `item_loot_template` WHERE (`entry`=5759);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (5759, 5759, 100, 0, -5759, 2, 0, 0, 0);
DELETE FROM `reference_loot_template` WHERE (`entry`=5759);
INSERT INTO `reference_loot_template` VALUES 
(5759, 1973, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 4500, 5.9, 0, 1, 1, 0, 0, 0),
(5759, 7527, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 7909, 2.7, 0, 1, 1, 0, 0, 0),
(5759, 7910, 2.4, 0, 1, 1, 0, 0, 0),
(5759, 8245, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 8252, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 8258, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 8265, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 8271, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 8275, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 8284, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 8285, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 8287, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 8288, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 8289, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 8291, 1, 0, 1, 1, 0, 0, 0),
(5759, 8292, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 8293, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 8294, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 8298, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 8299, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 8300, 1.1, 0, 1, 1, 0, 0, 0),
(5759, 8304, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 8307, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 8310, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 8312, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 8316, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 8318, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 8320, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10097, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10100, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10101, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10104, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10105, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10106, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10111, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10112, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10118, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10119, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10121, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10123, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10124, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10125, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10136, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10138, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10144, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10145, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10147, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10148, 1, 0, 1, 1, 0, 0, 0),
(5759, 10156, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 10159, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10164, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10168, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10169, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10170, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10177, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10178, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10181, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10182, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 10188, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10198, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10204, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10210, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10211, 1, 0, 1, 1, 0, 0, 0),
(5759, 10212, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 10213, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10214, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10216, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 10219, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10221, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10222, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10223, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 10224, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10225, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10228, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10229, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10230, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10232, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10233, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10234, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10235, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10236, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10237, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10258, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10275, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 10276, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10277, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10279, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10280, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10281, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10282, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10363, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10364, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10365, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 10369, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10370, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 10371, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10372, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10374, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 10375, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 10376, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10381, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 10391, 0.8, 0, 1, 1, 0, 0, 0),
(5759, 11978, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 11991, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 12004, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 12015, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 12026, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 12035, 0.6, 0, 1, 1, 0, 0, 0),
(5759, 12045, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 12046, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 12056, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 12057, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 12682, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 12694, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 12697, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 12702, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 12704, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 12713, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 13044, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 13053, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 13056, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 13096, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 13101, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 13118, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 13130, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 13487, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 13490, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 13492, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 14466, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 14474, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 14489, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 14492, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 14494, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 14496, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 14504, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 14508, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 15218, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15219, 0.5, 0, 1, 1, 0, 0, 0),
(5759, 15238, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15245, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15255, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15256, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15271, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 15272, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15276, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15278, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15281, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15282, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15324, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15325, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15731, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15743, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 15745, 0.7, 0, 1, 1, 0, 0, 0),
(5759, 15746, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 15754, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 15755, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 15757, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 15765, 0.4, 0, 1, 1, 0, 0, 0),
(5759, 15930, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 15936, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 15938, 0.3, 0, 1, 1, 0, 0, 0),
(5759, 15939, 0.1, 0, 1, 1, 0, 0, 0),
(5759, 16245, 0.2, 0, 1, 1, 0, 0, 0),
(5759, 16251, 0.4, 0, 1, 1, 0, 0, 0);

-- replacing all Rich Thorium Veins with Dark Iron veins
-- UPDATE `gameobject` SET `id`='165658' WHERE `id`='175404' AND `map`='409';

-- replacing all Small Thorium Veins with DI veins
-- UPDATE `gameobject` SET `id`='165658' WHERE `id`='324' AND `map`='409';

-- Captain greenskin's model
UPDATE `creature_template` SET `modelid_1`='7113', `modelid_2`='7113' WHERE `entry`='647'; 

-- Jutak and Scooty fix "walking away"
UPDATE `creature` SET `MovementType`='0' WHERE `guid` in ('2', '1');

-- Raggy should be tauntable, drop more money and not be able to
-- be disarmed
UPDATE `creature_template` SET `flags_extra`='1', `mechanic_immune_mask`='617299807', `mingold`='1176536', `maxgold`='1178536' WHERE `entry`='11502';

-- All MoltenCore bosses should be tauntable
UPDATE `creature_template` SET `flags_extra`='513' WHERE `entry` IN ('12118', '11982', '12259', '12057', '12264', '12056', '11988', '12098', '12018');

-- Lava elemental should now be stunable
UPDATE `creature_template` SET `mechanic_immune_mask`='2049' WHERE `entry`='12076';

-- --------------------
-- Redoing MC boss loots
-- Paladin / Shaman loots now work the blizzlike way!
-- --------------------


-- --------------------
-- Lucifron
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12118);
INSERT INTO `creature_loot_template` VALUES 
(12118, 7068, 30, 0, 1, 6, 0, 0, 0),
(12118, 7077, 30, 0, 1, 3, 0, 0, 0),
(12118, 7078, 40, 0, 1, 2, 0, 0, 0),
(12118, 16665, 100, 0, 1, 1, 0, 0, 0),
(12118, 17329, -100, 0, 1, 1, 0, 0, 0),
(12118, 20951, -5, 0, 1, 1, 0, 0, 0),
(12118, 34011, 2, 0, -34011, 1, 0, 0, 0),
(12118, 34054, 100, 0, -34054, 1, 0, 0, 0),
(12118, 34055, 100, 0, -34055, 1, 0, 0, 0),
(12118, 34012, 100, 0, -34012, 1, 0, 0, 0),
(12118, 34056, 100, 0, -34056, 1, 0, 0, 0);


-- Creating two reference loot only for Tiers
-- Horde side
DELETE FROM `reference_loot_template` WHERE `entry`='34054';
INSERT INTO `reference_loot_template` VALUES
(34054, 16800, 0, 1, 1, 1, 6, 67, 0),
(34054, 16805, 0, 1, 1, 1, 6, 67, 0),
(34054, 16829, 0, 1, 1, 1, 6, 67, 0),
(34054, 16837, 0, 1, 1, 1, 6, 67, 0),
(34054, 16863, 0, 1, 1, 1, 6, 67, 0);

-- Alliance side
DELETE FROM `reference_loot_template` WHERE `entry`='34055';
INSERT INTO `reference_loot_template` VALUES
(34055, 16800, 0, 1, 1, 1, 6, 469, 0),
(34055, 16805, 0, 1, 1, 1, 6, 469, 0),
(34055, 16829, 0, 1, 1, 1, 6, 469, 0),
(34055, 16859, 0, 1, 1, 1, 6, 469, 0),
(34055, 16863, 0, 1, 1, 1, 6, 469, 0);

-- Creating two reference loot for rare + tier
-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34012';
INSERT INTO `reference_loot_template` VALUES 
(34012, 16800, 0, 1, 1, 1, 6, 67, 0),
(34012, 16805, 0, 1, 1, 1, 6, 67, 0),
(34012, 16829, 0, 1, 1, 1, 6, 67, 0),
(34012, 16837, 0, 1, 1, 1, 6, 67, 0),
(34012, 16863, 0, 1, 1, 1, 6, 67, 0),
(34012, 17077, 0, 1, 1, 1, 6, 67, 0),
(34012, 17109, 0, 1, 1, 1, 6, 67, 0),
(34012, 18861, 0, 1, 1, 1, 6, 67, 0),
(34012, 18870, 0, 1, 1, 1, 6, 67, 0),
(34012, 18872, 0, 1, 1, 1, 6, 67, 0),
(34012, 18875, 0, 1, 1, 1, 6, 67, 0),
(34012, 18878, 0, 1, 1, 1, 6, 67, 0),
(34012, 18879, 0, 1, 1, 1, 6, 67, 0),
(34012, 19145, 0, 1, 1, 1, 6, 67, 0),
(34012, 19146, 0, 1, 1, 1, 6, 67, 0),
(34012, 19147, 0, 1, 1, 1, 6, 67, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34056';
INSERT INTO `reference_loot_template` VALUES 
(34056, 16800, 0, 1, 1, 1, 6, 469, 0),
(34056, 16805, 0, 1, 1, 1, 6, 469, 0),
(34056, 16829, 0, 1, 1, 1, 6, 469, 0),
(34056, 16859, 0, 1, 1, 1, 6, 469, 0),
(34056, 16863, 0, 1, 1, 1, 6, 469, 0),
(34056, 17077, 0, 1, 1, 1, 6, 469, 0),
(34056, 17109, 0, 1, 1, 1, 6, 469, 0),
(34056, 18861, 0, 1, 1, 1, 6, 469, 0),
(34056, 18870, 0, 1, 1, 1, 6, 469, 0),
(34056, 18872, 0, 1, 1, 1, 6, 469, 0),
(34056, 18875, 0, 1, 1, 1, 6, 469, 0),
(34056, 18878, 0, 1, 1, 1, 6, 469, 0),
(34056, 18879, 0, 1, 1, 1, 6, 469, 0),
(34056, 19145, 0, 1, 1, 1, 6, 469, 0),
(34056, 19146, 0, 1, 1, 1, 6, 469, 0),
(34056, 19147, 0, 1, 1, 1, 6, 469, 0);


-- --------------------
-- Magmadar
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=11982);
INSERT INTO `creature_loot_template` VALUES 
(11982, 20951, -5, 0, 1, 1, 0, 0, 0),
(11982, 34011, 2, 0, -34011, 1, 0, 0, 0),
(11982, 34013, 100, 0, -34013, 2, 0, 0, 0),
(11982, 34053, 100, 0, -34053, 1, 0, 0, 0),
(11982, 34057, 100, 0, -34057, 2, 0, 0, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34013';
INSERT INTO `reference_loot_template` VALUES
(34013, 16796, 0, 1, 1, 1, 6, 67, 0),
(34013, 16810, 0, 1, 1, 1, 6, 67, 0),
(34013, 16814, 0, 1, 1, 1, 6, 67, 0),
(34013, 16822, 0, 1, 1, 1, 6, 67, 0),
(34013, 16835, 0, 1, 1, 1, 6, 67, 0),
(34013, 16847, 0, 1, 1, 1, 6, 67, 0),
(34013, 16867, 0, 1, 1, 1, 6, 67, 0),
(34013, 16843, 0, 1, 1, 1, 6, 67, 0);

DELETE FROM `reference_loot_template` WHERE `entry`='34053';
INSERT INTO `reference_loot_template` VALUES
(34053, 17065, 0, 1, 1, 1, 0, 0, 0),
(34053, 17069, 0, 1, 1, 1, 0, 0, 0),
(34053, 17073, 0, 1, 1, 1, 0, 0, 0),
(34053, 18203, 0, 1, 1, 1, 0, 0, 0),
(34053, 18820, 0, 1, 1, 1, 0, 0, 0),
(34053, 18821, 0, 1, 1, 1, 0, 0, 0),
(34053, 18822, 0, 1, 1, 1, 0, 0, 0),
(34053, 18823, 0, 1, 1, 1, 0, 0, 0),
(34053, 18824, 0, 1, 1, 1, 0, 0, 0),
(34053, 18829, 0, 1, 1, 1, 0, 0, 0),
(34053, 18861, 0, 1, 1, 1, 0, 0, 0),
(34053, 19136, 0, 1, 1, 1, 0, 0, 0),
(34053, 19142, 0, 1, 1, 1, 0, 0, 0),
(34053, 19143, 0, 1, 1, 1, 0, 0, 0),
(34053, 19144, 0, 1, 1, 1, 0, 0, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34057';
INSERT INTO `reference_loot_template` VALUES
(34057, 16796, 0, 1, 1, 1, 6, 469, 0),
(34057, 16810, 0, 1, 1, 1, 6, 469, 0),
(34057, 16814, 0, 1, 1, 1, 6, 469, 0),
(34057, 16822, 0, 1, 1, 1, 6, 469, 0),
(34057, 16835, 0, 1, 1, 1, 6, 469, 0),
(34057, 16847, 0, 1, 1, 1, 6, 469, 0),
(34057, 16867, 0, 1, 1, 1, 6, 469, 0),
(34057, 16855, 0, 1, 1, 1, 6, 469, 0);


-- --------------------
-- Gehennas
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12259);
INSERT INTO `creature_loot_template` VALUES 
(12259, 7068, 30, 0, 1, 6, 0, 0, 0),
(12259, 7077, 30, 0, 1, 3, 0, 0, 0),
(12259, 7078, 40, 0, 1, 2, 0, 0, 0),
(12259, 17331, -100, 0, 1, 1, 0, 0, 0),
(12259, 20951, -5, 0, 1, 1, 0, 0, 0),
(12259, 34011, 2, 0, -34011, 1, 0, 0, 0),
(12259, 34014, 100, 0, -34014, 1, 0, 0, 0),
(12259, 34052, 100, 0, -34052, 1, 0, 0, 0),
(12259, 34059, 100, 0, -34059, 1, 0, 0, 0),
(12259, 34058, 100, 0, -34058, 1, 0, 0, 0);


-- Horde side
DELETE FROM `reference_loot_template` WHERE `entry`='34052';
INSERT INTO `reference_loot_template` VALUES
(34052, 16812, 0, 1, 1, 1, 6, 67, 0),
(34052, 16826, 0, 1, 1, 1, 6, 67, 0),
(34052, 16849, 0, 1, 1, 1, 6, 67, 0),
(34052, 16862, 0, 1, 1, 1, 6, 67, 0),
(34052, 16839, 0, 1, 1, 1, 6, 67, 0);

-- Alliance side
DELETE FROM `reference_loot_template` WHERE `entry`='34058';
INSERT INTO `reference_loot_template` VALUES
(34058, 16812, 0, 1, 1, 1, 6, 469, 0),
(34058, 16826, 0, 1, 1, 1, 6, 469, 0),
(34058, 16849, 0, 1, 1, 1, 6, 469, 0),
(34058, 16862, 0, 1, 1, 1, 6, 469, 0),
(34058, 16860, 0, 1, 1, 1, 6, 469, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34014';
INSERT INTO `reference_loot_template` VALUES 
(34014, 16812, 0, 1, 1, 1, 6, 67, 0),
(34014, 16826, 0, 1, 1, 1, 6, 67, 0),
(34014, 16849, 0, 1, 1, 1, 6, 67, 0),
(34014, 16862, 0, 1, 1, 1, 6, 67, 0),
(34014, 16839, 0, 1, 1, 1, 6, 67, 0),
(34014, 17077, 0, 1, 1, 1, 6, 67, 0),
(34014, 18861, 0, 1, 1, 1, 6, 67, 0),
(34014, 18870, 0, 1, 1, 1, 6, 67, 0),
(34014, 18872, 0, 1, 1, 1, 6, 67, 0),
(34014, 18875, 0, 1, 1, 1, 6, 67, 0),
(34014, 18878, 0, 1, 1, 1, 6, 67, 0),
(34014, 18879, 0, 1, 1, 1, 6, 67, 0),
(34014, 19145, 0, 1, 1, 1, 6, 67, 0),
(34014, 19146, 0, 1, 1, 1, 6, 67, 0),
(34014, 19147, 0, 1, 1, 1, 6, 67, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34059';
INSERT INTO `reference_loot_template` VALUES 
(34059, 16812, 0, 1, 1, 1, 6, 469, 0),
(34059, 16826, 0, 1, 1, 1, 6, 469, 0),
(34059, 16849, 0, 1, 1, 1, 6, 469, 0),
(34059, 16862, 0, 1, 1, 1, 6, 469, 0),
(34059, 16860, 0, 1, 1, 1, 6, 469, 0),
(34059, 17077, 0, 1, 1, 1, 6, 469, 0),
(34059, 18861, 0, 1, 1, 1, 6, 469, 0),
(34059, 18870, 0, 1, 1, 1, 6, 469, 0),
(34059, 18872, 0, 1, 1, 1, 6, 469, 0),
(34059, 18875, 0, 1, 1, 1, 6, 469, 0),
(34059, 18878, 0, 1, 1, 1, 6, 469, 0),
(34059, 18879, 0, 1, 1, 1, 6, 469, 0),
(34059, 19145, 0, 1, 1, 1, 6, 469, 0),
(34059, 19146, 0, 1, 1, 1, 6, 469, 0),
(34059, 19147, 0, 1, 1, 1, 6, 469, 0);


-- --------------------
-- Garr
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12057);
INSERT INTO `creature_loot_template` VALUES 
(12057, 7075, 30, 0, 1, 3, 0, 0, 0),
(12057, 7076, 40, 0, 1, 2, 0, 0, 0),
(12057, 8150, 30, 0, 1, 12, 0, 0, 0),
(12057, 17011, 14, 0, 1, 1, 0, 0, 0),
(12057, 18564, 3, 0, 1, 1, 0, 0, 0),
(12057, 20951, -5, 0, 1, 1, 0, 0, 0),
(12057, 34011, 2, 1, -34011, 1, 0, 0, 0),
(12057, 34015, 100, 0, -34015, 1, 0, 0, 0),
(12057, 34060, 100, 0, -34060, 2, 0, 0, 0),
(12057, 34016, 100, 0, -34016, 2, 0, 0, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34016';
INSERT INTO `reference_loot_template` VALUES
(34016, 16795, 0, 1, 1, 1, 6, 67, 0),
(34016, 16813, 0, 1, 1, 1, 6, 67, 0),
(34016, 16808, 0, 1, 1, 1, 6, 67, 0),
(34016, 16846, 0, 1, 1, 1, 6, 67, 0),
(34016, 16834, 0, 1, 1, 1, 6, 67, 0),
(34016, 16821, 0, 1, 1, 1, 6, 67, 0),
(34016, 16866, 0, 1, 1, 1, 6, 67, 0),
(34016, 16842, 0, 1, 1, 1, 6, 67, 0);

DELETE FROM `reference_loot_template` WHERE `entry`='34015';
INSERT INTO `reference_loot_template` VALUES
(34015, 17066, 0, 1, 1, 1, 0, 0, 0),
(34015, 17071, 0, 1, 1, 1, 0, 0, 0),
(34015, 17105, 0, 1, 1, 1, 0, 0, 0),
(34015, 18820, 0, 1, 1, 1, 0, 0, 0),
(34015, 18821, 0, 1, 1, 1, 0, 0, 0),
(34015, 18822, 0, 1, 1, 1, 0, 0, 0),
(34015, 18823, 0, 1, 1, 1, 0, 0, 0),
(34015, 18824, 0, 1, 1, 1, 0, 0, 0),
(34015, 18829, 0, 1, 1, 1, 0, 0, 0),
(34015, 18832, 0, 1, 1, 1, 0, 0, 0),
(34015, 18861, 0, 1, 1, 1, 0, 0, 0),
(34015, 19136, 0, 1, 1, 1, 0, 0, 0),
(34015, 19142, 0, 1, 1, 1, 0, 0, 0),
(34015, 19143, 0, 1, 1, 1, 0, 0, 0),
(34015, 19144, 0, 1, 1, 1, 0, 0, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34060';
INSERT INTO `reference_loot_template` VALUES
(34060, 16795, 0, 1, 1, 1, 6, 469, 0),
(34060, 16813, 0, 1, 1, 1, 6, 469, 0),
(34060, 16808, 0, 1, 1, 1, 6, 469, 0),
(34060, 16846, 0, 1, 1, 1, 6, 469, 0),
(34060, 16834, 0, 1, 1, 1, 6, 469, 0),
(34060, 16821, 0, 1, 1, 1, 6, 469, 0),
(34060, 16866, 0, 1, 1, 1, 6, 469, 0),
(34060, 16854, 0, 1, 1, 1, 6, 469, 0);

-- --------------------
-- Shazzrah
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12264);
INSERT INTO `creature_loot_template` VALUES 
(12264, 7068, 30, 0, 1, 6, 0, 0, 0),
(12264, 7077, 30, 0, 1, 3, 0, 0, 0),
(12264, 7078, 40, 0, 1, 2, 0, 0, 0),
(12264, 17332, -100, 0, 1, 1, 0, 0, 0),
(12264, 20951, -5, 0, 1, 1, 0, 0, 0),
(12264, 34011, 2, 0, -34011, 1, 0, 0, 0),
(12264, 34010, 100, 0, -34010, 1, 0, 0, 0),
(12264, 34026, 100, 0, -34026, 1, 0, 0, 0);

-- Tiers
DELETE FROM `reference_loot_template` WHERE `entry`='34010';
INSERT INTO `reference_loot_template` VALUES
(34010, 16801, 0, 1, 1, 1, 0, 0, 0),
(34010, 16803, 0, 1, 1, 1, 0, 0, 0),
(34010, 16811, 0, 1, 1, 1, 0, 0, 0),
(34010, 16824, 0, 1, 1, 1, 0, 0, 0),
(34010, 16831, 0, 1, 1, 1, 0, 0, 0),
(34010, 16852, 0, 1, 1, 1, 0, 0, 0);

-- Recipes
DELETE FROM `reference_loot_template` WHERE `entry`='34011';
INSERT INTO `reference_loot_template` VALUES
(34011, 18292, 0, 1, 1, 1, 0, 0, 0),
(34011, 21371, 0, 1, 1, 1, 0, 0, 0),
(34011, 18252, 0, 1, 1, 1, 0, 0, 0),
(34011, 18257, 0, 1, 1, 1, 0, 0, 0),
(34011, 18259, 0, 1, 1, 1, 0, 0, 0),
(34011, 18260, 0, 1, 1, 1, 0, 0, 0),
(34011, 18264, 0, 1, 1, 1, 0, 0, 0),
(34011, 18265, 0, 1, 1, 1, 0, 0, 0),
(34011, 18290, 0, 1, 1, 1, 0, 0, 0);

-- Both
DELETE FROM `reference_loot_template` WHERE `entry`='34026';
INSERT INTO `reference_loot_template` VALUES 
(34026, 16801, 0, 1, 1, 1, 0, 0, 0),
(34026, 16803, 0, 1, 1, 1, 0, 0, 0),
(34026, 16811, 0, 1, 1, 1, 0, 0, 0),
(34026, 16831, 0, 1, 1, 1, 0, 0, 0),
(34026, 16852, 0, 1, 1, 1, 0, 0, 0),
(34026, 16824, 0, 1, 1, 1, 0, 0, 0),
(34026, 17077, 0, 1, 1, 1, 0, 0, 0),
(34026, 18861, 0, 1, 1, 1, 0, 0, 0),
(34026, 18870, 0, 1, 1, 1, 0, 0, 0),
(34026, 18872, 0, 1, 1, 1, 0, 0, 0),
(34026, 18875, 0, 1, 1, 1, 0, 0, 0),
(34026, 18878, 0, 1, 1, 1, 0, 0, 0),
(34026, 18879, 0, 1, 1, 1, 0, 0, 0),
(34026, 19145, 0, 1, 1, 1, 0, 0, 0),
(34026, 19146, 0, 1, 1, 1, 0, 0, 0),
(34026, 19147, 0, 1, 1, 1, 0, 0, 0);


-- --------------------
-- Baron Geddon
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12056);
INSERT INTO `creature_loot_template` VALUES 
(12056, 4787, 40, 0, 1, 5, 0, 0, 0),
(12056, 7068, 30, 0, 1, 6, 0, 0, 0),
(12056, 7077, 30, 0, 1, 3, 0, 0, 0),
(12056, 7078, 50, 0, 1, 2, 0, 0, 0),
(12056, 17010, 14, 0, 1, 1, 0, 0, 0),
(12056, 18563, 3, 0, 1, 1, 0, 0, 0),
(12056, 20951, -5, 0, 1, 1, 0, 0, 0),
(12056, 34011, 2, 1, -34011, 1, 0, 0, 0),
(12056, 34027, 100, 0, -34027, 1, 0, 0, 0),
(12056, 34050, 100, 0, -34050, 1, 0, 0, 0),
(12056, 34061, 100, 0, -34061, 1, 0, 0, 0),
(12056, 34062, 100, 0, -34062, 1, 0, 0, 0);

-- Horde side
DELETE FROM `reference_loot_template` WHERE `entry`='34027';
INSERT INTO `reference_loot_template` VALUES
(34027, 16797, 0, 1, 1, 1, 6, 67, 0),
(34027, 16807, 0, 1, 1, 1, 6, 67, 0),
(34027, 16836, 0, 1, 1, 1, 6, 67, 0),
(34027, 16844, 0, 1, 1, 1, 6, 67, 0);

-- Alliance side
DELETE FROM `reference_loot_template` WHERE `entry`='34061';
INSERT INTO `reference_loot_template` VALUES
(34061, 16797, 0, 1, 1, 1, 6, 469, 0),
(34061, 16807, 0, 1, 1, 1, 6, 469, 0),
(34061, 16836, 0, 1, 1, 1, 6, 469, 0),
(34061, 16856, 0, 1, 1, 1, 6, 469, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34050';
INSERT INTO `reference_loot_template` VALUES 
(34050, 16797, 0, 1, 1, 1, 6, 67, 0),
(34050, 16807, 0, 1, 1, 1, 6, 67, 0),
(34050, 16836, 0, 1, 1, 1, 6, 67, 0),
(34050, 16844, 0, 1, 1, 1, 6, 67, 0),
(34050, 17110, 0, 1, 1, 1, 6, 67, 0),
(34050, 18820, 0, 1, 1, 1, 6, 67, 0),
(34050, 18821, 0, 1, 1, 1, 6, 67, 0),
(34050, 18822, 0, 1, 1, 1, 6, 67, 0),
(34050, 18823, 0, 1, 1, 1, 6, 67, 0),
(34050, 18824, 0, 1, 1, 1, 6, 67, 0),
(34050, 18829, 0, 1, 1, 1, 6, 67, 0),
(34050, 18861, 0, 1, 1, 1, 6, 67, 0),
(34050, 19136, 0, 1, 1, 1, 6, 67, 0),
(34050, 19142, 0, 1, 1, 1, 6, 67, 0),
(34050, 19143, 0, 1, 1, 1, 6, 67, 0),
(34050, 19144, 0, 1, 1, 1, 6, 67, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34062';
INSERT INTO `reference_loot_template` VALUES 
(34062, 16797, 0, 1, 1, 1, 6, 469, 0),
(34062, 16807, 0, 1, 1, 1, 6, 469, 0),
(34062, 16836, 0, 1, 1, 1, 6, 469, 0),
(34062, 16856, 0, 1, 1, 1, 6, 469, 0),
(34062, 17110, 0, 1, 1, 1, 6, 469, 0),
(34062, 18820, 0, 1, 1, 1, 6, 469, 0),
(34062, 18821, 0, 1, 1, 1, 6, 469, 0),
(34062, 18822, 0, 1, 1, 1, 6, 469, 0),
(34062, 18823, 0, 1, 1, 1, 6, 469, 0),
(34062, 18824, 0, 1, 1, 1, 6, 469, 0),
(34062, 18829, 0, 1, 1, 1, 6, 469, 0),
(34062, 18861, 0, 1, 1, 1, 6, 469, 0),
(34062, 19136, 0, 1, 1, 1, 6, 469, 0),
(34062, 19142, 0, 1, 1, 1, 6, 469, 0),
(34062, 19143, 0, 1, 1, 1, 6, 469, 0),
(34062, 19144, 0, 1, 1, 1, 6, 469, 0);


-- --------------------
-- Sulfuron Harbringer
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=12098);
INSERT INTO `creature_loot_template` VALUES 
(12098, 7068, 30, 0, 1, 6, 0, 0, 0),
(12098, 7077, 30, 0, 1, 3, 0, 0, 0),
(12098, 7078, 40, 0, 1, 2, 0, 0, 0),
(12098, 17330, -100, 0, 1, 1, 0, 0, 0),
(12098, 20951, -5, 0, 1, 1, 0, 0, 0),
(12098, 34029, 100, 0, -34029, 1, 0, 0, 0),
(12098, 34063, 100, 0, -34063, 1, 0, 0, 0);

-- Tiers
DELETE FROM `reference_loot_template` WHERE `entry`='34029';
INSERT INTO `reference_loot_template` VALUES
(34029, 16816, 0, 1, 1, 1, 0, 0, 0),
(34029, 16823, 0, 1, 1, 1, 0, 0, 0),
(34029, 16848, 0, 1, 1, 1, 0, 0, 0),
(34029, 16868, 0, 1, 1, 1, 0, 0, 0);

-- Both Tier + Rare
DELETE FROM `reference_loot_template` WHERE `entry`='34063';
INSERT INTO `reference_loot_template` VALUES
(34063, 16816, 0, 1, 1, 1, 0, 0, 0),
(34063, 16823, 0, 1, 1, 1, 0, 0, 0),
(34063, 16848, 0, 1, 1, 1, 0, 0, 0),
(34063, 16868, 0, 1, 1, 1, 0, 0, 0),
(34063, 19145, 0, 1, 1, 1, 0, 0, 0),
(34063, 18872, 0, 1, 1, 1, 0, 0, 0),
(34063, 19146, 0, 1, 1, 1, 0, 0, 0),
(34063, 18875, 0, 1, 1, 1, 0, 0, 0),
(34063, 18870, 0, 1, 1, 1, 0, 0, 0),
(34063, 18861, 0, 1, 1, 1, 0, 0, 0),
(34063, 17077, 0, 1, 1, 1, 0, 0, 0),
(34063, 17074, 0, 1, 1, 1, 0, 0, 0),
(34063, 18878, 0, 1, 1, 1, 0, 0, 0),
(34063, 18879, 0, 1, 1, 1, 0, 0, 0),
(34063, 19147, 0, 1, 1, 1, 0, 0, 0);


-- --------------------
-- Golemagg the Incinerator
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=11988);
INSERT INTO `creature_loot_template` VALUES 
(11988, 7075, 30, 0, 1, 3, 0, 0, 0),
(11988, 7076, 40, 0, 1, 2, 0, 0, 0),
(11988, 7077, 30, 0, 1, 3, 0, 0, 0),
(11988, 7078, 40, 0, 1, 2, 0, 0, 0),
(11988, 17011, 14, 0, 1, 1, 0, 0, 0),
(11988, 17203, 30, 0, 1, 1, 0, 0, 0),
(11988, 20951, -5, 0, 1, 1, 0, 0, 0),
(11988, 34011, 2, 1, -34011, 1, 0, 0, 0),
(11988, 34028, 100, 0, -34028, 1, 0, 0, 0),
(11988, 34051, 100, 0, -34051, 2, 0, 0, 0),
(11988, 34064, 100, 0, -34064, 2, 0, 0, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34051';
INSERT INTO `reference_loot_template` VALUES
(34051, 16798, 0, 1, 1, 1, 6, 67, 0),
(34051, 16815, 0, 1, 1, 1, 6, 67, 0),
(34051, 16809, 0, 1, 1, 1, 6, 67, 0),
(34051, 16820, 0, 1, 1, 1, 6, 67, 0),
(34051, 16833, 0, 1, 1, 1, 6, 67, 0),
(34051, 16845, 0, 1, 1, 1, 6, 67, 0),
(34051, 16865, 0, 1, 1, 1, 6, 67, 0),
(34051, 16841, 0, 1, 1, 1, 6, 67, 0);

DELETE FROM `reference_loot_template` WHERE `entry`='34028';
INSERT INTO `reference_loot_template` VALUES
(34028, 17072, 0, 1, 1, 1, 0, 0, 0),
(34028, 17103, 0, 1, 1, 1, 0, 0, 0),
(34028, 18820, 0, 1, 1, 1, 0, 0, 0),
(34028, 18821, 0, 1, 1, 1, 0, 0, 0),
(34028, 18822, 0, 1, 1, 1, 0, 0, 0),
(34028, 18823, 0, 1, 1, 1, 0, 0, 0),
(34028, 18824, 0, 1, 1, 1, 0, 0, 0),
(34028, 18829, 0, 1, 1, 1, 0, 0, 0),
(34028, 18842, 0, 1, 1, 1, 0, 0, 0),
(34028, 18861, 0, 1, 1, 1, 0, 0, 0),
(34028, 19136, 0, 1, 1, 1, 0, 0, 0),
(34028, 19142, 0, 1, 1, 1, 0, 0, 0),
(34028, 19143, 0, 1, 1, 1, 0, 0, 0),
(34028, 19144, 0, 1, 1, 1, 0, 0, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34064';
INSERT INTO `reference_loot_template` VALUES
(34064, 16798, 0, 1, 1, 1, 6, 469, 0),
(34064, 16815, 0, 1, 1, 1, 6, 469, 0),
(34064, 16809, 0, 1, 1, 1, 6, 469, 0),
(34064, 16820, 0, 1, 1, 1, 6, 469, 0),
(34064, 16833, 0, 1, 1, 1, 6, 469, 0),
(34064, 16845, 0, 1, 1, 1, 6, 469, 0),
(34064, 16865, 0, 1, 1, 1, 6, 469, 0),
(34064, 16853, 0, 1, 1, 1, 6, 469, 0);


-- --------------------
-- Ragnaros
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=11502);
INSERT INTO `creature_loot_template` VALUES 
(11502, 7078, 40, 0, 1, 9, 0, 0, 0),
(11502, 17204, 3, 0, 1, 1, 0, 0, 0),
(11502, 19017, -100, 0, 1, 1, 0, 0, 0),
(11502, 20951, -5, 0, 1, 1, 0, 0, 0),
(11502, 21110, -100, 0, 1, 1, 0, 0, 0),
(11502, 34065, 100, 0, -34065, 2, 0, 0, 0),
(11502, 34002, 100, 0, -34002, 2, 0, 0, 0),
(11502, 34030, 100, 0, -34030, 2, 0, 0, 0),
(11502, 34031, 100, 0, -34031, 2, 0, 0, 0);

-- more work on ragnaros loots
-- changing refLootID for rareEpics
DELETE FROM `reference_loot_template` WHERE `entry`='34065';
INSERT INTO `reference_loot_template` VALUES
(34065, 17063, 0, 1, 1, 1, 0, 0, 0),
(34065, 17076, 0, 1, 1, 1, 0, 0, 0),
(34065, 17082, 0, 1, 1, 1, 0, 0, 0),
(34065, 17102, 0, 1, 1, 1, 0, 0, 0),
(34065, 17104, 0, 1, 1, 1, 0, 0, 0),
(34065, 17106, 0, 1, 1, 1, 0, 0, 0),
(34065, 17107, 0, 1, 1, 1, 0, 0, 0),
(34065, 18814, 0, 1, 1, 1, 0, 0, 0),
(34065, 18815, 0, 1, 1, 1, 0, 0, 0),
(34065, 18816, 0, 1, 1, 1, 0, 0, 0),
(34065, 18817, 0, 1, 1, 1, 0, 0, 0),
(34065, 19137, 0, 1, 1, 1, 0, 0, 0),
(34065, 19138, 0, 1, 1, 1, 0, 0, 0);

-- Fix for linked WorldBosses loot
DELETE FROM `reference_loot_template` WHERE `entry`='34002';
INSERT INTO `reference_loot_template` VALUES
(34002, 1203, 0, 1, 1, 1, 0, 0, 0),
(34002, 1973, 0, 1, 1, 1, 0, 0, 0),
(34002, 2564, 0, 1, 1, 1, 0, 0, 0),
(34002, 4696, 0, 1, 1, 1, 0, 0, 0),
(34002, 5266, 0, 1, 1, 1, 0, 0, 0),
(34002, 5267, 0, 1, 1, 1, 0, 0, 0),
(34002, 6622, 0, 1, 1, 1, 0, 0, 0),
(34002, 7734, 0, 1, 1, 1, 0, 0, 0),
(34002, 7976, 0, 1, 1, 1, 0, 0, 0),
(34002, 7991, 0, 1, 1, 1, 0, 0, 0),
(34002, 8028, 0, 1, 1, 1, 0, 0, 0),
(34002, 9402, 0, 1, 1, 1, 0, 0, 0),
(34002, 10605, 0, 1, 1, 1, 0, 0, 0),
(34002, 10608, 0, 1, 1, 1, 0, 0, 0),
(34002, 11302, 0, 1, 1, 1, 0, 0, 0),
(34002, 12698, 0, 1, 1, 1, 0, 0, 0),
(34002, 12711, 0, 1, 1, 1, 0, 0, 0),
(34002, 12717, 0, 1, 1, 1, 0, 0, 0),
(34002, 12720, 0, 1, 1, 1, 0, 0, 0),
(34002, 12728, 0, 1, 1, 1, 0, 0, 0),
(34002, 13000, 0, 1, 1, 1, 0, 0, 0),
(34002, 13001, 0, 1, 1, 1, 0, 0, 0),
(34002, 13002, 0, 1, 1, 1, 0, 0, 0),
(34002, 13003, 0, 1, 1, 1, 0, 0, 0),
(34002, 13004, 0, 1, 1, 1, 0, 0, 0),
(34002, 13006, 0, 1, 1, 1, 0, 0, 0),
(34002, 13007, 0, 1, 1, 1, 0, 0, 0),
(34002, 13008, 0, 1, 1, 1, 0, 0, 0),
(34002, 13009, 0, 1, 1, 1, 0, 0, 0),
(34002, 13013, 0, 1, 1, 1, 0, 0, 0),
(34002, 13015, 0, 1, 1, 1, 0, 0, 0),
(34002, 13030, 0, 1, 1, 1, 0, 0, 0),
(34002, 13036, 0, 1, 1, 1, 0, 0, 0),
(34002, 13040, 0, 1, 1, 1, 0, 0, 0),
(34002, 13047, 0, 1, 1, 1, 0, 0, 0),
(34002, 13053, 0, 1, 1, 1, 0, 0, 0),
(34002, 13060, 0, 1, 1, 1, 0, 0, 0),
(34002, 13066, 0, 1, 1, 1, 0, 0, 0),
(34002, 13067, 0, 1, 1, 1, 0, 0, 0),
(34002, 13070, 0, 1, 1, 1, 0, 0, 0),
(34002, 13072, 0, 1, 1, 1, 0, 0, 0),
(34002, 13073, 0, 1, 1, 1, 0, 0, 0),
(34002, 13075, 0, 1, 1, 1, 0, 0, 0),
(34002, 13077, 0, 1, 1, 1, 0, 0, 0),
(34002, 13083, 0, 1, 1, 1, 0, 0, 0),
(34002, 13085, 0, 1, 1, 1, 0, 0, 0),
(34002, 13091, 0, 1, 1, 1, 0, 0, 0),
(34002, 13096, 0, 1, 1, 1, 0, 0, 0),
(34002, 13107, 0, 1, 1, 1, 0, 0, 0),
(34002, 13111, 0, 1, 1, 1, 0, 0, 0),
(34002, 13113, 0, 1, 1, 1, 0, 0, 0),
(34002, 13116, 0, 1, 1, 1, 0, 0, 0),
(34002, 13118, 0, 1, 1, 1, 0, 0, 0),
(34002, 13120, 0, 1, 1, 1, 0, 0, 0),
(34002, 13123, 0, 1, 1, 1, 0, 0, 0),
(34002, 13125, 0, 1, 1, 1, 0, 0, 0),
(34002, 13126, 0, 1, 1, 1, 0, 0, 0),
(34002, 13130, 0, 1, 1, 1, 0, 0, 0),
(34002, 13133, 0, 1, 1, 1, 0, 0, 0),
(34002, 13135, 0, 1, 1, 1, 0, 0, 0),
(34002, 13144, 0, 1, 1, 1, 0, 0, 0),
(34002, 13146, 0, 1, 1, 1, 0, 0, 0),
(34002, 14501, 0, 1, 1, 1, 0, 0, 0),
(34002, 14509, 0, 1, 1, 1, 0, 0, 0),
(34002, 14511, 0, 1, 1, 1, 0, 0, 0),
(34002, 17413, 0, 1, 1, 1, 0, 0, 0),
(34002, 17414, 0, 1, 1, 1, 0, 0, 0),
(34002, 17682, 0, 1, 1, 1, 0, 0, 0),
(34002, 17683, 0, 1, 1, 1, 0, 0, 0),
(34002, 18600, 0, 1, 1, 1, 0, 0, 0),
(34002, 22388, 0, 1, 1, 1, 0, 0, 0),
(34002, 22389, 0, 1, 1, 1, 0, 0, 0),
(34002, 22390, 0, 1, 1, 1, 0, 0, 0),
(34002, 22393, 0, 1, 1, 1, 0, 0, 0),
(34002, 22890, 0, 1, 1, 1, 0, 0, 0),
(34002, 22891, 0, 1, 1, 1, 0, 0, 0),
(34002, 24026, 0, 1, 1, 1, 0, 0, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34030';
INSERT INTO `reference_loot_template` VALUES 
(34030, 16915, 0, 1, 1, 1, 6, 67, 0),
(34030, 16922, 0, 1, 1, 1, 6, 67, 0),
(34030, 16930, 0, 1, 1, 1, 6, 67, 0),
(34030, 16909, 0, 1, 1, 1, 6, 67, 0),
(34030, 16901, 0, 1, 1, 1, 6, 67, 0),
(34030, 16938, 0, 1, 1, 1, 6, 67, 0),
(34030, 16962, 0, 1, 1, 1, 6, 67, 0),
(34030, 16946, 0, 1, 1, 1, 6, 67, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34031';
INSERT INTO `reference_loot_template` VALUES 
(34031, 16915, 0, 1, 1, 1, 6, 469, 0),
(34031, 16922, 0, 1, 1, 1, 6, 469, 0),
(34031, 16930, 0, 1, 1, 1, 6, 469, 0),
(34031, 16909, 0, 1, 1, 1, 6, 469, 0),
(34031, 16901, 0, 1, 1, 1, 6, 469, 0),
(34031, 16938, 0, 1, 1, 1, 6, 469, 0),
(34031, 16962, 0, 1, 1, 1, 6, 469, 0),
(34031, 16954, 0, 1, 1, 1, 6, 469, 0);

-- Healable/buffable faction for NPC of quest The Triage (default 85) --
UPDATE `creature_template` SET `faction_A`=11, `faction_H`=11 WHERE `entry` IN (12936, 12937, 12938); -- alliance
UPDATE `creature_template` SET `faction_A`=85, `faction_H`=85 WHERE `entry` IN (12923, 12924, 12925); -- horde`

/* REV 765 */
-- This quest should not have LimitTime, alliance version is ok
UPDATE `quest_template` SET `LimitTime`=0 WHERE `entry`=9032;

-- Fixes some of the DB errors at startup
-- most of the NPC's had wrong NPCflags according to the gossip_menu_option table
UPDATE `creature_template` SET `npcflag`='16391' WHERE `entry` IN ('3314', '1243');
UPDATE `creature_template` SET `npcflag`='19' WHERE `entry` IN ('3690', '7953');
UPDATE `creature_template` SET `npcflag`='1' WHERE `entry` IN ('11491');
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry` IN ('14358', '3230');
UPDATE `creature_template` SET `npcflag`='7' WHERE `entry` IN ('14847', '15351', '15350');

-- Paladin trainer did not exist in preTBC
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='2343' AND `option_text`="Paladin");

-- Same with Mage trainer : added in patch 2.2.0
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='2343' AND `option_text`="Mage");

-- Update the rest to correct IDs
UPDATE `gossip_menu_option` SET `id`='2' WHERE (`menu_id`='2343' AND `option_text`='Priest');
UPDATE `gossip_menu_option` SET `id`='3' WHERE (`menu_id`='2343' AND `option_text`='Rogue');
UPDATE `gossip_menu_option` SET `id`='4' WHERE (`menu_id`='2343' AND `option_text`='Warrior');

-- Nazgrel should be left to Thrall
DELETE FROM `creature` WHERE (`guid`='4801' AND `id`='3230');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(4801, 3230, 1, '1872', '0', 1906.6803, -4133.5703, 40.9176, 5.291975, '7200', '0', 0, '4079', '0', '0', 0);

-- Nazgrel gossip, custom redone from TBC to preTBC
-- counldn't find his old gossip so made a custom like ^^
UPDATE `npc_text` SET `text0_0`='So you''ve recently arrived to Orgrimmar, eh? You''d best steel yourself, $c - there are perils in these lands unlike anything the Horde has faced before. I am Nazgrel - right hand to our mighty warchief, Thrall. He honored me with the task of safeguarding this brave fortress and - by all the spirits - I shall!' WHERE `ID`='9995';
UPDATE `npc_text` SET `text0_1`='Once our warchief saw that Orgrimmar had been finished, he immediately gathered his advisors to plan further advancements. Though a few of his councilors have their doubts, Thrall holds out the hope that we might write our own destiny into the history of our people.' WHERE `ID`='10003';
UPDATE `npc_text` SET `text0_1`='The Horde has risked much to venture wider out in to Azeroth - resources, manpower - even the tactical defense of our lands is at stake. Despite all else, Thrall believes in the promise of this ravaged land. There is a strange light in his eyes these days - as if he senses some stirring revelation the rest of us do not.$B$BStill, he is my warchief and my blood-brother. I would follow him through the gates of the abyss itself.' WHERE `ID`='10004';
UPDATE `gossip_menu_option` SET `option_text`='Tell me more of the Horde''s mission in Azeroth, Nazgrel.' WHERE (`menu_id`='8085' AND `id`='0');

-- relocation kroshius TEMP gameobject at Kroshius npc position --
UPDATE `gameobject` SET `position_x`='5780.33', `position_y`='-964.84', `position_z`='412.69' WHERE `guid`=99894;
-- remove native passive flag of Obsidion npc --
UPDATE `creature_template` SET `flags_extra` = '0' WHERE `creature_template`.`entry` =8400;
-- hostile faction (54) for Lathoric the Black and Obsidion --
UPDATE `creature_template` SET `faction_A`='54', `faction_H`='54' WHERE `entry` IN (8391, 8400);

/* REV 774 by Traz */
-- Warchief's Blessing and Spirit of Zandalar buffs added
-- Linking the complete script
UPDATE `quest_template` SET `CompleteScript` = '4974' WHERE `entry` = '4974';
UPDATE `quest_template` SET `CompleteScript` = '8183' WHERE `entry` = '8183';

-- Activate scripts using Complete quest
DELETE FROM `quest_end_scripts` WHERE `id` IN ('4974', '8183');  
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4974,0,15,16609,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8183,0,15,24425,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Correct spell coefs in spell_bonus_data table
-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry` IN (116, 122, 120, 10, 1449, 7268, 7269, 7270, 8419, 8418, 10273, 10274, 25346, 2136, 133, 11366, 2948, 11113, 2120, 11426, 1463);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
(116, 0.8143, 0, 0, 'Mage - Frost Bolt'),
(122, 0.0286, 0, 0, 'Mage - Frost Nova'),
(120, 0.1279, 0, 0, 'Mage - Cone of Cold'),
(10, 0, 0.0417, 0, 'Mage - Blizzard'),
(1449, 0.1429, 0, 0, 'Mage - Arcane Explosion'),
(7268, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 1'),
(7269, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 2'),
(7270, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 3'),
(8419, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 4'),
(8418, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 5'),
(10273, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 6'),
(10274, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 7'),
(25346, 0.25, 0, 0, 'Mage - Arcane Missiles Rank 8'),
(2136,  0.4286, 0, 0, 'Mage - Fire Blast'),
(133, 1, 0, 0, 'Mage - Fireball'),
(11366, 1, 0.1786, 0, 'Mage - Pyroblast'),
(2948, 0.4286, 0, 0, 'Mage - Scorch'),
(11113, 0.1279, 0, 0, 'Mage - Blast Wave'),
(2120, 0.179, 0.0204, 0, 'Mage - Flamestrike'),
(11426, 0.1, 0, 0, 'Mage - Ice Barrier'),
(1463, 0, 0, 0, 'Mage - Manashield');

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN (5185, 740, 774, 8936, 2912, 5176, 5570, 339, 8921, 16914);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
(5185, 1, 0, 0, 'Druid - Healing Touch'),
(740, 0, 0.0667, 0, 'Druid - Tranquility'),
(774, 0, 0.2, 0, 'Druid - Rejuvenation'),
(8936, 0.325, 0.0733, 0, 'Druid - Regrowth'),
(2912, 1, 0, 0, 'Druid - Starfire'),
(5176, 0.5714, 0, 0, 'Druid - Wrath'),
(5570, 0, 0.1583, 0, 'Druid - Insect Swarm'),
(339, 0, 0.0357, 0, 'Druid - Entangling Roots'),
(8921, 0.2, 0.0357, 0, 'Druid - Moonfire'),
(16914, 0, 0.03, 0, 'Druid - Hurricane');

-- Warlock
DELETE FROM `spell_bonus_data` WHERE `entry` IN (686, 6353, 5676, 348, 3110, 7814, 17962, 5740, 1949, 5857, 11681, 11682, 172, 980, 603, 1120, 18265, 689, 6789, 17877);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
(686, 0.8571, 0, 0, 'Warlock - Shadow Bolt'),
(6353, 1, 0, 0, 'Warlock - Soul Fire'),
(5676, 0.4286, 0,0, 'Warlock - Searing Pain'),
(348, 0.198, 0.1306, 0, 'Warlock - Immolate'),
(3110, 0, 0, 0,  'Warlock - Imp - Firebolt'),
(7814, 0, 0, 0, 'Warlock - Succubus - Lash of Pain'),
(17962, 0.4286, 0, 0, 'Warlock - Conflagrate'),
(5740, 0, 0.0833, 0, 'Warlock - Rain of Fire'),
(1949, 0, 0.0210, 0, 'Warlock - Hellfire'),
(5857, 0.0210, 0, 0, 'Warlock - Hellfire Effect on Enemy Rank 1'),
(11681, 0.0210, 0, 0, 'Warlock - Hellfire Effect on Enemy Rank 2'),
(11682, 0.0210, 0, 0, 'Warlock - Hellfire Effect on Enemy Rank 3'),
(172, 0, 0.1667, 0, 'Warlock - Corruption'),
(980, 0, 0.0833, 0, 'Warlock - Curse of Agony'),
(603, 0, 1, 0, 'Warlock - Curse of Doom'),
(1120, 0, 0.5, 0, 'Warlock - Drain Soul'),
(18265, 0, 0.05, 0, 'Warlock - Siphon Life'),
(689, 0, 0.1, 0, 'Warlock - Drain Life'),
(6789, 0.2143, 0, 0, 'Warlock - Death Coil'),
(17877, 0.4286, 0, 0, 'Warlock - Shadowburn');

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` IN (596, 589, 15407, 8092, 585, 14914, 15237, 23455, 23458, 23459, 27803, 27804, 27805, 17, 13908, 2050, 2054, 2061, 2060, 2944, 139, 10797);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
(596, 0.2857, 0, 0, 'Priest - Prayer of Healing'),
(589, 0, 0.1667, 0, 'Priest - Shadow Word: Pain'),
(15407, 0, 0.1523, 0, 'Priest - Mind Flay'),
(8092, 0.4286, 0,  0, 'Priest - Mind Blast'),
(585, 0.7143, 0, 0, 'Priest - Smite'),
(14914, 0.75, 0.05, 0, 'Priest - Holy Fire'),
(15237, 0.1143, 0, 0, 'Priest - Holy Nova Damage'),
(23455, 0.1143, 0, 0, 'Priest - Holy Nova Heal'),
(17, 0.1, 0, 0, 'Priest - Power Word: Shield'),
(13908, 0.4286, 0, 0, 'Priest - Desperate Prayer'),
(2050, 0.7171, 0, 0, 'Priest - Lesser Heal'),
(2054, 0.8571, 0, 0, 'Priest - Heal'),
(2061, 0.4286, 0, 0, 'Priest - Flash Heal'),
(2060, 0.8571, 0, 0, 'Priest - Greater Heal'),
(2944, 0, 0.0625, 0, 'Priest - Devouring Plague'),
(139, 0, 0.2, 0, 'Priest - Renew'),
(10797, 0, 0.1667, 0, 'Priest - Starshards');

-- one add of Majordomo relocation (warrior, full left side) --
-- possible fix for aggroing majordomo full party --
UPDATE `creature` SET `position_x` = '735.15',`position_y` = '-1157.23',`position_z` = '-118.96',`orientation` = '4.72' WHERE `guid`=2679818 AND `id`=11664;

-- Fixed spellcharges_1 for item "Eye of Sulfuras" (entry 17204) --
UPDATE `item_template` SET `spellcharges_1`=0 WHERE `entry`=17204;

-- Adding Moonwell in darna (for mooncloth)
DELETE FROM `gameobject` WHERE `id`=177278;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(32012, 177278, 1, 157.035, 1190.92, 165.464, 2.06821, 0, 0, 0.859406, 0.511293, 900, 100, 1),
(47990, 177278, 1, 2904.41, -1398.96, 206.901, 1.56207, 0, 0, 0.704015, 0.710185, 900, 100, 1),
(47991, 177278, 1, 2368.05, -1720.32, 152.545, 1.09956, 0, 0, 0.522498, 0.85264, 900, 100, 1),
(47992, 177278, 1, 1870.72, -1771.13, 61.5062, 0.994838, 0, 0, 0.477159, 0.878817, 900, 100, 1),
(49205, 177278, 1, 7984.11, -2504.02, 486.661, 2.53073, 0, 0, 0.953717, 0.300706, 900, 100, 1),
(49718, 177278, 1, 10675.4, 1857.59, 1323.61, 2.96706, 0, 0, 0.996195, 0.087156, 900, 100, 1),
(49719, 177278, 1, 10709.1, 762.556, 1320.65, 2.92343, 0, 0, 0.994056, 0.108867, 900, 100, 1),
(49721, 177278, 1, 9859.64, 588.463, 1300.1, 1.22173, 0, 0, 0.573576, 0.819152, 900, 100, 1),
(49722, 177278, 1, 9728.97, 961.72, 1293.25, -0.235619, 0, 0, -0.117537, 0.993068, 900, 100, 1),
(632437, 177278, 1, 9630.89, 2520.89, 1331.58, 3.22902, 0, 0, 0.999045, -0.0436984, 900, 100, 1);


-- Targorr the Dread had wrong respawntime
UPDATE `creature` SET `spawntimesecs`='43200' WHERE `guid`='84027';

-- Shouldn't mind control people
DELETE FROM `creature_ai_scripts` WHERE `id`='184011';

-- Shouldn't be 100% drop chance
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.02' WHERE (`item`='9249' AND `entry`='7858');

-- Fixes the loot from Captain's chest
UPDATE `gameobject_template` SET `data1`='8388' WHERE `entry`='142184';
DELETE FROM `gameobject_loot_template` WHERE (`entry`=8388);
INSERT INTO `gameobject_loot_template` VALUES 
(8388, 0, 100, 1, -8387, 2, 0, 0, 0),
(8388, 9355, 32.9, 0, 1, 1, 0, 0, 0),
(8388, 9356, 32.9, 0, 1, 1, 0, 0, 0),
(8388, 9357, 31.2, 0, 1, 1, 0, 0, 0),
(8388, 9358, 33.3, 0, 1, 1, 0, 0, 0);

DELETE FROM `reference_loot_template` WHERE (`entry`=8387);
INSERT INTO `reference_loot_template` VALUES 
(8387, 866, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 1613, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 1625, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 1640, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 3187, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 3395, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 3430, 2.1, 1, 1, 1, 0, 0, 0),
(8387, 3864, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 3869, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 3873, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 3914, 3.4, 1, 1, 1, 0, 0, 0),
(8387, 4045, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4047, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4061, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4063, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4070, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 4080, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4087, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4734, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 4735, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 4736, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 4737, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 4738, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 5215, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 5216, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 6411, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 6424, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 6425, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 6431, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 6432, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 6433, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 7084, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7468, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7469, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 7470, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7473, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7477, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7478, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7484, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7485, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 7486, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7487, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 7488, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 7491, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7494, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 7495, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7496, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7522, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7524, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7533, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7545, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 7555, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7556, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7610, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 7909, 3.8, 1, 1, 1, 0, 0, 0),
(8387, 7910, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 7976, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 7992, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 8029, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 8137, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 8139, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 8144, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 8157, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 8194, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 8196, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 8386, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 8389, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9285, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9287, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9288, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9289, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9290, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9291, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9293, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9295, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9298, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9359, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9878, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9883, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 9884, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9894, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9897, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 9899, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9902, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 9903, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9904, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9906, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9909, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9912, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9915, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9917, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9918, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9919, 2.1, 1, 1, 1, 0, 0, 0),
(8387, 9920, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9921, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9925, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9926, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9928, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9929, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9930, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9931, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9933, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9959, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9966, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 9968, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9971, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 9972, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 9973, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 10089, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 10302, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 10604, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 11202, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 11208, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 11225, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 11973, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 11987, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 11998, 1.7, 1, 1, 1, 0, 0, 0),
(8387, 12011, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 12012, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 12022, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 12023, 0.8, 1, 1, 1, 0, 0, 0),
(8387, 12031, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 15215, 1.3, 1, 1, 1, 0, 0, 0),
(8387, 15251, 0.4, 1, 1, 1, 0, 0, 0),
(8387, 15287, 0.4, 1, 1, 1, 0, 0, 0);

-- Redo sub-names to Journeyman
UPDATE `creature_template` SET `subname`='Journeyman Tailor' WHERE `entry` IN ('1103', '1300', '1703', '2855', '3484', '3523', '4193', '11048', '11050', '11051');
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker' WHERE `entry` IN ('223', '1466', '1632', '3008', '3069', '3549', '3605', '5784' ,'5811', '11083', '11096');
UPDATE `creature_template` SET `subname`='Journeyman Engineer' WHERE `entry` IN ('1702', '2857', '3290', '3494', '4586', '10993', '11025', '11026', '11028', '11037');
UPDATE `creature_template` SET `subname`='Journeyman Enchanter' WHERE `entry` IN ('3606', '5695', '11065', '11066', '11067', '11068', '11070', '11071');
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith' WHERE `entry` IN ('514', '957', '1241', '3174', '3557', '4605', '6299', '10266', '10277', '10278');
UPDATE `creature_template` SET `subname`='Journeyman Alchemist' WHERE `entry` IN ('1215', '1246', '1470', '2132', '3184', '3603', '5500', '11041', '11044', '11046', '11047');

-- Redo sub-names to Expert
UPDATE `creature_template` SET `subname`='Expert Tailor' WHERE `entry` IN ('2627', '3004', '3363', '3704', '4159', '5153', '5567', '11049');
UPDATE `creature_template` SET `subname`='Expert Leatherworker' WHERE `entry` IN ('1385', '3365', '3703', '3967', '4588', '5127', '5564', '11081', '11084', '8153');
UPDATE `creature_template` SET `subname`='Expert Engineer' WHERE `entry` IN ('1676', '3412', '5518', '11029', '11031');
UPDATE `creature_template` SET `subname`='Expert Enchanter' WHERE `entry` IN ('1317', '3011', '3345', '4213', '4616', '5157', '7949');
UPDATE `creature_template` SET `subname`='Expert Blacksmith' WHERE `entry` IN ('1383', '2998', '3136', '3478', '4596', '5511', '10276');
UPDATE `creature_template` SET `subname`='Expert Alchemist' WHERE `entry` IN ('2391', '2837', '3009', '3347', '3964', '4609', '4900', '5177', '5499', '11042');

-- Redo sub-names to Artisan
UPDATE `creature_template` SET `subname`='Artisan Tailor' WHERE `entry` IN ('1346', '4576');
UPDATE `creature_template` SET `subname`='Artisan Leatherworker' WHERE `entry` IN ('3007', '4212');
UPDATE `creature_template` SET `subname`='Artisan Engineer' WHERE `entry` IN ('5174', '11017');
UPDATE `creature_template` SET `subname`='Artisan Enchanter' WHERE `entry` IN ('11072', '11074');
UPDATE `creature_template` SET `subname`='Artisan Blacksmith' WHERE `entry` IN ('3355', '4258');
UPDATE `creature_template` SET `subname`='Artisan Alchemist' WHERE `entry` IN ('4160', '4611');

-- 2x Wanted Posters should deal out Wanted: Hogger
DELETE FROM `gameobject_questrelation` WHERE `quest` = 176;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (68, 176);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (156561, 176);

-- Fozruk and his three buddies should patrol
DELETE FROM `creature_movement` WHERE `id` IN (14514, 14515, 14516, 14517);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(14514, 1, -1037.21, -3307.37, 53.5088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 2, -1048.82, -3288.66, 48.6723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 3, -1073.23, -3253.1, 37.0307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 4, -1094.85, -3222.42, 42.1703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 5, -1118.37, -3208.69, 42.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 6, -1123.45, -3195.33, 43.5411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 7, -1170.9, -3154.64, 40.2437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 8, -1136.86, -3158.37, 45.2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 9, -1149.08, -3137.2, 43.0738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 10, -1162.23, -3106.34, 45.4955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 11, -1174.66, -3081.08, 43.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 12, -1197.75, -3044.21, 41.4495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 13, -1220.09, -3014.79, 45.2755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 14, -1237.33, -2985.51, 43.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 15, -1277.17, -2965.47, 36.0117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 16, -1277.83, -2923.27, 38.1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 17, -1270.58, -2875.39, 46.0177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 18, -1279.56, -2837.33, 47.8551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 19, -1300.01, -2799.75, 53.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 20, -1332.31, -2766.11, 57.9763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 21, -1369, -2755.86, 58.0465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 22, -1397.65, -2753.82, 46.8239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 23, -1427.63, -2749.06, 36.4506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 24, -1453.37, -2732.16, 35.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 25, -1484.42, -2724.33, 32.4738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 26, -1513.38, -2718.78, 34.7095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 27, -1537.44, -2698.84, 37.693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 28, -1562.95, -2672.3, 36.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 29, -1583.17, -2626.89, 47.7523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 30, -1617.02, -2604.77, 45.5596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 31, -1615.62, -2553.93, 52.0574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 32, -1607.86, -2521.7, 54.5609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 33, -1586.79, -2490.82, 58.9497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 34, -1567.6, -2457.82, 69.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 35, -1553.81, -2408.76, 79.1364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 36, -1545.95, -2375.38, 76.3069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 37, -1537.81, -2335.75, 64.2025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 38, -1529.6, -2314.8, 56.6238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 39, -1484.56, -2291.47, 50.5475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 40, -1478.75, -2262.76, 44.4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 41, -1480, -2226.7, 26.3076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 42, -1469.79, -2166.86, 18.7986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 43, -1466.5, -2118.99, 18.2136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 44, -1468.44, -2075.35, 21.5552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 45, -1471.53, -2023.79, 27.3488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 46, -1466.11, -1987.79, 34.0753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 47, -1444.81, -1958.99, 44.0863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 48, -1426.67, -1954.06, 45.1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 49, -1383.74, -1946.21, 52.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 50, -1359.07, -1943.37, 58.4543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 51, -1322.98, -1840.85, 63.4091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 52, -1287.63, -1802.4, 66.8075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 53, -1229.54, -1767.59, 62.9898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 54, -1168.07, -1718.18, 53.6048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 55, -1172.52, -1725.8, 54.2722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 56, -1145.35, -1716.33, 50.3387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 57, -1116.73, -1707.05, 45.1749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 58, -1085.79, -1699.26, 40.4028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 59, -1058.13, -1693.62, 38.2212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 60, -1019.35, -1692.31, 37.0114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 61, -992.015, -1701.93, 36.736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 62, -979.55, -1707.77, 39.4038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 63, -966.88, -1714.73, 44.3679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 64, -939.484, -1728.29, 47.4089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 65, -923.314, -1738.7, 51.3079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 66, -894.044, -1752.16, 45.9302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 67, -870.981, -1747.47, 45.8708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 68, -866.382, -1768.73, 41.5854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 69, -858.822, -1788.21, 39.7526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 70, -852.519, -1786.92, 39.8992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 71, -850.24, -1825.77, 43.8158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 72, -839.333, -1833.48, 46.1189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 73, -818.414, -1861.71, 51.0462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 74, -828.701, -1878.64, 50.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 75, -844.305, -1903.4, 50.1699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 76, -875.649, -1934.77, 51.9587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 77, -899.781, -1939.61, 53.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 78, -934.156, -2010.29, 50.5569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 79, -937.234, -2041.93, 49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 80, -934.608, -2078.91, 49.1065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 81, -913.07, -2099.95, 47.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 82, -876.733, -2124, 44.7319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 83, -852.214, -2146.3, 47.1362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 84, -830.645, -2161.83, 45.9767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 85, -822.685, -2180.52, 45.638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 86, -813.684, -2205.8, 43.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 87, -808.31, -2236.27, 49.9925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 88, -813.901, -2264.01, 53.9196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 89, -826.329, -2281.27, 53.734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 90, -834.167, -2303.35, 54.6962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 91, -844.476, -2329.6, 58.4594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 92, -853.193, -2349.09, 58.397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 93, -863.051, -2374.93, 58.9085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 94, -881.701, -2393.32, 56.1658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 95, -901.778, -2412.07, 55.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 96, -917.241, -2442.9, 53.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 97, -935.352, -2463.57, 55.0377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 98, -947.759, -2484.64, 58.1722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 99, -953.293, -2504.37, 59.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 100, -956.382, -2519.4, 61.6465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 101, -960.349, -2544.8, 61.7079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 102, -970.66, -2579.93, 62.353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 103, -979.323, -2612.3, 59.8321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 104, -988.632, -2627.97, 61.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 105, -1007.72, -2641.81, 56.3424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 106, -1023.12, -2661.41, 53.9583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 107, -1024.6, -2679.12, 51.1048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 108, -1027.14, -2711.01, 46.9469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 109, -1026.26, -2739.73, 44.2671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 110, -1001.41, -2781.31, 52.3579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 111, -979.154, -2802.21, 59.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 112, -961.908, -2828.55, 59.7389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 113, -957.571, -2852.5, 62.5084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 114, -955.55, -2880.98, 64.5275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 115, -953.45, -2900.92, 66.8111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 116, -948.289, -2927.21, 69.3605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 117, -956.577, -2941.33, 70.0848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 118, -971.588, -2961.33, 63.6569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 119, -1000.28, -3001.66, 58.8591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 120, -998.923, -3035.69, 54.8486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 121, -976.291, -3053.86, 57.4746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 122, -966.778, -3062.54, 49.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 123, -953.437, -3077.22, 50.6209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 124, -942.237, -3103.61, 48.1587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 125, -959.184, -3119.86, 49.5978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 126, -981.925, -3148.81, 45.7158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 127, -995.525, -3167.68, 44.1623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 128, -1007.99, -3200.59, 46.4547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 129, -1019.88, -3232.19, 44.0253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 130, -1031.13, -3261.18, 43.2576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 131, -1039.76, -3280.35, 46.3643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14514, 132, -1052.61, -3295.11, 51.2955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 1, -1037.21, -3307.37, 53.5088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 2, -1048.82, -3288.66, 48.6723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 3, -1073.23, -3253.1, 37.0307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 4, -1094.85, -3222.42, 42.1703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 5, -1118.37, -3208.69, 42.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 6, -1123.45, -3195.33, 43.5411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 7, -1170.9, -3154.64, 40.2437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 8, -1136.86, -3158.37, 45.2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 9, -1149.08, -3137.2, 43.0738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 10, -1162.23, -3106.34, 45.4955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 11, -1174.66, -3081.08, 43.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 12, -1197.75, -3044.21, 41.4495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 13, -1220.09, -3014.79, 45.2755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 14, -1237.33, -2985.51, 43.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 15, -1277.17, -2965.47, 36.0117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 16, -1277.83, -2923.27, 38.1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 17, -1270.58, -2875.39, 46.0177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 18, -1279.56, -2837.33, 47.8551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 19, -1300.01, -2799.75, 53.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 20, -1332.31, -2766.11, 57.9763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 21, -1369, -2755.86, 58.0465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 22, -1397.65, -2753.82, 46.8239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 23, -1427.63, -2749.06, 36.4506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 24, -1453.37, -2732.16, 35.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 25, -1484.42, -2724.33, 32.4738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 26, -1513.38, -2718.78, 34.7095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 27, -1537.44, -2698.84, 37.693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 28, -1562.95, -2672.3, 36.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 29, -1583.17, -2626.89, 47.7523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 30, -1617.02, -2604.77, 45.5596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 31, -1615.62, -2553.93, 52.0574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 32, -1607.86, -2521.7, 54.5609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 33, -1586.79, -2490.82, 58.9497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 34, -1567.6, -2457.82, 69.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 35, -1553.81, -2408.76, 79.1364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 36, -1545.95, -2375.38, 76.3069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 37, -1537.81, -2335.75, 64.2025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 38, -1529.6, -2314.8, 56.6238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 39, -1484.56, -2291.47, 50.5475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 40, -1478.75, -2262.76, 44.4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 41, -1480, -2226.7, 26.3076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 42, -1469.79, -2166.86, 18.7986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 43, -1466.5, -2118.99, 18.2136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 44, -1468.44, -2075.35, 21.5552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 45, -1471.53, -2023.79, 27.3488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 46, -1466.11, -1987.79, 34.0753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 47, -1444.81, -1958.99, 44.0863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 48, -1426.67, -1954.06, 45.1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 49, -1383.74, -1946.21, 52.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 50, -1359.07, -1943.37, 58.4543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 51, -1322.98, -1840.85, 63.4091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 52, -1287.63, -1802.4, 66.8075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 53, -1229.54, -1767.59, 62.9898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 54, -1168.07, -1718.18, 53.6048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 55, -1172.52, -1725.8, 54.2722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 56, -1145.35, -1716.33, 50.3387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 57, -1116.73, -1707.05, 45.1749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 58, -1085.79, -1699.26, 40.4028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 59, -1058.13, -1693.62, 38.2212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 60, -1019.35, -1692.31, 37.0114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 61, -992.015, -1701.93, 36.736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 62, -979.55, -1707.77, 39.4038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 63, -966.88, -1714.73, 44.3679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 64, -939.484, -1728.29, 47.4089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 65, -923.314, -1738.7, 51.3079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 66, -894.044, -1752.16, 45.9302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 67, -870.981, -1747.47, 45.8708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 68, -866.382, -1768.73, 41.5854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 69, -858.822, -1788.21, 39.7526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 70, -852.519, -1786.92, 39.8992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 71, -850.24, -1825.77, 43.8158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 72, -839.333, -1833.48, 46.1189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 73, -818.414, -1861.71, 51.0462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 74, -828.701, -1878.64, 50.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 75, -844.305, -1903.4, 50.1699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 76, -875.649, -1934.77, 51.9587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 77, -899.781, -1939.61, 53.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 78, -934.156, -2010.29, 50.5569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 79, -937.234, -2041.93, 49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 80, -934.608, -2078.91, 49.1065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 81, -913.07, -2099.95, 47.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 82, -876.733, -2124, 44.7319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 83, -852.214, -2146.3, 47.1362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 84, -830.645, -2161.83, 45.9767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 85, -822.685, -2180.52, 45.638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 86, -813.684, -2205.8, 43.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 87, -808.31, -2236.27, 49.9925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 88, -813.901, -2264.01, 53.9196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 89, -826.329, -2281.27, 53.734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 90, -834.167, -2303.35, 54.6962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 91, -844.476, -2329.6, 58.4594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 92, -853.193, -2349.09, 58.397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 93, -863.051, -2374.93, 58.9085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 94, -881.701, -2393.32, 56.1658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 95, -901.778, -2412.07, 55.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 96, -917.241, -2442.9, 53.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 97, -935.352, -2463.57, 55.0377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 98, -947.759, -2484.64, 58.1722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 99, -953.293, -2504.37, 59.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 100, -956.382, -2519.4, 61.6465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 101, -960.349, -2544.8, 61.7079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 102, -970.66, -2579.93, 62.353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 103, -979.323, -2612.3, 59.8321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 104, -988.632, -2627.97, 61.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 105, -1007.72, -2641.81, 56.3424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 106, -1023.12, -2661.41, 53.9583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 107, -1024.6, -2679.12, 51.1048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 108, -1027.14, -2711.01, 46.9469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 109, -1026.26, -2739.73, 44.2671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 110, -1001.41, -2781.31, 52.3579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 111, -979.154, -2802.21, 59.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 112, -961.908, -2828.55, 59.7389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 113, -957.571, -2852.5, 62.5084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 114, -955.55, -2880.98, 64.5275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 115, -953.45, -2900.92, 66.8111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 116, -948.289, -2927.21, 69.3605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 117, -956.577, -2941.33, 70.0848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 118, -971.588, -2961.33, 63.6569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 119, -1000.28, -3001.66, 58.8591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 120, -998.923, -3035.69, 54.8486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 121, -976.291, -3053.86, 57.4746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 122, -966.778, -3062.54, 49.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 123, -953.437, -3077.22, 50.6209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 124, -942.237, -3103.61, 48.1587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 125, -959.184, -3119.86, 49.5978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 126, -981.925, -3148.81, 45.7158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 127, -995.525, -3167.68, 44.1623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 128, -1007.99, -3200.59, 46.4547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 129, -1019.88, -3232.19, 44.0253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 130, -1031.13, -3261.18, 43.2576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 131, -1039.76, -3280.35, 46.3643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14517, 132, -1052.61, -3295.11, 51.2955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 1, -1037.21, -3307.37, 53.5088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 2, -1048.82, -3288.66, 48.6723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 3, -1073.23, -3253.1, 37.0307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 4, -1094.85, -3222.42, 42.1703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 5, -1118.37, -3208.69, 42.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 6, -1123.45, -3195.33, 43.5411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 7, -1170.9, -3154.64, 40.2437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 8, -1136.86, -3158.37, 45.2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 9, -1149.08, -3137.2, 43.0738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 10, -1162.23, -3106.34, 45.4955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 11, -1174.66, -3081.08, 43.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 12, -1197.75, -3044.21, 41.4495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 13, -1220.09, -3014.79, 45.2755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 14, -1237.33, -2985.51, 43.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 15, -1277.17, -2965.47, 36.0117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 16, -1277.83, -2923.27, 38.1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 17, -1270.58, -2875.39, 46.0177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 18, -1279.56, -2837.33, 47.8551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 19, -1300.01, -2799.75, 53.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 20, -1332.31, -2766.11, 57.9763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 21, -1369, -2755.86, 58.0465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 22, -1397.65, -2753.82, 46.8239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 23, -1427.63, -2749.06, 36.4506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 24, -1453.37, -2732.16, 35.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 25, -1484.42, -2724.33, 32.4738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 26, -1513.38, -2718.78, 34.7095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 27, -1537.44, -2698.84, 37.693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 28, -1562.95, -2672.3, 36.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 29, -1583.17, -2626.89, 47.7523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 30, -1617.02, -2604.77, 45.5596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 31, -1615.62, -2553.93, 52.0574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 32, -1607.86, -2521.7, 54.5609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 33, -1586.79, -2490.82, 58.9497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 34, -1567.6, -2457.82, 69.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 35, -1553.81, -2408.76, 79.1364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 36, -1545.95, -2375.38, 76.3069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 37, -1537.81, -2335.75, 64.2025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 38, -1529.6, -2314.8, 56.6238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 39, -1484.56, -2291.47, 50.5475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 40, -1478.75, -2262.76, 44.4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 41, -1480, -2226.7, 26.3076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 42, -1469.79, -2166.86, 18.7986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 43, -1466.5, -2118.99, 18.2136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 44, -1468.44, -2075.35, 21.5552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 45, -1471.53, -2023.79, 27.3488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 46, -1466.11, -1987.79, 34.0753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 47, -1444.81, -1958.99, 44.0863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 48, -1426.67, -1954.06, 45.1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 49, -1383.74, -1946.21, 52.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 50, -1359.07, -1943.37, 58.4543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 51, -1322.98, -1840.85, 63.4091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 52, -1287.63, -1802.4, 66.8075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 53, -1229.54, -1767.59, 62.9898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 54, -1168.07, -1718.18, 53.6048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 55, -1172.52, -1725.8, 54.2722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 56, -1145.35, -1716.33, 50.3387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 57, -1116.73, -1707.05, 45.1749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 58, -1085.79, -1699.26, 40.4028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 59, -1058.13, -1693.62, 38.2212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 60, -1019.35, -1692.31, 37.0114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 61, -992.015, -1701.93, 36.736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 62, -979.55, -1707.77, 39.4038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 63, -966.88, -1714.73, 44.3679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 64, -939.484, -1728.29, 47.4089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 65, -923.314, -1738.7, 51.3079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 66, -894.044, -1752.16, 45.9302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 67, -870.981, -1747.47, 45.8708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 68, -866.382, -1768.73, 41.5854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 69, -858.822, -1788.21, 39.7526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 70, -852.519, -1786.92, 39.8992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 71, -850.24, -1825.77, 43.8158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 72, -839.333, -1833.48, 46.1189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 73, -818.414, -1861.71, 51.0462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 74, -828.701, -1878.64, 50.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 75, -844.305, -1903.4, 50.1699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 76, -875.649, -1934.77, 51.9587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 77, -899.781, -1939.61, 53.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 78, -934.156, -2010.29, 50.5569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 79, -937.234, -2041.93, 49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 80, -934.608, -2078.91, 49.1065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 81, -913.07, -2099.95, 47.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 82, -876.733, -2124, 44.7319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 83, -852.214, -2146.3, 47.1362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 84, -830.645, -2161.83, 45.9767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 85, -822.685, -2180.52, 45.638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 86, -813.684, -2205.8, 43.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 87, -808.31, -2236.27, 49.9925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 88, -813.901, -2264.01, 53.9196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 89, -826.329, -2281.27, 53.734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 90, -834.167, -2303.35, 54.6962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 91, -844.476, -2329.6, 58.4594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 92, -853.193, -2349.09, 58.397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 93, -863.051, -2374.93, 58.9085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 94, -881.701, -2393.32, 56.1658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 95, -901.778, -2412.07, 55.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 96, -917.241, -2442.9, 53.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 97, -935.352, -2463.57, 55.0377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 98, -947.759, -2484.64, 58.1722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 99, -953.293, -2504.37, 59.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 100, -956.382, -2519.4, 61.6465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 101, -960.349, -2544.8, 61.7079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 102, -970.66, -2579.93, 62.353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 103, -979.323, -2612.3, 59.8321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 104, -988.632, -2627.97, 61.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 105, -1007.72, -2641.81, 56.3424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 106, -1023.12, -2661.41, 53.9583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 107, -1024.6, -2679.12, 51.1048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 108, -1027.14, -2711.01, 46.9469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 109, -1026.26, -2739.73, 44.2671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 110, -1001.41, -2781.31, 52.3579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 111, -979.154, -2802.21, 59.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 112, -961.908, -2828.55, 59.7389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 113, -957.571, -2852.5, 62.5084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 114, -955.55, -2880.98, 64.5275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 115, -953.45, -2900.92, 66.8111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 116, -948.289, -2927.21, 69.3605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 117, -956.577, -2941.33, 70.0848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 118, -971.588, -2961.33, 63.6569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 119, -1000.28, -3001.66, 58.8591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 120, -998.923, -3035.69, 54.8486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 121, -976.291, -3053.86, 57.4746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 122, -966.778, -3062.54, 49.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 123, -953.437, -3077.22, 50.6209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 124, -942.237, -3103.61, 48.1587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 125, -959.184, -3119.86, 49.5978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 126, -981.925, -3148.81, 45.7158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 127, -995.525, -3167.68, 44.1623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 128, -1007.99, -3200.59, 46.4547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 129, -1019.88, -3232.19, 44.0253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 130, -1031.13, -3261.18, 43.2576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 131, -1039.76, -3280.35, 46.3643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14516, 132, -1052.61, -3295.11, 51.2955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 1, -1037.21, -3307.37, 53.5088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 2, -1048.82, -3288.66, 48.6723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 3, -1073.23, -3253.1, 37.0307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 4, -1094.85, -3222.42, 42.1703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 5, -1118.37, -3208.69, 42.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 6, -1123.45, -3195.33, 43.5411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 7, -1170.9, -3154.64, 40.2437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 8, -1136.86, -3158.37, 45.2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 9, -1149.08, -3137.2, 43.0738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 10, -1162.23, -3106.34, 45.4955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 11, -1174.66, -3081.08, 43.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 12, -1197.75, -3044.21, 41.4495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 13, -1220.09, -3014.79, 45.2755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 14, -1237.33, -2985.51, 43.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 15, -1277.17, -2965.47, 36.0117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 16, -1277.83, -2923.27, 38.1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 17, -1270.58, -2875.39, 46.0177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 18, -1279.56, -2837.33, 47.8551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 19, -1300.01, -2799.75, 53.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 20, -1332.31, -2766.11, 57.9763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 21, -1369, -2755.86, 58.0465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 22, -1397.65, -2753.82, 46.8239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 23, -1427.63, -2749.06, 36.4506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 24, -1453.37, -2732.16, 35.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 25, -1484.42, -2724.33, 32.4738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 26, -1513.38, -2718.78, 34.7095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 27, -1537.44, -2698.84, 37.693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 28, -1562.95, -2672.3, 36.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 29, -1583.17, -2626.89, 47.7523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 30, -1617.02, -2604.77, 45.5596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 31, -1615.62, -2553.93, 52.0574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 32, -1607.86, -2521.7, 54.5609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 33, -1586.79, -2490.82, 58.9497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 34, -1567.6, -2457.82, 69.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 35, -1553.81, -2408.76, 79.1364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 36, -1545.95, -2375.38, 76.3069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 37, -1537.81, -2335.75, 64.2025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 38, -1529.6, -2314.8, 56.6238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 39, -1484.56, -2291.47, 50.5475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 40, -1478.75, -2262.76, 44.4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 41, -1480, -2226.7, 26.3076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 42, -1469.79, -2166.86, 18.7986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 43, -1466.5, -2118.99, 18.2136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 44, -1468.44, -2075.35, 21.5552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 45, -1471.53, -2023.79, 27.3488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 46, -1466.11, -1987.79, 34.0753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 47, -1444.81, -1958.99, 44.0863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 48, -1426.67, -1954.06, 45.1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 49, -1383.74, -1946.21, 52.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 50, -1359.07, -1943.37, 58.4543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 51, -1322.98, -1840.85, 63.4091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 52, -1287.63, -1802.4, 66.8075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 53, -1229.54, -1767.59, 62.9898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 54, -1168.07, -1718.18, 53.6048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 55, -1172.52, -1725.8, 54.2722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 56, -1145.35, -1716.33, 50.3387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 57, -1116.73, -1707.05, 45.1749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 58, -1085.79, -1699.26, 40.4028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 59, -1058.13, -1693.62, 38.2212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 60, -1019.35, -1692.31, 37.0114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 61, -992.015, -1701.93, 36.736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 62, -979.55, -1707.77, 39.4038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 63, -966.88, -1714.73, 44.3679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 64, -939.484, -1728.29, 47.4089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 65, -923.314, -1738.7, 51.3079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 66, -894.044, -1752.16, 45.9302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 67, -870.981, -1747.47, 45.8708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 68, -866.382, -1768.73, 41.5854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 69, -858.822, -1788.21, 39.7526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 70, -852.519, -1786.92, 39.8992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 71, -850.24, -1825.77, 43.8158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 72, -839.333, -1833.48, 46.1189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 73, -818.414, -1861.71, 51.0462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 74, -828.701, -1878.64, 50.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 75, -844.305, -1903.4, 50.1699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 76, -875.649, -1934.77, 51.9587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 77, -899.781, -1939.61, 53.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 78, -934.156, -2010.29, 50.5569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 79, -937.234, -2041.93, 49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 80, -934.608, -2078.91, 49.1065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 81, -913.07, -2099.95, 47.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 82, -876.733, -2124, 44.7319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 83, -852.214, -2146.3, 47.1362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 84, -830.645, -2161.83, 45.9767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 85, -822.685, -2180.52, 45.638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 86, -813.684, -2205.8, 43.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 87, -808.31, -2236.27, 49.9925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 88, -813.901, -2264.01, 53.9196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 89, -826.329, -2281.27, 53.734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 90, -834.167, -2303.35, 54.6962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 91, -844.476, -2329.6, 58.4594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 92, -853.193, -2349.09, 58.397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 93, -863.051, -2374.93, 58.9085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 94, -881.701, -2393.32, 56.1658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 95, -901.778, -2412.07, 55.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 96, -917.241, -2442.9, 53.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 97, -935.352, -2463.57, 55.0377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 98, -947.759, -2484.64, 58.1722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 99, -953.293, -2504.37, 59.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 100, -956.382, -2519.4, 61.6465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 101, -960.349, -2544.8, 61.7079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 102, -970.66, -2579.93, 62.353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 103, -979.323, -2612.3, 59.8321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 104, -988.632, -2627.97, 61.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 105, -1007.72, -2641.81, 56.3424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 106, -1023.12, -2661.41, 53.9583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 107, -1024.6, -2679.12, 51.1048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 108, -1027.14, -2711.01, 46.9469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 109, -1026.26, -2739.73, 44.2671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 110, -1001.41, -2781.31, 52.3579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 111, -979.154, -2802.21, 59.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 112, -961.908, -2828.55, 59.7389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 113, -957.571, -2852.5, 62.5084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 114, -955.55, -2880.98, 64.5275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 115, -953.45, -2900.92, 66.8111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 116, -948.289, -2927.21, 69.3605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 117, -956.577, -2941.33, 70.0848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 118, -971.588, -2961.33, 63.6569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 119, -1000.28, -3001.66, 58.8591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 120, -998.923, -3035.69, 54.8486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 121, -976.291, -3053.86, 57.4746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 122, -966.778, -3062.54, 49.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 123, -953.437, -3077.22, 50.6209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 124, -942.237, -3103.61, 48.1587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 125, -959.184, -3119.86, 49.5978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 126, -981.925, -3148.81, 45.7158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 127, -995.525, -3167.68, 44.1623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 128, -1007.99, -3200.59, 46.4547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 129, -1019.88, -3232.19, 44.0253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 130, -1031.13, -3261.18, 43.2576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 131, -1039.76, -3280.35, 46.3643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14515, 132, -1052.61, -3295.11, 51.2955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id` IN (2611, 2765, 2764, 4063);
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(14514, 2611, 0, 0, 0, -1037, -3305, 53.475, 3.286, 2568, 0, 1, 2476, 0, 0, 2),
(14516, 2765, 0, 0, 0, -1039, -3307, 53.475, 2.621, 2568, 0, 1, 219, 0, 0, 2),
(14517, 4063, 0, 0, 0, -1041, -3309, 53.475, 1.971, 2568, 0, 1, 156, 3075, 0, 2),
(14515, 2764, 0, 0, 0, -1035, -3303, 53.475, 4.405, 2568, 0, 1, 184, 1283, 0, 2);

-- Onyxia Head quest: Horde
-- Script by traz a.k.a hennors
-- Improved the scripts since there were some wrong data

-- Text for yell
DELETE FROM `db_script_string` WHERE `entry` IN ('2000005236', '2000005237', '2000005238', '2000005239');
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) values('2000005236','People of the Horde, citizens of Orgrimmar, come, gather round and celebrate heroes of the Horde. On this day, $N, under the auspices of our glorious Warchief, laid a mortal blow against the Black Dragonflight. The brood mother, Onyxia, has been slain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) values('2000005237','Bear witness to the undeniable power of your Warchief! Be lifted by the rallying cry of your dragon slayers!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005238','Citizens and allies of Stormwind, on this day, history has been made. $N has laid waste to that which had attempted to usurp the rule of the kingdom. Gather round and join me in honoring our heroes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
   ('2000005239','Behold the might of the Alliance! The dread lady, Onyxia, hangs from the arches! Let the rallying cry of the dragon slayer lift your spirits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Activate scripts using Complete quest
DELETE FROM `quest_end_scripts` WHERE `id` IN ('7491', '7496');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`,`datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(7491, 15, 0, 1, 0, 0, 0, 0, 2000005236, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 23, 0, 1, 0, 0, 0, 0, 2000005237, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1540.2, -4405.02, 11.18, 0, ''),
(7491, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1541.95, -4405.1, 10.244, 0, ''),
(7491, 15, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 23, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 30, 15, 22888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 30, 9, 396251, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1570, -4405.89, 7.63613, 0, ''),
(7491, 55, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1568, -4405.87, 8.13371, 0, ''),
(7496, 12, 9, 396252, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 2, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 12, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 20, 15, 22888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 2, 0, 1, 0, 0, 0, 0, 2000005238, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 12, 0, 1, 0, 0, 0, 0, 2000005239, 0, 0, 0, 0, 0, 0, 0, '');

-- Set to chest instead of button
UPDATE `gameobject_template` SET `type`='3' WHERE `entry` IN ('179556', '179558') ;

-- Linking the complete script : Horde side
UPDATE `quest_template` SET `CompleteScript` = '7491' WHERE `entry` = '7491';

-- Linking the complete script : Alliance side
UPDATE `quest_template` SET `CompleteScript` = '7496' WHERE `entry` = '7496';

-- Creating the heads, invisible
DELETE FROM `gameobject` WHERE `guid` IN ('396251', '396252'); 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(396251, 179556, 1, 1538.11, -4409.42, 7.8, 7.4, 0, 0, -0.529836, -0.8481, -1, 0, 0),
(396252, 179558, 0, -8973.51, 553.393, 105, 3.81268, 0, 0, 0.944231, -0.329283, -1, 0, 0);

-- Redoing Onyxias rotation
UPDATE `creature` SET `orientation`='3.091233' WHERE `guid`='47572';

-- Onyxia should drop more gold, tauntimmune
UPDATE `creature_template` SET `mingold`='937551', `maxgold`='1273511', `flags_extra`='769' WHERE `entry`='10184';

-- Missing table at Corrahn's Dagger
DELETE FROM `gameobject` WHERE `guid`='632438';
INSERT INTO `gameobject`(`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(632438, 181305, 0, -33.643, -558.612, 151.116, 3.67656, 0, 0, 0.964439, -0.264307, 25, 100, 1);

-- Fix for onyxia drops at World bosses
DELETE FROM `creature_loot_template` WHERE `mincountOrRef`='-34003';

-- --------------------
-- Onyxia
-- --------------------
DELETE FROM `creature_loot_template` WHERE (`entry`=10184);
INSERT INTO `creature_loot_template` VALUES 
(10184, 17966, 100, 0, 1, 1, 0, 0, 0),
(10184, 18422, 100, 0, 1, 1, 6, 67, 0),
(10184, 18423, 100, 0, 1, 1, 6, 469, 0),
(10184, 18705, 40, 0, 1, 1, 0, 0, 0),
(10184, 21108, -100, 0, 1, 1, 0, 0, 0),
(10184, 34000, 100, 1, -34000, 2, 0, 0, 0),
(10184, 34001, 100, 1, -34001, 2, 0, 0, 0),
(10184, 34002, 100, 1, -34002, 2, 0, 0, 0),
(10184, 34003, 100, 1, -34003, 2, 0, 0, 0);

-- Horde
DELETE FROM `reference_loot_template` WHERE `entry`='34000';
INSERT INTO `reference_loot_template` VALUES
(34000, 16900, 0, 1, 1, 1, 6, 67, 0),
(34000, 16908, 0, 1, 1, 1, 6, 67, 0),
(34000, 16914, 0, 1, 1, 1, 6, 67, 0),
(34000, 16921, 0, 1, 1, 1, 6, 67, 0),
(34000, 16929, 0, 1, 1, 1, 6, 67, 0),
(34000, 16939, 0, 1, 1, 1, 6, 67, 0),
(34000, 16963, 0, 1, 1, 1, 6, 67, 0),
(34000, 16947, 0, 1, 1, 1, 6, 67, 0);

-- Alliance
DELETE FROM `reference_loot_template` WHERE `entry`='34003';
INSERT INTO `reference_loot_template` VALUES
(34003, 16900, 0, 1, 1, 1, 6, 469, 0),
(34003, 16908, 0, 1, 1, 1, 6, 469, 0),
(34003, 16914, 0, 1, 1, 1, 6, 469, 0),
(34003, 16921, 0, 1, 1, 1, 6, 469, 0),
(34003, 16929, 0, 1, 1, 1, 6, 469, 0),
(34003, 16939, 0, 1, 1, 1, 6, 469, 0),
(34003, 16963, 0, 1, 1, 1, 6, 469, 0),
(34003, 16955, 0, 1, 1, 1, 6, 469, 0);

-- Object 176511 have spell that spawns this object
-- object did not exist in DB
-- needs scripts to spawn whelps @ onyxia
DELETE FROM `gameobject_template` WHERE `entry`='176510';
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,`faction`, `flags`, `size`,`data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (176510,5,11686, 'Onyxia Whelp Spawner',14,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Frostbite fix, from UDW
DELETE FROM `spell_affect` WHERE `entry` IN ('11071', '12496', '12497');
INSERT INTO `spell_affect` VALUES
(11071,0,0x0000000000000000),
(12496,0,0x0000000000000000),
(12497,0,0x0000000000000000);

-- Takeable quest (method == 2) for quest entry 813 --
UPDATE `quest_template` SET `method`=2 WHERE `entry`=813;

-- Quest entry 1370 client-side crash fix --
UPDATE `quest_template` SET `RewChoiceItemId1`='3464', `RewChoiceItemId2`='3465', `RewChoiceItemId3`='0', `RewChoiceItemCount1`='200', `RewChoiceItemCount3`='0' WHERE `entry`=1370;

/* REV 793 */
-- NPC Foulweald Den Watcher should not use spell Thrash
UPDATE `creature_template` SET `spell1`=0 WHERE `entry`=3746;

-- Correct armor value for NPC Screeching Windcaller
UPDATE `creature_template` SET `armor`=1200 WHERE `entry`=4104;

-- Fix for Darkshire Inn
UPDATE `creature_template` SET `npcflag`=66177 WHERE `entry`=6790; 

-- new type for gameobject entry 174764 --
UPDATE `gameobject_template` SET `flags`=64, `type`=10, `data10`=9056, `data1`=0, `data2`=0 WHERE `entry`=174764;



/* CLEANING QUERIES - ALWAYS IN THE END OF UPDATEPACK FILE! */
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` AND `creature_template`.`RegenHealth` = '1';
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` IN (11, 12) AND `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 701_800 (8)';