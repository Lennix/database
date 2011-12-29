/* Updatepack rev. 801 - 900 */

-- Added questrelation of quest entry 8481 for npc Gorn One Eye (entry 11555) --
DELETE FROM `creature_questrelation` WHERE `id`=11555 AND `quest`=8481;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(11555, 8481);

/* REV 806 by Traz */

-- Attackspeed adjustments for the hunter pets
UPDATE `creature_template` SET `baseattacktime` = 2000 WHERE `entry` = 14821;
UPDATE `creature_template` SET `baseattacktime` = 1200 WHERE `entry` IN (3862, 10077, 8299, 5807);
UPDATE `creature_template` SET `baseattacktime` = 1300 WHERE `entry` IN (3825, 5828, 3245);
UPDATE `creature_template` SET `baseattacktime` = 1700 WHERE `entry` = 5356;
UPDATE `creature_template` SET `baseattacktime` = 1500 WHERE `entry` = 4304;
UPDATE `creature_template` SET `baseattacktime` = 1000 WHERE `entry` IN (11368, 2850);
UPDATE `creature_template` SET `baseattacktime` = 1600 WHERE `entry` = 5823;
UPDATE `creature_template` SET `baseattacktime` = 2400 WHERE `entry` = 10806;

-- Fix for all hunter traps: Set range from 5 to 2 yards radius
UPDATE `gameobject_template` SET `data2` = 2 WHERE `entry` IN (2561, 164638, 164639, 164839, 164872, 164873, 164874, 164875, 164876, 164877, 164879, 164880);

-- Fix RequiredClasses for all quest "Components of Importance" (entries 8962 to 8965) --
UPDATE `quest_template` SET `RequiredClasses`=129 WHERE `entry`=8962;
UPDATE `quest_template` SET `RequiredClasses`=1280 WHERE `entry`=8963;
UPDATE `quest_template` SET `RequiredClasses`=12 WHERE `entry`=8964;
UPDATE `quest_template` SET `RequiredClasses`=82 WHERE `entry`=8965;
-- Fix RequiredClasses for all quest "More Components of Importance" (entries 8985 to 8988) --
UPDATE `quest_template` SET `RequiredClasses`=9 WHERE `entry`=8985;
UPDATE `quest_template` SET `RequiredClasses`=1090 WHERE `entry`=8986;
UPDATE `quest_template` SET `RequiredClasses`=144 WHERE `entry`=8987;
UPDATE `quest_template` SET `RequiredClasses`=260 WHERE `entry`=8988;

/* rev 815 */
-- NPC "onyxia whelp" will be spawned by "onyxia whelp spawner" gameobject --
UPDATE `gameobject_template` SET `type`=6, `data1`=1, `data2`=10, `data3`=17646, `data4`=1, `data5`=604800 WHERE `entry`=176510;

-- MovementType idle for Ragnaros and NoCrush flag added--
UPDATE `creature_template` SET `MovementType`=0, `flags_extra` = '33' WHERE `entry`=11502;

-- Ragnaros armor was zero
UPDATE `creature_template` SET `armor`='4691' WHERE `entry`='11502';

-- Firesworn should be immune to sleep
UPDATE `creature_template` SET `mechanic_immune_mask`='2577' WHERE `entry`='12099';

-- according to SDB, Son of Flame had other damage amount
-- found correct spell of Mana burn
UPDATE `creature_template` SET `mindmg`='500', `maxdmg`='713', `dmgschool` = '2', `AIName`='EventAI', `spell1`='21857', `resistance2`='0', `resistance5`='0', `armor`='3791', `flags_extra` = '32' WHERE `entry`='12143';

-- Scarlet Troopers weapon ID
UPDATE `creature_template` SET `equipment_id`='605', `MovementType`='0' WHERE `entry`='12352';

-- Demetria wrong faction
UPDATE `creature_template` SET `faction_A`='67', `faction_H`='67' WHERE `entry`='12339';

-- quest 6148 had no quest giver and taker
DELETE FROM `creature_questrelation` WHERE `quest` = 6148;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11878, 6148);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 6148;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11878, 6148);

-- temp fix for Demetria quest
UPDATE `quest_template` SET `StartScript`='6148' WHERE `entry`='6148';
-- scripts
DELETE FROM `quest_start_scripts` WHERE `id`=6148;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(6148, 5, 10, 12339, 1200000, 0, 0, 0, 'Spawns Demetria', 1747.658, -5003.593, 79.902626, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard1', 1745.000, -5007.158, 79.902824, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard2', 1748.691, -5007.886, 79.903030, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard3', 1751.702, -5007.381, 80.065857, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard4', 1753.178, -5004.093, 80.246368, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard5', 1752.533, -5001.402, 80.043289, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard6', 1749.431, -4999.983, 80.090309, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard7', 1746.130, -4999.388, 80.072067, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard8', 1743.834, -5001.288, 80.003693, 0.959941),
(6148, 5, 10, 12352, 1200000, 0, 0, 0, 'Spawns guard9', 1743.318, -5004.035, 79.932281, 0.959941);

-- Nightmare dragons had no armor
UPDATE `creature_template` SET `armor`='4691' WHERE `entry` IN ('14887', '14888', '14889', '14890');

-- Reputation reward from kills were wrong
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='20', `RewOnKillRepValue2`='-100' WHERE `creature_id` IN ('4638', '4639', '4640', '4641', '4642', '4643', '4644', '4645', '4662', '4646', '4647', '4648', '4649', '4651', '4652', '4653', '4661');

-- Son's and Raggy shouldn't be able to "bleed"
UPDATE `creature_template` SET `mechanic_immune_mask`='617316191' WHERE `entry`='11502';
UPDATE `creature_template` SET `mechanic_immune_mask`='16384' WHERE `entry`='12143';

-- BRS areatrigger_teleport
DELETE FROM `areatrigger_teleport` WHERE `id`='2068';
INSERT INTO `areatrigger_teleport` (`id`, `name`) VALUES ('2068', 'BRS Fall');
UPDATE `areatrigger_teleport` SET `target_position_x`='-7565.66', `target_position_y`='-1315.98', `target_position_z`='272.04', `target_map`='0' WHERE (`id`='2068');

-- Added missing creature_template entry - Flame of Ragnaros (entry 13148) --
DELETE FROM `creature_template` WHERE `entry`=13148;
INSERT INTO `creature_template` (`entry`, `modelid_1`, `name`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `faction_A`, `faction_H`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('13148', '13069', 'Flame of Ragnaros', '60', '60', '10000', '10000', '10000', '10000', '91', '91', '1', '1.14286', '1', '0', '2', '2', '0', '24', '1', '2000', '0', '1', '33554432', '8', '0', '0', '0', '0', '0', '1', '1', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '');

-- proc event for Melt Weapon at Raggy 8388628 65536
DELETE FROM `spell_proc_event` WHERE `entry`='21388';
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(21388, 1, 0, 0, 0, 0, 8388628, 131072, 0, 0, 0);

/* REV 828 by Traz */
-- Priest spell_bonus_data added for Renew
DELETE FROM `spell_bonus_data` WHERE `entry` = 139;
INSERT INTO `spell_bonus_data` (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(139, 0, 0.2, 0, 'Priest - Renew');

/* REV 833 */
-- relocation Eris Havenfire and new spawntimesecs
UPDATE `creature` SET `position_x`='3323.14', `position_y`='-2995.68', `position_z`='165.18', `orientation`='6.037502', `spawntimesecs`=600 WHERE `guid`=2552855 AND `id`=14494;
-- friendly faction for injured peasant and plagued peasant, disable RegenHealth
UPDATE `creature_template` SET `faction_A`=250, `faction_H`=250, `RegenHealth`=0 WHERE `entry` IN (14484, 14485);
-- equipment for scourge archer
UPDATE `creature_template` SET `equipment_id`=2013 WHERE `entry`=14489;

/* REV 841 */
-- lower min level for quest 4881 (from 25 to 23)
UPDATE `quest_template` SET `MinLevel`=23 WHERE `entry` IN (4881, 4996);

/* REV 857 by Zataron */
-- Work around Ragnaros script
DELETE FROM `creature_template` WHERE `entry`=777778;
INSERT INTO `creature_template` (entry, modelid_1, name, minlevel, maxlevel, minhealth, maxhealth, faction_A, faction_H, baseattacktime, rangeattacktime, InhabitType, ScriptName) VALUES
(777778, 870, 'Lava Burst', 62, 62, 500000, 500000, 14, 14, 1000, 1000, 3, '');

/* REV 859 by Zataron and Mordenthral*/
-- Zataron
-- Molten Core: Core hound packs should be able to revive each other
DELETE FROM `creature_template` WHERE `entry`=800001;
INSERT INTO `creature_template` (entry, modelid_1, name, minlevel, maxlevel, minhealth, maxhealth, faction_A, faction_H, baseattacktime, rangeattacktime, InhabitType, ScriptName) VALUES
(800001, 870, 'Core Hound Trigger', 62, 62, 500000, 500000, 14, 14, 1000, 1000, 3, 'CoreHoundTrigger');
DELETE FROM `creature` WHERE `guid` IN (2536463, 2536464, 2536465, 2536466, 2536467);
INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(2536463, 800001, 409, 0, 0, 994.101, -974.149, -180.896, 0, 25, 5, 0, 500000, 0, 0, 0),
(2536464, 800001, 409, 0, 0, 1036.85, -964.382, -179.985, 0, 25, 5, 0, 500000, 0, 0, 0),
(2536465, 800001, 409, 0, 0, 1079.51, -973.863, -183.229, 0, 25, 5, 0, 500000, 0, 0, 0),
(2536466, 800001, 409, 0, 0, 1112.24, -992.245, -185.988, 0, 25, 5, 0, 500000, 0, 0, 0),
(2536467, 800001, 409, 0, 0, 1087.28, -1019.62, -186.428, 0, 25, 5, 0, 500000, 0, 0, 0);

-- Mordenthral
-- Pylons in Dire Maul
DELETE FROM `gameobject` WHERE `guid` IN (632439, 632440, 632441, 632442, 632443);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(632439, 177259, 429, -92.0192, 442.946, 28.6023, 3.16123, 0, 0, 0.999952, -0.00981927, 25, 100, 1),
(632440, 177258, 429, 121.724, 428.134, 28.6011, 6.26747, 0, 0, 0.00785978, -0.999969, 25, 100, 1),
(632441, 177257, 429, 13.3635, 277.648, -8.48638, 0.373063, 0, 0, 0.185452, 0.982653, 25, 100, 1),
(632442, 179504, 429, 79.0111, 736.484, -24.5799, 1.42549, 0, 0, 0.653915, 0.756568, 25, 100, 1),
(632443, 179505, 429, -156.502, 734.898, -24.5803, 5.49385, 0, 0, 0.384502, -0.923124, 25, 100, 1);

/* REV 864 by Mordenthral */
-- NPC text needed $N instead of <name>
UPDATE `quest_template` SET `RequestItemsText` = 'Back so soon? In case I didn''t make myself clear we need you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers, $N. Now go get ''em, Trogg-Slayer!' WHERE `entry` = '263';

-- Required level set at 9
UPDATE `quest_template` SET `MinLevel` = '9' WHERE `entry` = '256';

-- No active quest required to take this one
UPDATE `quest_template` SET `PrevQuestID` = '0', `NextQuestID` = '0' WHERE `entry` = '315';

-- Can gain quest after completing 315
UPDATE `quest_template` SET `PrevQuestID` = '315', `NextQuestID` = '0', `NextQuestInChain` = '413' WHERE `entry` = '415';

-- Deathguard Kel faction changed from 11 to 71 so he's friendly to Horde
UPDATE `creature_template` SET `faction_A` = '71', `faction_H` = '71' WHERE `entry` = '12428';

-- Moved 2 trolls on Shimmer Ridge from under their huts to inside their huts and set spawndist to 0, so they don't fall through
UPDATE `creature` SET `position_x` = '-5349.05', `position_y` = '-221.485', `position_z` = '443.94', `orientation` = '5.80176', `spawndist` = '0' WHERE `guid`= '3177';
UPDATE `creature` SET `position_x` = '-5354.35', `position_y` = '-240.295', `position_z` = '444.226', `orientation` = '0.256848', `spawndist` = '0' WHERE `guid` = '3178';

-- Changed orientation of a Frostmane troll to face the campfire
UPDATE `creature` SET `orientation` = '5.14872' WHERE `guid` = '3180';

-- Completely reworked table skill_fishing_base_level
DELETE FROM `skill_fishing_base_level`;
INSERT INTO `skill_fishing_base_level` (`entry`,`skill`) VALUES
(1, 1),
(12, 1),
(14, 1),
(85, 1),
(141, 1),
(215, 1),
(17, 50),
(38, 50),
(40, 50),
(130, 50),
(148, 50),
(718, 50),
(719, 50),
(1519, 1),
(1537, 1),
(1581, 50),
(1637, 1),
(1638, 1),
(1657, 1),
(10, 95),
(11, 105),
(44, 80),
(267, 100),
(331, 75),
(406, 75),
(8, 175),
(15, 150),
(33, 150),
(36, 150),
(45, 150),
(400, 75),
(405, 100),
(796, 130),
(16, 200),
(28, 255),
(47, 200),
(357, 150),
(361, 175),
(440, 225),
(490, 225),
(493, 200),
(1417, 205),
(2100, 205),
(41, 330),
(46, 240),
(139, 265),
(618, 250),
(1377, 330),
(1977, 330),
(2017, 330),
(2057, 330),
(297, 205),
(1112, 330),
(1222, 330),
(1227, 330),
(3140, 330);

/* rev 865 */
-- add "ignore aggro" (passive) flag for npc "Stinky" Ignatz (entry 4880)
UPDATE `creature_template` SET `speed_run`=1, `flags_extra`=`flags_extra`|2 WHERE `entry`=4880;

/* REV 866 by Zataron*/
-- some work around Onyxia
UPDATE `creature_model_info` SET `bounding_radius` = '5', `combat_reach` = '8' WHERE `modelid` = '8570';
UPDATE `creature_template` SET `mindmg` = '2500', `maxdmg` = '3200', `mechanic_immune_mask` = '617316191' WHERE `entry` = '10184';
DELETE FROM `gameobject` WHERE `guid` BETWEEN '632444' AND '632491';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(632444,178036,249,-77.97, -209.18, -83.17,0,0,0,0,0,25,100,1),
(632445,178036,249,-73.85, -201.90, -83.50,0,0,0,0,0,25,100,1),
(632446,178036,249,-62.93, -196.24, -84.82,0,0,0,0,0,25,100,1),
(632447,178036,249,-10.61, -219.35, -87.73,0,0,0,0,0,25,100,1),
(632448,178036,249,-51.39, -213.44, -85.81,0,0,0,0,0,25,100,1),
(632449,178036,249,-62.19, -213.00, -84.63,0,0,0,0,0,25,100,1),
(632450,178036,249,-40.01, -212.03, -86.66,0,0,0,0,0,25,100,1),
(632451,178036,249,-75.15, -225.49, -83.32,0,0,0,0,0,25,100,1),
(632452,178036,249,-63.60, -232.60, -84.78,0,0,0,0,0,25,100,1),
(632453,178036,249,-54.46, -229.61, -85.52,0,0,0,0,0,25,100,1),
(632454,178036,249,-55.48, -241.93, -85.52,0,0,0,0,0,25,100,1),
(632455,178036,249,-48.18, -234.06, -85.96,0,0,0,0,0,25,100,1),
(632456,178036,249,-51.85, -213.32, -85.76,0,0,0,0,0,25,100,1),
(632457,178036,249,-44.68, -220.95, -86.46,0,0,0,0,0,25,100,1),
(632458,178036,249,-36.08, -244.25, -88.41,0,0,0,0,0,25,100,1),
(632459,178036,249,-28.01, -238.68, -89.16,0,0,0,0,0,25,100,1),
(632460,178036,249,-26.97, -228.88, -89.16,0,0,0,0,0,25,100,1),
(632461,178036,249,-26.82, -199.97, -89.10,0,0,0,0,0,25,100,1),
(632462,178036,249,-28.83, -189.75, -89.17,0,0,0,0,0,25,100,1),
(632463,178036,249,-36.88, -184.84, -88.39,0,0,0,0,0,25,100,1),
(632464,178036,249,-21.28, -175.23, -88.04,0,0,0,0,0,25,100,1),
(632465,178036,249,-13.69, -183.64, -87.48,0,0,0,0,0,25,100,1),
(632466,178036,249,-16.07, -196.50, -88.12,0,0,0,0,0,25,100,1),
(632467,178036,249,-20.27, -210.62, -88.95,0,0,0,0,0,25,100,1),
(632468,178036,249,-19.43, -218.67, -88.85,0,0,0,0,0,25,100,1),
(632469,178036,249,-10.61, -219.35, -87.73,0,0,0,0,0,25,100,1),
(632470,178036,249,-21.20, -253.39, -88.07,0,0,0,0,0,25,100,1),
(632471,178036,249,-13.30, -246.09, -87.39,0,0,0,0,0,25,100,1),
(632472,178036,249,-3.07, -249.77, -86.43,0,0,0,0,0,25,100,1),
(632473,178036,249,-0.14, -240.36, -86.94,0,0,0,0,0,25,100,1),
(632474,178036,249,-25.33, -200.02, -87.68,0,0,0,0,0,25,100,1),
(632475,178036,249,-75.36, -210.17, -83.42,0,0,0,0,0,25,100,1),
(632476,178036,249,-3.75, -179.19, -86.51,0,0,0,0,0,25,100,1),
(632477,178036,249,-12.46, -182.95, -87.33,0,0,0,0,0,25,100,1),
(632478,178036,249,8.27, -252.72, -85.61,0,0,0,0,0,25,100,1),
(632479,178036,249,6.64, -243.02, -86.30,0,0,0,0,0,25,100,1),
(632480,178036,249,2.40, -230.26, -86.56,0,0,0,0,0,25,100,1),
(632481,178036,249,13.70, -234.09, -85.55,0,0,0,0,0,25,100,1),
(632482,178036,249,23.79, -234.62, -84.41,0,0,0,0,0,25,100,1),
(632483,178036,249,17.64, -224.55, -85.39,0,0,0,0,0,25,100,1),
(632484,178036,249,17.98, -224.34, -85.37,0,0,0,0,0,25,100,1),
(632485,178036,249,30.04, -218.20, -84.09,0,0,0,0,0,25,100,1),
(632486,178036,249,13.76, -215.21, -85.90,0,0,0,0,0,25,100,1),
(632487,178036,249,17.18, -204.54, -85.44,0,0,0,0,0,25,100,1),
(632488,178036,249,23.77, -193.86, -84.39,0,0,0,0,0,25,100,1),
(632489,178036,249,13.47, -195.08, -85.59,0,0,0,0,0,25,100,1),
(632490,178036,249,6.68, -185.63, -86.29,0,0,0,0,0,25,100,1),
(632491,178036,249,0.12, -188.72, -86.94,0,0,0,0,0,25,100,1);

/* rev 868 */
-- lower speed_run for Melizza Brimbuzzle (entry 12277)
update creature_template set speed_run='0.8' where entry=12277;

/* Add missing GO template Portal to Karazhan (but with wrong displayid, TBC not exist in pretbc)
 * spell effect coordination for spell 28147 (portal to karazhan) */
DELETE FROM `spell_target_position` WHERE `id`=28147;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('28147', '0', '-11125.22', '-2016.29', '47.146', '0.68');
DELETE FROM `gameobject_template` WHERE `entry`=181146;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `size`, `data0`, `data1`, `data2`) VALUES
(181146, 22, 4398, 'Portal to Karazhan', 64, 1, 28147, 0, 1);

/* REV 888 by Mordenthral */
-- Some drop date fixes
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-3 WHERE `item` = 2607;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-8 WHERE `item` = 5463;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `item` = '5519';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `item` = '1598';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE `item` = '2939';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-4' WHERE `item` = '2606';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-11' WHERE `item` = '884';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `item` = '3014';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-1' WHERE `entry` = '2725' AND `item` = '4612';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-2' WHERE `entry` = '2726' AND `item` = '4612';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-11' WHERE `item` = '8428';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE `item` = '4518' OR `item` = '4519' OR `item` = '4520';

-- Pristine Yeti Horn drops, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-13' WHERE `entry` = '7459' AND `item` = '12367';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-13' WHERE `entry` = '7460' AND `item` = '12367';

-- Drop for Breastplate of Bloodthirst (Pristine Hide of the Beast, up from 0.77%)
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry` = '10430' AND `item` = '12731';

-- Uncracked Chillwind Horn, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE `entry` = '7447' AND `item` = '12444';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-18' WHERE `entry` = '7448' AND `item` = '12444';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `entry` = '7449' AND `item` = '12444';

-- Blue-feathered Amulet, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-1.5' WHERE `item` = '12524';

-- Shardtooth Meat, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-7' WHERE `entry` = '7444' AND `item` = '12622';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `entry` = '7443' AND `item` = '12622';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry` = '7445' AND `item` = '12622';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry` = '7446' AND `item` = '12622';

-- Chillwind Meat, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-8' WHERE `entry` = '7447' AND `item` = '12623';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE `entry` = '7448' AND `item` = '12623';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE `entry` = '7449' AND `item` = '12623';

-- Blue-feathered Necklace, down from 50%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.7' WHERE `entry` = '7452' AND `item` = '12558';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.7' WHERE `entry` = '7453' AND `item` = '12558';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='3' WHERE `entry` = '7454' AND `item` = '12558';

-- Frostmaul Shards, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-13' WHERE `entry` = '7428' AND `item` = '12334';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-13' WHERE `entry` = '7428' AND `item` = '12334';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-2' WHERE `entry` = '10198' AND `item` = '12334';

-- Crudely-written Log, down from 100% quest item to an item that begins a quest
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='18' WHERE `entry` = '10738' AND `item` = '12842';

-- Toxic Horror Droplet, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-43' WHERE `entry` = '7132' AND `item` = '12822';

-- Empty Firewater Flask, down from 10%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE `item` = '12771';

-- Red Burlap Bandana, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-55' WHERE `item` = '752';

-- Tough Wolf Meat down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `item` = '750';

-- Torn Murloc Fin, down from 50%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `item` = '780';

-- Gold Dust, down from 50%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `item` = '773' AND (`entry`='40' OR `entry`='327');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `item` = '773' AND `entry`='475';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `item` = '773' AND `entry`='476';

-- Large Candle, down from 66%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `item` = '772' AND (`entry`='40' OR `entry`='327');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item` = '772' AND `entry`='475';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `item` = '772' AND `entry`='476';

-- Red Linen Bandana, down from 66%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-31' WHERE `entry` = '474' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `entry` = '116' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `entry` = '880' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-12' WHERE `entry` = '881' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `entry` = '473' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE `entry` = '6927' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `entry` = '6846' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `entry` = '6866' AND `item` = '1019';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-2' WHERE `entry` = '583' AND `item` = '1019';

-- Intact Makrura Eye, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-58' WHERE (`entry`='3103' OR `entry`='3104') AND `item`='4887';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-35' WHERE (`entry`='3105' OR `entry`='3141') AND `item`='4887';

-- Crawler Mucus, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-63' WHERE (`entry`='3106' OR `entry`='3107') AND `item`='4888';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-13' WHERE (`entry`='3108' OR `entry`='3228') AND `item`='4888';

-- Canvas Scraps, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-26' WHERE (`entry`='3128' OR `entry`='3129') AND `item`='4870';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-9' WHERE (`entry`='3192' OR `entry`='5809') AND `item`='4870';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-5' WHERE (`entry`='3119' OR `entry`='3120') AND `item`='4870';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1.5' WHERE `entry`='5808' AND `item`='4870';

-- Venomtail Poison Sac, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-30' WHERE `entry`='3127' AND `item`='4886';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-15' WHERE `entry`='3226' AND `item`='4886';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-0.4' WHERE `entry`='5823' AND `item`='4886';

-- Durotar Tiger Fur, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-53' WHERE `entry`='3121' AND `item`='4892';

-- Searing Collar, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-25' WHERE (`entry`='3197' OR `entry`='3198') AND `item`='4871';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-14' WHERE `entry`='3195' AND `item`='4871';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-5' WHERE `entry`='3196' AND `item`='4871';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1' WHERE `entry`='3199' AND `item`='4871';

-- Windfury Talon, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE (`entry`='2962' OR `entry`='2963') AND `item`='4751';

-- Prairie Wolf Paw, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-30' WHERE `entry`='2958' AND `item`='4758';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-6' WHERE `entry`='2959' AND `item`='4758';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-0.5' WHERE `entry`='2960' AND `item`='4758';

-- Plainstrider Talon, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-33' WHERE `entry`='2956' AND `item`='4759';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-13' WHERE `entry`='2957' AND `item`='4759';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-3' WHERE `entry`='3068' AND `item`='4759';

-- Trophy Swoop Quill, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-86' WHERE `entry`='2969' AND `item`='4769';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-64' WHERE `entry`='2970' AND `item`='4769';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-23' WHERE `entry`='2971' AND `item`='4769';

-- Flatland Prowler Claw, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-23' WHERE `entry`='3566' AND `item`='5203';

-- Stalker Claws, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-25' WHERE `entry`='2959' AND `item`='4801';

-- Cougar Claws, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-26' WHERE `entry`='3035' AND `item`='4802';

-- Prairie Alpha Tooth, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-28' WHERE `entry`='2960' AND `item`='4803';

-- Restabilization Cog, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-35' WHERE (`entry`='1211' OR `entry`='8503') AND `item`='3083';

-- Gyromechanic Gear, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-35' WHERE (`entry`='1211' OR `entry`='8503') AND `item`='3084';

-- Thick Bear Fur, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-34' WHERE `entry`='1128' AND `item`='6952';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-6' WHERE `entry`='1196' AND `item`='6952';

-- Wendigo Mane, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-53' WHERE `entry`='1134' AND `item`='2671';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-43' WHERE `entry`='1135' AND `item`='2671';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-8' WHERE (`entry`='1137' OR `entry`='1271') AND `item`='2671';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-0.3' WHERE `entry`='1388' AND `item`='2671';

-- Shimmerweed, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-38' WHERE `entry`='1397' AND `item`='2676';

-- Darkhound Blood, down from 35%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-27' WHERE `entry`='1548' AND `item`='2858';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-0.6' WHERE `entry`='1549' AND `item`='2858';

-- Vile Fin Scale, up from 40%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE (`entry`='1543' OR `entry`='1544' OR `entry`='1545') AND `item`='2859';

-- Scarlet Insignia Ring
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-11' WHERE (`entry`='1535' OR `entry`='1538' OR `entry`='1664') AND `item`='2875';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-48' WHERE `entry`='1536' AND `item`='2875';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-40' WHERE (`entry`='1537' OR `entry`='1662') AND `item`='2875';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-7' WHERE (`entry`='1539' OR `entry`='1540') AND `item`='2875';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-3' WHERE (`entry`='1660' OR `entry`='1665') AND `item`='2875';

-- Dusbat Pelt, down from 33% for Vampiric Duskbats
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-14' WHERE `entry`='1554' AND `item`='2876';

-- Blackened Skull, down from 40%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-30' WHERE `entry`='1522' AND `item`='3163';

-- Bloodfeather Belt, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-36' WHERE (`entry`='2015' OR `entry`='2017' OR `entry`='2018' OR `entry`='2019' OR `entry`='2020' OR `entry`='2021' OR `entry`='14431') AND `item`='5204';

-- Timberling Seed, down from 80% or 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE (`entry`='2022' OR `entry`='2025' OR `entry`='2027' OR `entry`='2166' OR `entry`='2030' OR `entry`='2029') AND `item`='5168';

-- Mossy Tumor, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-42' WHERE `entry`='2027' AND `item`='5170';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-55' WHERE `entry`='2029' AND `item`='5170';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-48' WHERE `entry`='2030' AND `item`='5170';

-- Nightsaber Fang, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-35' WHERE (`entry`='2042' OR `entry`='14430' OR `entry`='2043' OR `entry`='2033' OR `entry`='2034') AND `item`='3409';

-- Strigid Owl Feather, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-40' WHERE (`entry`='1995' OR `entry`='1996' OR `entry`='1997') AND `item`='3411';

-- Webwood Spider Silk, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-25' WHERE (`entry`='1998' OR `entry`='1999' OR `entry`='2000' OR `entry`='2001') AND `item`='3412';

/* REV 889 by Black_one */
-- Wayponts for one Onyxian Warder (commented waypoints are not needed)
UPDATE `creature` SET `position_x` = '45,704941', `position_y` = '-85,184860', `position_z` = '-26,357567', `orientation` = '5,183558', `MovementType`='2' WHERE `guid` = '52049';
DELETE FROM `creature_movement` WHERE `id` = '52049';
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(52049, 1, 45.1649, -79.9775, -26.4524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 2, 25.2758, -73.4347, -28.7508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 2, 9.62334, -71.1583, -26.8569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 3, -1.71489, -80.2216, -26.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 4, -10.4748, -90.6156, -29.4632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 6, -17.5803, -96.5769, -31.6321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 7, -35.0536, -97.4858, -37.4012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 5, -50.9056, -97.7961, -38.6522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 6, -72.1815, -98.2126, -35.5366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 7, -88.7118, -103.156, -37.4939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 11, -100.891, -113.306, -41.3956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 8, -115.277, -125.016, -49.2459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 13, -130.939, -137.765, -52.5492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 9, -146.194, -150.183, -53.5302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 10, -161.014, -162.247, -58.3296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 16, -166.622, -168.918, -61.7925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 11, -171.058, -178.788, -64.7959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 18, -169.644, -190.744, -66.4338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 12, -165.253, -201.324, -66.2095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 20, -169.644, -190.744, -66.4338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 13, -171.058, -178.788, -64.7959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 16, -166.622, -168.918, -61.7925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 14, -161.014, -162.247, -58.3296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 15, -146.194, -150.183, -53.5302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 13, -130.939, -137.765, -52.5492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 16, -115.277, -125.016, -49.2459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 11, -100.891, -113.306, -41.3956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 17, -88.7118, -103.156, -37.4939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 18, -72.1815, -98.2126, -35.5366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 19, -50.9056, -97.7961, -38.6522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 7, -35.0536, -97.4858, -37.4012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (52049, 6, -17.5803, -96.5769, -31.6321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 20, -10.4748, -90.6156, -29.4632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 21, -1.71489, -80.2216, -26.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52049, 22, 9.62334, -71.1583, -26.8569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- (52049, 2, 25.2758, -73.4347, -28.7508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Onyxia's Lair opened
UPDATE `areatrigger_teleport` SET `required_quest_done` = '0', `required_failed_text` = '', `required_level` = '60' WHERE `id` = '2848';
UPDATE `instance_template` SET `reset_delay` = '7' WHERE `map` = '249';

/* REV 899 by Traz */
-- Fixes the orientation when entering and leaving Zul'Gurub
UPDATE `areatrigger_teleport` SET `target_position_x` = '-11916.63', `target_position_y` = '-1230.52', `target_position_z` = '92.5334', `target_orientation` = '4.7' WHERE `id` = '3928';
UPDATE `areatrigger_teleport` SET `target_position_x` = '-11916.1', `target_position_y` = '-1208.37', `target_position_z` = '92.2868', `target_orientation` = '1.58' WHERE `id` = '3930';

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 801_900 (9)';