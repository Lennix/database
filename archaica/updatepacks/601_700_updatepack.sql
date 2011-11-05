/* Updatepack rev. 601 - 700 */

-- Some multiplied data in quest_end_scripts
DELETE FROM `quest_end_scripts` WHERE `id` in (67, 231, 410);
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(67, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -10953.3, 1568.47, 46.978, 3.392, ''),
(231, 0, 10, 3301, 30000, 0, 0, 0, 0, 0, 0, 0, -10238, 353.657, 50.951, 2.7, ''),
(410, 5, 10, 1946, 180000, 0, 0, 0, 0, 0, 0, 0, 2468.28, 15.26, 23.89, 0.37, '');

-- Proper cooldown fro Linken's Boomerang
UPDATE `item_template` SET `spellcooldown_1`='180000' WHERE `entry`=11905;

-- Morgan Ladimore should be friendly
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE `entry`=3301;

-- Make doors with flag 4 untargetable
UPDATE `gameobject_template` SET `faction`='114' WHERE `type`=0 AND `flags`&4;

-- Proper spells for Fire Nova Totems
UPDATE `creature_template` SET `spell1` = '8443', `spell2` = '8350' WHERE `entry`=5879;
UPDATE `creature_template` SET `spell1` = '8504', `spell2` = '8508' WHERE `entry`=6110;
UPDATE `creature_template` SET `spell1` = '8505', `spell2` = '8509' WHERE `entry`=6111;
UPDATE `creature_template` SET `spell1` = '11310', `spell2` = '11312' WHERE `entry`=7844;
UPDATE `creature_template` SET `spell1` = '11311', `spell2` = '11313' WHERE `entry`=7845;

/* REV 612 */
-- Barron Geddon's melee attack spell school - fire
UPDATE `creature_template` SET `dmgschool` = '2' WHERE `entry` = '12056' ;

-- Fix for Journeyman Blacksmithing - was able to teach at BS skill 0
UPDATE `npc_trainer` SET `reqskill` = '164' WHERE `spell` = '2021';

-- Spirit Shade HP
UPDATE `creature_template` SET `minhealth` = '500', `maxhealth` = '500' WHERE `entry`=15261;
-- Zulian Prowler dmg
UPDATE `creature_template` SET `mindmg` = '80', `maxdmg` = '90' WHERE `entry`=15101;
-- Bone minion dmg
UPDATE `creature_template` SET `mindmg` = '57', `maxdmg` = '70' WHERE `entry`=16119;
-- demented druid mana
UPDATE `creature_template` SET `minmana` = '4868', `maxmana` = '4868' WHERE `entry`=15260;
-- proper data for Putrid mushroom
UPDATE `gameobject_template` SET `faction`='14', `data2`='10' WHERE `entry`=180517;
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('24871', '0', '180517');
-- Hand of Edward Odd ppm rate
UPDATE `item_template` SET `spellid_1` = '18803', `spellppmRate_1` = '1.2' WHERE `entry` =2243;
-- Mar'li should NOT by immune to TAUNT
UPDATE `creature_template` SET `flags_extra`='1' WHERE `entry`=14510;

/* REV 620 */
-- Item "Symbol of Life" is no more needed to complete Henze Faulk's quest --
-- Issue: Player must to run to the Stormwind, take an new Symbol of Life and run back --
-- But Henze Faulk is dead, again. Player must revive him again, and again to run to the SW, for new Symbol of Life --
-- Quest is impossible to complete. --
UPDATE `quest_template` SET `ReqItemId1`=0, `ReqItemCount1`=0 WHERE `entry`=1786;

/* REV 623 */
-- Spawn Building Mounting Guard in the world

/* Arathi Highlands */
DELETE FROM `creature` WHERE `guid` IN ('2536431', '2536432', '2536433', '2536434', '2536435', '2536436', '2536437', '2536438', '2536439', '2536440', '2536441', '2536442', '2536443', '2536444', '2536445', '2536446', '2536447');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536431, 100009, 0, 0, 0, -1711.82, -1826.34, 109.131, 0.0119335, 25, 0, 0, 8, 0, 0, 0),
(2536432, 100009, 0, 0, 0, -1683.28, -1803.48, 82.8511, 6.23543, 25, 0, 0, 8, 0, 0, 0),
(2536433, 100009, 0, 0, 0, -1694.25, -1914.48, 81.727, 1.55524, 25, 0, 0, 8, 0, 0, 0),
(2536434, 100009, 0, 0, 0, -1549.77, -1930.17, 63.3341, 1.48378, 25, 0, 0, 8, 0, 0, 0),
(2536435, 100009, 0, 0, 0, -1528.45, -1870.46, 69.5533, 1.60564, 25, 0, 0, 8, 0, 0, 0),
(2536436, 100009, 0, 0, 0, -1553.07, -1668.42, 68.7181, 4.13462, 25, 0, 0, 8, 0, 0, 0),
(2536437, 100009, 0, 0, 0, -899.269, -3547.24, 75.6155, 3.11441, 25, 0, 0, 8, 0, 0, 0),
(2536438, 100009, 0, 0, 0, -1552.99, -3029.53, 13.6461, 5.53154, 25, 0, 0, 8, 0, 0, 0),
(2536439, 100009, 0, 0, 0, -1506.57, -3020.67, 12.7436, 1.56763, 25, 0, 0, 8, 0, 0, 0),
(2536440, 100009, 0, 0, 0, -1477.83, -3110.57, 14.015, 5.49463, 25, 0, 0, 8, 0, 0, 0),
(2536441, 100009, 0, 0, 0, -1951.19, -3326.41, 56.9008, 6.26822, 25, 0, 0, 8, 0, 0, 0),
(2536442, 100009, 0, 0, 0, -998.888, -2893.15, 63.6399, 3.44082, 25, 0, 0, 8, 0, 0, 0),
(2536443, 100009, 0, 0, 0, -1083.9, -2914.17, 42.7504, 4.69746, 25, 0, 0, 8, 0, 0, 0),
(2536444, 100009, 0, 0, 0, -787.952, -2081.65, 34.9718, 0.761626, 25, 0, 0, 8, 0, 0, 0),
(2536445, 100009, 0, 0, 0, -882.694, -2034.03, 34.4163, 1.55194, 25, 0, 0, 8, 0, 0, 0),
(2536446, 100009, 0, 0, 0, -770.347, -1988.96, 34.5276, 0.803453, 25, 0, 0, 8, 0, 0, 0),
(2536447, 100009, 0, 0, 0, -1195.94, -2100.19, 51.2221, 5.17763, 25, 0, 0, 8, 0, 0, 0);

/* Durotar */
DELETE FROM `creature` WHERE `guid` IN ('2536448');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536448, 100009, 1, 0, 0, 1341.11, -4644.12, 24.6175, 1.86762, 25, 0, 0, 8, 0, 0, 0);

/* The Hinterlands */
DELETE FROM `creature` WHERE `guid` IN ('2536449', '2536450', '2536451');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536449, 100009, 0, 0, 0, 448.762, -3790.72, 120.723, 0.29075, 25, 0, 0, 8, 0, 0, 0),
(2536450, 100009, 0, 0, 0, -621.375, -4577.76, 11.6871, 2.32022, 25, 0, 0, 8, 0, 0, 0),
(2536451, 100009, 0, 0, 0, -612.614, -4591.75, 11.6871, 5.53093, 25, 0, 0, 8, 0, 0, 0);

-- Fix faction for portal dragons + their respawn time 5 days
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE `entry` IN ('14889', '14888', '14887', '14890', '6109');
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('14889', '14888', '14887', '14890', '6109');
 
-- Spawn of Lord Kazzak
DELETE FROM `creature` WHERE `id` = '12397';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536430, 12397, 0, 0, 0, -12238.4, -2475.08, -2.76937, 5.94447, 604800, 0, 0, 347581, 113480, 0, 0);

-- Molten Core fixes
-- Missing entry of Geddon's circle
DELETE FROM `gameobject_template` WHERE `entry`=178188;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(178188, 6, 410, 'Molten Core Circle GEDDON', 114, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Some trash mobs melee attack school - fire
UPDATE `creature_template` SET `dmgschool` = '2' WHERE `entry` IN (11666, 11667, 11668, 12265);

-- Firesworn mana (for Immolate spell)
UPDATE `creature_template` SET `minmana` = '30562', `maxmana` = '30562' WHERE `entry` =12099;

-- Spawn of Ragnaros --

/* Runes and circles for MC */
DELETE FROM `gameobject` WHERE `id` IN (176951, 176952, 176953, 176954, 176955, 176956, 176957, 178187, 178188, 178189, 178190, 178191, 178192, 178193);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(632393, 176951, 409, 601.672, -1174.61, -196.072, 3.14159, 0, 0, 0, 0, 600, 100, 1), -- Sulfuron
(632394, 178187, 409, 601.672, -1174.61, -196.072, 3.14159, 0, 0, 0, 0, 600, 100, 1),
(632395, 176952, 409, 748.839, -985.16, -178.283, 3.14159, 0, 0, 0, 0, 600, 100, 1), -- Geddon
(632396, 178188, 409, 748.839, -985.16, -178.283, 3.14159, 0, 0, 0, 0, 600, 100, 1),
(632397, 176953, 409, 583.7, -806.738, -204.961, 3.14159, 0, 0, 0, 0, 600, 100, 1), -- Shazzrah
(632398, 178189, 409, 583.7, -806.738, -204.961, 3.14159, 0, 0, 0, 0, 600, 100, 1),
(632399, 176954, 409, 795.536, -974.253, -207.788, 3.14159, 0, 0, 0, 0, 600, 100, 1), -- Golemagg
(632400, 178190, 409, 795.536, -974.253, -207.788, 3.14159, 0, 0, 0, 0, 600, 100, 1),
(632401, 176955, 409, 694.229, -495.598, -214.329, 3.14159, 0, 0, 1, 0, 600, 100, 1), -- Garr
(632402, 178191, 409, 694.229, -495.598, -214.329, 3.14159, 0, 0, 1, 0, 600, 100, 1),
(632403, 176956, 409, 1132.11, -1017.27, -186.494, 3.14159, 0, 0, 0, 0, 600, 100, 1), -- Magmadar
(632404, 178192, 409, 1132.11, -1017.27, -186.494, 3.14159, 0, 0, 0, 0, 600, 100, 1),
(632405, 176957, 409, 897.058, -551.546, -203.953, 3.14159, 0, 0, 1, 0, 600, 100, 1), -- Gehennas
(632406, 178193, 409, 897.058, -551.546, -203.953, 3.14159, 0, 0, 1, 0, 600, 100, 1);

/* Lord Kazzak's damage and extra_flags */
UPDATE `creature_template` SET `mindmg` = '1200', `maxdmg` = '1500', `baseattacktime` = '2000', `flags_extra`=`flags_extra`&~1 WHERE `entry` =12397;

-- Remove Reginald Windsor from world + waypoints also --
DELETE FROM `creature` WHERE `id`=12580;
DELETE FROM `creature_movement` WHERE `id`=86900;
-- Lower movement speed of Reginald Windsor (entry 12580), Highlord Bolvar Fordragon (entry 1748) and Onyxia's Elite Guard (entry 12739) --
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.14*1 WHERE `entry` IN (12580, 1748, 12739);
-- Disable RegenHealth formula for Reginald Windsor --
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry`=12580;

/* REV 630 */
-- Fixed ZG bosses bind to instance
UPDATE `creature_template` SET `flags_extra` = '257' WHERE `entry` IN (14507, 14517, 14509, 14515, 14834, 11382, 15083, 15114, 11380) ;

-- Molten Core bosses - added taunt immunity + bind to instance
UPDATE `creature_template` SET `flags_extra` = '257' WHERE `entry` IN (12118, 11982, 12259, 12057, 12264, 12056, 11988, 12098, 12018, 11502) ;

/* REV 631 */
-- New 'MinLevel' for quest 254 (Digging Through the Dirt) - from 31 to 20 --
UPDATE `quest_template` SET `MinLevel`=20 WHERE `entry`=254;
-- Remove random movement for Zulian Prowler (15101) --
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`=15101;

/* REV 632 */
-- Spawn of Ragnaros --
DELETE FROM `creature` WHERE `guid` IN (2536452);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536452, 11502, 409, 0, 0, 838.51, -829.84, -232.00, 1.70, 604800, 0, 0, 1100000, 0, 0, 0);
-- Lower respawn time for Son of Hakkar(s) --
UPDATE `creature` SET `spawntimesecs`=30 WHERE `id`=11357;

/* REV 633 */
-- Fix quest The Missing Diplomat (part 11) --
UPDATE `quest_template` SET `SpecialFlags`=2, `ReqCreatureOrGOId1`=0, `ReqCreatureOrGOCount1`=0 WHERE `entry`=1249;

/* REV 634 */
-- Fix drop item for quest Dragonmaw Shinbones (entry 1846) --
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=33 WHERE `item`=7131;

-- proper data for Duke Hydraxis quests
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `entry` IN (6804, 6805);

/* REV 639 */
-- quest Did You Lose This? should be now available for horde
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `entry` =3321 ;

/* REV 647 */
-- Shadowforge Ambusher is no longer an elite creature --
UPDATE `creature_template` SET `rank`=0 WHERE `entry`=7091;

/* REV 649 */
-- Higher damage for Molten Core creatures --
-- Trash --
UPDATE `creature_template` SET `dmg_multiplier`=2.20 WHERE `dmg_multiplier`=1 AND `entry` IN (11658, 11659, 11661, 11662, 11663, 11664, 11665, 11666, 11667, 11668, 11671, 11672, 11673, 12076, 12099, 12100, 12101, 12119);
-- Boss --
UPDATE `creature_template` SET `dmg_multiplier`=2 WHERE `dmg_multiplier`=1 AND `entry` IN (11502, 11982, 11988, 12018, 12056, 12057, 12098, 12118, 12259, 12264);
-- Lower dmg for Flame Imp (he should cast very often his Fire Nova spell) --
UPDATE `creature_template` SET `dmg_multiplier`=0.50 WHERE `dmg_multiplier`=1 AND `entry` IN (11669);
-- Lower drop chance for Tier1 items (by 10% from actual_drop_chance) --
-- UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.9 * `ChanceOrQuestChance`) WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `itemset` BETWEEN 201 AND 209)
-- Add Stun immunity for Lava Surger --
UPDATE `creature_template` SET `mechanic_immune_mask`=1+2048 WHERE `entry`=12101;
-- Exit portal of Molten Core instance will teleport player outside from BRD, not into BRD --
UPDATE `areatrigger_teleport` SET `target_map`=0, `target_position_x`='-7536.02', `target_position_y`='-1063.23', `target_position_z`='180.97' WHERE `id`=2890;
UPDATE `areatrigger_teleport` SET `required_quest_done`='', `required_failed_text`='' WHERE (`id`='2890');

/* REV 651 */
-- item Wavethrasher Scales should drop only if you have quest accepted
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-31.8124' WHERE `entry` = '6347' AND `item` = '20087';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-28.9846' WHERE `entry` = '6348' AND `item` = '20087';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-15.18' WHERE `entry` = '6349' AND `item` = '20087';

/* REV 652 */
-- Remove drop item "Filled Containment Chest" from Rift Spawn drop list --
DELETE FROM `creature_loot_template` WHERE `entry`=6492 AND `item`=7292;
-- Spawn Rift Spawns into Stormwind Tavern near Tower of Mages --
DELETE FROM `creature` WHERE `guid` IN (2536453, 2536454, 2536455, 2536456, 2536457);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536453, 6492, 0, 0, 0, -9102.96, 837.646, 105.124, 5.58547, 300, 5, 0, 355, 0, 0, 1),
(2536454, 6492, 0, 0, 0, -9088.91, 834.261, 108.425, 3.62197, 300, 5, 0, 386, 0, 0, 1),
(2536455, 6492, 0, 0, 0, -9107.58, 832.633, 97.629, 0.127231, 300, 5, 0, 355, 0, 0, 1),
(2536456, 6492, 0, 0, 0, -9090.04, 821.649, 115.667, 4.85897, 300, 5, 0, 355, 0, 0, 1),
(2536457, 6492, 0, 0, 0, -9092.3, 830.458, 115.667, 4.85897, 300, 5, 0, 355, 0, 0, 1);

/* REV 653 */
-- Delete NPC for event Children's week - it should not be spawned 
DELETE FROM `creature` WHERE `id` = '14444';

-- Molten Core 
-- Fire / Nature resistance for all NPCs
UPDATE `creature_template` SET `resistance1` = '0' AND `resistance2` = '400' WHERE `entry` IN (12118, 11982, 12259, 12264, 12056, 11988, 12098, 12018, 11502);
UPDATE `creature_template` SET `resistance2` = '250' AND `resistance3` = '400' WHERE `entry` = 12057;  -- boss Garr 
UPDATE `creature_template` SET `resistance1` = '0' AND `resistance2` = '400' WHERE `entry` IN (11673, 11671, 11672, 11668, 11666, 11669, 11667, 11661, 11664, 11663, 11662, 12119, 12265, 11659, 11658, 12143);
UPDATE `creature_template` SET `resistance2` = '250' AND `resistance3` = '400' WHERE `entry` IN (12099, 11665, 12076, 12100, 12101); -- other earth elementals
  
-- Possible fix for problems with entering the instance
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `entry` =7848;
DELETE FROM `creature_involvedrelation` WHERE `id` = 14387 AND `quest`=7487;
DELETE FROM `creature_questrelation` WHERE `id` = 14387 AND `quest`=7487;

/* REV 655 */
-- Remove random movement for Scarlet Trainee
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=6575;

/* REV 657 */
-- more proper hakkar's HP
UPDATE `creature_template` SET `minhealth` = '1045804', `maxhealth` = '1045804' WHERE `entry`=14834;

/* REV 659 */
-- proper spawntimes of trash mobs in Molten Core
UPDATE `creature` SET `spawntimesecs` = '28800' WHERE `id` IN ('11659', '11658'); -- 8 hours: Molten Destroyer, Molten Giant
UPDATE `creature` SET `spawntimesecs` = '7200' WHERE `id` IN ('11668', '11665', '12076', '12100', '11666', '11667'); -- 2 hours: Firelord, Lava Annihilator, Lava Elemental, Lava Reaver, Firewalker, Flameguard 
UPDATE `creature` SET `spawntimesecs` = '1500' WHERE `id` = '12101'; -- 25 minutes: Lava Surger
UPDATE `creature` SET `spawntimesecs` = '1080' WHERE `id` = '11673'; -- 18 minutes: Ancient Core Hound
UPDATE `creature` SET `spawntimesecs` = '480' WHERE `id` = '11669'; -- 8 minutes: Flame Imp
UPDATE `creature` SET `spawntimesecs` = '3600' WHERE `id` = '11671'; -- 1 hour: Core Hound

/* REV 661 */
-- Red Helper Box proper spell
UPDATE `item_template` SET `spellid_1` = '26536' WHERE `entry` =21305;
-- Snowman Kit proper spell
UPDATE `item_template` SET `spellid_1` = '26045' WHERE `entry` =21309;

-- missing templates
DELETE FROM `creature_template` WHERE `entry` IN (14801, 15705, 15710, 15721, 15729, 15832, 15835, 15838);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(14801, 0, 0, 7899, 0, 'Wild Polymorph Target', '', 0, 1, 1, 8, 8, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15705, 0, 0, 15663, 0, 'Winter''s Little Helper', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15710, 0, 0, 15671, 0, 'Tiny Snowman', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15721, 0, 0, 15684, 0, 'Mechanical Greench', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, ''),
(15729, 0, 0, 15687, 0, 'Father Winter''s Helper (BIG) gm', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15832, 0, 0, 15806, 0, 'Father Winter''s Helper (BIG) rm', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15835, 0, 0, 15799, 0, 'Father Winter''s Helper (BIG) rf', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, ''),
(15838, 0, 0, 15795, 0, 'Father Winter''s Helper (BIG) gf', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, '');

/* REV 664 */
-- some TBC datas deleted
DELETE FROM `game_event` WHERE `entry` IN ('3', '21', '33', '34');

/* REV 667 */
-- Some NPCs in Blasted Lands should be now immune on charm effects, and some on fear
UPDATE `creature_template` SET `mechanic_immune_mask` = '1' WHERE `entry` = '12396';
UPDATE `creature_template` SET `mechanic_immune_mask` = '17' WHERE `entry` IN ('8717', '8716');

-- Molten Core
-- Flame imps - lower damage
UPDATE `creature_template` SET `mindmg` = '150', `maxdmg` = '200' WHERE `entry` = '11669' ;

-- Thorkaf Dragoneye - he is now albe to teach Dragonscale recipes
UPDATE `creature_template` SET `trainer_spell` = '10656' WHERE `entry` = '7867' ;

/* REV 673 */
/* Winter Veil event */
-- Winter Veil event start
UPDATE `game_event` SET `start_time` = '2010-12-13 23:00:00' WHERE `entry` = 2;

-- Quest The Hero of the Day is now accetable after completing Metzen the Reindeer and is finisable at correct GO 
DELETE FROM `creature_questrelation` WHERE `quest` = '8763';
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
('13418', '8763'),
('13433', '8763'); 
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = '8763';
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
('180715', '8763'); 
UPDATE `quest_template` SET `PrevQuestId` = '8746' WHERE `entry` = '8763';

-- Quest The Feast of Winter Veil (Aliance) should now 125 rep with Ironforge, Stormwind, Darnassus and Gnomeregan Exiles
UPDATE `quest_template` SET `Minlevel` = '10', `RewMoneyMaxLevel` = '390', `RewRepFaction1` = '469', `RewRepValue1` = '125' WHERE `entry` = '7063';

-- Quest The Feast of Winter Veil (Horde) should give 125 rep with Orgrimmar, Thunder Bluff, Undercity and Darkspear Trolls
UPDATE `quest_template` SET `Minlevel` = '10', `RewRepFaction1` = '67', `RewRepValue1` = '125', `DetailsEmote1` = '1', `DetailsEmote2` = '1', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '66' WHERE `entry` = '7061';

-- Some quests have now correct MinLevel
UPDATE `quest_template` SET `Minlevel` = '30' WHERE `entry` IN ('7042, 6963');
UPDATE `quest_template` SET `Minlevel` = '10' WHERE `entry` IN ('7062', '6964');
UPDATE `quest_template` SET `Minlevel` = '40' WHERE `entry` = '8746';

/* REV 675 */
-- Molten Core: Baron Geddon´s damage
UPDATE `creature_template` SET `dmg_multiplier` = '25,2' WHERE `entry` = '12056';

/* REV 678 */
-- Life Symbol is no more needed for to complete quest The Tome of Divinity (dwarf version) --
UPDATE `quest_template` SET `ReqItemId1`=0, `ReqItemCount1`=0 WHERE `entry`=1783;

/* REV 679 */
-- Added missing entry into creature_template - Primal Blessing Visual --
DELETE FROM `creature_template` WHERE `entry`=15109;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(15109, 0, 0, 15214, 0, 'Primal Blessing Visual', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 2, '');

/* REV 682 */
-- Added npc_text for NPC Goli Krumn (entry 1365) - part of Winter Veil event --
DELETE FROM `npc_text` WHERE `ID`=30023;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(30023, 'Vile goblins... anything for a gold coin.');
DELETE FROM `npc_gossip` WHERE `npc_guid`=86181 AND `textid`=30023;
INSERT INTO `npc_gossip` (`npc_guid` ,`textid`) VALUES
('86181', '30023');

-- Added UNIT_NPC_FLAG_GOSSIP (1) to Wulmort Jinglepocket <Smokywood Pastures> (part of Winter Veil event) --
UPDATE `creature_template` SET `npcflag`=(6+1) WHERE `entry`=13433;

-- Proper RequiredRaces value for quest "Winter's Presents" (entry 8827) (alliance version) --
UPDATE `quest_template` SET `RequiredRaces`=77 WHERE `entry`=8827;

-- Added missing quest "Winter's Presents" (entry 8828) (horde version) --
DELETE FROM `quest_template` WHERE `entry`=8828;
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES
(8828, 2, -22, 1, 0, 0, 0, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Winter''s Presents', 'I hear Great-father Winter - with the generous support of Smokeywood Pastures - has put presents for everyone under the tree in Orgrimmar. I wish I could go, but I''ve got to look after the PX-238 Winter Wondervolt.$b$bBut you should definitely check it out. I''m sure Great-father Winter has some presents with your name on them.', 'Speak with Great-father Winter. He is located near the Smokywood Pastures vendor area in Orgrimmar.', 'Oh, ho hello there! You can only be here for one reason: to open your Winter Veil presents.$B$BNow, don''t you worry, Greatfather Winter hasn''t forgotten about his favorite $R $C. Look under the tree and you''ll find your gifts.$B$BDuring this season of giving, perhaps your friends would also enjoy receiving some of Smokeywood Pasture''s excellent products?', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `id`=15732 AND `quest`=8828;
INSERT INTO `creature_questrelation` (`id` ,`quest`) VALUES
('15732', '8828');
DELETE FROM `creature_involvedrelation` WHERE `id`=13445 AND `quest`=8828;
INSERT INTO `creature_involvedrelation` (`id` ,`quest`) VALUES
('13445', '8828');

-- NPC Zenn Foulhoof will be turned into a toad, when player to complete quest Seek Redemption! --
DELETE FROM `quest_end_scripts` WHERE `id`=489 AND `command`=15 AND `datalong`=16707;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(489, 0, 15, 16707, 1, 'Turn NPC into a Toad');

-- Repeteable flag for quest "A Crew Under Fire" --
UPDATE `quest_template` SET `SpecialFlags`=1 WHERE `entry`=3382;
-- New faction (friendly with players, enemies with enviroment) for Captain Vanessa Beltis and his crew --
UPDATE `creature_template` SET `faction_A`=250, `faction_H`=250 WHERE `entry` IN (8380, 8386, 8382, 8378, 8381);

-- Libram of Focus -> repeatable
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|1 WHERE `entry` =7484;
-- Arathi Basin Qs
UPDATE `quest_template` SET `ExclusiveGroup` = '0' WHERE `ExclusiveGroup`=8370;
-- Gate to Cannon Master Willey -> non-clickable
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` =175969;
-- missing weather for ZG zone
INSERT IGNORE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES
(1977, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0);

/* REV 685 */
-- Lower speed for creature entry 2983 --
UPDATE `creature_template` SET `speed_run`='0.89286' WHERE `entry`=2983;

-- Added missing creature_template entry for creature Skeletal Scholomance Student --
DELETE FROM `creature_template` WHERE `entry`=11547;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(11547, 0, 0, 9785, 0, 'Skeletal Scholomance Student', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');

-- GameObject Dawn's Gambit (entry 176110) will trigger spell 18110 (scholomance students transform) --
UPDATE `gameobject_template` SET `data2`='2', `data3`='18110', `data4`='1' WHERE `entry`=176110;

/* REV 686 */
-- Added gossip npc flag for Awbee (entry 10740) --
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=10740;

/* REV 688 */
-- Vaelastrasz (set friendly/enemy handled by script)
UPDATE `creature_template` SET `faction_A` = '103',`faction_H` = '103', `npcflag` = '3' WHERE `entry`=13020;

DELETE FROM `spell_script_target` WHERE `entry` IN (7728, 23415);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(7728, 0, 92015), -- Summon Voidwalker
(23415, 1, 11583); -- Siphon Blessing

-- if SpecialFlags 4 is set, quests with QuestLevel <  player's level will not be shown in dialog menu
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|4 WHERE `entry` IN (8372, 8386, 8368, 8389, 8399, 8404, 8426, 8431, 8374, 8384, 8370, 8390, 8400, 8405, 8427, 8432, 8391, 8393, 8436, 8440, 8401, 8406, 8428, 8433, 8392, 8394, 8437, 8441, 8402, 8407, 8429, 8434, 8395, 8397, 8438, 8442, 8403, 8408, 8430, 8435, 8396, 8439, 8398, 8443);

-- relocate spell_proc_item_enchant data to updatepack since it was added to MZ core
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (8034, 8680, 13218, 13897, 20004, 20005, 20007);
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
( 8034,  9.000),    -- Frostbrand Weapon
( 8680,  7.000),    -- Instant Poison
(13218, 20.000),    -- Wound Poison
(13897,  6.000),    -- Fiery Weapon
(20004,  6.000),    -- Lifestealing
(20005,  1.600),    -- Icy Chill
(20007,  1.000);    -- Crusader

/* REV 695 */
-- New start/end times for Zul'Gurub Edge of Madness events --
UPDATE `game_event` SET `start_time`='2008-01-01 00:00:00', `occurence`='80640', `length`='20160' WHERE `entry`=31;
UPDATE `game_event` SET `start_time`='2008-01-15 00:00:00', `occurence`='80640', `length`='20160' WHERE `entry`=32;
UPDATE `game_event` SET `start_time`='2008-01-29 00:00:00', `occurence`='80640', `length`='20160' WHERE `entry`=29;
UPDATE `game_event` SET `start_time`='2008-02-12 00:00:00', `occurence`='80640', `length`='20160' WHERE `entry`=30;

-- Add taunt immunity to NPC Gri'lek --
UPDATE `creature_template` SET `flags_extra`=flags_extra|256 WHERE `entry`=15082;

-- Add a boss rank to NPC Renataki (15084), which is part of Edge of Madness in ZG --
UPDATE `creature_template` SET `rank`=3 WHERE `entry`=15084;

-- Proper HP and damage done for Nightmare Illusions --
UPDATE `creature_template` SET `maxhealth`=500, `minhealth`=500, `mindmg`=4500, `maxdmg`=5000 WHERE `entry`=15163;

/* REV 696 */
-- Boss rank and level 60 for NPC Malfurion Stormrage (entry 15362) --
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `rank`=3 WHERE `entry`=15362;

-- Spell target for spellid 25004 - Throw Nightmare Object --
DELETE FROM `spell_target_position` WHERE `id`=25004 AND `target_map`=1;
INSERT INTO `spell_target_position` (`id` ,`target_map` ,`target_position_x` ,`target_position_y` ,`target_position_z` ,`target_orientation`) VALUES
('25004', '1', '7733.85', '-2311.6', '451.41', '0.66');

/* Deletions: Those spells get correct bonus heal when calculated by formula in the core */
DELETE FROM spell_bonus_data WHERE entry = 5185;    -- Healing Touch
DELETE FROM spell_bonus_data WHERE entry = 1064;    -- Chain Heal
DELETE FROM spell_bonus_data WHERE entry = 139;     -- Renew
DELETE FROM spell_bonus_data WHERE entry = 774;     -- Rejuvenation
DELETE FROM spell_bonus_data WHERE entry = 2061;    -- Flash Heal
DELETE FROM spell_bonus_data WHERE entry = 2060;    -- Greater Heal
DELETE FROM spell_bonus_data WHERE entry = 1064;    -- Chain Heal

DELETE FROM spell_bonus_data WHERE entry IN (740, 2050, 2054);
INSERT INTO spell_bonus_data VALUES
(740,0,0.07,0,'Druid - Tranquility'),       -- Tranquility
(2050,1.42,0,0,'Priest - Lesser Heal'),     -- Lesser Heal
(2054,1.25,0,0,'Priest - Heal');            -- Heal

UPDATE spell_bonus_data SET direct_bonus = 0.305 WHERE entry = 596; -- Prayer of Healing
UPDATE spell_bonus_data SET direct_bonus = 0.3, dot_bonus = 0.0755 WHERE entry = 8936; -- Regrowth

/* REV 699 */
-- Marshal Windsor should be now healable
UPDATE `creature_template` SET `unit_flags` =unit_flags|4096 WHERE `entry` = '9023';

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 601_700 (7)';