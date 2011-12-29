/* Updatepack rev. 501 - 600 */
/* REV 506 - console errors fix */
/* Warsong Outrider should not be a civilian */
UPDATE `creature_template` SET `Civilian`='0' WHERE `entry`=12864;

/* Quest Restoring Fiery Flux Supplies via */
UPDATE `quest_template` SET `RequiredMaxRepValue`='3000' WHERE `entry` IN (7736, 8241, 8242);

/* Quest Gaining Acceptance */
UPDATE `quest_template` SET `RequiredMaxRepValue`='9000' WHERE `entry`=7737;

UPDATE `creature_template` SET `family`='0' WHERE `entry` IN (5048, 5224, 5225, 5755, 7268, 11371, 11372, 11373);
UPDATE `creature_template` SET `family`='24' WHERE `entry`=17252;

UPDATE `creature_template` SET `type`='1' WHERE `entry` IN (7381, 7382, 7384, 7385, 7389, 7390, 7395, 7552, 7553, 7555, 7562, 7565, 7567, 10658);
UPDATE `creature_template` SET `type`='7' WHERE `entry` IN (14305, 14444, 15186, 15699, 16069, 16085);

/* REV 507 - 508 */
DELETE FROM `creature` WHERE `id`=8440; -- Shade handled by script

UPDATE `item_template` SET `ScriptName`='' WHERE `entry` IN (10465, 10818);
UPDATE `item_template` SET `ScriptName`='' WHERE `entry`=18746;

/* REV 511 */
-- Cursed Marine armor
UPDATE `creature_template` SET `armor` = '887' WHERE `creature_template`.`entry`=1158;

-- Cursed Sailor armor
UPDATE `creature_template` SET `armor` = '887' WHERE `creature_template`.`entry`=1157;

/* REV 512 */
-- spawn NPC Ravasaur Trainers
DELETE FROM creature WHERE id IN (11702, 11701);
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(11702, 1, 0, 0, -6342, -659, -180, 1.753, 490, 0, 0, 4103, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(11701, 1, 0, 0, -7792, -2113, -265, 1.13, 490, 0, 0, 3857, 0, 0, 0);

/* REV 516 */
/* Missing data for quest 9032 */
DELETE FROM `quest_template` WHERE `entry`=9032;
INSERT INTO `quest_template` VALUES
(9032, 2, 25, 0, 58, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8961, 0, 8961, 0, 0, 0, 'Bodley''s Unfortunate Fate', 'The medallion contained Valthalak''s soul?  It''s no surprise it was guarded by such a powerful curse.$B$BLocating Bodley presents a bit of a problem.  Last time I heard of him, he was preparing to venture back into Blackrock Spire.  He was never heard of again.$B$BSeek him out in Blackrock Mountain, though I''m afraid to say he''s probably dead by now.  I suggest taking the goblin''s device with you, friend.', 'Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.', 'I am so glad that you can see me. Finally someone to talk to!$B$BWill you help us, $N? Help to undo the wrong that we perpetrated and put things to right? If it''s true that you already have the Top Piece of Lord Valthalak''s Amulet, then I think I can point you in the right direction to acquire the other two parts, reunite them and put an end to all of this.$B$BOh, by the way, hello, my name is Bodley. Nice to meet you!', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest`=9032;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('16012', '9032');
DELETE FROM `creature_involvedrelation` WHERE `quest`=9032;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('16033', '9032');
UPDATE `quest_template` SET `NextQuestId` = 9032, `NextQuestInChain` = 9032 WHERE `entry` IN (8957, 9016, 9017, 9018, 9019, 9020, 9021, 9022);

/* Missing template for Mithril Mechanical Dragonling */
DELETE FROM `creature_template` WHERE `entry`=25;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(25, 0, 0, 4465, 0, 'Mithril Mechanical Dragonling', NULL, 0, 45, 45, 2972, 2972, 0, 0, 2695, 2, 2, 0, 0.91, 1.14286, 1, 0, 76, 100, 0, 184, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 52, 76, 17, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 16384, 0, '');

/* Some spell_script_script_target data retrieved from UDB 0.12 addition 392 */
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(8283, 1, 4781),
(9012, 1, 6492),
(9082, 1, 6492),
(9976, 1, 7167),
(9976, 1, 7168),
(9976, 1, 8391),
(10345, 1, 25),
(10345, 1, 2678),
(10732, 1, 25),
(10732, 1, 2678),
(13461, 1, 7664),
(17016, 0, 176093),
(17698, 1, 11197),
(18666, 1, 10937),
(19952, 1, 11502),
(21794, 1, 10981),
(21866, 1, 10990),
(21885, 0, 178905),
(27892, 1, 16137),
(27893, 1, 16137),
(27928, 1, 16137),
(27929, 1, 16137),
(27935, 1, 16137),
(27936, 1, 16137);

/* REV 517 */
/* Stack Combat Mana potion */
UPDATE `item_template` SET `maxcount` = '10' WHERE `item_template`.`entry`=18841;

/* REV 521 */
/* Fishing loot data based on UDB 0.12 */
TRUNCATE `fishing_loot_template`;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(1, 11000, 100, 1, -11000, 1, 0, 0, 0),
(2, 11003, 100, 1, -11003, 1, 0, 0, 0),
(8, 11006, 100, 1, -11006, 1, 0, 0, 0),
(10, 11004, 100, 1, -11004, 1, 0, 0, 0),
(11, 11004, 100, 1, -11004, 1, 0, 0, 0),
(12, 11000, 100, 1, -11000, 1, 0, 0, 0),
(14, 11001, 100, 1, -11001, 1, 0, 0, 0),
(15, 11006, 100, 1, -11006, 1, 0, 0, 0),
(16, 11008, 100, 1, -11008, 1, 0, 0, 0),
(17, 11003, 100, 1, -11003, 1, 0, 0, 0),
(28, 11008, 100, 1, -11008, 1, 0, 0, 0),
(33, 11006, 100, 1, -11006, 1, 0, 0, 0),
(35, 11007, 100, 1, -11007, 1, 0, 0, 0),
(36, 11006, 100, 1, -11006, 1, 0, 0, 0),
(38, 6317, 25, 0, 1, 1, 0, 0, 0),
(38, 11002, 100, 1, -11002, 1, 0, 0, 0),
(40, 11002, 100, 1, -11002, 1, 0, 0, 0),
(41, 11017, 100, 1, -11017, 1, 0, 0, 0),
(43, 11007, 100, 1, -11007, 1, 0, 0, 0),
(44, 1467, -100, 0, 1, 1, 0, 0, 0),
(44, 11004, 100, 1, -11004, 1, 0, 0, 0),
(45, 11006, 100, 1, -11006, 1, 0, 0, 0),
(46, 11010, 100, 1, -11010, 1, 0, 0, 0),
(47, 11008, 100, 1, -11008, 1, 0, 0, 0),
(85, 11099, 100, 1, -11099, 1, 0, 0, 0),
(104, 11007, 100, 1, -11007, 1, 0, 0, 0),
(115, 11003, 100, 1, -11003, 1, 0, 0, 0),
(117, 11007, 100, 1, -11007, 1, 0, 0, 0),
(122, 11007, 100, 1, -11007, 1, 0, 0, 0),
(130, 11099, 100, 1, -11099, 1, 0, 0, 0),
(139, 11010, 100, 1, -11010, 1, 0, 0, 0),
(141, 11000, 100, 1, -11000, 1, 0, 0, 0),
(148, 11104, 100, 1, -11104, 1, 0, 0, 0),
(150, 11005, 100, 1, -11005, 1, 0, 0, 0),
(168, 11001, 100, 1, -11001, 1, 0, 0, 0),
(169, 11001, 100, 1, -11001, 1, 0, 0, 0),
(215, 11000, 100, 1, -11000, 1, 0, 0, 0),
(226, 11003, 100, 1, -11003, 1, 0, 0, 0),
(267, 11004, 100, 1, -11004, 1, 0, 0, 0),
(271, 11005, 100, 1, -11005, 1, 0, 0, 0),
(294, 11005, 100, 1, -11005, 1, 0, 0, 0),
(295, 11005, 100, 1, -11005, 1, 0, 0, 0),
(297, 11009, 100, 1, -11009, 1, 0, 0, 0),
(298, 11005, 100, 1, -11005, 1, 0, 0, 0),
(299, 11005, 100, 1, -11005, 1, 0, 0, 0),
(300, 16970, -20, 0, 1, 1, 0, 0, 0),
(300, 11007, 100, 1, -11007, 1, 0, 0, 0),
(301, 16969, -20, 0, 1, 1, 0, 0, 0),
(301, 11007, 100, 1, -11007, 1, 0, 0, 0),
(302, 11007, 100, 1, -11007, 1, 0, 0, 0),
(305, 11003, 100, 1, -11003, 1, 0, 0, 0),
(306, 11003, 100, 1, -11003, 1, 0, 0, 0),
(307, 11009, 100, 1, -11009, 1, 0, 0, 0),
(311, 11007, 100, 1, -11007, 1, 0, 0, 0),
(312, 11007, 100, 1, -11007, 1, 0, 0, 0),
(327, 11007, 100, 1, -11007, 1, 0, 0, 0),
(328, 11007, 100, 1, -11007, 1, 0, 0, 0),
(331, 11004, 100, 1, -11004, 1, 0, 0, 0),
(357, 11008, 100, 1, -11008, 1, 0, 0, 0),
(361, 11008, 100, 1, -11008, 1, 0, 0, 0),
(367, 11000, 100, 1, -11000, 1, 0, 0, 0),
(382, 6651, 0.1, 0, 1, 1, 0, 0, 0),
(382, 11101, 100, 1, -11101, 1, 0, 0, 0),
(384, 11002, 100, 1, -11002, 1, 0, 0, 0),
(386, 11102, 100, 1, -11102, 1, 0, 0, 0),
(387, 11102, 100, 1, -11102, 1, 0, 0, 0),
(388, 11102, 100, 1, -11102, 1, 0, 0, 0),
(400, 11006, 100, 1, -11006, 1, 0, 0, 0),
(405, 11006, 100, 1, -11006, 1, 0, 0, 0),
(406, 11004, 100, 1, -11004, 1, 0, 0, 0),
(414, 11005, 100, 1, -11005, 1, 0, 0, 0),
(440, 11009, 100, 1, -11009, 1, 0, 0, 0),
(443, 11103, 100, 0, -11103, 1, 0, 0, 0),
(445, 11103, 100, 0, -11103, 1, 0, 0, 0),
(448, 11103, 100, 0, -11103, 1, 0, 0, 0),
(454, 11103, 100, 0, -11103, 1, 0, 0, 0),
(456, 11103, 100, 0, -11103, 1, 0, 0, 0),
(457, 11003, 100, 1, -11003, 1, 0, 0, 0),
(463, 11101, 100, 1, -11101, 1, 0, 0, 0),
(490, 11008, 100, 1, -11008, 1, 0, 0, 0),
(493, 11008, 100, 1, -11008, 1, 0, 0, 0),
(513, 11007, 100, 1, -11007, 1, 0, 0, 0),
(516, 11007, 100, 1, -11007, 1, 0, 0, 0),
(517, 11007, 100, 1, -11007, 1, 0, 0, 0),
(518, 11007, 100, 1, -11007, 1, 0, 0, 0),
(537, 11106, 100, 1, -11106, 1, 0, 0, 0),
(598, 16968, -20, 0, 1, 1, 0, 0, 0),
(598, 11007, 100, 1, -11007, 1, 0, 0, 0),
(618, 11010, 100, 1, -11010, 1, 0, 0, 0),
(636, 11101, 100, 1, -11101, 1, 0, 0, 0),
(702, 11001, 100, 1, -11001, 1, 0, 0, 0),
(718, 11102, 100, 1, -11102, 1, 0, 0, 0),
(719, 11099, 100, 1, -11099, 1, 0, 0, 0),
(796, 11006, 100, 1, -11006, 1, 0, 0, 0),
(814, 11000, 100, 1, -11000, 1, 0, 0, 0),
(815, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1039, 11005, 100, 1, -11005, 1, 0, 0, 0),
(1108, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1112, 11010, 100, 1, -11010, 1, 0, 0, 0),
(1156, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1222, 11105, 100, 1, -11105, 1, 0, 0, 0),
(1226, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1227, 11105, 100, 1, -11105, 1, 0, 0, 0),
(1228, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1229, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1230, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1231, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1256, 11009, 100, 1, -11009, 1, 0, 0, 0),
(1377, 11010, 100, 1, -11010, 1, 0, 0, 0),
(1417, 11008, 100, 1, -11008, 1, 0, 0, 0),
(1497, 11100, 100, 1, -11100, 1, 0, 0, 0),
(1519, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1537, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1577, 11007, 100, 1, -11007, 1, 0, 0, 0),
(1578, 16969, -20, 0, 1, 1, 0, 0, 0),
(1578, 11007, 100, 1, -11007, 1, 0, 0, 0),
(1581, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1637, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1638, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1657, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1701, 11002, 100, 1, -11002, 1, 0, 0, 0),
(1739, 11007, 100, 1, -11007, 1, 0, 0, 0),
(1797, 11007, 100, 1, -11007, 1, 0, 0, 0),
(1977, 11010, 100, 1, -11010, 1, 0, 0, 0),
(2017, 11010, 100, 1, -11010, 1, 0, 0, 0),
(2057, 11010, 100, 1, -11010, 1, 0, 0, 0),
(2077, 11103, 100, 0, -11103, 1, 0, 0, 0),
(2079, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2100, 11008, 100, 1, -11008, 1, 0, 0, 0),
(2104, 11005, 100, 1, -11005, 1, 0, 0, 0),
(2322, 11001, 100, 1, -11001, 1, 0, 0, 0),
(2324, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2325, 11005, 100, 1, -11005, 1, 0, 0, 0),
(2339, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2365, 11005, 100, 1, -11005, 1, 0, 0, 0),
(2397, 11005, 100, 1, -11005, 1, 0, 0, 0),
(2398, 11003, 100, 1, -11003, 1, 0, 0, 0),
(2399, 11001, 100, 1, -11001, 1, 0, 0, 0),
(2402, 11005, 100, 1, -11005, 1, 0, 0, 0),
(2403, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2405, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2406, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2408, 11007, 100, 1, -11007, 1, 0, 0, 0),
(2521, 16967, -20, 0, 1, 1, 0, 0, 0),
(2521, 11008, 100, 1, -11008, 1, 0, 0, 0),
(2979, 11000, 100, 1, -11000, 1, 0, 0, 0),
(3140, 11105, 100, 1, -11105, 1, 0, 0, 0),
(3317, 11009, 100, 1, -11009, 1, 0, 0, 0),
(3357, 11007, 100, 1, -11007, 1, 0, 0, 0);

DELETE FROM `reference_loot_template` WHERE `entry` IN (11000, 11001, 11002, 11003, 11004, 11005, 11006, 11007, 11008, 11009, 11010, 11017, 11099, 11100, 11101, 11102, 11103, 11104, 11105, 11106);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(11000, 118, 0.4, 1, 1, 1, 0, 0, 0),
(11000, 2455, 0.4, 1, 1, 1, 0, 0, 0),
(11000, 6289, 40, 1, 1, 1, 0, 0, 0),
(11000, 6291, 0, 1, 1, 1, 0, 0, 0),
(11000, 6292, 0.1, 1, 1, 1, 0, 0, 0),
(11000, 6294, 0.07, 1, 1, 1, 0, 0, 0),
(11000, 6295, 0.03, 1, 1, 1, 0, 0, 0),
(11000, 6643, 0.2, 1, 1, 1, 0, 0, 0),
(11001, 6303, 0, 1, 1, 1, 0, 0, 0),
(11001, 6356, 2, 1, 1, 1, 0, 0, 0),
(11002, 858, 0.5, 1, 1, 1, 0, 0, 0),
(11002, 3385, 0.5, 1, 1, 1, 0, 0, 0),
(11002, 6289, 0, 1, 1, 1, 0, 0, 0),
(11002, 6291, 18, 1, 1, 1, 0, 0, 0),
(11002, 6308, 30, 1, 1, 1, 0, 0, 0),
(11002, 6309, 0.4, 1, 1, 1, 0, 0, 0),
(11002, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11002, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11002, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11002, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11002, 6645, 0.3, 1, 1, 1, 0, 0, 0),
(11002, 8350, 0.05, 1, 1, 1, 0, 0, 0),
(11003, 6303, 33.5, 1, 1, 1, 0, 0, 0),
(11003, 6307, 0.5, 1, 1, 1, 0, 0, 0),
(11003, 6351, 0.5, 1, 1, 1, 0, 0, 0),
(11003, 6353, 0.5, 1, 1, 1, 0, 0, 0),
(11003, 6358, 15, 1, 1, 1, 0, 0, 0),
(11003, 6361, 0, 1, 1, 1, 0, 0, 0),
(11004, 929, 0.5, 1, 1, 1, 0, 0, 0),
(11004, 3827, 0.5, 1, 1, 1, 0, 0, 0),
(11004, 6289, 35, 1, 1, 1, 0, 0, 0),
(11004, 6308, 0, 1, 1, 1, 0, 0, 0),
(11004, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11004, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11004, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11004, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11004, 6366, 0.05, 1, 1, 1, 0, 0, 0),
(11004, 6647, 0.3, 1, 1, 1, 0, 0, 0),
(11005, 6307, 0.4, 1, 1, 1, 0, 0, 0),
(11005, 6352, 0.4, 1, 1, 1, 0, 0, 0),
(11005, 6354, 0.4, 1, 1, 1, 0, 0, 0),
(11005, 6358, 25, 1, 1, 1, 0, 0, 0),
(11005, 6359, 15, 1, 1, 1, 0, 0, 0),
(11005, 6360, 0.05, 1, 1, 1, 0, 0, 0),
(11005, 6361, 0, 1, 1, 1, 0, 0, 0),
(11006, 1710, 0.3, 1, 1, 1, 0, 0, 0),
(11006, 3827, 0.7, 1, 1, 1, 0, 0, 0),
(11006, 6308, 40, 1, 1, 1, 0, 0, 0),
(11006, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11006, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11006, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11006, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11006, 8365, 0, 1, 1, 1, 0, 0, 0),
(11006, 8366, 0.3, 1, 1, 1, 0, 0, 0),
(11007, 4603, 20, 1, 1, 1, 0, 0, 0),
(11007, 6355, 0.4, 1, 1, 1, 0, 0, 0),
(11007, 6357, 0.4, 1, 1, 1, 0, 0, 0),
(11007, 6358, 12, 1, 1, 1, 0, 0, 0),
(11007, 6359, 12, 1, 1, 1, 0, 0, 0),
(11007, 6362, 0, 1, 1, 1, 0, 0, 0),
(11008, 3928, 0.3, 1, 1, 1, 0, 0, 0),
(11008, 6149, 0.3, 1, 1, 1, 0, 0, 0),
(11008, 6358, 10, 1, 1, 1, 0, 0, 0),
(11008, 8365, 10, 1, 1, 1, 0, 0, 0),
(11008, 13757, 7, 1, 1, 1, 0, 0, 0),
(11008, 13758, 0, 1, 1, 1, 0, 0, 0),
(11008, 13759, 18, 1, 1, 1, 0, 0, 0),
(11008, 13760, 18, 1, 1, 1, 0, 0, 0),
(11008, 13881, 0.3, 1, 1, 1, 0, 0, 0),
(11008, 13882, 0.1, 1, 1, 1, 0, 0, 0),
(11008, 13883, 0.06, 1, 1, 1, 0, 0, 0),
(11008, 13884, 0.03, 1, 1, 1, 0, 0, 0),
(11008, 13885, 0.3, 1, 1, 1, 0, 0, 0),
(11008, 13886, 0.2, 1, 1, 1, 0, 0, 0),
(11008, 13887, 0.01, 1, 1, 1, 0, 0, 0),
(11009, 4603, 0, 1, 1, 1, 0, 0, 0),
(11009, 6359, 10, 1, 1, 1, 0, 0, 0),
(11009, 6362, 10, 1, 1, 1, 0, 0, 0),
(11009, 7973, 8, 1, 1, 1, 0, 0, 0),
(11009, 13422, 15, 1, 1, 1, 0, 0, 0),
(11009, 13754, 15, 1, 1, 1, 0, 0, 0),
(11009, 13756, 15, 1, 1, 1, 0, 0, 0),
(11009, 13874, 0.5, 1, 1, 1, 0, 0, 0),
(11009, 13875, 0.5, 1, 1, 1, 0, 0, 0),
(11009, 13876, 0.4, 1, 1, 1, 0, 0, 0),
(11009, 13877, 0.2, 1, 1, 1, 0, 0, 0),
(11009, 13878, 0.06, 1, 1, 1, 0, 0, 0),
(11009, 13879, 0.03, 1, 1, 1, 0, 0, 0),
(11009, 13880, 0.01, 1, 1, 1, 0, 0, 0),
(11010, 13443, 0.3, 1, 1, 1, 0, 0, 0),
(11010, 13446, 0.4, 1, 1, 1, 0, 0, 0),
(11010, 13757, 12, 1, 1, 1, 0, 0, 0),
(11010, 13758, 5, 1, 1, 1, 0, 0, 0),
(11010, 13759, 17, 1, 1, 1, 0, 0, 0),
(11010, 13760, 17, 1, 1, 1, 0, 0, 0),
(11010, 13889, 0, 1, 1, 1, 0, 0, 0),
(11010, 13890, 17, 1, 1, 1, 0, 0, 0),
(11010, 13891, 0.4, 1, 1, 1, 0, 0, 0),
(11010, 13901, 0.2, 1, 1, 1, 0, 0, 0),
(11010, 13902, 0.1, 1, 1, 1, 0, 0, 0),
(11010, 13903, 0.06, 1, 1, 1, 0, 0, 0),
(11010, 13904, 0.03, 1, 1, 1, 0, 0, 0),
(11010, 13905, 0.01, 1, 1, 1, 0, 0, 0),
(11017, 13757, 7, 1, 1, 1, 0, 0, 0),
(11099, 118, 0.4, 1, 1, 1, 0, 0, 0),
(11099, 2455, 0.4, 1, 1, 1, 0, 0, 0),
(11099, 6289, 30, 1, 1, 1, 0, 0, 0),
(11099, 6291, 0, 1, 1, 1, 0, 0, 0),
(11099, 6292, 0.1, 1, 1, 1, 0, 0, 0),
(11099, 6294, 0.07, 1, 1, 1, 0, 0, 0),
(11099, 6295, 0.03, 1, 1, 1, 0, 0, 0),
(11099, 6297, 7, 1, 1, 1, 0, 0, 0),
(11099, 6299, 15, 1, 1, 1, 0, 0, 0),
(11099, 6301, 1.8, 1, 1, 1, 0, 0, 0),
(11099, 6643, 0.2, 1, 1, 1, 0, 0, 0),
(11100, 858, 0.5, 1, 1, 1, 0, 0, 0),
(11100, 3385, 0.5, 1, 1, 1, 0, 0, 0),
(11100, 6289, 0, 1, 1, 1, 0, 0, 0),
(11100, 6291, 12.5, 1, 1, 1, 0, 0, 0),
(11100, 6297, 15, 1, 1, 1, 0, 0, 0),
(11100, 6299, 15, 1, 1, 1, 0, 0, 0),
(11100, 6301, 0.5, 1, 1, 1, 0, 0, 0),
(11100, 6308, 15, 1, 1, 1, 0, 0, 0),
(11100, 6309, 0.4, 1, 1, 1, 0, 0, 0),
(11100, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11100, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11100, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11100, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11100, 6645, 0.3, 1, 1, 1, 0, 0, 0),
(11100, 8350, 0.05, 1, 1, 1, 0, 0, 0),
(11101, 858, 0.5, 1, 1, 1, 0, 0, 0),
(11101, 3385, 0.5, 1, 1, 1, 0, 0, 0),
(11101, 6289, 0, 1, 1, 1, 0, 0, 0),
(11101, 6291, 7, 1, 1, 1, 0, 0, 0),
(11101, 6308, 15, 1, 1, 1, 0, 0, 0),
(11101, 6309, 0.4, 1, 1, 1, 0, 0, 0),
(11101, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11101, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11101, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11101, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11101, 6455, 10, 1, 1, 1, 0, 0, 0),
(11101, 6456, 10, 1, 1, 1, 0, 0, 0),
(11101, 6457, 10, 1, 1, 1, 0, 0, 0),
(11101, 6458, 10, 1, 1, 1, 0, 0, 0),
(11101, 6645, 0.3, 1, 1, 1, 0, 0, 0),
(11102, 858, 0.5, 1, 1, 1, 0, 0, 0),
(11102, 3385, 0.5, 1, 1, 1, 0, 0, 0),
(11102, 6289, 0, 1, 1, 1, 0, 0, 0),
(11102, 6291, 13, 1, 1, 1, 0, 0, 0),
(11102, 6308, 15, 1, 1, 1, 0, 0, 0),
(11102, 6309, 0.4, 1, 1, 1, 0, 0, 0),
(11102, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11102, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11102, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11102, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11102, 6522, 30, 1, 1, 1, 0, 0, 0),
(11102, 6645, 0.3, 1, 1, 1, 0, 0, 0),
(11103, 858, 0.5, 1, 1, 1, 0, 0, 0),
(11103, 3385, 0.5, 1, 1, 1, 0, 0, 0),
(11103, 6289, 0, 1, 1, 1, 0, 0, 0),
(11103, 6291, 18, 1, 1, 1, 0, 0, 0),
(11103, 6308, 15, 1, 1, 1, 0, 0, 0),
(11103, 6309, 0.4, 1, 1, 1, 0, 0, 0),
(11103, 6310, 0.2, 1, 1, 1, 0, 0, 0),
(11103, 6311, 0.06, 1, 1, 1, 0, 0, 0),
(11103, 6363, 0.03, 1, 1, 1, 0, 0, 0),
(11103, 6364, 0.01, 1, 1, 1, 0, 0, 0),
(11103, 6645, 0.3, 1, 1, 1, 0, 0, 0),
(11103, 6718, -25, 0, 1, 1, 0, 0, 0),
(11103, 12238, 30, 1, 1, 1, 0, 0, 0),
(11104, 6303, 18.5, 1, 1, 1, 0, 0, 0),
(11104, 6307, 0.5, 1, 1, 1, 0, 0, 0),
(11104, 6351, 0.5, 1, 1, 1, 0, 0, 0),
(11104, 6353, 0.5, 1, 1, 1, 0, 0, 0),
(11104, 6358, 10, 1, 1, 1, 0, 0, 0),
(11104, 6361, 0, 1, 1, 1, 0, 0, 0),
(11104, 6717, -25, 1, 1, 1, 0, 0, 0),
(11104, 12238, 30, 1, 1, 1, 0, 0, 0),
(11105, 4603, 5, 1, 1, 1, 0, 0, 0),
(11105, 7973, 10, 1, 1, 1, 0, 0, 0),
(11105, 13422, 18, 1, 1, 1, 0, 0, 0),
(11105, 13756, 20, 1, 1, 1, 0, 0, 0),
(11105, 13874, 0.6, 1, 1, 1, 0, 0, 0),
(11105, 13888, 0, 1, 1, 2, 0, 0, 0),
(11105, 13893, 5, 1, 1, 1, 0, 0, 0),
(11105, 13907, 0.3, 1, 1, 1, 0, 0, 0),
(11105, 13908, 0.2, 1, 1, 1, 0, 0, 0),
(11105, 13909, 0.15, 1, 1, 1, 0, 0, 0),
(11105, 13910, 0.08, 1, 1, 1, 0, 0, 0),
(11105, 13911, 0.06, 1, 1, 1, 0, 0, 0),
(11105, 13912, 0.03, 1, 1, 1, 0, 0, 0),
(11105, 13913, 0.01, 1, 1, 1, 0, 0, 0),
(11105, 13914, 0.2, 1, 1, 1, 0, 0, 0),
(11105, 13915, 0.06, 1, 1, 1, 0, 0, 0),
(11105, 13916, 0.03, 1, 1, 1, 0, 0, 0),
(11105, 13917, 0.01, 1, 1, 1, 0, 0, 0),
(11105, 13918, 0.4, 1, 1, 1, 0, 0, 0),
(11106, 3857, 20, 1, 1, 1, 0, 0, 0),
(11106, 6297, 0, 1, 1, 1, 0, 0, 0);

/* REV 522 */
/* Gossip data + POI data based on UDB 0.12 addtion pack 392 */
UPDATE `creature_template` SET `gossip_menu_id`=435 WHERE `entry`=68;
UPDATE `creature_template` SET `gossip_menu_id`=4048 WHERE `entry`=197;
UPDATE `creature_template` SET `gossip_menu_id`=4660 WHERE `entry`=198;
UPDATE `creature_template` SET `gossip_menu_id`=1781 WHERE `entry`=233;
UPDATE `creature_template` SET `gossip_menu_id`=1291 WHERE `entry`=295;
UPDATE `creature_template` SET `gossip_menu_id`=4661 WHERE `entry`=328;
UPDATE `creature_template` SET `gossip_menu_id`=704 WHERE `entry`=352;
UPDATE `creature_template` SET `gossip_menu_id`=4666 WHERE `entry`=376;
UPDATE `creature_template` SET `gossip_menu_id`=4666 WHERE `entry`=377;
UPDATE `creature_template` SET `gossip_menu_id`=4004 WHERE `entry`=384;
UPDATE `creature_template` SET `gossip_menu_id`=1503 WHERE `entry`=459;
UPDATE `creature_template` SET `gossip_menu_id`=4681 WHERE `entry`=460;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=483;
UPDATE `creature_template` SET `gossip_menu_id`=4107 WHERE `entry`=491;
UPDATE `creature_template` SET `gossip_menu_id`=2744 WHERE `entry`=514;
UPDATE `creature_template` SET `gossip_menu_id`=4106 WHERE `entry`=523;
UPDATE `creature_template` SET `gossip_menu_id`=7577 WHERE `entry`=715;
UPDATE `creature_template` SET `gossip_menu_id`=5483 WHERE `entry`=716;
UPDATE `creature_template` SET `gossip_menu_id`=3533 WHERE `entry`=727;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=812;
UPDATE `creature_template` SET `gossip_menu_id`=1262 WHERE `entry`=836;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=837;
UPDATE `creature_template` SET `gossip_menu_id`=4675 WHERE `entry`=895;
UPDATE `creature_template` SET `gossip_menu_id`=4650 WHERE `entry`=911;
UPDATE `creature_template` SET `gossip_menu_id`=4684 WHERE `entry`=912;
UPDATE `creature_template` SET `gossip_menu_id`=4649 WHERE `entry`=914;
UPDATE `creature_template` SET `gossip_menu_id`=4659 WHERE `entry`=915;
UPDATE `creature_template` SET `gossip_menu_id`=4676 WHERE `entry`=916;
UPDATE `creature_template` SET `gossip_menu_id`=4663 WHERE `entry`=925;
UPDATE `creature_template` SET `gossip_menu_id`=4678 WHERE `entry`=926;
UPDATE `creature_template` SET `gossip_menu_id`=4471 WHERE `entry`=928;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=931;
UPDATE `creature_template` SET `gossip_menu_id`=4552 WHERE `entry`=944;
UPDATE `creature_template` SET `gossip_menu_id`=1631 WHERE `entry`=963;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=1218;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=1226;
UPDATE `creature_template` SET `gossip_menu_id`=4685 WHERE `entry`=1228;
UPDATE `creature_template` SET `gossip_menu_id`=4683 WHERE `entry`=1229;
UPDATE `creature_template` SET `gossip_menu_id`=4677 WHERE `entry`=1232;
UPDATE `creature_template` SET `gossip_menu_id`=410 WHERE `entry`=1234;
UPDATE `creature_template` SET `gossip_menu_id`=2741 WHERE `entry`=1241;
UPDATE `creature_template` SET `gossip_menu_id`=4090 WHERE `entry`=1243;
UPDATE `creature_template` SET `gossip_menu_id`=4116 WHERE `entry`=1246;
UPDATE `creature_template` SET `gossip_menu_id`=1297 WHERE `entry`=1247;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=1257;
UPDATE `creature_template` SET `gossip_menu_id`=686 WHERE `entry`=1275;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=1287;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=1289;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=1294;
UPDATE `creature_template` SET `gossip_menu_id`=686 WHERE `entry`=1297;
UPDATE `creature_template` SET `gossip_menu_id`=703 WHERE `entry`=1303;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=1320;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=1321;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=1323;
UPDATE `creature_template` SET `gossip_menu_id`=702 WHERE `entry`=1327;
UPDATE `creature_template` SET `gossip_menu_id`=684 WHERE `entry`=1347;
UPDATE `creature_template` SET `gossip_menu_id`=692 WHERE `entry`=1351;
UPDATE `creature_template` SET `gossip_menu_id`=2782 WHERE `entry`=1383;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=1387;
UPDATE `creature_template` SET `gossip_menu_id`=4657 WHERE `entry`=1404;
UPDATE `creature_template` SET `gossip_menu_id`=5902 WHERE `entry`=1416;
UPDATE `creature_template` SET `gossip_menu_id`=3506 WHERE `entry`=1423;
UPDATE `creature_template` SET `gossip_menu_id`=6951 WHERE `entry`=1432;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1496;
UPDATE `creature_template` SET `gossip_menu_id`=4044 WHERE `entry`=1569;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=1571;
UPDATE `creature_template` SET `gossip_menu_id`=4358 WHERE `entry`=1572;
UPDATE `creature_template` SET `gossip_menu_id`=4360 WHERE `entry`=1573;
UPDATE `creature_template` SET `gossip_menu_id`=5665 WHERE `entry`=1651;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1652;
UPDATE `creature_template` SET `gossip_menu_id`=5853 WHERE `entry`=1699;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=1701;
UPDATE `creature_template` SET `gossip_menu_id`=4135 WHERE `entry`=1702;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1738;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1742;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1743;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1744;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1745;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=1746;
UPDATE `creature_template` SET `gossip_menu_id`=4683 WHERE `entry`=1901;
UPDATE `creature_template` SET `gossip_menu_id`=435 WHERE `entry`=1976;
UPDATE `creature_template` SET `gossip_menu_id`=10775 WHERE `entry`=2055;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=2198;
UPDATE `creature_template` SET `gossip_menu_id`=4281 WHERE `entry`=2226;
UPDATE `creature_template` SET `gossip_menu_id`=264 WHERE `entry`=2238;
UPDATE `creature_template` SET `gossip_menu_id`=5855 WHERE `entry`=2326;
UPDATE `creature_template` SET `gossip_menu_id`=657 WHERE `entry`=2327;
UPDATE `creature_template` SET `gossip_menu_id`=5855 WHERE `entry`=2329;
UPDATE `creature_template` SET `gossip_menu_id`=1291 WHERE `entry`=2352;
UPDATE `creature_template` SET `gossip_menu_id`=1296 WHERE `entry`=2388;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=2409;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=2432;
UPDATE `creature_template` SET `gossip_menu_id`=699 WHERE `entry`=2455;
UPDATE `creature_template` SET `gossip_menu_id`=699 WHERE `entry`=2456;
UPDATE `creature_template` SET `gossip_menu_id`=699 WHERE `entry`=2457;
UPDATE `creature_template` SET `gossip_menu_id`=4822 WHERE `entry`=2485;
UPDATE `creature_template` SET `gossip_menu_id`=4823 WHERE `entry`=2489;
UPDATE `creature_template` SET `gossip_menu_id`=4827 WHERE `entry`=2492;
UPDATE `creature_template` SET `gossip_menu_id`=6685 WHERE `entry`=2496;
UPDATE `creature_template` SET `gossip_menu_id`=5263 WHERE `entry`=2704;
UPDATE `creature_template` SET `gossip_menu_id`=8846 WHERE `entry`=2708;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=2798;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=2835;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=2851;
UPDATE `creature_template` SET `gossip_menu_id`=4143 WHERE `entry`=2857;
UPDATE `creature_template` SET `gossip_menu_id`=4306 WHERE `entry`=2859;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=2878;
UPDATE `creature_template` SET `gossip_menu_id`=4326 WHERE `entry`=2995;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=3001;
UPDATE `creature_template` SET `gossip_menu_id`=4351 WHERE `entry`=3004;
UPDATE `creature_template` SET `gossip_menu_id`=4242 WHERE `entry`=3007;
UPDATE `creature_template` SET `gossip_menu_id`=4187 WHERE `entry`=3008;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=3013;
UPDATE `creature_template` SET `gossip_menu_id`=5665 WHERE `entry`=3028;
UPDATE `creature_template` SET `gossip_menu_id`=4528 WHERE `entry`=3030;
UPDATE `creature_template` SET `gossip_menu_id`=4530 WHERE `entry`=3031;
UPDATE `creature_template` SET `gossip_menu_id`=4529 WHERE `entry`=3032;
UPDATE `creature_template` SET `gossip_menu_id`=3921 WHERE `entry`=3033;
UPDATE `creature_template` SET `gossip_menu_id`=4606 WHERE `entry`=3034;
UPDATE `creature_template` SET `gossip_menu_id`=4607 WHERE `entry`=3036;
UPDATE `creature_template` SET `gossip_menu_id`=4011 WHERE `entry`=3038;
UPDATE `creature_template` SET `gossip_menu_id`=4023 WHERE `entry`=3039;
UPDATE `creature_template` SET `gossip_menu_id`=4524 WHERE `entry`=3040;
UPDATE `creature_template` SET `gossip_menu_id`=4526 WHERE `entry`=3041;
UPDATE `creature_template` SET `gossip_menu_id`=4525 WHERE `entry`=3042;
UPDATE `creature_template` SET `gossip_menu_id`=4527 WHERE `entry`=3043;
UPDATE `creature_template` SET `gossip_menu_id`=4534 WHERE `entry`=3047;
UPDATE `creature_template` SET `gossip_menu_id`=24 WHERE `entry`=3052;
UPDATE `creature_template` SET `gossip_menu_id`=5851 WHERE `entry`=3057;
UPDATE `creature_template` SET `gossip_menu_id`=4645 WHERE `entry`=3059;
UPDATE `creature_template` SET `gossip_menu_id`=4647 WHERE `entry`=3061;
UPDATE `creature_template` SET `gossip_menu_id`=655 WHERE `entry`=3063;
UPDATE `creature_template` SET `gossip_menu_id`=3926 WHERE `entry`=3064;
UPDATE `creature_template` SET `gossip_menu_id`=4012 WHERE `entry`=3065;
UPDATE `creature_template` SET `gossip_menu_id`=4103 WHERE `entry`=3066;
UPDATE `creature_template` SET `gossip_menu_id`=5854 WHERE `entry`=3067;
UPDATE `creature_template` SET `gossip_menu_id`=4185 WHERE `entry`=3069;
UPDATE `creature_template` SET `gossip_menu_id`=721 WHERE `entry`=3084;
UPDATE `creature_template` SET `gossip_menu_id`=5853 WHERE `entry`=3087;
UPDATE `creature_template` SET `gossip_menu_id`=2781 WHERE `entry`=3136;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=3137;
UPDATE `creature_template` SET `gossip_menu_id`=2910 WHERE `entry`=3143;
UPDATE `creature_template` SET `gossip_menu_id`=2901 WHERE `entry`=3144;
UPDATE `creature_template` SET `gossip_menu_id`=1971 WHERE `entry`=3149;
UPDATE `creature_template` SET `gossip_menu_id`=2101 WHERE `entry`=3150;
UPDATE `creature_template` SET `gossip_menu_id`=4648 WHERE `entry`=3154;
UPDATE `creature_template` SET `gossip_menu_id`=523 WHERE `entry`=3169;
UPDATE `creature_template` SET `gossip_menu_id`=141 WHERE `entry`=3170;
UPDATE `creature_template` SET `gossip_menu_id`=4017 WHERE `entry`=3171;
UPDATE `creature_template` SET `gossip_menu_id`=4641 WHERE `entry`=3172;
UPDATE `creature_template` SET `gossip_menu_id`=4104 WHERE `entry`=3173;
UPDATE `creature_template` SET `gossip_menu_id`=2746 WHERE `entry`=3174;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3212;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3215;
UPDATE `creature_template` SET `gossip_menu_id`=3701 WHERE `entry`=3216;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3217;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3218;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3220;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3221;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3222;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3223;
UPDATE `creature_template` SET `gossip_menu_id`=3331 WHERE `entry`=3224;
UPDATE `creature_template` SET `gossip_menu_id`=8085 WHERE `entry`=3230;
UPDATE `creature_template` SET `gossip_menu_id`=1951 WHERE `entry`=3296;
UPDATE `creature_template` SET `gossip_menu_id`=1623 WHERE `entry`=3309;
UPDATE `creature_template` SET `gossip_menu_id`=4342 WHERE `entry`=3310;
UPDATE `creature_template` SET `gossip_menu_id`=1624 WHERE `entry`=3314;
UPDATE `creature_template` SET `gossip_menu_id`=1623 WHERE `entry`=3318;
UPDATE `creature_template` SET `gossip_menu_id`=1623 WHERE `entry`=3320;
UPDATE `creature_template` SET `gossip_menu_id`=4741 WHERE `entry`=3332;
UPDATE `creature_template` SET `gossip_menu_id`=4516 WHERE `entry`=3344;
UPDATE `creature_template` SET `gossip_menu_id`=4126 WHERE `entry`=3347;
UPDATE `creature_template` SET `gossip_menu_id`=4010 WHERE `entry`=3352;
UPDATE `creature_template` SET `gossip_menu_id`=1012 WHERE `entry`=3355;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=3357;
UPDATE `creature_template` SET `gossip_menu_id`=3161 WHERE `entry`=3362;
UPDATE `creature_template` SET `gossip_menu_id`=4209 WHERE `entry`=3365;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=3404;
UPDATE `creature_template` SET `gossip_menu_id`=4506 WHERE `entry`=3406;
UPDATE `creature_template` SET `gossip_menu_id`=4506 WHERE `entry`=3407;
UPDATE `creature_template` SET `gossip_menu_id`=4148 WHERE `entry`=3412;
UPDATE `creature_template` SET `gossip_menu_id`=980 WHERE `entry`=3413;
UPDATE `creature_template` SET `gossip_menu_id`=2883 WHERE `entry`=3429;
UPDATE `creature_template` SET `gossip_menu_id`=4043 WHERE `entry`=3448;
UPDATE `creature_template` SET `gossip_menu_id`=2783 WHERE `entry`=3478;
UPDATE `creature_template` SET `gossip_menu_id`=4324 WHERE `entry`=3483;
UPDATE `creature_template` SET `gossip_menu_id`=4341 WHERE `entry`=3489;
UPDATE `creature_template` SET `gossip_menu_id`=1630 WHERE `entry`=3516;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=3518;
UPDATE `creature_template` SET `gossip_menu_id`=3580 WHERE `entry`=3571;
UPDATE `creature_template` SET `gossip_menu_id`=4697 WHERE `entry`=3593;
UPDATE `creature_template` SET `gossip_menu_id`=4690 WHERE `entry`=3594;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=3595;
UPDATE `creature_template` SET `gossip_menu_id`=4697 WHERE `entry`=3598;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=3600;
UPDATE `creature_template` SET `gossip_menu_id`=4174 WHERE `entry`=3605;
UPDATE `creature_template` SET `gossip_menu_id`=5665 WHERE `entry`=3607;
UPDATE `creature_template` SET `gossip_menu_id`=4323 WHERE `entry`=3615;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=3620;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=3622;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=3624;
UPDATE `creature_template` SET `gossip_menu_id`=4006 WHERE `entry`=3685;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=3688;
UPDATE `creature_template` SET `gossip_menu_id`=4021 WHERE `entry`=3690;
UPDATE `creature_template` SET `gossip_menu_id`=3644 WHERE `entry`=3706;
UPDATE `creature_template` SET `gossip_menu_id`=4302 WHERE `entry`=3838;
UPDATE `creature_template` SET `gossip_menu_id`=4301 WHERE `entry`=3841;
UPDATE `creature_template` SET `gossip_menu_id`=3033 WHERE `entry`=3921;
UPDATE `creature_template` SET `gossip_menu_id`=4697 WHERE `entry`=4087;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=4090;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=4091;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=4092;
UPDATE `creature_template` SET `gossip_menu_id`=2404 WHERE `entry`=4155;
UPDATE `creature_template` SET `gossip_menu_id`=4349 WHERE `entry`=4159;
UPDATE `creature_template` SET `gossip_menu_id`=4576 WHERE `entry`=4163;
UPDATE `creature_template` SET `gossip_menu_id`=4821 WHERE `entry`=4165;
UPDATE `creature_template` SET `gossip_menu_id`=5853 WHERE `entry`=4210;
UPDATE `creature_template` SET `gossip_menu_id`=4762 WHERE `entry`=4211;
UPDATE `creature_template` SET `gossip_menu_id`=4241 WHERE `entry`=4212;
UPDATE `creature_template` SET `gossip_menu_id`=4163 WHERE `entry`=4213;
UPDATE `creature_template` SET `gossip_menu_id`=4576 WHERE `entry`=4214;
UPDATE `creature_template` SET `gossip_menu_id`=4576 WHERE `entry`=4215;
UPDATE `creature_template` SET `gossip_menu_id`=1403 WHERE `entry`=4217;
UPDATE `creature_template` SET `gossip_menu_id`=4571 WHERE `entry`=4218;
UPDATE `creature_template` SET `gossip_menu_id`=4571 WHERE `entry`=4219;
UPDATE `creature_template` SET `gossip_menu_id`=4305 WHERE `entry`=4241;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=4254;
UPDATE `creature_template` SET `gossip_menu_id`=593 WHERE `entry`=4258;
UPDATE `creature_template` SET `gossip_menu_id`=10265 WHERE `entry`=4262;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=4267;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=4312;
UPDATE `creature_template` SET `gossip_menu_id`=6023 WHERE `entry`=4314;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=4319;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=4321;
UPDATE `creature_template` SET `gossip_menu_id`=4307 WHERE `entry`=4551;
UPDATE `creature_template` SET `gossip_menu_id`=5854 WHERE `entry`=4552;
UPDATE `creature_template` SET `gossip_menu_id`=4283 WHERE `entry`=4556;
UPDATE `creature_template` SET `gossip_menu_id`=2383 WHERE `entry`=4563;
UPDATE `creature_template` SET `gossip_menu_id`=4609 WHERE `entry`=4564;
UPDATE `creature_template` SET `gossip_menu_id`=4539 WHERE `entry`=4566;
UPDATE `creature_template` SET `gossip_menu_id`=4538 WHERE `entry`=4567;
UPDATE `creature_template` SET `gossip_menu_id`=4537 WHERE `entry`=4568;
UPDATE `creature_template` SET `gossip_menu_id`=1022 WHERE `entry`=4596;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=4598;
UPDATE `creature_template` SET `gossip_menu_id`=2750 WHERE `entry`=4605;
UPDATE `creature_template` SET `gossip_menu_id`=4130 WHERE `entry`=4609;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=4614;
UPDATE `creature_template` SET `gossip_menu_id`=3185 WHERE `entry`=4730;
UPDATE `creature_template` SET `gossip_menu_id`=4005 WHERE `entry`=4731;
UPDATE `creature_template` SET `gossip_menu_id`=4018 WHERE `entry`=4732;
UPDATE `creature_template` SET `gossip_menu_id`=4020 WHERE `entry`=4752;
UPDATE `creature_template` SET `gossip_menu_id`=4019 WHERE `entry`=4753;
UPDATE `creature_template` SET `gossip_menu_id`=4576 WHERE `entry`=4794;
UPDATE `creature_template` SET `gossip_menu_id`=3664 WHERE `entry`=4949;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=4981;
UPDATE `creature_template` SET `gossip_menu_id`=5461 WHERE `entry`=5054;
UPDATE `creature_template` SET `gossip_menu_id`=345 WHERE `entry`=5111;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=5137;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=5141;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=5142;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=5143;
UPDATE `creature_template` SET `gossip_menu_id`=4552 WHERE `entry`=5144;
UPDATE `creature_template` SET `gossip_menu_id`=4552 WHERE `entry`=5145;
UPDATE `creature_template` SET `gossip_menu_id`=4552 WHERE `entry`=5146;
UPDATE `creature_template` SET `gossip_menu_id`=4762 WHERE `entry`=5150;
UPDATE `creature_template` SET `gossip_menu_id`=4345 WHERE `entry`=5153;
UPDATE `creature_template` SET `gossip_menu_id`=4742 WHERE `entry`=5161;
UPDATE `creature_template` SET `gossip_menu_id`=597 WHERE `entry`=5164;
UPDATE `creature_template` SET `gossip_menu_id`=4667 WHERE `entry`=5173;
UPDATE `creature_template` SET `gossip_menu_id`=4123 WHERE `entry`=5177;
UPDATE `creature_template` SET `gossip_menu_id`=9832 WHERE `entry`=5189;
UPDATE `creature_template` SET `gossip_menu_id`=7690 WHERE `entry`=5392;
UPDATE `creature_template` SET `gossip_menu_id`=2242 WHERE `entry`=5411;
UPDATE `creature_template` SET `gossip_menu_id`=4649 WHERE `entry`=5479;
UPDATE `creature_template` SET `gossip_menu_id`=4649 WHERE `entry`=5480;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=5483;
UPDATE `creature_template` SET `gossip_menu_id`=4666 WHERE `entry`=5489;
UPDATE `creature_template` SET `gossip_menu_id`=4469 WHERE `entry`=5491;
UPDATE `creature_template` SET `gossip_menu_id`=4470 WHERE `entry`=5492;
UPDATE `creature_template` SET `gossip_menu_id`=685 WHERE `entry`=5494;
UPDATE `creature_template` SET `gossip_menu_id`=4485 WHERE `entry`=5497;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=5565;
UPDATE `creature_template` SET `gossip_menu_id`=643 WHERE `entry`=5566;
UPDATE `creature_template` SET `gossip_menu_id`=900 WHERE `entry`=5594;
UPDATE `creature_template` SET `gossip_menu_id`=2121 WHERE `entry`=5595;
UPDATE `creature_template` SET `gossip_menu_id`=4682 WHERE `entry`=5612;
UPDATE `creature_template` SET `gossip_menu_id`=2849 WHERE `entry`=5624;
UPDATE `creature_template` SET `gossip_menu_id`=4323 WHERE `entry`=5637;
UPDATE `creature_template` SET `gossip_menu_id`=1296 WHERE `entry`=5688;
UPDATE `creature_template` SET `gossip_menu_id`=3356 WHERE `entry`=5725;
UPDATE `creature_template` SET `gossip_menu_id`=1629 WHERE `entry`=5769;
UPDATE `creature_template` SET `gossip_menu_id`=4183 WHERE `entry`=5811;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=5814;
UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=5882;
UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=5883;
UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=5884;
UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=5885;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=5939;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=5943;
UPDATE `creature_template` SET `gossip_menu_id`=3285 WHERE `entry`=5953;
UPDATE `creature_template` SET `gossip_menu_id`=4826 WHERE `entry`=5958;
UPDATE `creature_template` SET `gossip_menu_id`=4762 WHERE `entry`=6094;
UPDATE `creature_template` SET `gossip_menu_id`=268 WHERE `entry`=6119;
UPDATE `creature_template` SET `gossip_menu_id`=2021 WHERE `entry`=6286;
UPDATE `creature_template` SET `gossip_menu_id`=83 WHERE `entry`=6491;
UPDATE `creature_template` SET `gossip_menu_id`=126 WHERE `entry`=6497;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=6706;
UPDATE `creature_template` SET `gossip_menu_id`=1291 WHERE `entry`=6727;
UPDATE `creature_template` SET `gossip_menu_id`=1297 WHERE `entry`=6734;
UPDATE `creature_template` SET `gossip_menu_id`=1581 WHERE `entry`=6735;
UPDATE `creature_template` SET `gossip_menu_id`=1293 WHERE `entry`=6736;
UPDATE `creature_template` SET `gossip_menu_id`=1296 WHERE `entry`=6739;
UPDATE `creature_template` SET `gossip_menu_id`=342 WHERE `entry`=6740;
UPDATE `creature_template` SET `gossip_menu_id`=1296 WHERE `entry`=6741;
UPDATE `creature_template` SET `gossip_menu_id`=344 WHERE `entry`=6746;
UPDATE `creature_template` SET `gossip_menu_id`=1294 WHERE `entry`=6747;
UPDATE `creature_template` SET `gossip_menu_id`=1291 WHERE `entry`=6790;
UPDATE `creature_template` SET `gossip_menu_id`=349 WHERE `entry`=6791;
UPDATE `creature_template` SET `gossip_menu_id`=349 WHERE `entry`=6807;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=6928;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=6929;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=6930;
UPDATE `creature_template` SET `gossip_menu_id`=1043 WHERE `entry`=7230;
UPDATE `creature_template` SET `gossip_menu_id`=1042 WHERE `entry`=7231;
UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=7311;
UPDATE `creature_template` SET `gossip_menu_id`=4552 WHERE `entry`=7312;
UPDATE `creature_template` SET `gossip_menu_id`=4697 WHERE `entry`=7315;
UPDATE `creature_template` SET `gossip_menu_id`=1467 WHERE `entry`=7406;
UPDATE `creature_template` SET `gossip_menu_id`=922 WHERE `entry`=7564;
UPDATE `creature_template` SET `gossip_menu_id`=1120 WHERE `entry`=7683;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=7731;
UPDATE `creature_template` SET `gossip_menu_id`=2890 WHERE `entry`=7733;
UPDATE `creature_template` SET `gossip_menu_id`=1581 WHERE `entry`=7736;
UPDATE `creature_template` SET `gossip_menu_id`=942 WHERE `entry`=7763;
UPDATE `creature_template` SET `gossip_menu_id`=1761 WHERE `entry`=7766;
UPDATE `creature_template` SET `gossip_menu_id`=1404 WHERE `entry`=7771;
UPDATE `creature_template` SET `gossip_menu_id`=1802 WHERE `entry`=7775;
UPDATE `creature_template` SET `gossip_menu_id`=1142 WHERE `entry`=7804;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=7823;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=7824;
UPDATE `creature_template` SET `gossip_menu_id`=1482 WHERE `entry`=7916;
UPDATE `creature_template` SET `gossip_menu_id`=1468 WHERE `entry`=7944;
UPDATE `creature_template` SET `gossip_menu_id`=6565 WHERE `entry`=7951;
UPDATE `creature_template` SET `gossip_menu_id`=3162 WHERE `entry`=7952;
UPDATE `creature_template` SET `gossip_menu_id`=4022 WHERE `entry`=7953;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=8018;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=8019;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=8020;
UPDATE `creature_template` SET `gossip_menu_id`=4746 WHERE `entry`=8125;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=8146;
UPDATE `creature_template` SET `gossip_menu_id`=2952 WHERE `entry`=8403;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=8609;
UPDATE `creature_template` SET `gossip_menu_id`=1561 WHERE `entry`=8879;
UPDATE `creature_template` SET `gossip_menu_id`=1663 WHERE `entry`=8888;
UPDATE `creature_template` SET `gossip_menu_id`=1701 WHERE `entry`=9087;
UPDATE `creature_template` SET `gossip_menu_id`=1721 WHERE `entry`=9099;
UPDATE `creature_template` SET `gossip_menu_id`=2184 WHERE `entry`=9117;
UPDATE `creature_template` SET `gossip_menu_id`=2424 WHERE `entry`=9270;
UPDATE `creature_template` SET `gossip_menu_id`=2423 WHERE `entry`=9271;
UPDATE `creature_template` SET `gossip_menu_id`=2422 WHERE `entry`=9272;
UPDATE `creature_template` SET `gossip_menu_id`=3802 WHERE `entry`=9298;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=9356;
UPDATE `creature_template` SET `gossip_menu_id`=1844 WHERE `entry`=9467;
UPDATE `creature_template` SET `gossip_menu_id`=2076 WHERE `entry`=9500;
UPDATE `creature_template` SET `gossip_menu_id`=2283 WHERE `entry`=9502;
UPDATE `creature_template` SET `gossip_menu_id`=1963 WHERE `entry`=9547;
UPDATE `creature_template` SET `gossip_menu_id`=1969 WHERE `entry`=9564;
UPDATE `creature_template` SET `gossip_menu_id`=1971 WHERE `entry`=9566;
UPDATE `creature_template` SET `gossip_menu_id`=2081 WHERE `entry`=9618;
UPDATE `creature_template` SET `gossip_menu_id`=2188 WHERE `entry`=9619;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=9980;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=9987;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=9989;
UPDATE `creature_template` SET `gossip_menu_id`=2852 WHERE `entry`=9997;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=10050;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=10053;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=10054;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=10055;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=10086;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=10088;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=10089;
UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=10090;
UPDATE `creature_template` SET `gossip_menu_id`=8217 WHERE `entry`=10181;
UPDATE `creature_template` SET `gossip_menu_id`=2562 WHERE `entry`=10216;
UPDATE `creature_template` SET `gossip_menu_id`=2747 WHERE `entry`=10266;
UPDATE `creature_template` SET `gossip_menu_id`=2761 WHERE `entry`=10276;
UPDATE `creature_template` SET `gossip_menu_id`=2742 WHERE `entry`=10277;
UPDATE `creature_template` SET `gossip_menu_id`=3761 WHERE `entry`=10301;
UPDATE `creature_template` SET `gossip_menu_id`=6837 WHERE `entry`=10305;
UPDATE `creature_template` SET `gossip_menu_id`=2703 WHERE `entry`=10307;
UPDATE `creature_template` SET `gossip_menu_id`=6162 WHERE `entry`=10378;
UPDATE `creature_template` SET `gossip_menu_id`=3985 WHERE `entry`=10431;
UPDATE `creature_template` SET `gossip_menu_id`=6582 WHERE `entry`=10445;
UPDATE `creature_template` SET `gossip_menu_id`=7339 WHERE `entry`=10540;
UPDATE `creature_template` SET `gossip_menu_id`=3062 WHERE `entry`=10578;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=10583;
UPDATE `creature_template` SET `gossip_menu_id`=2984 WHERE `entry`=10637;
UPDATE `creature_template` SET `gossip_menu_id`=2911 WHERE `entry`=10667;
UPDATE `creature_template` SET `gossip_menu_id`=3042 WHERE `entry`=10838;
UPDATE `creature_template` SET `gossip_menu_id`=3383 WHERE `entry`=10840;
UPDATE `creature_template` SET `gossip_menu_id`=3421 WHERE `entry`=10856;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=10877;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=10878;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=10879;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=10880;
UPDATE `creature_template` SET `gossip_menu_id`=5782 WHERE `entry`=10881;
UPDATE `creature_template` SET `gossip_menu_id`=4151 WHERE `entry`=11017;
UPDATE `creature_template` SET `gossip_menu_id`=4142 WHERE `entry`=11025;
UPDATE `creature_template` SET `gossip_menu_id`=4137 WHERE `entry`=11028;
UPDATE `creature_template` SET `gossip_menu_id`=7109 WHERE `entry`=11033;
UPDATE `creature_template` SET `gossip_menu_id`=3651 WHERE `entry`=11035;
UPDATE `creature_template` SET `gossip_menu_id`=3181 WHERE `entry`=11038;
UPDATE `creature_template` SET `gossip_menu_id`=4118 WHERE `entry`=11046;
UPDATE `creature_template` SET `gossip_menu_id`=4266 WHERE `entry`=11051;
UPDATE `creature_template` SET `gossip_menu_id`=3184 WHERE `entry`=11053;
UPDATE `creature_template` SET `gossip_menu_id`=3228 WHERE `entry`=11056;
UPDATE `creature_template` SET `gossip_menu_id`=3864 WHERE `entry`=11063;
UPDATE `creature_template` SET `gossip_menu_id`=3141 WHERE `entry`=11064;
UPDATE `creature_template` SET `gossip_menu_id`=4155 WHERE `entry`=11070;
UPDATE `creature_template` SET `gossip_menu_id`=4158 WHERE `entry`=11071;
UPDATE `creature_template` SET `gossip_menu_id`=4207 WHERE `entry`=11084;
UPDATE `creature_template` SET `gossip_menu_id`=349 WHERE `entry`=11118;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=11119;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=11138;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=11139;
UPDATE `creature_template` SET `gossip_menu_id`=3182 WHERE `entry`=11145;
UPDATE `creature_template` SET `gossip_menu_id`=3201 WHERE `entry`=11146;
UPDATE `creature_template` SET `gossip_menu_id`=3187 WHERE `entry`=11176;
UPDATE `creature_template` SET `gossip_menu_id`=3203 WHERE `entry`=11177;
UPDATE `creature_template` SET `gossip_menu_id`=3202 WHERE `entry`=11178;
UPDATE `creature_template` SET `gossip_menu_id`=6090 WHERE `entry`=11191;
UPDATE `creature_template` SET `gossip_menu_id`=6089 WHERE `entry`=11192;
UPDATE `creature_template` SET `gossip_menu_id`=6091 WHERE `entry`=11193;
UPDATE `creature_template` SET `gossip_menu_id`=4691 WHERE `entry`=11401;
UPDATE `creature_template` SET `gossip_menu_id`=4680 WHERE `entry`=11406;
UPDATE `creature_template` SET `gossip_menu_id`=3646 WHERE `entry`=11407;
UPDATE `creature_template` SET `gossip_menu_id`=5746 WHERE `entry`=11444;
UPDATE `creature_template` SET `gossip_menu_id`=5746 WHERE `entry`=11445;
UPDATE `creature_template` SET `gossip_menu_id`=5602 WHERE `entry`=11491;
UPDATE `creature_template` SET `gossip_menu_id`=3461 WHERE `entry`=11536;
UPDATE `creature_template` SET `gossip_menu_id`=3625 WHERE `entry`=11555;
UPDATE `creature_template` SET `gossip_menu_id`=3624 WHERE `entry`=11556;
UPDATE `creature_template` SET `gossip_menu_id`=3626 WHERE `entry`=11557;
UPDATE `creature_template` SET `gossip_menu_id`=6801 WHERE `entry`=11558;
UPDATE `creature_template` SET `gossip_menu_id`=3603 WHERE `entry`=11610;
UPDATE `creature_template` SET `gossip_menu_id`=3821 WHERE `entry`=11616;
UPDATE `creature_template` SET `gossip_menu_id`=5102 WHERE `entry`=11801;
UPDATE `creature_template` SET `gossip_menu_id`=6646 WHERE `entry`=11811;
UPDATE `creature_template` SET `gossip_menu_id`=3661 WHERE `entry`=11833;
UPDATE `creature_template` SET `gossip_menu_id`=5271 WHERE `entry`=11867;
UPDATE `creature_template` SET `gossip_menu_id`=5221 WHERE `entry`=11868;
UPDATE `creature_template` SET `gossip_menu_id`=5266 WHERE `entry`=11869;
UPDATE `creature_template` SET `gossip_menu_id`=5269 WHERE `entry`=11870;
UPDATE `creature_template` SET `gossip_menu_id`=3801 WHERE `entry`=11872;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=11899;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=11901;
UPDATE `creature_template` SET `gossip_menu_id`=3841 WHERE `entry`=12136;
UPDATE `creature_template` SET `gossip_menu_id`=1969 WHERE `entry`=12137;
UPDATE `creature_template` SET `gossip_menu_id`=1290 WHERE `entry`=12196;
UPDATE `creature_template` SET `gossip_menu_id`=4085 WHERE `entry`=12384;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=12577;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=12578;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=12596;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=12617;
UPDATE `creature_template` SET `gossip_menu_id`=4343 WHERE `entry`=12658;
UPDATE `creature_template` SET `gossip_menu_id`=5382 WHERE `entry`=12920;
UPDATE `creature_template` SET `gossip_menu_id`=4781 WHERE `entry`=12944;
UPDATE `creature_template` SET `gossip_menu_id`=5103 WHERE `entry`=13220;
UPDATE `creature_template` SET `gossip_menu_id`=5123 WHERE `entry`=13417;
UPDATE `creature_template` SET `gossip_menu_id`=5819 WHERE `entry`=14305;
UPDATE `creature_template` SET `gossip_menu_id`=5721 WHERE `entry`=14322;
UPDATE `creature_template` SET `gossip_menu_id`=5742 WHERE `entry`=14324;
UPDATE `creature_template` SET `gossip_menu_id`=5739 WHERE `entry`=14325;
UPDATE `creature_template` SET `gossip_menu_id`=5746 WHERE `entry`=14351;
UPDATE `creature_template` SET `gossip_menu_id`=5708 WHERE `entry`=14353;
UPDATE `creature_template` SET `gossip_menu_id`=5729 WHERE `entry`=14358;
UPDATE `creature_template` SET `gossip_menu_id`=5750 WHERE `entry`=14387;
UPDATE `creature_template` SET `gossip_menu_id`=5752 WHERE `entry`=14392;
UPDATE `creature_template` SET `gossip_menu_id`=5753 WHERE `entry`=14394;
UPDATE `creature_template` SET `gossip_menu_id`=5849 WHERE `entry`=14450;
UPDATE `creature_template` SET `gossip_menu_id`=5848 WHERE `entry`=14451;
UPDATE `creature_template` SET `gossip_menu_id`=6028 WHERE `entry`=14721;
UPDATE `creature_template` SET `gossip_menu_id`=6043 WHERE `entry`=14723;
UPDATE `creature_template` SET `gossip_menu_id`=6042 WHERE `entry`=14724;
UPDATE `creature_template` SET `gossip_menu_id`=6044 WHERE `entry`=14725;
UPDATE `creature_template` SET `gossip_menu_id`=6037 WHERE `entry`=14728;
UPDATE `creature_template` SET `gossip_menu_id`=6092 WHERE `entry`=14742;
UPDATE `creature_template` SET `gossip_menu_id`=6094 WHERE `entry`=14743;
UPDATE `creature_template` SET `gossip_menu_id`=6186 WHERE `entry`=14822;
UPDATE `creature_template` SET `gossip_menu_id`=6182 WHERE `entry`=14823;
UPDATE `creature_template` SET `gossip_menu_id`=6184 WHERE `entry`=14827;
UPDATE `creature_template` SET `gossip_menu_id`=6183 WHERE `entry`=14828;
UPDATE `creature_template` SET `gossip_menu_id`=6161 WHERE `entry`=14829;
UPDATE `creature_template` SET `gossip_menu_id`=6223 WHERE `entry`=14832;
UPDATE `creature_template` SET `gossip_menu_id`=6224 WHERE `entry`=14833;
UPDATE `creature_template` SET `gossip_menu_id`=6225 WHERE `entry`=14841;
UPDATE `creature_template` SET `gossip_menu_id`=6230 WHERE `entry`=14844;
UPDATE `creature_template` SET `gossip_menu_id`=6234 WHERE `entry`=14845;
UPDATE `creature_template` SET `gossip_menu_id`=6233 WHERE `entry`=14846;
UPDATE `creature_template` SET `gossip_menu_id`=6202 WHERE `entry`=14847;
UPDATE `creature_template` SET `gossip_menu_id`=6201 WHERE `entry`=14849;
UPDATE `creature_template` SET `gossip_menu_id`=6231 WHERE `entry`=14860;
UPDATE `creature_template` SET `gossip_menu_id`=6227 WHERE `entry`=14871;
UPDATE `creature_template` SET `gossip_menu_id`=6235 WHERE `entry`=14875;
UPDATE `creature_template` SET `gossip_menu_id`=6321 WHERE `entry`=14902;
UPDATE `creature_template` SET `gossip_menu_id`=6322 WHERE `entry`=14903;
UPDATE `creature_template` SET `gossip_menu_id`=6341 WHERE `entry`=14904;
UPDATE `creature_template` SET `gossip_menu_id`=6422 WHERE `entry`=14910;
UPDATE `creature_template` SET `gossip_menu_id`=6381 WHERE `entry`=14921;
UPDATE `creature_template` SET `gossip_menu_id`=6475 WHERE `entry`=15007;
UPDATE `creature_template` SET `gossip_menu_id`=6519 WHERE `entry`=15076;
UPDATE `creature_template` SET `gossip_menu_id`=6588 WHERE `entry`=15169;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=15177;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=15178;
UPDATE `creature_template` SET `gossip_menu_id`=6575 WHERE `entry`=15303;
UPDATE `creature_template` SET `gossip_menu_id`=6598 WHERE `entry`=15350;
UPDATE `creature_template` SET `gossip_menu_id`=6597 WHERE `entry`=15351;
UPDATE `creature_template` SET `gossip_menu_id`=6800 WHERE `entry`=15395;
UPDATE `creature_template` SET `gossip_menu_id`=6658 WHERE `entry`=15526;
UPDATE `creature_template` SET `gossip_menu_id`=6786 WHERE `entry`=15708;
UPDATE `creature_template` SET `gossip_menu_id`=6803 WHERE `entry`=15762;
UPDATE `creature_template` SET `gossip_menu_id`=6804 WHERE `entry`=15763;
UPDATE `creature_template` SET `gossip_menu_id`=6805 WHERE `entry`=15764;
UPDATE `creature_template` SET `gossip_menu_id`=6806 WHERE `entry`=15766;
UPDATE `creature_template` SET `gossip_menu_id`=7070 WHERE `entry`=16012;
UPDATE `creature_template` SET `gossip_menu_id`=7071 WHERE `entry`=16013;
UPDATE `creature_template` SET `gossip_menu_id`=7034 WHERE `entry`=16070;
UPDATE `creature_template` SET `gossip_menu_id`=7034 WHERE `entry`=16076;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=16094;
UPDATE `creature_template` SET `gossip_menu_id`=7104 WHERE `entry`=16135;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=16227;
UPDATE `creature_template` SET `gossip_menu_id`=7238 WHERE `entry`=16416;
UPDATE `creature_template` SET `gossip_menu_id`=7394 WHERE `entry`=17249;
UPDATE `creature_template` SET `gossip_menu_id`=7480 WHERE `entry`=17804;

TRUNCATE TABLE `gossip_menu`;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`) VALUES
(23, 523, 0, 0, 0, 0, 0, 0),
(24, 522, 0, 0, 0, 0, 0, 0),
(64, 565, 0, 0, 0, 0, 0, 0),
(83, 580, 0, 0, 0, 0, 0, 0),
(126, 623, 0, 0, 0, 0, 0, 0),
(141, 4793, 0, 0, 0, 0, 0, 0),
(264, 761, 0, 0, 0, 0, 0, 0),
(265, 764, 0, 0, 0, 0, 0, 0),
(268, 766, 0, 0, 0, 0, 0, 0),
(342, 820, 0, 0, 0, 0, 0, 0),
(344, 822, 0, 0, 0, 0, 0, 0),
(345, 823, 0, 0, 0, 0, 0, 0),
(349, 825, 0, 0, 0, 0, 0, 0),
(382, 879, 0, 0, 0, 0, 0, 0),
(383, 882, 0, 0, 0, 0, 0, 0),
(401, 898, 0, 0, 0, 0, 0, 0),
(402, 899, 0, 0, 0, 0, 0, 0),
(403, 900, 0, 0, 0, 0, 0, 0),
(404, 901, 0, 0, 0, 0, 0, 0),
(405, 902, 0, 0, 0, 0, 0, 0),
(406, 903, 0, 0, 0, 0, 0, 0),
(407, 904, 0, 0, 0, 0, 0, 0),
(408, 905, 0, 0, 0, 0, 0, 0),
(409, 906, 0, 0, 0, 0, 0, 0),
(410, 4797, 0, 0, 0, 0, 0, 0),
(421, 918, 0, 0, 0, 0, 0, 0),
(422, 919, 0, 0, 0, 0, 0, 0),
(423, 920, 0, 0, 0, 0, 0, 0),
(424, 921, 0, 0, 0, 0, 0, 0),
(425, 922, 0, 0, 0, 0, 0, 0),
(426, 923, 0, 0, 0, 0, 0, 0),
(427, 924, 0, 0, 0, 0, 0, 0),
(428, 925, 0, 0, 0, 0, 0, 0),
(430, 927, 0, 0, 0, 0, 0, 0),
(431, 928, 0, 0, 0, 0, 0, 0),
(432, 929, 0, 0, 0, 0, 0, 0),
(435, 933, 0, 0, 0, 0, 0, 0),
(443, 940, 0, 0, 0, 0, 0, 0),
(444, 941, 0, 0, 0, 0, 0, 0),
(523, 1040, 0, 0, 0, 0, 0, 0),
(593, 1261, 0, 0, 0, 0, 0, 0),
(597, 1135, 0, 0, 0, 0, 0, 0),
(643, 1202, 0, 0, 0, 0, 0, 0),
(655, 4973, 0, 0, 0, 0, 0, 0),
(657, 1221, 0, 0, 0, 0, 0, 0),
(684, 1234, 0, 0, 0, 0, 0, 0),
(685, 1235, 0, 0, 0, 0, 0, 0),
(686, 1236, 0, 0, 0, 0, 0, 0),
(688, 1238, 0, 0, 0, 0, 0, 0),
(692, 1242, 0, 0, 0, 0, 0, 0),
(699, 1250, 0, 0, 0, 0, 0, 0),
(702, 1254, 0, 0, 0, 0, 0, 0),
(703, 1255, 0, 0, 0, 0, 0, 0),
(704, 1256, 0, 0, 0, 0, 0, 0),
(721, 1272, 0, 0, 0, 0, 0, 0),
(740, 1300, 0, 0, 0, 0, 0, 0),
(742, 1291, 0, 0, 0, 0, 0, 0),
(743, 1292, 0, 0, 0, 0, 0, 0),
(744, 1293, 0, 0, 0, 0, 0, 0),
(745, 1294, 0, 0, 0, 0, 0, 0),
(746, 1295, 0, 0, 0, 0, 0, 0),
(747, 1296, 0, 0, 0, 0, 0, 0),
(748, 1297, 0, 0, 0, 0, 0, 0),
(749, 1298, 0, 0, 0, 0, 0, 0),
(750, 1299, 0, 0, 0, 0, 0, 0),
(751, 1301, 0, 0, 0, 0, 0, 0),
(780, 1332, 0, 0, 0, 0, 0, 0),
(781, 1333, 0, 0, 0, 0, 0, 0),
(782, 1334, 0, 0, 0, 0, 0, 0),
(783, 1335, 0, 0, 0, 0, 0, 0),
(784, 1336, 0, 0, 0, 0, 0, 0),
(785, 1337, 0, 0, 0, 0, 0, 0),
(786, 1338, 0, 0, 0, 0, 0, 0),
(787, 1339, 0, 0, 0, 0, 0, 0),
(788, 1340, 0, 0, 0, 0, 0, 0),
(789, 1341, 0, 0, 0, 0, 0, 0),
(791, 1343, 0, 0, 0, 0, 0, 0),
(900, 1471, 0, 0, 0, 0, 0, 0),
(922, 1493, 0, 0, 0, 0, 0, 0),
(942, 1519, 0, 0, 0, 0, 0, 0),
(980, 1571, 0, 0, 0, 0, 0, 0),
(1012, 1606, 0, 0, 0, 0, 0, 0),
(1022, 1619, 0, 0, 0, 0, 0, 0),
(1042, 1635, 0, 0, 0, 0, 0, 0),
(1043, 1640, 0, 0, 0, 0, 0, 0),
(1120, 1734, 0, 0, 0, 0, 0, 0),
(1142, 1758, 0, 0, 0, 0, 0, 0),
(1221, 1853, 0, 0, 0, 0, 0, 0),
(1262, 1914, 0, 0, 0, 0, 0, 0),
(1290, 938, 0, 0, 0, 0, 0, 0),
(1291, 820, 0, 0, 0, 0, 0, 0),
(1293, 824, 0, 0, 0, 0, 0, 0),
(1294, 822, 0, 0, 0, 0, 0, 0),
(1296, 821, 0, 0, 0, 0, 0, 0),
(1297, 823, 0, 0, 0, 0, 0, 0),
(1403, 2037, 0, 0, 0, 0, 0, 0),
(1404, 2038, 0, 0, 0, 0, 0, 0),
(1423, 2055, 0, 0, 0, 0, 0, 0),
(1467, 2135, 0, 0, 0, 0, 0, 0),
(1467, 2136, 0, 0, 0, 0, 0, 0),
(1468, 2137, 0, 0, 0, 0, 0, 0),
(1481, 2154, 0, 0, 0, 0, 0, 0),
(1482, 2153, 0, 0, 0, 0, 0, 0),
(1503, 5722, 0, 0, 0, 0, 0, 0),
(1561, 2234, 0, 0, 0, 0, 0, 0),
(1581, 824, 0, 0, 0, 0, 0, 0),
(1623, 2275, 0, 0, 0, 0, 0, 0),
(1624, 2278, 0, 0, 0, 0, 0, 0),
(1629, 2284, 0, 0, 0, 0, 0, 0),
(1630, 2285, 0, 0, 0, 0, 0, 0),
(1631, 2286, 0, 0, 0, 0, 0, 0),
(1663, 2315, 0, 0, 0, 0, 0, 0),
(1701, 2353, 0, 0, 0, 0, 0, 0),
(1721, 2355, 0, 0, 0, 0, 0, 0),
(1761, 2393, 0, 0, 0, 0, 0, 0),
(1781, 2414, 0, 0, 0, 0, 0, 0),
(1802, 2433, 0, 0, 0, 0, 0, 0),
(1844, 2496, 0, 0, 0, 0, 0, 0),
(1845, 2497, 0, 0, 0, 0, 0, 0),
(1846, 2499, 0, 0, 0, 0, 0, 0),
(1861, 2500, 0, 0, 0, 0, 0, 0),
(1862, 2501, 0, 0, 0, 0, 0, 0),
(1863, 2502, 0, 0, 0, 0, 0, 0),
(1864, 2503, 0, 0, 0, 0, 0, 0),
(1865, 2504, 0, 0, 0, 0, 0, 0),
(1866, 2513, 0, 0, 0, 0, 0, 0),
(1868, 2515, 0, 0, 0, 0, 0, 0),
(1869, 2516, 0, 0, 0, 0, 0, 0),
(1871, 2518, 0, 0, 0, 0, 0, 0),
(1901, 2554, 0, 0, 0, 0, 0, 0),
(1902, 2555, 0, 0, 0, 0, 0, 0),
(1903, 2556, 0, 0, 0, 0, 0, 0),
(1904, 2557, 0, 0, 0, 0, 0, 0),
(1905, 2558, 0, 0, 0, 0, 0, 0),
(1906, 2559, 0, 0, 0, 0, 0, 0),
(1907, 2560, 0, 0, 0, 0, 0, 0),
(1908, 2561, 0, 0, 0, 0, 0, 0),
(1909, 2562, 0, 0, 0, 0, 0, 0),
(1910, 2563, 0, 0, 0, 0, 0, 0),
(1911, 2564, 0, 0, 0, 0, 0, 0),
(1912, 2565, 0, 0, 0, 0, 0, 0),
(1942, 2594, 0, 0, 0, 0, 0, 0),
(1949, 2599, 0, 0, 0, 0, 0, 0),
(1951, 2593, 0, 0, 0, 0, 0, 0),
(1963, 2637, 0, 0, 0, 0, 0, 0),
(1969, 2642, 0, 0, 0, 0, 0, 0),
(1971, 2644, 0, 0, 0, 0, 0, 0),
(1981, 2653, 0, 0, 0, 0, 0, 0),
(2021, 2676, 0, 0, 0, 0, 0, 0),
(2076, 2729, 0, 0, 0, 0, 0, 0),
(2076, 2727, 0, 0, 0, 0, 0, 0),
(2081, 2734, 0, 0, 0, 0, 0, 0),
(2101, 2753, 0, 0, 0, 0, 0, 0),
(2121, 2760, 0, 0, 0, 0, 0, 0),
(2141, 2761, 0, 0, 0, 0, 0, 0),
(2142, 2762, 0, 0, 0, 0, 0, 0),
(2143, 2764, 0, 0, 0, 0, 0, 0),
(2144, 2766, 0, 0, 0, 0, 0, 0),
(2145, 2768, 0, 0, 0, 0, 0, 0),
(2146, 2769, 0, 0, 0, 0, 0, 0),
(2147, 2770, 0, 0, 0, 0, 0, 0),
(2148, 2771, 0, 0, 0, 0, 0, 0),
(2149, 2772, 0, 0, 0, 0, 0, 0),
(2150, 2773, 0, 0, 0, 0, 0, 0),
(2151, 2774, 0, 0, 0, 0, 0, 0),
(2152, 2775, 0, 0, 0, 0, 0, 0),
(2153, 2776, 0, 0, 0, 0, 0, 0),
(2161, 2794, 0, 0, 0, 0, 0, 0),
(2162, 2795, 0, 0, 0, 0, 0, 0),
(2163, 2796, 0, 0, 0, 0, 0, 0),
(2164, 2797, 0, 0, 0, 0, 0, 0),
(2165, 2798, 0, 0, 0, 0, 0, 0),
(2166, 2799, 0, 0, 0, 0, 0, 0),
(2167, 2800, 0, 0, 0, 0, 0, 0),
(2168, 2793, 0, 0, 0, 0, 0, 0),
(2169, 2801, 0, 0, 0, 0, 0, 0),
(2170, 2802, 0, 0, 0, 0, 0, 0),
(2172, 2804, 0, 0, 0, 0, 0, 0),
(2173, 2805, 0, 0, 0, 0, 0, 0),
(2175, 2807, 0, 0, 0, 0, 0, 0),
(2184, 2817, 0, 0, 0, 0, 0, 0),
(2188, 2821, 0, 0, 0, 0, 0, 0),
(2188, 2816, 0, 0, 0, 0, 0, 0),
(2242, 2954, 0, 0, 0, 0, 0, 0),
(2283, 2973, 0, 0, 0, 0, 0, 0),
(2321, 3014, 0, 0, 0, 0, 0, 0),
(2322, 3017, 0, 0, 0, 0, 0, 0),
(2324, 3019, 0, 0, 0, 0, 0, 0),
(2325, 3020, 0, 0, 0, 0, 0, 0),
(2326, 3021, 0, 0, 0, 0, 0, 0),
(2327, 3023, 0, 0, 0, 0, 0, 0),
(2328, 3024, 0, 0, 0, 0, 0, 0),
(2329, 3025, 0, 0, 0, 0, 0, 0),
(2341, 3026, 0, 0, 0, 0, 0, 0),
(2342, 3033, 0, 0, 0, 0, 0, 0),
(2343, 3022, 0, 0, 0, 0, 0, 0),
(2344, 3035, 0, 0, 0, 0, 0, 0),
(2345, 3036, 0, 0, 0, 0, 0, 0),
(2347, 3337, 0, 0, 0, 0, 0, 0),
(2348, 3037, 0, 0, 0, 0, 0, 0),
(2349, 3038, 0, 0, 0, 0, 0, 0),
(2350, 3039, 0, 0, 0, 0, 0, 0),
(2351, 3034, 0, 0, 0, 0, 0, 0),
(2354, 3040, 0, 0, 0, 0, 0, 0),
(2356, 3042, 0, 0, 0, 0, 0, 0),
(2358, 3044, 0, 0, 0, 0, 0, 0),
(2383, 5715, 0, 0, 0, 0, 0, 0),
(2403, 3075, 0, 0, 0, 0, 0, 0),
(2404, 3076, 0, 0, 0, 0, 0, 0),
(2422, 3094, 0, 0, 0, 0, 0, 0),
(2423, 3095, 0, 0, 0, 0, 0, 0),
(2424, 3096, 0, 0, 0, 0, 0, 0),
(2461, 3153, 0, 0, 0, 0, 0, 0),
(2462, 3154, 0, 0, 0, 0, 0, 0),
(2463, 3155, 0, 0, 0, 0, 0, 0),
(2481, 3173, 0, 0, 0, 0, 0, 0),
(2562, 3234, 0, 0, 0, 0, 0, 0),
(2703, 3375, 0, 0, 0, 0, 0, 0),
(2741, 3395, 0, 0, 0, 0, 0, 0),
(2742, 3398, 0, 0, 0, 0, 0, 0),
(2744, 3405, 0, 0, 0, 0, 0, 0),
(2746, 3409, 0, 0, 0, 0, 0, 0),
(2747, 3412, 0, 0, 0, 0, 0, 0),
(2750, 3421, 0, 0, 0, 0, 0, 0),
(2761, 3456, 0, 0, 0, 0, 0, 0),
(2781, 3461, 0, 0, 0, 0, 0, 0),
(2782, 3466, 0, 0, 0, 0, 0, 0),
(2783, 3471, 0, 0, 0, 0, 0, 0),
(2821, 3513, 0, 0, 0, 0, 0, 0),
(2822, 3514, 0, 0, 0, 0, 0, 0),
(2823, 3515, 0, 0, 0, 0, 0, 0),
(2824, 3516, 0, 0, 0, 0, 0, 0),
(2825, 3517, 0, 0, 0, 0, 0, 0),
(2826, 3518, 0, 0, 0, 0, 0, 0),
(2827, 3519, 0, 0, 0, 0, 0, 0),
(2828, 3520, 0, 0, 0, 0, 0, 0),
(2829, 3521, 0, 0, 0, 0, 0, 0),
(2830, 3524, 0, 0, 0, 0, 0, 0),
(2832, 3526, 0, 0, 0, 0, 0, 0),
(2833, 3527, 0, 0, 0, 0, 0, 0),
(2834, 3528, 0, 0, 0, 0, 0, 0),
(2835, 3529, 0, 0, 0, 0, 0, 0),
(2836, 3530, 0, 0, 0, 0, 0, 0),
(2837, 3531, 0, 0, 0, 0, 0, 0),
(2838, 3532, 0, 0, 0, 0, 0, 0),
(2839, 3533, 0, 0, 0, 0, 0, 0),
(2840, 3534, 0, 0, 0, 0, 0, 0),
(2841, 3535, 0, 0, 0, 0, 0, 0),
(2842, 3536, 0, 0, 0, 0, 0, 0),
(2843, 3537, 0, 0, 0, 0, 0, 0),
(2844, 3538, 0, 0, 0, 0, 0, 0),
(2845, 3539, 0, 0, 0, 0, 0, 0),
(2847, 3541, 0, 0, 0, 0, 0, 0),
(2848, 3542, 0, 0, 0, 0, 0, 0),
(2849, 3543, 0, 0, 0, 0, 0, 0),
(2852, 3546, 0, 0, 0, 0, 0, 0),
(2883, 3559, 0, 0, 0, 0, 0, 0),
(2890, 3566, 0, 0, 0, 0, 0, 0),
(2901, 3573, 0, 0, 0, 0, 0, 0),
(2910, 3583, 0, 0, 0, 0, 0, 0),
(2911, 3585, 0, 0, 0, 0, 0, 0),
(2911, 3584, 0, 0, 0, 0, 0, 0),
(2952, 3666, 0, 0, 0, 0, 0, 0),
(2984, 3673, 0, 0, 0, 0, 0, 0),
(3042, 3754, 0, 0, 0, 0, 0, 0),
(3062, 3794, 0, 0, 0, 0, 0, 0),
(3081, 3813, 0, 0, 0, 0, 0, 0),
(3082, 3814, 0, 0, 0, 0, 0, 0),
(3101, 3833, 0, 0, 0, 0, 0, 0),
(3102, 3834, 0, 0, 0, 0, 0, 0),
(3126, 3860, 0, 0, 0, 0, 0, 0),
(3141, 3873, 0, 0, 0, 0, 0, 0),
(3161, 3893, 0, 0, 0, 0, 0, 0),
(3162, 3896, 0, 0, 0, 0, 0, 0),
(3181, 3935, 0, 0, 0, 0, 0, 0),
(3182, 3937, 0, 0, 0, 0, 0, 0),
(3184, 4039, 0, 0, 0, 0, 0, 0),
(3184, 3940, 0, 0, 0, 0, 0, 0),
(3185, 5844, 0, 0, 0, 0, 0, 0),
(3187, 3954, 0, 0, 0, 0, 0, 0),
(3201, 3959, 0, 0, 0, 0, 0, 0),
(3202, 3960, 0, 0, 0, 0, 0, 0),
(3203, 3961, 0, 0, 0, 0, 0, 0),
(3228, 3985, 0, 0, 0, 0, 0, 0),
(3228, 3984, 0, 0, 0, 0, 0, 0),
(3261, 4013, 0, 0, 0, 0, 0, 0),
(3262, 4014, 0, 0, 0, 0, 0, 0),
(3263, 4015, 0, 0, 0, 0, 0, 0),
(3264, 4016, 0, 0, 0, 0, 0, 0),
(3265, 4017, 0, 0, 0, 0, 0, 0),
(3266, 4018, 0, 0, 0, 0, 0, 0),
(3267, 4019, 0, 0, 0, 0, 0, 0),
(3268, 4020, 0, 0, 0, 0, 0, 0),
(3269, 4021, 0, 0, 0, 0, 0, 0),
(3270, 4022, 0, 0, 0, 0, 0, 0),
(3271, 4023, 0, 0, 0, 0, 0, 0),
(3272, 4024, 0, 0, 0, 0, 0, 0),
(3273, 4025, 0, 0, 0, 0, 0, 0),
(3274, 4026, 0, 0, 0, 0, 0, 0),
(3275, 4027, 0, 0, 0, 0, 0, 0),
(3276, 4028, 0, 0, 0, 0, 0, 0),
(3277, 4029, 0, 0, 0, 0, 0, 0),
(3278, 4030, 0, 0, 0, 0, 0, 0),
(3279, 4031, 0, 0, 0, 0, 0, 0),
(3280, 4032, 0, 0, 0, 0, 0, 0),
(3281, 4033, 0, 0, 0, 0, 0, 0),
(3282, 4034, 0, 0, 0, 0, 0, 0),
(3283, 4035, 0, 0, 0, 0, 0, 0),
(3284, 4036, 0, 0, 0, 0, 0, 0),
(3285, 4037, 0, 0, 0, 0, 0, 0),
(3311, 4051, 0, 0, 0, 0, 0, 0),
(3312, 4052, 0, 0, 0, 0, 0, 0),
(3313, 4053, 0, 0, 0, 0, 0, 0),
(3314, 4054, 0, 0, 0, 0, 0, 0),
(3315, 4055, 0, 0, 0, 0, 0, 0),
(3316, 4056, 0, 0, 0, 0, 0, 0),
(3317, 4057, 0, 0, 0, 0, 0, 0),
(3318, 4058, 0, 0, 0, 0, 0, 0),
(3319, 4059, 0, 0, 0, 0, 0, 0),
(3320, 4060, 0, 0, 0, 0, 0, 0),
(3321, 4061, 0, 0, 0, 0, 0, 0),
(3322, 4062, 0, 0, 0, 0, 0, 0),
(3323, 4063, 0, 0, 0, 0, 0, 0),
(3324, 4064, 0, 0, 0, 0, 0, 0),
(3325, 4065, 0, 0, 0, 0, 0, 0),
(3326, 4066, 0, 0, 0, 0, 0, 0),
(3327, 4067, 0, 0, 0, 0, 0, 0),
(3328, 4068, 0, 0, 0, 0, 0, 0),
(3329, 4069, 0, 0, 0, 0, 0, 0),
(3330, 4070, 0, 0, 0, 0, 0, 0),
(3331, 4072, 0, 0, 0, 0, 0, 0),
(3334, 4074, 0, 0, 0, 0, 0, 0),
(3335, 4075, 0, 0, 0, 0, 0, 0),
(3336, 4076, 0, 0, 0, 0, 0, 0),
(3337, 4077, 0, 0, 0, 0, 0, 0),
(3338, 4078, 0, 0, 0, 0, 0, 0),
(3339, 4079, 0, 0, 0, 0, 0, 0),
(3340, 4080, 0, 0, 0, 0, 0, 0),
(3341, 4081, 0, 0, 0, 0, 0, 0),
(3342, 4082, 0, 0, 0, 0, 0, 0),
(3343, 4083, 0, 0, 0, 0, 0, 0),
(3344, 4084, 0, 0, 0, 0, 0, 0),
(3345, 4085, 0, 0, 0, 0, 0, 0),
(3346, 4086, 0, 0, 0, 0, 0, 0),
(3347, 4087, 0, 0, 0, 0, 0, 0),
(3348, 4088, 0, 0, 0, 0, 0, 0),
(3349, 4089, 0, 0, 0, 0, 0, 0),
(3350, 4090, 0, 0, 0, 0, 0, 0),
(3351, 4091, 0, 0, 0, 0, 0, 0),
(3352, 4092, 0, 0, 0, 0, 0, 0),
(3353, 4093, 0, 0, 0, 0, 0, 0),
(3354, 4095, 0, 0, 0, 0, 0, 0),
(3355, 4096, 0, 0, 0, 0, 0, 0),
(3356, 4097, 0, 0, 0, 0, 0, 0),
(3383, 4135, 0, 0, 0, 0, 0, 0),
(3421, 4173, 0, 0, 0, 0, 0, 0),
(3461, 4213, 0, 0, 0, 0, 0, 0),
(3506, 4259, 0, 0, 0, 0, 0, 0),
(3507, 4260, 0, 0, 0, 0, 0, 0),
(3508, 4261, 0, 0, 0, 0, 0, 0),
(3509, 4262, 0, 0, 0, 0, 0, 0),
(3510, 4263, 0, 0, 0, 0, 0, 0),
(3511, 4265, 0, 0, 0, 0, 0, 0),
(3512, 4266, 0, 0, 0, 0, 0, 0),
(3513, 4267, 0, 0, 0, 0, 0, 0),
(3514, 4268, 0, 0, 0, 0, 0, 0),
(3515, 4269, 0, 0, 0, 0, 0, 0),
(3516, 4270, 0, 0, 0, 0, 0, 0),
(3517, 4271, 0, 0, 0, 0, 0, 0),
(3518, 4272, 0, 0, 0, 0, 0, 0),
(3519, 4264, 0, 0, 0, 0, 0, 0),
(3520, 4274, 0, 0, 0, 0, 0, 0),
(3521, 4275, 0, 0, 0, 0, 0, 0),
(3522, 4276, 0, 0, 0, 0, 0, 0),
(3523, 4277, 0, 0, 0, 0, 0, 0),
(3524, 4278, 0, 0, 0, 0, 0, 0),
(3525, 4279, 0, 0, 0, 0, 0, 0),
(3526, 4280, 0, 0, 0, 0, 0, 0),
(3527, 4281, 0, 0, 0, 0, 0, 0),
(3528, 4282, 0, 0, 0, 0, 0, 0),
(3529, 4283, 0, 0, 0, 0, 0, 0),
(3530, 4284, 0, 0, 0, 0, 0, 0),
(3531, 4285, 0, 0, 0, 0, 0, 0),
(3532, 4273, 0, 0, 0, 0, 0, 0),
(3533, 4287, 0, 0, 0, 0, 0, 0),
(3534, 4288, 0, 0, 0, 0, 0, 0),
(3535, 4289, 0, 0, 0, 0, 0, 0),
(3536, 4290, 0, 0, 0, 0, 0, 0),
(3537, 4291, 0, 0, 0, 0, 0, 0),
(3538, 4293, 0, 0, 0, 0, 0, 0),
(3539, 4294, 0, 0, 0, 0, 0, 0),
(3540, 4295, 0, 0, 0, 0, 0, 0),
(3541, 4296, 0, 0, 0, 0, 0, 0),
(3542, 4297, 0, 0, 0, 0, 0, 0),
(3543, 4298, 0, 0, 0, 0, 0, 0),
(3544, 4299, 0, 0, 0, 0, 0, 0),
(3545, 4292, 0, 0, 0, 0, 0, 0),
(3546, 4301, 0, 0, 0, 0, 0, 0),
(3547, 4302, 0, 0, 0, 0, 0, 0),
(3548, 4303, 0, 0, 0, 0, 0, 0),
(3549, 4304, 0, 0, 0, 0, 0, 0),
(3550, 4305, 0, 0, 0, 0, 0, 0),
(3551, 4306, 0, 0, 0, 0, 0, 0),
(3552, 4307, 0, 0, 0, 0, 0, 0),
(3553, 4308, 0, 0, 0, 0, 0, 0),
(3554, 4310, 0, 0, 0, 0, 0, 0),
(3555, 4311, 0, 0, 0, 0, 0, 0),
(3556, 4312, 0, 0, 0, 0, 0, 0),
(3557, 4313, 0, 0, 0, 0, 0, 0),
(3558, 4300, 0, 0, 0, 0, 0, 0),
(3560, 4317, 0, 0, 0, 0, 0, 0),
(3561, 4318, 0, 0, 0, 0, 0, 0),
(3562, 4319, 0, 0, 0, 0, 0, 0),
(3563, 4320, 0, 0, 0, 0, 0, 0),
(3564, 4322, 0, 0, 0, 0, 0, 0),
(3565, 4323, 0, 0, 0, 0, 0, 0),
(3566, 4324, 0, 0, 0, 0, 0, 0),
(3567, 4325, 0, 0, 0, 0, 0, 0),
(3568, 4326, 0, 0, 0, 0, 0, 0),
(3569, 4327, 0, 0, 0, 0, 0, 0),
(3570, 4329, 0, 0, 0, 0, 0, 0),
(3571, 4330, 0, 0, 0, 0, 0, 0),
(3572, 4328, 0, 0, 0, 0, 0, 0),
(3573, 4331, 0, 0, 0, 0, 0, 0),
(3574, 4332, 0, 0, 0, 0, 0, 0),
(3575, 4333, 0, 0, 0, 0, 0, 0),
(3576, 4334, 0, 0, 0, 0, 0, 0),
(3577, 4335, 0, 0, 0, 0, 0, 0),
(3578, 4336, 0, 0, 0, 0, 0, 0),
(3579, 4337, 0, 0, 0, 0, 0, 0),
(3580, 4316, 0, 0, 0, 0, 0, 0),
(3603, 4355, 0, 0, 0, 0, 0, 0),
(3623, 4396, 0, 0, 0, 0, 0, 0),
(3624, 4395, 0, 0, 0, 0, 0, 0),
(3625, 4399, 0, 0, 0, 0, 0, 0),
(3626, 4401, 0, 0, 0, 0, 0, 0),
(3644, 4440, 0, 0, 0, 0, 0, 0),
(3646, 4443, 0, 0, 0, 0, 0, 0),
(3651, 4450, 0, 0, 0, 0, 0, 0),
(3661, 4473, 0, 0, 0, 0, 0, 0),
(3664, 4477, 0, 0, 0, 0, 0, 0),
(3701, 4513, 0, 0, 0, 0, 0, 0),
(3721, 4516, 0, 0, 0, 0, 0, 0),
(3722, 4517, 0, 0, 0, 0, 0, 0),
(3723, 4518, 0, 0, 0, 0, 0, 0),
(3724, 4519, 0, 0, 0, 0, 0, 0),
(3725, 4520, 0, 0, 0, 0, 0, 0),
(3726, 4521, 0, 0, 0, 0, 0, 0),
(3761, 4573, 0, 0, 0, 0, 0, 0),
(3801, 4633, 0, 0, 0, 0, 0, 0),
(3802, 4634, 0, 0, 0, 0, 0, 0),
(3821, 4357, 0, 0, 0, 0, 0, 0),
(3841, 4693, 0, 0, 0, 0, 0, 0),
(3864, 4716, 0, 0, 0, 0, 0, 0),
(3921, 4774, 0, 0, 0, 0, 0, 0),
(3926, 4785, 0, 0, 0, 0, 0, 0),
(3985, 4841, 0, 0, 0, 0, 0, 0),
(4004, 4859, 0, 0, 0, 0, 0, 0),
(4005, 5840, 0, 0, 0, 0, 0, 0),
(4006, 4862, 0, 0, 0, 0, 0, 0),
(4010, 5003, 0, 0, 0, 0, 0, 0),
(4011, 4998, 0, 0, 0, 0, 0, 0),
(4012, 4998, 0, 0, 0, 0, 0, 0),
(4017, 4888, 0, 0, 0, 0, 0, 0),
(4018, 4876, 0, 0, 0, 0, 0, 0),
(4019, 5862, 0, 0, 0, 0, 0, 0),
(4020, 4879, 0, 0, 0, 0, 0, 0),
(4021, 4874, 0, 0, 0, 0, 0, 0),
(4022, 5865, 0, 0, 0, 0, 0, 0),
(4023, 4996, 0, 0, 0, 0, 0, 0),
(4043, 4933, 0, 0, 0, 0, 0, 0),
(4044, 4934, 0, 0, 0, 0, 0, 0),
(4048, 4938, 0, 0, 0, 0, 0, 0),
(4085, 4979, 0, 0, 0, 0, 0, 0),
(4090, 4990, 0, 0, 0, 0, 0, 0),
(4103, 5005, 0, 0, 0, 0, 0, 0),
(4104, 5005, 0, 0, 0, 0, 0, 0),
(4106, 5009, 0, 0, 0, 0, 0, 0),
(4107, 5010, 0, 0, 0, 0, 0, 0),
(4116, 5031, 0, 0, 0, 0, 0, 0),
(4118, 5037, 0, 0, 0, 0, 0, 0),
(4123, 5054, 0, 0, 0, 0, 0, 0),
(4126, 5069, 0, 0, 0, 0, 0, 0),
(4130, 5089, 0, 0, 0, 0, 0, 0),
(4135, 5112, 0, 0, 0, 0, 0, 0),
(4137, 5118, 0, 0, 0, 0, 0, 0),
(4142, 5133, 0, 0, 0, 0, 0, 0),
(4143, 5136, 0, 0, 0, 0, 0, 0),
(4148, 5157, 0, 0, 0, 0, 0, 0),
(4151, 5172, 0, 0, 0, 0, 0, 0),
(4155, 5187, 0, 0, 0, 0, 0, 0),
(4158, 5196, 0, 0, 0, 0, 0, 0),
(4163, 5213, 0, 0, 0, 0, 0, 0),
(4174, 5265, 0, 0, 0, 0, 0, 0),
(4183, 5279, 0, 0, 0, 0, 0, 0),
(4185, 5285, 0, 0, 0, 0, 0, 0),
(4187, 5291, 0, 0, 0, 0, 0, 0),
(4207, 5340, 0, 0, 0, 0, 0, 0),
(4209, 5350, 0, 0, 0, 0, 0, 0),
(4241, 5397, 0, 0, 0, 0, 0, 0),
(4242, 5398, 0, 0, 0, 0, 0, 0),
(4266, 5428, 0, 0, 0, 0, 0, 0),
(4281, 5453, 0, 0, 0, 0, 0, 0),
(4283, 5455, 0, 0, 0, 0, 0, 0),
(4301, 5473, 0, 0, 0, 0, 0, 0),
(4302, 5474, 0, 0, 0, 0, 0, 0),
(4305, 5477, 0, 0, 0, 0, 0, 0),
(4306, 5479, 0, 0, 0, 0, 0, 0),
(4307, 5454, 0, 0, 0, 0, 0, 0),
(4323, 5495, 0, 0, 0, 0, 0, 0),
(4324, 5496, 0, 0, 0, 0, 0, 0),
(4326, 5500, 0, 0, 0, 0, 0, 0),
(4341, 5515, 0, 0, 0, 0, 0, 0),
(4342, 5516, 0, 0, 0, 0, 0, 0),
(4343, 5517, 0, 0, 0, 0, 0, 0),
(4345, 5524, 0, 0, 0, 0, 0, 0),
(4349, 5540, 0, 0, 0, 0, 0, 0),
(4351, 5551, 0, 0, 0, 0, 0, 0),
(4358, 5580, 0, 0, 0, 0, 0, 0),
(4360, 5582, 0, 0, 0, 0, 0, 0),
(4469, 3976, 0, 0, 0, 0, 0, 0),
(4470, 3976, 0, 0, 0, 0, 0, 0),
(4471, 3976, 0, 0, 0, 0, 0, 0),
(4485, 538, 0, 0, 0, 0, 0, 0),
(4506, 5004, 0, 0, 0, 0, 0, 0),
(4516, 5005, 0, 0, 0, 0, 0, 0),
(4524, 4998, 0, 0, 0, 0, 0, 0),
(4525, 4973, 0, 0, 0, 0, 0, 0),
(4526, 4973, 0, 0, 0, 0, 0, 0),
(4527, 4973, 0, 0, 0, 0, 0, 0),
(4528, 5005, 0, 0, 0, 0, 0, 0),
(4529, 5005, 0, 0, 0, 0, 0, 0),
(4530, 5005, 0, 0, 0, 0, 0, 0),
(4534, 563, 0, 0, 0, 0, 0, 0),
(4537, 563, 0, 0, 0, 0, 0, 0),
(4538, 563, 0, 0, 0, 0, 0, 0),
(4539, 563, 0, 0, 0, 0, 0, 0),
(4552, 561, 0, 0, 0, 0, 0, 0),
(4571, 4781, 0, 0, 0, 0, 0, 0),
(4576, 4794, 0, 0, 0, 0, 0, 0),
(4606, 5717, 0, 0, 0, 0, 0, 0),
(4607, 5717, 0, 0, 0, 0, 0, 0),
(4609, 5720, 0, 0, 0, 0, 0, 0),
(4641, 5715, 0, 0, 0, 0, 0, 0),
(4645, 4973, 0, 0, 0, 0, 0, 0),
(4647, 4998, 0, 0, 0, 0, 0, 0),
(4648, 4987, 0, 0, 0, 0, 0, 0),
(4649, 5721, 0, 0, 0, 0, 0, 0),
(4650, 5721, 0, 0, 0, 0, 0, 0),
(4657, 5002, 0, 0, 0, 0, 0, 0),
(4659, 4835, 0, 0, 0, 0, 0, 0),
(4660, 538, 0, 0, 0, 0, 0, 0),
(4661, 538, 0, 0, 0, 0, 0, 0),
(4663, 3976, 0, 0, 0, 0, 0, 0),
(4666, 4434, 0, 0, 0, 0, 0, 0),
(4667, 5722, 0, 0, 0, 0, 0, 0),
(4675, 5000, 0, 0, 0, 0, 0, 0),
(4676, 4833, 0, 0, 0, 0, 0, 0),
(4677, 3974, 0, 0, 0, 0, 0, 0),
(4678, 3974, 0, 0, 0, 0, 0, 0),
(4680, 4435, 0, 0, 0, 0, 0, 0),
(4681, 5723, 0, 0, 0, 0, 0, 0),
(4682, 5722, 0, 0, 0, 0, 0, 0),
(4683, 5724, 0, 0, 0, 0, 0, 0),
(4684, 5724, 0, 0, 0, 0, 0, 0),
(4685, 559, 0, 0, 0, 0, 0, 0),
(4690, 4795, 0, 0, 0, 0, 0, 0),
(4691, 4437, 0, 0, 0, 0, 0, 0),
(4697, 5725, 0, 0, 0, 0, 0, 0),
(4741, 5793, 0, 0, 0, 0, 0, 0),
(4742, 6793, 0, 0, 0, 0, 0, 0),
(4746, 5798, 0, 0, 0, 0, 0, 0),
(4762, 7026, 0, 0, 0, 0, 0, 0),
(4781, 5834, 0, 0, 0, 0, 0, 0),
(4783, 5839, 0, 0, 0, 0, 0, 0),
(4783, 5838, 0, 0, 0, 0, 0, 0),
(4821, 5873, 0, 0, 0, 0, 0, 0),
(4822, 5876, 0, 0, 0, 0, 0, 0),
(4823, 5877, 0, 0, 0, 0, 0, 0),
(4826, 5884, 0, 0, 0, 0, 0, 0),
(4827, 5885, 0, 0, 0, 0, 0, 0),
(4901, 5973, 0, 0, 0, 0, 0, 0),
(4902, 5974, 0, 0, 0, 0, 0, 0),
(4903, 5976, 0, 0, 0, 0, 0, 0),
(4904, 5977, 0, 0, 0, 0, 0, 0),
(4905, 5978, 0, 0, 0, 0, 0, 0),
(4906, 5979, 0, 0, 0, 0, 0, 0),
(4921, 5980, 0, 0, 0, 0, 0, 0),
(4923, 5982, 0, 0, 0, 0, 0, 0),
(4924, 5983, 0, 0, 0, 0, 0, 0),
(4925, 5984, 0, 0, 0, 0, 0, 0),
(4926, 5985, 0, 0, 0, 0, 0, 0),
(4927, 5986, 0, 0, 0, 0, 0, 0),
(5102, 6154, 0, 0, 0, 0, 0, 0),
(5103, 6155, 0, 0, 0, 0, 0, 0),
(5123, 5005, 0, 0, 0, 0, 0, 0),
(5221, 6233, 0, 0, 0, 0, 0, 0),
(5222, 6235, 0, 0, 0, 0, 0, 0),
(5262, 6277, 0, 0, 0, 0, 0, 0),
(5263, 6275, 0, 0, 0, 0, 0, 0),
(5265, 6281, 0, 0, 0, 0, 0, 0),
(5266, 6279, 0, 0, 0, 0, 0, 0),
(5268, 6287, 0, 0, 0, 0, 0, 0),
(5269, 6286, 0, 0, 0, 0, 0, 0),
(5270, 6290, 0, 0, 0, 0, 0, 0),
(5271, 6289, 0, 0, 0, 0, 0, 0),
(5382, 6415, 0, 0, 0, 0, 0, 0),
(5382, 6414, 0, 0, 0, 0, 0, 0),
(5461, 6513, 0, 0, 0, 0, 0, 0),
(5483, 6535, 0, 0, 0, 0, 0, 0),
(5602, 6695, 0, 0, 0, 0, 0, 0),
(5665, 6960, 0, 0, 0, 0, 0, 0),
(5665, 6961, 0, 0, 0, 0, 0, 0),
(5708, 6876, 0, 0, 0, 0, 0, 0),
(5708, 6895, 0, 0, 0, 0, 0, 0),
(5715, 6882, 0, 0, 0, 0, 0, 0),
(5721, 6894, 0, 0, 0, 0, 0, 0),
(5727, 6898, 0, 0, 0, 0, 0, 0),
(5728, 6897, 0, 0, 0, 0, 0, 0),
(5729, 6896, 0, 0, 0, 0, 0, 0),
(5739, 6914, 0, 0, 0, 0, 0, 0),
(5740, 6916, 0, 0, 0, 0, 0, 0),
(5742, 6918, 0, 0, 0, 0, 0, 0),
(5744, 6920, 0, 0, 0, 0, 0, 0),
(5746, 6922, 0, 0, 0, 0, 0, 0),
(5750, 6933, 0, 0, 0, 0, 0, 0),
(5752, 6935, 0, 0, 0, 0, 0, 0),
(5753, 6936, 0, 0, 0, 0, 0, 0),
(5782, 6957, 0, 0, 0, 0, 0, 0),
(5819, 6992, 0, 0, 0, 0, 0, 0),
(5848, 7010, 0, 0, 0, 0, 0, 0),
(5849, 7011, 0, 0, 0, 0, 0, 0),
(5851, 7013, 0, 0, 0, 0, 0, 0),
(5853, 7017, 0, 0, 0, 0, 0, 0),
(5853, 7021, 0, 0, 0, 0, 0, 0),
(5854, 7021, 0, 0, 0, 0, 0, 0),
(5855, 7028, 0, 0, 0, 0, 0, 0),
(5856, 7028, 0, 0, 0, 0, 0, 0),
(5882, 7046, 0, 0, 0, 0, 0, 0),
(5883, 7047, 0, 0, 0, 0, 0, 0),
(5902, 7055, 0, 0, 0, 0, 0, 0),
(6023, 7175, 0, 0, 0, 0, 0, 0),
(6028, 7179, 0, 0, 0, 0, 0, 0),
(6037, 7190, 0, 0, 0, 0, 0, 0),
(6042, 7194, 0, 0, 0, 0, 0, 0),
(6043, 7195, 0, 0, 0, 0, 0, 0),
(6044, 7193, 0, 0, 0, 0, 0, 0),
(6089, 7243, 0, 0, 0, 0, 0, 0),
(6090, 7245, 0, 0, 0, 0, 0, 0),
(6091, 7247, 0, 0, 0, 0, 0, 0),
(6092, 7249, 0, 0, 0, 0, 0, 0),
(6094, 7251, 0, 0, 0, 0, 0, 0),
(6161, 7314, 0, 0, 0, 0, 0, 0),
(6162, 7315, 0, 0, 0, 0, 0, 0),
(6181, 7336, 0, 0, 0, 0, 0, 0),
(6182, 7334, 0, 0, 0, 0, 0, 0),
(6183, 7337, 0, 0, 0, 0, 0, 0),
(6184, 7338, 0, 0, 0, 0, 0, 0),
(6185, 7340, 0, 0, 0, 0, 0, 0),
(6186, 7339, 0, 0, 0, 0, 0, 0),
(6187, 7341, 0, 0, 0, 0, 0, 0),
(6201, 7382, 0, 0, 0, 0, 0, 0),
(6202, 7355, 0, 0, 0, 0, 0, 0),
(6203, 7357, 0, 0, 0, 0, 0, 0),
(6204, 7358, 0, 0, 0, 0, 0, 0),
(6205, 7359, 0, 0, 0, 0, 0, 0),
(6206, 7360, 0, 0, 0, 0, 0, 0),
(6207, 7356, 0, 0, 0, 0, 0, 0),
(6208, 7361, 0, 0, 0, 0, 0, 0),
(6209, 7362, 0, 0, 0, 0, 0, 0),
(6210, 7363, 0, 0, 0, 0, 0, 0),
(6223, 7383, 0, 0, 0, 0, 0, 0),
(6224, 7395, 0, 0, 0, 0, 0, 0),
(6225, 7397, 0, 0, 0, 0, 0, 0),
(6227, 7400, 0, 0, 0, 0, 0, 0),
(6230, 7404, 0, 0, 0, 0, 0, 0),
(6231, 7390, 0, 0, 0, 0, 0, 0),
(6233, 7389, 0, 0, 0, 0, 0, 0),
(6234, 7387, 0, 0, 0, 0, 0, 0),
(6235, 7454, 0, 0, 0, 0, 0, 0),
(6321, 7514, 0, 0, 0, 0, 0, 0),
(6322, 7515, 0, 0, 0, 0, 0, 0),
(6341, 7534, 0, 0, 0, 0, 0, 0),
(6381, 7574, 0, 0, 0, 0, 0, 0),
(6422, 7615, 0, 0, 0, 0, 0, 0),
(6475, 7668, 0, 0, 0, 0, 0, 0),
(6519, 7720, 0, 0, 0, 0, 0, 0),
(6565, 7780, 0, 0, 0, 0, 0, 0),
(6574, 7790, 0, 0, 0, 0, 0, 0),
(6575, 7789, 0, 0, 0, 0, 0, 0),
(6577, 7793, 0, 0, 0, 0, 0, 0),
(6578, 7794, 0, 0, 0, 0, 0, 0),
(6579, 7795, 0, 0, 0, 0, 0, 0),
(6581, 7799, 0, 0, 0, 0, 0, 0),
(6582, 7792, 0, 0, 0, 0, 0, 0),
(6588, 7801, 0, 0, 0, 0, 0, 0),
(6597, 7818, 0, 0, 0, 0, 0, 0),
(6598, 7819, 0, 0, 0, 0, 0, 0),
(6646, 7902, 0, 0, 0, 0, 0, 0),
(6658, 7916, 0, 0, 0, 0, 0, 0),
(6685, 7965, 0, 0, 0, 0, 0, 0),
(6786, 8103, 0, 0, 0, 0, 0, 0),
(6800, 8123, 0, 0, 0, 0, 0, 0),
(6801, 8124, 0, 0, 0, 0, 0, 0),
(6803, 8126, 0, 0, 0, 0, 0, 0),
(6804, 8128, 0, 0, 0, 0, 0, 0),
(6805, 8129, 0, 0, 0, 0, 0, 0),
(6806, 8130, 0, 0, 0, 0, 0, 0),
(6837, 8143, 0, 0, 0, 0, 0, 0),
(6944, 7778, 0, 0, 0, 0, 0, 0),
(6951, 8238, 0, 0, 0, 0, 0, 0),
(7034, 8269, 0, 0, 0, 0, 0, 0),
(7070, 8332, 0, 0, 0, 0, 0, 0),
(7071, 8333, 0, 0, 0, 0, 0, 0),
(7093, 8347, 0, 0, 0, 0, 0, 0),
(7095, 8349, 0, 0, 0, 0, 0, 0),
(7104, 8358, 0, 0, 0, 0, 0, 0),
(7109, 8366, 0, 0, 0, 0, 0, 0),
(7238, 8538, 0, 0, 0, 0, 0, 0),
(7339, 8733, 0, 0, 0, 0, 0, 0),
(7394, 8855, 0, 0, 0, 0, 0, 0),
(7480, 9063, 0, 0, 0, 0, 0, 0),
(7577, 9218, 0, 0, 0, 0, 0, 0),
(7690, 9384, 0, 0, 0, 0, 0, 0),
(7691, 9385, 0, 0, 0, 0, 0, 0),
(8085, 9995, 0, 0, 0, 0, 0, 0),
(8089, 10004, 0, 0, 0, 0, 0, 0),
(8090, 10003, 0, 0, 0, 0, 0, 0),
(8165, 10107, 0, 0, 0, 0, 0, 0),
(8166, 10108, 0, 0, 0, 0, 0, 0),
(8217, 10212, 0, 0, 0, 0, 0, 0),
(8220, 10216, 0, 0, 0, 0, 0, 0),
(8221, 10217, 0, 0, 0, 0, 0, 0),
(8222, 10218, 0, 0, 0, 0, 0, 0),
(8223, 10220, 0, 0, 0, 0, 0, 0),
(8224, 10221, 0, 0, 0, 0, 0, 0),
(8225, 10222, 0, 0, 0, 0, 0, 0),
(8572, 10748, 0, 0, 0, 0, 0, 0),
(8574, 10750, 0, 0, 0, 0, 0, 0),
(8575, 10751, 0, 0, 0, 0, 0, 0),
(8577, 10754, 0, 0, 0, 0, 0, 0),
(8578, 10755, 0, 0, 0, 0, 0, 0),
(8582, 10759, 0, 0, 0, 0, 0, 0),
(8592, 10770, 0, 0, 0, 0, 0, 0),
(8593, 10771, 0, 0, 0, 0, 0, 0),
(8594, 10772, 0, 0, 0, 0, 0, 0),
(8595, 10773, 0, 0, 0, 0, 0, 0),
(8596, 10774, 0, 0, 0, 0, 0, 0),
(8597, 10775, 0, 0, 0, 0, 0, 0),
(8598, 10776, 0, 0, 0, 0, 0, 0),
(8599, 10777, 0, 0, 0, 0, 0, 0),
(8600, 10778, 0, 0, 0, 0, 0, 0),
(8601, 10779, 0, 0, 0, 0, 0, 0),
(8602, 10780, 0, 0, 0, 0, 0, 0),
(8603, 10781, 0, 0, 0, 0, 0, 0),
(8604, 10782, 0, 0, 0, 0, 0, 0),
(8605, 10783, 0, 0, 0, 0, 0, 0),
(8606, 10784, 0, 0, 0, 0, 0, 0),
(8607, 10785, 0, 0, 0, 0, 0, 0),
(8608, 10786, 0, 0, 0, 0, 0, 0),
(8609, 10787, 0, 0, 0, 0, 0, 0),
(8610, 10788, 0, 0, 0, 0, 0, 0),
(8634, 10834, 0, 0, 0, 0, 0, 0),
(8635, 10832, 0, 0, 0, 0, 0, 0),
(8636, 10833, 0, 0, 0, 0, 0, 0),
(8637, 10831, 0, 0, 0, 0, 0, 0),
(8764, 11170, 0, 0, 0, 0, 0, 0),
(8764, 11169, 0, 0, 0, 0, 0, 0),
(8764, 11167, 0, 0, 0, 0, 0, 0),
(8764, 11172, 0, 0, 0, 0, 0, 0),
(8765, 11174, 0, 0, 0, 0, 0, 0),
(8765, 11175, 0, 0, 0, 0, 0, 0),
(8765, 11173, 0, 0, 0, 0, 0, 0),
(8765, 11165, 0, 0, 0, 0, 0, 0),
(8846, 11469, 0, 0, 0, 0, 0, 0),
(8848, 11472, 0, 0, 0, 0, 0, 0),
(9767, 13439, 0, 0, 0, 0, 0, 0),
(9821, 13584, 0, 0, 0, 0, 0, 0),
(9821, 13557, 0, 0, 0, 0, 0, 0),
(9832, 13583, 0, 0, 0, 0, 0, 0),
(10265, 3016, 0, 0, 0, 0, 0, 0),
(10266, 14254, 0, 0, 0, 0, 0, 0),
(10775, 14940, 0, 0, 0, 0, 0, 0),
(11073, 15400, 0, 0, 0, 0, 0, 0);

TRUNCATE TABLE `gossip_menu_option`;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES
(0, 0, 0, 'Do quests', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 1, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 2, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 3, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 4, 4, 'Return me to life.', 6, 32, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 5, 4, 'Revive me', 7, 64, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 6, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 7, 6, 'I would like to check my deposit box.', 9, 256, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 8, 7, 'How do I form a guild?', 10, 512, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 9, 8, 'I want to create a guild crest.', 11, 1024, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 10, 9, 'I wish to join the battle!', 12, 2048, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 11, 6, 'Auction!', 13, 4096, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 12, 0, 'I''d like to stable my pet here.', 14, 8192, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 13, 1, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 14, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 15, 2, 'I wish to unlearn my pet''s skills.', 17, 16, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 0, 'Tell me a story, Skorn.', 1, 1, 23, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 0, 4, 'Return me to life.', 6, 32, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 0, 0, 'Trick or Treat!', 1, 1, 435, 0, 0, 0, 0, '', 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(342, 2, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 3, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 2, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 3, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 2, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 3, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 0, 0, 'Druid', 1, 1, 405, 32, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 1, 0, 'Hunter', 1, 1, 408, 33, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 2, 0, 'Mage', 1, 1, 402, 34, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 3, 0, 'Paladin', 1, 1, 407, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 4, 0, 'Priest', 1, 1, 406, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 5, 0, 'Rogue', 1, 1, 403, 36, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 7, 0, 'Warlock', 1, 1, 409, 38, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 8, 0, 'Warrior', 1, 1, 404, 39, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 0, 0, 'Alchemy', 1, 1, 422, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 1, 0, 'Blacksmithing', 1, 1, 423, 41, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 2, 0, 'Cooking', 1, 1, 424, 43, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 3, 0, 'Enchanting', 1, 1, 444, 43, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 4, 0, 'Engineering', 1, 1, 425, 44, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 5, 0, 'First Aid', 1, 1, 426, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 6, 0, 'Fishing', 1, 1, 443, 46, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 7, 0, 'Herbalism', 1, 1, 427, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 9, 0, 'Leatherworking', 1, 1, 428, 47, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 10, 0, 'Mining', 1, 1, 430, 48, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 11, 0, 'Skinning', 1, 1, 431, 47, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 12, 0, 'Tailoring', 1, 1, 432, 49, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 0, 0, 'Auction House', 1, 1, 3102, 18, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 1, 0, 'Bank of Stormwind', 1, 1, 265, 19, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 2, 0, 'Stormwind Harbor', 1, 1, 9767, 20, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 3, 0, 'Deeprun Tram', 1, 1, 3081, 21, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 4, 0, 'The Inn', 1, 1, 3126, 22, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 5, 0, 'Gryphon Master', 1, 1, 382, 23, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 6, 0, 'Guild Master', 1, 1, 383, 24, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 8, 0, 'Stable Master', 1, 1, 4925, 26, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 9, 0, 'Weapons Trainer', 1, 1, 3721, 27, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 10, 0, 'Officers'' Lounge', 1, 1, 5883, 28, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 11, 0, 'Battlemaster', 1, 1, 8222, 29, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 14, 0, 'Class Trainer', 1, 1, 401, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 15, 0, 'Profession Trainer', 1, 1, 421, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(593, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(643, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(643, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(657, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(685, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(685, 1, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(686, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(686, 1, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(688, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(688, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(688, 2, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(692, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(704, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(704, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 0, 0, 'The bank', 1, 1, 743, 325, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 1, 0, 'The wind rider master', 1, 1, 744, 324, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 2, 0, 'The guild master', 1, 1, 742, 323, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 3, 0, 'The inn', 1, 1, 2461, 322, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 4, 0, 'The mailbox', 1, 1, 2462, 321, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 5, 0, 'The auction house', 1, 1, 2463, 320, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 6, 0, 'The weapon master', 1, 1, 3725, 319, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 7, 0, 'The stable master', 1, 1, 4904, 318, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 8, 0, 'The battlemaster', 1, 1, 8223, 317, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 9, 0, 'A class trainer', 1, 1, 740, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 10, 0, 'A profession trainer', 1, 1, 751, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 0, 0, 'Druid', 1, 1, 745, 316, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 1, 0, 'Hunter', 1, 1, 746, 313, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 2, 0, 'Mage', 1, 1, 747, 315, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 3, 0, 'Priest', 1, 1, 748, 315, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 4, 0, 'Shaman', 1, 1, 749, 314, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 5, 0, 'Warrior', 1, 1, 750, 313, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 0, 0, 'Alchemy', 1, 1, 780, 312, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 1, 0, 'Blacksmithing', 1, 1, 781, 311, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 2, 0, 'Cooking', 1, 1, 782, 310, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 3, 0, 'Enchanting', 1, 1, 783, 309, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 4, 0, 'First Aid', 1, 1, 784, 308, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 5, 0, 'Fishing', 1, 1, 785, 307, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 6, 0, 'Herbalism', 1, 1, 786, 306, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 8, 0, 'Leatherworking', 1, 1, 787, 304, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 9, 0, 'Mining', 1, 1, 788, 303, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 10, 0, 'Skinning', 1, 1, 791, 302, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 11, 0, 'Tailoring', 1, 1, 789, 304, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922, 1, 0, 'Seen any strange things in the desert lately?', 1, 1, 1423, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922, 3, 0, 'GOSSIP_OPTION_VENDOR', 3, 4, 0, 0, 0, 0, 0, NULL, 8, 2662, 0, 0, 0, 0, 0, 0, 0),
(980, 0, 1, 'Hello Sovik, I wish to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(980, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1022, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1022, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1120, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1120, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1262, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1262, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1262, 2, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1290, 2, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1290, 3, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1290, 4, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1290, 5, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1291, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(1291, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1291, 2, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 13, 1048576, 0, 0, 0, 0, 0, 0, 0),
(1291, 3, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1291, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1293, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(1293, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1293, 2, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 13, 1048576, 0, 0, 0, 0, 0, 0, 0),
(1293, 3, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1293, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 2, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 3, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1296, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(1296, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1296, 2, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1296, 3, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 13, 1048576, 0, 0, 0, 0, 0, 0, 0),
(1296, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1297, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(1297, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1297, 2, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1297, 3, 0, 'What can I do at an inn?', 1, 1, 1221, 0, 0, 0, 0, '', 13, 1048576, 0, 0, 0, 0, 0, 0, 0),
(1297, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1482, 0, 0, 'Tell me more about these hippogryphs.', 1, 1, 1481, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1482, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(1581, 2, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581, 3, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581, 4, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1623, 0, 6, 'I would like to check my deposit box.', 9, 256, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1623, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1624, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1624, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1624, 2, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1721, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1781, 0, 1, 'I''d like to see what you have to sell.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1781, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 0, 0, 'Alchemy', 1, 1, 1845, 427, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 1, 0, 'Blacksmithing', 1, 1, 1846, 428, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 2, 0, 'Cooking', 1, 1, 1861, 429, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 3, 0, 'Enchanting', 1, 1, 1862, 430, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 4, 0, 'Engineering', 1, 1, 1981, 431, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 5, 0, 'First Aid', 1, 1, 1863, 432, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 6, 0, 'Fishing', 1, 1, 1864, 433, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 7, 0, 'Herbalism', 1, 1, 1865, 434, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 9, 0, 'Leatherworking', 1, 1, 1866, 436, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 10, 0, 'Mining', 1, 1, 1868, 435, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 11, 0, 'Skinning', 1, 1, 1869, 436, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1942, 12, 0, 'Tailoring', 1, 1, 1871, 437, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 0, 0, 'Hunter', 1, 1, 1906, 420, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 1, 0, 'Mage', 1, 1, 1907, 421, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 2, 0, 'Priest', 1, 1, 1908, 422, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 3, 0, 'Shaman', 1, 1, 1909, 423, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 4, 0, 'Rogue', 1, 1, 1910, 424, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 5, 0, 'Warlock', 1, 1, 1911, 425, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1949, 6, 0, 'Warrior', 1, 1, 1912, 426, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 0, 0, 'The bank', 1, 1, 1901, 176, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 1, 0, 'The wind rider master', 1, 1, 1902, 177, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 2, 0, 'The guild master', 1, 1, 1903, 178, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 3, 0, 'The inn', 1, 1, 1904, 179, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 4, 0, 'The mailbox', 1, 1, 1905, 180, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 5, 0, 'The auction house', 1, 1, 2403, 181, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 6, 0, 'The zeppelin master', 1, 1, 2481, 182, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 7, 0, 'The weapon master', 1, 1, 3724, 184, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 8, 0, 'The stable master', 1, 1, 4902, 185, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 9, 0, 'The officers'' lounge', 1, 1, 5882, 186, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 10, 0, 'The battlemaster', 1, 1, 8224, 187, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 12, 0, 'A class trainer', 1, 1, 1949, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1951, 13, 0, 'A profession trainer', 1, 1, 1942, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1969, 0, 0, 'Where is the zeppelin now?', 1, 1, 8765, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1971, 0, 0, 'Where is the zeppelin now?', 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2021, 0, 3, 'I''d like to train in cooking.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2021, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2101, 0, 0, 'Where is the zeppelin now?', 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 0, 0, 'Auction House', 1, 1, 2321, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 1, 0, 'Bank of Ironforge', 1, 1, 2141, 51, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 2, 0, 'Deeprun Tram', 1, 1, 3082, 52, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 3, 0, 'Gryphon Master', 1, 1, 2142, 53, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 4, 0, 'Guild Master', 1, 1, 2143, 54, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 5, 0, 'The Inn', 1, 1, 2145, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 6, 0, 'Mailbox', 1, 1, 2146, 56, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 7, 0, 'Stable Master', 1, 1, 4927, 57, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 8, 0, 'Weapons Trainer', 1, 1, 3723, 58, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 9, 0, 'Battlemaster', 1, 1, 8220, 59, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 11, 0, 'Class Trainer', 1, 1, 2144, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2121, 12, 0, 'Profession Trainer', 1, 1, 2168, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 0, 0, 'Hunter', 1, 1, 2147, 61, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 1, 0, 'Mage', 1, 1, 2148, 62, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 2, 0, 'Paladin', 1, 1, 2150, 62, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 3, 0, 'Priest', 1, 1, 2149, 62, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 4, 0, 'Rogue', 1, 1, 2151, 63, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 5, 0, 'Warlock', 1, 1, 2152, 64, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2144, 6, 0, 'Warrior', 1, 1, 2153, 61, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 0, 0, 'Alchemy', 1, 1, 2161, 66, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 1, 0, 'Blacksmithing', 1, 1, 2162, 67, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 2, 0, 'Cooking', 1, 1, 2163, 68, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 3, 0, 'Enchanting', 1, 1, 2164, 69, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 4, 0, 'Engineering', 1, 1, 2165, 419, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 5, 0, 'First Aid', 1, 1, 2166, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 6, 0, 'Fishing', 1, 1, 2167, 71, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 7, 0, 'Herbalism', 1, 1, 2169, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 9, 0, 'Leatherworking', 1, 1, 2170, 73, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 10, 0, 'Mining', 1, 1, 2172, 74, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 11, 0, 'Skinning', 1, 1, 2173, 73, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2168, 12, 0, 'Tailoring', 1, 1, 2175, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 0, 0, 'Druid', 1, 1, 2328, 98, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 1, 0, 'Hunter', 1, 1, 2327, 99, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 2, 0, 'Mage', 1, 1, 11422, 438, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 3, 0, 'Paladin', 1, 1, 11422, 439, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 4, 0, 'Priest', 1, 1, 2329, 364, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 5, 0, 'Rogue', 1, 1, 2341, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2343, 6, 0, 'Warrior', 1, 1, 2342, 101, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 0, 0, 'Alchemy', 1, 1, 2344, 102, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 1, 0, 'Cooking', 1, 1, 2345, 103, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 2, 0, 'Enchanting', 1, 1, 2347, 104, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 3, 0, 'First Aid', 1, 1, 2348, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 4, 0, 'Fishing', 1, 1, 2349, 106, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 5, 0, 'Herbalism', 1, 1, 2350, 440, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 7, 0, 'Leatherworking', 1, 1, 2354, 108, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 8, 0, 'Skinning', 1, 1, 2356, 109, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2351, 9, 0, 'Tailoring', 1, 1, 2358, 110, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2741, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2744, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2744, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 0, 0, 'Alchemy', 1, 1, 2834, 266, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 1, 0, 'Blacksmithing', 1, 1, 2835, 265, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 2, 0, 'Cooking', 1, 1, 2836, 264, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 3, 0, 'Enchanting', 1, 1, 2837, 263, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 4, 0, 'Engineering', 1, 1, 2838, 262, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 5, 0, 'First Aid', 1, 1, 2839, 261, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 6, 0, 'Fishing', 1, 1, 2840, 260, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 7, 0, 'Herbalism', 1, 1, 2841, 259, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 9, 0, 'Leatherworking', 1, 1, 2842, 257, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 10, 0, 'Mining', 1, 1, 2843, 256, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 11, 0, 'Skinning', 1, 1, 2844, 255, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2847, 12, 0, 'Tailoring', 1, 1, 2845, 254, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 0, 0, 'Mage', 1, 1, 2821, 272, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 1, 0, 'Paladin', 1, 1, 8165, 271, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 2, 0, 'Priest', 1, 1, 2829, 270, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 3, 0, 'Rogue', 1, 1, 2830, 269, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 4, 0, 'Warlock', 1, 1, 2832, 268, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2848, 5, 0, 'Warrior', 1, 1, 2833, 267, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 0, 0, 'The bank', 1, 1, 2822, 283, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 1, 0, 'The bat handler', 1, 1, 2823, 281, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 2, 0, 'The guild master', 1, 1, 2824, 279, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 3, 0, 'The inn', 1, 1, 2825, 278, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 4, 0, 'The mailbox', 1, 1, 2826, 276, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 5, 0, 'The auction house', 1, 1, 2827, 284, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 6, 0, 'The zeppelin master', 1, 1, 2828, 273, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 7, 0, 'The weapon master', 1, 1, 3726, 274, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 8, 0, 'The stable master', 1, 1, 4906, 275, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 9, 0, 'The battlemaster', 1, 1, 8225, 280, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 12, 0, 'A class trainer', 1, 1, 2848, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2849, 13, 0, 'A profession trainer', 1, 1, 2847, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2890, 0, 0, 'Trick or Treat!', 1, 1, 0, 0, 0, 0, 0, NULL, 12, 12, 0, 11, 24755, 0, 0, 0, 0),
(2890, 1, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2890, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2890, 5, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2952, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2952, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3162, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3162, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3185, 1, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3185, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 0, 0, 'Hunter', 1, 1, 3261, 251, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 1, 0, 'Mage', 1, 1, 3262, 250, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 2, 0, 'Priest', 1, 1, 3263, 249, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 3, 0, 'Rogue', 1, 1, 3264, 248, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 4, 0, 'Shaman', 1, 1, 3265, 247, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 5, 0, 'Warlock', 1, 1, 3266, 246, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3283, 6, 0, 'Warrior', 1, 1, 3267, 245, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 0, 0, 'Alchemy', 1, 1, 3268, 244, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 1, 0, 'Blacksmithing', 1, 1, 3269, 243, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 2, 0, 'Cooking', 1, 1, 3270, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 3, 0, 'Enchanting', 1, 1, 3271, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 4, 0, 'Engineering', 1, 1, 3272, 242, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 5, 0, 'First Aid', 1, 1, 3273, 241, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 6, 0, 'Fishing', 1, 1, 3274, 240, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 7, 0, 'Herbalism', 1, 1, 3275, 239, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 9, 0, 'Leatherworking', 1, 1, 3276, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 10, 0, 'Mining', 1, 1, 3277, 238, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 11, 0, 'Skinning', 1, 1, 3278, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3284, 12, 0, 'Tailoring', 1, 1, 3279, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 0, 0, 'The bank', 1, 1, 3280, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 1, 0, 'The wind rider master', 1, 1, 3281, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 2, 0, 'The inn', 1, 1, 3282, 253, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 3, 0, 'The stable master', 1, 1, 4901, 252, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 4, 0, 'A class trainer', 1, 1, 3283, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3285, 5, 0, 'A profession trainer', 1, 1, 3284, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3329, 0, 0, 'Druid', 1, 1, 3314, 336, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3329, 1, 0, 'Hunter', 1, 1, 3315, 335, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3329, 2, 0, 'Shaman', 1, 1, 3316, 334, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3329, 3, 0, 'Warrior', 1, 1, 3317, 332, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 0, 0, 'Alchemy', 1, 1, 3318, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 1, 0, 'Blacksmithing', 1, 1, 3319, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 2, 0, 'Cooking', 1, 1, 3320, 331, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 3, 0, 'Enchanting', 1, 1, 3321, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 4, 0, 'First Aid', 1, 1, 3322, 330, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 5, 0, 'Fishing', 1, 1, 3323, 329, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 6, 0, 'Herbalism', 1, 1, 3324, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 8, 0, 'Leatherworking', 1, 1, 3325, 327, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 9, 0, 'Mining', 1, 1, 3326, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 10, 0, 'Skinning', 1, 1, 3327, 326, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3330, 11, 0, 'Tailoring', 1, 1, 3328, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 0, 0, 'The bank', 1, 1, 3311, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 1, 0, 'The wind rider master', 1, 1, 3312, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 2, 0, 'The inn', 1, 1, 3313, 338, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 3, 0, 'The stable master', 1, 1, 4903, 337, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 4, 0, 'A class trainer', 1, 1, 3329, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3331, 5, 0, 'A profession trainer', 1, 1, 3330, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 0, 0, 'Mage', 1, 1, 3337, 298, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 1, 0, 'Paladin', 1, 1, 8166, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 2, 0, 'Priest', 1, 1, 3338, 297, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 3, 0, 'Rogue', 1, 1, 3339, 295, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 4, 0, 'Warlock', 1, 1, 3340, 294, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3354, 5, 0, 'Warrior', 1, 1, 3341, 293, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 0, 0, 'Alchemy', 1, 1, 3342, 292, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 1, 0, 'Blacksmithing', 1, 1, 3343, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 2, 0, 'Cooking', 1, 1, 3344, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 3, 0, 'Enchanting', 1, 1, 3345, 291, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 4, 0, 'Engineering', 1, 1, 3346, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 5, 0, 'First Aid', 1, 1, 3347, 290, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 6, 0, 'Fishing', 1, 1, 3348, 289, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 7, 0, 'Herbalism', 1, 1, 3349, 442, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 9, 0, 'Leatherworking', 1, 1, 3350, 287, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 10, 0, 'Mining', 1, 1, 3351, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 11, 0, 'Skinning', 1, 1, 3352, 286, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3355, 12, 0, 'Tailoring', 1, 1, 3353, 285, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 0, 0, 'The bank', 1, 1, 3334, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 1, 0, 'The bat handler', 1, 1, 3335, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 2, 0, 'The inn', 1, 1, 3336, 299, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 3, 0, 'The stable master', 1, 1, 4905, 296, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 4, 0, 'A class trainer', 1, 1, 3354, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 5, 0, 'A profession trainer', 1, 1, 3355, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3356, 6, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3421, 0, 0, 'I need another Argent Dawn Commission.', 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3421, 1, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3421, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3421, 3, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 0, 0, 'Bank', 1, 1, 3507, 19, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 1, 0, 'Gryphon Master', 1, 1, 3508, 23, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 2, 0, 'Guild Master', 1, 1, 3509, 24, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 3, 0, 'Inn', 1, 1, 3510, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 4, 0, 'Stable Master', 1, 1, 4924, 17, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 5, 0, 'Class Trainer', 1, 1, 3519, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3506, 6, 0, 'Profession Trainer', 1, 1, 3532, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 0, 0, 'Druid', 1, 1, 3511, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 1, 0, 'Hunter', 1, 1, 3512, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 2, 0, 'Mage', 1, 1, 3514, 2, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 3, 0, 'Paladin', 1, 1, 3515, 3, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 4, 0, 'Priest', 1, 1, 3513, 4, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 5, 0, 'Rogue', 1, 1, 3516, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 7, 0, 'Warlock', 1, 1, 3518, 6, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3519, 8, 0, 'Warrior', 1, 1, 3517, 7, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 0, 0, 'Alchemy', 1, 1, 3520, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 1, 0, 'Blacksmithing', 1, 1, 3521, 9, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 2, 0, 'Cooking', 1, 1, 3522, 10, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 3, 0, 'Enchanting', 1, 1, 3523, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 4, 0, 'Engineering', 1, 1, 3524, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 5, 0, 'First Aid', 1, 1, 3525, 11, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 6, 0, 'Fishing', 1, 1, 3526, 12, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 7, 0, 'Herbalism', 1, 1, 3527, 363, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 9, 0, 'Leatherworking', 1, 1, 3528, 14, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 10, 0, 'Mining', 1, 1, 3529, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 11, 0, 'Skinning', 1, 1, 3530, 15, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3532, 12, 0, 'Tailoring', 1, 1, 3531, 16, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 0, 0, 'Bank', 1, 1, 3534, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 1, 0, 'Gryphon Master', 1, 1, 3535, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 2, 0, 'Guild Master', 1, 1, 3536, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 3, 0, 'The Inn', 1, 1, 3537, 76, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 4, 0, 'Stable Master', 1, 1, 4926, 77, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 5, 0, 'Class Trainer', 1, 1, 3545, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3533, 6, 0, 'Profession Trainer', 1, 1, 3558, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 0, 0, 'Hunter', 1, 1, 3538, 78, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 1, 0, 'Mage', 1, 1, 3539, 79, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 2, 0, 'Paladin', 1, 1, 3540, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 3, 0, 'Priest', 1, 1, 3541, 81, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 4, 0, 'Rogue', 1, 1, 3542, 82, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 5, 0, 'Warlock', 1, 1, 3543, 83, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3545, 6, 0, 'Warrior', 1, 1, 3544, 84, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 0, 0, 'Alchemy', 1, 1, 3546, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 1, 0, 'Blacksmithing', 1, 1, 3547, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 2, 0, 'Cooking', 1, 1, 3548, 86, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 3, 0, 'Enchanting', 1, 1, 3549, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 4, 0, 'Engineering', 1, 1, 3550, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 5, 0, 'First Aid', 1, 1, 3551, 87, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 6, 0, 'Fishing', 1, 1, 3552, 88, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 7, 0, 'Herbalism', 1, 1, 3553, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 9, 0, 'Leatherworking', 1, 1, 3554, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 10, 0, 'Mining', 1, 1, 3555, 339, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 11, 0, 'Skinning\n', 1, 1, 3556, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3558, 12, 0, 'Tailoring', 1, 1, 3557, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3564, 0, 0, 'Druid', 1, 1, 3565, 113, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3564, 1, 0, 'Hunter', 1, 1, 3566, 114, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3564, 2, 0, 'Priest', 1, 1, 3567, 115, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3564, 3, 0, 'Rogue', 1, 1, 3568, 116, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3564, 4, 0, 'Warrior', 1, 1, 3569, 117, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 0, 0, 'Alchemy', 1, 1, 3570, 118, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 1, 0, 'Cooking', 1, 1, 3571, 119, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 2, 0, 'Enchanting', 1, 1, 3573, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 3, 0, 'First Aid', 1, 1, 3574, 121, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 4, 0, 'Fishing', 1, 1, 3575, 106, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 5, 0, 'Herbalism', 1, 1, 3576, 122, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 7, 0, 'Leatherworking', 1, 1, 3577, 123, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 8, 0, 'Skinning', 1, 1, 3578, 124, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3572, 9, 0, 'Tailoring', 1, 1, 3579, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 0, 0, 'The Bank', 1, 1, 3560, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 1, 0, 'Rut''theran Ferry', 1, 1, 3561, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 2, 0, 'The Guild Master.', 1, 1, 3562, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 3, 0, 'The Inn', 1, 1, 3563, 111, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 4, 0, 'Stable Master', 1, 1, 4923, 112, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 5, 0, 'Class Trainer', 1, 1, 3564, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3580, 6, 0, 'Profession Trainer', 1, 1, 3572, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3624, 0, 0, 'What about the Winterfall furbolg?', 1, 1, 3623, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3624, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3841, 0, 0, 'Where is the zeppelin now?', 1, 1, 8764, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3921, 0, 3, 'I seek training as a druid.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3921, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3921, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4006, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4006, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4021, 0, 3, 'I seek training to ride a steed.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4021, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4022, 0, 3, 'I seek training to ride a steed.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4022, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4090, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4090, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4090, 2, 0, 'GOSSIP_OPTION_ARMORER', 15, 16384, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4103, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4103, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4103, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4104, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4104, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4104, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4106, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4106, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4107, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4107, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4123, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4126, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4135, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4163, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4174, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4174, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4185, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4185, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4209, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4209, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4242, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4242, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4281, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4281, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4283, 0, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4283, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4301, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4301, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4302, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4302, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4305, 0, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4305, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4307, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4307, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4323, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4323, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4326, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4326, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4342, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4342, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4351, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4360, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4360, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4469, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4469, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4469, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4470, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4470, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4470, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4471, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4471, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4471, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4485, 0, 3, 'I am interested in mage training.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4485, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4485, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4516, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4516, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4516, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4528, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4528, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4528, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4529, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4529, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4529, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4530, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4530, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4530, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4647, 0, 3, 'I seek training in the ways of the Hunter.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4647, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4647, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4648, 0, 3, 'I seek training in the ways of the Hunter.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4648, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4648, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4659, 0, 3, 'Can you train me how to use rogue skills?', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4659, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4659, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4660, 0, 3, 'I am interested in mage training.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4660, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4660, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4661, 0, 3, 'I am interested in mage training.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4661, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4661, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4663, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4663, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4663, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4675, 0, 3, 'I seek training in the ways of the Hunter.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4675, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4675, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4677, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4677, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4677, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4678, 0, 3, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4678, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4678, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4690, 0, 3, 'I seek training.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4690, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4690, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4741, 0, 3, 'I require training, Lumak.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4741, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4746, 0, 1, 'I wish to browse your goods, Dirge.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4746, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4822, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4826, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5123, 0, 3, 'Teach me the ways of the spirits.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5123, 1, 0, 'I wish to unlearn my talents.', 16, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5123, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5221, 0, 3, 'I''d like some weapon training', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5221, 1, 0, 'What can other weapon masters teach?', 1, 1, 5222, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5221, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 0, 0, 'Crossbow', 1, 1, 8594, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 1, 0, 'Gun', 1, 1, 8597, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 2, 0, 'Mace', 1, 1, 8598, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 3, 0, 'Polearm', 1, 1, 8599, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 4, 0, 'Staff', 1, 1, 8610, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5222, 5, 0, 'Sword', 1, 1, 8601, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 0, 0, 'Crossbow', 1, 1, 8603, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 1, 0, 'Dagger', 1, 1, 8604, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 2, 0, 'Fist Weapon', 1, 1, 8605, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 3, 0, 'Gun', 1, 1, 8606, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 4, 0, 'Mace', 1, 1, 8607, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 5, 0, 'Polearm', 1, 1, 8608, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5262, 6, 0, 'Sword', 1, 1, 8609, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5263, 0, 3, 'I''d like some weapon training', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5263, 1, 0, 'What can other weapon masters teach?', 1, 1, 5262, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 0, 0, 'Axe', 1, 1, 8592, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 1, 0, 'Bow', 1, 1, 8593, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 2, 0, 'Crossbow', 1, 1, 8594, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 3, 0, 'Dagger', 1, 1, 8595, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 4, 0, 'Fist Weapon', 1, 1, 8596, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 5, 0, 'Polearm', 1, 1, 8599, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 6, 0, 'Sword', 1, 1, 8601, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5265, 7, 0, 'Thrown', 1, 1, 8602, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5266, 0, 3, 'I''d like some weapon training', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5266, 1, 0, 'What can other weapon masters teach?', 1, 1, 5265, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5266, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 0, 0, 'Axe', 1, 1, 8592, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 1, 0, 'Bow', 1, 1, 8593, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 2, 0, 'Fist Weapon', 1, 1, 8596, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 3, 0, 'Gun', 1, 1, 8597, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 4, 0, 'Mace', 1, 1, 8598, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 5, 0, 'Staff', 1, 1, 8600, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5268, 6, 0, 'Thrown', 1, 1, 8602, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5269, 0, 3, 'I''d like some weapon training', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5269, 1, 0, 'What can other weapon masters teach?', 1, 1, 5268, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES
(5269, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 0, 0, 'Axe', 1, 1, 8577, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 1, 0, 'Bow', 1, 1, 8572, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 2, 0, 'Fist Weapon', 1, 1, 8574, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 3, 0, 'Gun', 1, 1, 8575, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 4, 0, 'Mace', 1, 1, 8578, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5270, 5, 0, 'Thrown', 1, 1, 8582, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5271, 0, 3, 'I''d like some weapon training', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5271, 1, 0, 'What can other weapon masters teach?', 1, 1, 5270, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5461, 0, 8, 'I want to create a guild crest.', 11, 1024, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5461, 1, 7, 'How do I form a guild?', 10, 512, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5602, 0, 0, 'Thank you, Ironbark. We are ready for you to open the door.', 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5665, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5665, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5708, 0, 0, 'I''m the new king?  What are you talking about?', 1, 1, 5715, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5708, 1, 0, 'Henchmen?  Tribute?', 1, 1, 5740, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5715, 0, 0, 'It''s good to be the king!  Now, let''s get back to what you were talking about before...', 1, 1, 5708, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5721, 0, 1, 'Show me what hooch you''ve got to sell, Kreeg.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5721, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5728, 0, 0, 'I know very little of the Highborne and nothing of the Shen''dralar.', 1, 1, 5727, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5729, 0, 0, 'What happened here, spirit?', 1, 1, 5728, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5729, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5739, 1, 0, 'So, now that I''m the king... what have you got for me?!', 1, 1, 5744, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5740, 0, 0, 'Well then... show me the tribute!', 1, 1, 5742, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5744, 0, 0, 'This sounds like a task worthy of the new king!', 1, 1, 5746, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5853, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5853, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5854, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5854, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5855, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5856, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5856, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6023, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6023, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6162, 0, 2, 'I need a ride.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6162, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6182, 0, 0, 'Silas, why is most everything at the fair free?  How do you make a profit?', 1, 1, 6181, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6182, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6185, 0, 0, 'I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar.', 1, 1, 6187, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6185, 1, 0, 'I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it.', 1, 1, 6208, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6185, 2, 0, 'I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family.', 1, 1, 6209, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6185, 3, 0, 'I allow the man to take enough corn to feed his family for a couple of days, encouraging him to leave the land.', 1, 1, 6210, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6186, 0, 0, 'I am ready to discover where my fortune lies!', 1, 1, 6185, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6186, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6202, 0, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6202, 1, 0, 'Tell me more about these Darkmoon Cards.', 1, 1, 6207, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6202, 2, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 0, 0, 'Tell me about the Beasts Deck.', 1, 1, 6203, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 1, 0, 'Tell me about the Portals Deck.', 1, 1, 6204, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 2, 0, 'Tell me about the Elementals Deck.', 1, 1, 6205, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 3, 0, 'Tell me about the Warlords Deck.', 1, 1, 6206, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 4, 0, 'Tell me about the Furies Deck.', 1, 1, 8634, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 5, 0, 'Tell me about the Lunacy Deck.', 1, 1, 8635, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 6, 0, 'Tell me about the Blessings Deck.', 1, 1, 8636, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 7, 0, 'Tell me about the Storms Deck.', 1, 1, 8637, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6207, 8, 0, 'Do other decks exist?', 1, 1, 11073, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230, 0, 1, 'Show me the drinks!', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6233, 0, 1, 'What do you have for sale?', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6234, 0, 1, 'Mmm... food.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6475, 0, 9, 'I would like to go to the battleground.', 12, 2048, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6565, 0, 0, 'I would like to enter the secret code to receive my Murloc pet.', 1, 1, 0, 0, 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6565, 1, 0, 'I would like to enter the secret code to receive my Murloc costume.', 1, 1, 0, 0, 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6565, 2, 0, 'I would like to enter the secret code to receive my Big Blizzard Bear.', 1, 1, 0, 0, 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6575, 0, 0, 'Tell me how to use the Blastenheimer 5000 Ultra Cannon.', 1, 1, 6574, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6579, 0, 0, '<more>', 1, 1, 8848, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6581, 0, 0, 'What are these Tonk Control Consoles?', 1, 1, 7093, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6581, 1, 0, 'Tell me about the cannon.', 1, 1, 7095, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6582, 0, 0, 'What can I purchase?', 1, 1, 6577, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6582, 1, 0, 'What are Darkmoon Faire Prize Tickets and how do I get them?', 1, 1, 6578, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6582, 2, 0, 'What are Darkmoon Cards?', 1, 1, 6579, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6582, 3, 0, 'What other things can I do at the faire?', 1, 1, 6581, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6588, 0, 0, 'How do you know?', 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6597, 0, 1, 'Redeem Battleground Marks for Honor.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6597, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6598, 0, 1, 'Redeem Battleground Marks for Honor.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6598, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6944, 0, 2, 'Show me where I can fly.', 4, 8, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6944, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7034, 0, 0, 'I would like to enter the secret code to receive my Murloc pet.', 1, 1, 0, 0, 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7690, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7690, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7691, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7691, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8085, 0, 0, 'Tell me more of our mission here, Nazgrel.', 1, 1, 8090, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8085, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8090, 0, 0, '<Keep Listening>', 1, 1, 8089, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9832, 0, 1, 'Let me browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 0, 0, 'Auction House', 1, 1, 3101, 89, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 1, 0, 'The Bank', 1, 1, 2322, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 2, 0, 'Hippogryph Master', 1, 1, 10266, 91, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 3, 0, 'Guild Master', 1, 1, 2324, 92, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 4, 0, 'The Inn', 1, 1, 2325, 93, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 5, 0, 'Mailbox', 1, 1, 2326, 94, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 6, 0, 'Stable Master', 1, 1, 4921, 95, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 7, 0, 'Weapons Trainer', 1, 1, 3722, 96, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 8, 0, 'Battlemaster', 1, 1, 8221, 97, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 9, 0, 'Class Trainer', 1, 1, 2343, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 10, 0, 'Profession Trainer', 1, 1, 2351, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0);

TRUNCATE TABLE `points_of_interest`;
INSERT INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
(1, -9459, 42.0805, 6, 99, 0, 'Lion''s Pride Inn'),
(2, -9471, 33.4441, 6, 99, 0, 'Zaldimar Wefhellt'),
(3, -9469, 108.053, 6, 99, 0, 'Brother Wilhelm'),
(4, -9461, 32.996, 6, 99, 0, 'Priestess Josetta'),
(5, -9465, 13.2936, 6, 99, 0, 'Keryn Sylvius'),
(6, -9473, -4.08464, 6, 99, 0, 'Maximillian Crowe'),
(7, -9461, 109.505, 6, 99, 0, 'Lyria Du Lac'),
(8, -9057, 153.637, 6, 99, 0, 'Alchemist Mallory'),
(9, -9456, 87.9022, 6, 99, 0, 'Smith Argus'),
(10, -9467, -3.16732, 6, 99, 0, 'Tomas'),
(11, -9456, 30.4947, 6, 99, 0, 'Michelle Belle'),
(12, -9386, -118.731, 6, 99, 0, 'Lee Brown'),
(14, -9376, -75.2306, 6, 99, 0, 'Adele Fielder'),
(15, -9381, -70.1127, 6, 99, 0, 'Helene Peltskinner'),
(16, -9536, -1212.76, 6, 99, 0, 'Eldrin'),
(17, -9466, 45.8709, 6, 99, 0, 'Erma'),
(18, -8812, 666.354, 6, 99, 0, 'Stormwind Auction House'),
(19, -8885, 640.052, 6, 99, 0, 'Stormwind Bank'),
(20, -8573, 990.095, 6, 0, 0, 'Stormwind Harbor'),
(21, -8387, 565.012, 6, 99, 0, 'The Deeprun Tram'),
(22, -8867, 673.634, 6, 99, 0, 'The Gilded Rose'),
(23, -8839, 487.546, 6, 99, 0, 'Stormwind Gryphon Master'),
(24, -8886, 595.38, 6, 99, 0, 'Stormwind Visitor''s Center'),
(26, -8432, 555.121, 6, 99, 0, 'Jenova Stoneshield'),
(27, -8796, 613.098, 6, 99, 0, 'Woo Ping'),
(28, -8762, 401.972, 6, 99, 0, 'Champions'' Hall'),
(29, -8392, 272.087, 6, 99, 0, 'Battlemasters Stormwind'),
(32, -8749, 1075.78, 6, 99, 0, 'The Park'),
(33, -8430, 559.87, 6, 99, 0, 'Hunter Lodge'),
(34, -9008, 857.193, 6, 99, 0, 'Wizard''s Sanctum'),
(35, -8621, 777.189, 6, 99, 0, 'Cathedral Of Light'),
(36, -8782, 353.099, 6, 99, 0, 'Stormwind - Rogue House'),
(38, -8938, 986.894, 6, 99, 0, 'The Slaughtered Lamb'),
(39, -8714, 342.761, 6, 99, 0, 'Stormwind Barracks'),
(40, -8975, 778.865, 6, 99, 0, 'Alchemy Needs'),
(41, -8433, 610.413, 6, 99, 0, 'Therum Deepforge'),
(43, -8838, 782.35, 6, 99, 0, 'Lucan Cordell'),
(44, -8348, 640.412, 6, 99, 0, 'Lilliam Sparkspindle'),
(45, -8515, 804.505, 6, 99, 0, 'Shaina Fuller'),
(46, -8793, 741.886, 6, 99, 0, 'Arnold Leland'),
(47, -8707, 462.037, 6, 99, 0, 'The Protective Hide'),
(48, -8416, 672.791, 6, 99, 0, 'Gelman Stonehand'),
(49, -8940, 771.346, 6, 99, 0, 'Duncan''s Textiles'),
(50, -4957, -911.604, 6, 99, 0, 'Ironforge Auction House'),
(51, -4891, -991.48, 6, 99, 0, 'The Vault'),
(52, -4835, -1294.7, 6, 99, 0, 'Deeprun Tram'),
(53, -4821, -1152.3, 6, 99, 0, 'Ironforge Gryphon Master'),
(54, -5021, -996.453, 6, 99, 0, 'Ironforge Visitor''s Center'),
(55, -4850, -872.571, 6, 99, 0, 'Stonefire Tavern'),
(56, -4845, -880.552, 6, 99, 0, 'Ironforge Mailbox'),
(57, -5010, -1262.03, 6, 99, 0, 'Ulbrek Firehand'),
(58, -5040, -1201.88, 6, 99, 0, 'Bixi and Buliwyf'),
(59, -5042, -1269.78, 6, 99, 0, 'Battlemasters Ironforge'),
(61, -5023, -1253.68, 6, 99, 0, 'Hall of Arms'),
(62, -4627, -926.459, 6, 99, 0, 'Hall of Mysteries'),
(63, -4647, -1124, 6, 99, 0, 'Ironforge Rogue Trainer'),
(64, -4605, -1110.46, 6, 99, 0, 'Ironforge Warlock Trainer'),
(66, -4858, -1241.84, 6, 99, 0, 'Berryfizz''s Potions and Mixed Drinks'),
(67, -4796, -1110.17, 6, 99, 0, 'The Great Forge'),
(68, -4767, -1184.6, 6, 99, 0, 'The Bronze Kettle'),
(69, -4803, -1196.53, 6, 99, 0, 'Thistlefuzz Arcanery'),
(70, -4881, -1153.13, 6, 99, 0, 'Ironforge Physician'),
(71, -4597, -1091.93, 6, 99, 0, 'Traveling Fisherman'),
(73, -4745, -1027.58, 6, 99, 0, 'Finespindle''s Leather Goods'),
(74, -4705, -1116.43, 6, 99, 0, 'Deepmountain Mining Guild'),
(75, -4719, -1056.97, 6, 99, 0, 'Stonebrow''s Clothier'),
(76, -5584, -510.862, 6, 99, 0, 'Thunderbrew Distillery'),
(77, -5606, -513.008, 6, 99, 0, 'Shelby Stoneflint'),
(78, -5618, -453.72, 6, 99, 0, 'Grif Wildheart'),
(79, -5587, -539.037, 6, 99, 0, 'Magis Sparkmantle'),
(80, -5584, -542.492, 6, 99, 0, 'Azar Stronghammer'),
(81, -5589, -530.288, 6, 99, 0, 'Maxan Anvol'),
(82, -5604, -540.089, 6, 99, 0, 'Hogral Bakkan'),
(83, -5639, -528.501, 6, 99, 0, 'Gimrizz Shadowcog'),
(84, -5605, -530.145, 6, 99, 0, 'Granis Swiftaxe'),
(85, -5582, -430.441, 6, 99, 0, 'Tognus Flintfire'),
(86, -5594, -544.573, 6, 99, 0, 'Gremlock Pilsnor'),
(87, -5604, -521.037, 6, 99, 0, 'Thamner Pol'),
(88, -5198, 53.3649, 6, 99, 0, 'Paxton Ganter'),
(89, 9862, 2339.19, 6, 99, 0, 'Darnassus Auction House'),
(90, 9938, 2512.35, 6, 99, 0, 'Darnassus Bank'),
(91, 8645, 835.104, 6, 99, 0, 'Darnassus Hippogryph Master'),
(92, 10076, 2199.59, 6, 99, 0, 'Darnassus Guild Master'),
(93, 10133, 2222.52, 6, 99, 0, 'Darnassus Inn'),
(94, 9942, 2495.49, 6, 99, 0, 'Darnassus Mailbox'),
(95, 10167, 2522.67, 6, 99, 0, 'Alassin'),
(96, 9907, 2329.71, 6, 99, 0, 'Ilyenia Moonfire'),
(97, 9982, 2319.79, 6, 99, 0, 'Battlemasters Darnassus'),
(98, 10186, 2570.47, 6, 99, 0, 'Darnassus Druid Trainer'),
(99, 10177, 2511.1, 6, 99, 0, 'Darnassus Hunter Trainer'),
(100, 10122, 2599.13, 6, 99, 0, 'Darnassus Rogue Trainer'),
(101, 9951, 2280.39, 6, 99, 0, 'Warrior''s Terrace'),
(102, 10075, 2356.76, 6, 99, 0, 'Darnassus Alchemy Trainer'),
(103, 10088, 2419.22, 6, 99, 0, 'Darnassus Cooking Trainer'),
(104, 10146, 2313.43, 6, 99, 0, 'Darnassus Enchanting Trainer'),
(105, 10150, 2390.44, 6, 99, 0, 'Darnassus First Aid Trainer'),
(106, 9836, 2432.18, 6, 99, 0, 'Darnassus Fishing Trainer'),
(108, 10086, 2255.77, 6, 99, 0, 'Darnassus Leatherworking Trainer'),
(109, 10081, 2257.19, 6, 99, 0, 'Darnassus Skinning Trainer'),
(110, 10079, 2268.2, 6, 99, 0, 'Darnassus Tailor'),
(111, 9821, 960.138, 6, 99, 0, 'Dolanaar Inn'),
(112, 9808, 931.106, 6, 99, 0, 'Seriadne'),
(113, 9741, 963.705, 6, 99, 0, 'Kal'),
(114, 9815, 926.283, 6, 99, 0, 'Dazalar'),
(115, 9906, 986.636, 6, 99, 0, 'Laurna Morninglight'),
(116, 9789, 942.865, 6, 99, 0, 'Jannok Breezesong'),
(117, 9821, 950.616, 6, 99, 0, 'Kyra Windblade'),
(118, 9767, 878.817, 6, 99, 0, 'Cyndra Kindwhisper'),
(119, 9751, 906.132, 6, 99, 0, 'Zarrin'),
(120, 10677, 1946.56, 6, 99, 0, 'Alanna Raveneye'),
(121, 9903, 999.095, 6, 99, 0, 'Byancie'),
(122, 9773, 875.884, 6, 99, 0, 'Malorne Bladeleaf'),
(123, 10152, 1681.47, 6, 99, 0, 'Nadyia Maneweaver'),
(124, 10135, 1673.18, 6, 99, 0, 'Radnaal Maneweaver'),
(176, 1631, -4375.33, 6, 99, 0, 'Bank of Orgrimmar'),
(177, 1676, -4332.72, 6, 99, 0, 'The Sky Tower'),
(178, 1576, -4294.75, 6, 99, 0, 'Horde Embassy'),
(179, 1644, -4447.28, 6, 99, 0, 'Orgrimmar Inn'),
(180, 1622, -4388.8, 6, 99, 0, 'Orgrimmar Mailbox'),
(181, 1679, -4450.11, 6, 99, 0, 'Orgrimmar Auction House'),
(182, 1337, -4632.7, 6, 99, 0, 'Orgrimmar Eastern Zeppelin Tower'),
(184, 2092, -4823.95, 6, 99, 0, 'Sayoc & Hanashi'),
(185, 2133, -4663.93, 6, 99, 0, 'Xon''cha'),
(186, 1633, -4249.37, 6, 99, 0, 'Hall of Legends'),
(187, 1989, -4796.6, 6, 99, 0, 'Battlemasters Orgrimmar'),
(238, 366, -4705.09, 6, 99, 0, 'Krunn'),
(239, -836, -4896.9, 6, 99, 0, 'Mishiki'),
(240, -1065, -4777.43, 6, 99, 0, 'Lau''Tiki'),
(241, 327, -4825.62, 6, 99, 0, 'Rawrk'),
(242, 368, -4723.96, 6, 99, 0, 'Mukdrak'),
(243, 373, -4716.45, 6, 99, 0, 'Dwukk'),
(244, -800, -4894.34, 6, 99, 0, 'Miao''zan'),
(245, 312, -4824.66, 6, 99, 0, 'Tarshaw Jaggedscar'),
(246, 355, -4836.46, 6, 99, 0, 'Dhugru Gorelust'),
(247, 307, -4836.97, 6, 99, 0, 'Swart'),
(248, 265, -4709.01, 6, 99, 0, 'Kaplak'),
(249, 296, -4828.11, 6, 99, 0, 'Tai''jin'),
(250, -839, -4935.61, 6, 99, 0, 'Un''Thuwa'),
(251, 276, -4706.73, 6, 99, 0, 'Thotar'),
(252, 330, -4710.67, 6, 99, 0, 'Shoja''my'),
(253, 338, -4688.87, 6, 99, 0, 'Razor Hill Inn'),
(254, 1689, 193.023, 6, 99, 0, 'Undercity Tailoring Trainer'),
(255, 1498, 196.466, 6, 99, 0, 'Undercity Skinning Trainer'),
(256, 1642, 335.588, 6, 99, 0, 'Undercity Mining Trainer'),
(257, 1498, 196.433, 6, 99, 0, 'Undercity Leatherworking Trainer'),
(259, 1558, 349.37, 6, 99, 0, 'Undercity Herbalism Trainer'),
(260, 1679, 89.0227, 6, 99, 0, 'Undercity Fishing Trainer'),
(261, 1519, 167.199, 6, 99, 0, 'Undercity First Aid Trainer'),
(262, 1408, 143.431, 6, 99, 0, 'Undercity Engineering Trainer'),
(263, 1488, 280.194, 6, 99, 0, 'Undercity Enchanting Trainer'),
(264, 1596, 274.684, 6, 99, 0, 'Undercity Cooking Trainer'),
(265, 1696, 285.042, 6, 99, 0, 'Undercity Blacksmithing Trainer'),
(266, 1419, 417.197, 6, 99, 0, 'The Apothecarium'),
(267, 1775, 418.193, 6, 99, 0, 'Undercity Warrior Trainers'),
(268, 1780, 53.1697, 6, 99, 0, 'Undercity Warlock Trainers'),
(269, 1418, 65.0243, 6, 99, 0, 'Undercity Rogue Trainers'),
(270, 1758, 401.507, 6, 99, 0, 'Undercity Priest Trainers'),
(271, 1299, 316.787, 6, 99, 0, 'Champion Cyssa Dawnrose'),
(272, 1781, 53.0096, 6, 99, 0, 'Undercity Mage Trainers'),
(273, 2059, 274.869, 6, 99, 0, 'Undercity Zeppelin'),
(274, 1670, 324.666, 6, 99, 0, 'Archibald'),
(275, 1634, 226.768, 6, 99, 0, 'Anya Maulray'),
(276, 1632, 219.403, 6, 99, 0, 'Undercity Mailbox'),
(278, 1639, 220.998, 6, 99, 0, 'Undercity Inn'),
(279, 1594, 205.572, 6, 99, 0, 'Undercity Guild Master'),
(280, 1299, 347.983, 6, 99, 0, 'Battlemasters Undercity'),
(281, 1565, 271.435, 6, 99, 0, 'Undercity Bat Handler'),
(283, 1595, 232.456, 6, 99, 0, 'Undercity Bank'),
(284, 1650, 240.191, 6, 99, 0, 'Undercity Auction House'),
(285, 2161, 658.172, 6, 99, 0, 'Bowen Brisboise'),
(286, 2031, 71.8599, 6, 99, 0, 'Rand Rhobart'),
(287, 2027, 80.1105, 6, 99, 0, 'Shelene Rhobart'),
(289, 2299, 1.16547, 6, 99, 0, 'Clyde Kellen'),
(290, 2247, 242.789, 6, 99, 0, 'Nurse Neela'),
(291, 2280, 244.714, 6, 99, 0, 'Vance Undergloom'),
(292, 2264, 344.257, 6, 99, 0, 'Carolai Anise'),
(293, 2257, 240.487, 6, 99, 0, 'Austil de Mon'),
(294, 2257, 247.402, 6, 99, 0, 'Rupert Boch'),
(295, 2267, 243.924, 6, 99, 0, 'Marion Call'),
(296, 2268, 318.876, 6, 99, 0, 'Morganus'),
(297, 2264, 248.158, 6, 99, 0, 'Dark Cleric Beryl'),
(298, 2259, 235.865, 6, 99, 0, 'Cain Firesong'),
(299, 2266, 242.754, 6, 99, 0, 'Gallows'' End Tavern'),
(302, -1148, 51.1842, 6, 99, 0, 'Mooranta'),
(303, -1249, 155.028, 6, 99, 0, 'Stonehoof Geology'),
(304, -1156, 66.8664, 6, 99, 0, 'Thunder Bluff Armorers'),
(306, -1137, -1.51698, 6, 99, 0, 'Holistic Herbalism'),
(307, -1169, -68.878, 6, 99, 0, 'Mountaintop Bait & Tackle'),
(308, -996, 200.504, 6, 99, 0, 'Spiritual Healing'),
(309, -1112, 48.2609, 6, 99, 0, 'Dawnstrider Enchanters'),
(310, -1214, -21.2327, 6, 99, 0, 'Aska''s Kitchen'),
(311, -1239, 104.888, 6, 99, 0, 'Karn''s Smithy'),
(312, -1085, 27.2931, 6, 99, 0, 'Bena''s Alchemy'),
(313, -1416, -114.285, 6, 99, 0, 'Hunter''s Hall'),
(314, -989, 278.253, 6, 99, 0, 'Hall of Spirits'),
(315, -1061, 195.505, 6, 99, 0, 'Pools of Vision'),
(316, -1054, -285.076, 6, 99, 0, 'Hall of Elders'),
(317, -1385, -85.4147, 6, 99, 0, 'Battlemasters Thunder Bluff'),
(318, -1270, 48.8459, 6, 99, 0, 'Bulrug'),
(319, -1282, 89.563, 6, 99, 0, 'Ansekhwa'),
(320, -1198, 102.054, 6, 99, 0, 'Thunder Bluff Auction house'),
(321, -1263, 44.3601, 6, 99, 0, 'Thunder Bluff Mailbox'),
(322, -1296, 39.7075, 6, 99, 0, 'Thunder Bluff Inn'),
(323, -1296, 127.579, 6, 99, 0, 'Thunder Bluff Civic Information'),
(324, -1196, 28.2654, 6, 99, 0, 'Wind Rider Roost'),
(325, -1257, 24.1431, 6, 99, 0, 'Thunder Bluff Bank'),
(326, -2252, -291.324, 6, 99, 0, 'Yonn Deepcut'),
(327, -2257, -288.633, 6, 99, 0, 'Chaw Stronghide'),
(329, -2349, -241.376, 6, 99, 0, 'Uthan Stillwater'),
(330, -2353, -355.821, 6, 99, 0, 'Vira Younghoof'),
(331, -2263, -287.91, 6, 99, 0, 'Pyall Silentstride'),
(332, -2345, -494.114, 6, 99, 0, 'Krang Stonehoof'),
(334, -2301, -439.871, 6, 99, 0, 'Narm Skychaser'),
(335, -2178, -406.144, 6, 99, 0, 'Yaw Sharpmane'),
(336, -2312, -443.693, 6, 99, 0, 'Gennia Runetotem'),
(337, -2338, -357.564, 6, 99, 0, 'Seikwa'),
(338, -2361, -349.193, 6, 99, 0, 'Bloodhoof Village Inn'),
(339, -5529, -660.912, 6, 99, 0, 'Yarr Hammerstone'),
(363, -9060.71, 149.236, 6, 99, 0, 'Herbalist Pomeroy'),
(364, 9659.13, 2524.89, 6, 99, 0, 'Temple of the Moon'),
(419, -4799.56, -1250.24, 6, 99, 0, 'Springspindle''s Gadgets'),
(420, 2114.84, -4625.32, 6, 99, 0, 'Orgrimmar Hunter''s Hall'),
(421, 1451.26, -4223.33, 6, 99, 0, 'Darkbriar Lodge'),
(422, 1442.22, -4183.24, 6, 99, 0, 'Spirit Lodge'),
(423, 1925.35, -4181.89, 6, 99, 0, 'Thrall''s Fortress'),
(424, 1773.39, -4278.97, 6, 99, 0, 'Shadowswift Brotherhood'),
(425, 1849.58, -4359.69, 6, 99, 0, 'Darkfire Enclave'),
(426, 1983.92, -4794.21, 6, 99, 0, 'Hall of the Brave'),
(427, 1955.17, -4475.8, 6, 99, 0, 'Yelmak''s Alchemy and Potions'),
(428, 2054.34, -4831.85, 6, 99, 0, 'The Burning Anvil'),
(429, 1780.97, -4481.31, 6, 99, 0, 'Borstan''s Firepit'),
(430, 1917.5, -4434.95, 6, 99, 0, 'Godan''s Runeworks'),
(431, 2038.46, -4744.76, 6, 99, 0, 'Nogg''s Machine Shop'),
(432, 1485.22, -4160.91, 6, 99, 0, 'Survival of the Fittest'),
(433, 1994.15, -4655.7, 6, 99, 0, 'Lumak''s Fishing'),
(434, 1898.62, -4454.94, 6, 99, 0, 'Jandi''s Arboretum'),
(435, 2029.79, -4704.08, 6, 99, 0, 'Red Canyon Mining'),
(436, 1852.83, -4562.32, 6, 99, 0, 'Kodohide Leatherworkers'),
(437, 1802.66, -4560.66, 6, 99, 0, 'Magar''s Cloth Goods'),
(438, 9664.74, 2528.29, 6, 99, 0, 'Darnassus Mage Trainer'),
(439, 9664.95, 2529.93, 6, 99, 0, 'Darnassus Paladin Trainer'),
(440, 9757.18, 2430.17, 6, 99, 0, 'Darnassus Herbalism Trainer'),
(442, -3725.4, -11688.4, 6, 99, 0, 'Arena Battlemaster Exodar');

/* REV 523 */
/* Missing texts - from UDB */
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(447, 'Valley of Trials will temper even the weakest into a warrior worthy to join the Horde. Those who cannot rise to its tests will be left to bake in the scorching desert sun.', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(4777, 'The battle is over, and the people of Darrowshire are saved.$B$BThey are saved, $N, because of you.  You are truly a hero of Darrowshire.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(4778, 'A darkness had fallen over my eyes, but you tore me from my unholy reverie.  You saved me, $N.$B$BAnd now I beg you... to forgive me.', '', 0, 1, 0, 20, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(4995, 'The Firelord and his brethren once held sway over this entire world, mortal. As a servant of the Old Gods, he fought against the Titans for domination of this planet. The victorious Titans banished my master and his brethren to the Elemental Plane - there to remain imprisoned until the end of time.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(5011, 'A mere three hundred years ago, a reckless dwarf named Thaurissan summoned the master from his fiery realm. His return to this paltry world devastated the surrounding lands and created this volcanic Core. Mighty Ragnaros has slept under this mountain ever since. $B', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(5012, 'We, his sworn servants, do his bidding and enforce his iron-rule. Cut off from the energies of his fiery realm, Ragnaros is but a shadow of his true self. However, he has more than enough strength to be your end.      $B', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(5408, '', 'I only wish I had more students like you. Not many will venture so far into enemy territory. I salute your courage.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6938, 'You honor us with your presence, my lord.', '', 0, 1, 0, 1, 0, 2, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6954, '<Demitrian falls to his knees.>$B$BYou have recovered my Master''s eternal prison!$B$BOh long have I waited for this day and finally, it is realized.$B$BHe must be released!', '', 0, 1, 0, 16, 0, 20, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6955, 'I hold the vessel of his rebirth. Should you be prepared to take on this task, you will be required to fortify the vessel and ultimately, break the hold of Ragnaros himself!', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6956, 'The vessel of rebirth must be fortified with elementium. I know of only one source of the mineral: the elemental planes, at the core of our world.$B$BThere is one, an Earthshaper, who may know more than I about the acquisition of such things. You must find this Earthshaper!', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6958, 'The corporeal form of Ragnaros must be destroyed. From the remnants, his essence shall emerge. In this weakened state, Ragnaros'' grip on the prison of Thunderaan is loosed. The essence itself acting as a key...', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7810, 'I''m sad!  It''s Hallow''s End, and I''m sick.  I''m going to miss out on trick-or-treating because I can''t go out!', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7885, 'You seek the scepter shard charged to the protection of the Blue Flight?$B$B<Azuregos appears to be smiling.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7886, 'Of course I do not have the shard. That would be asinine. I walk amongst savages in this cursed land! I cannot take five steps without some crazed orc or human trying to thrust a sharp stick into my hide. At any given time you could very well be speaking to my ghostly spirit.$B$BAnyhow... I hid it.$B$BGo on... ask me where.', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7887, 'You are going to love this story, $r. See, here is the thing. As soon as Malygos charged me with protecting the scepter shard, I knew I was in for an eternity of headache and pain.$B$BAll I want to do is study these magic rich shorelines and take in what artifacts might remain from the Sundering. You know, there was once a thriving Highborne civilization here! You don''t have to tell me that there is going to be some solid magical items around here, $r. I can smell it!', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7888, 'As I was saying, I held onto that scepter shard for a good five-hundred years and it was nothing but trouble. It attracted all kinds of attention - the wrong kind of attention. I want to be left alone to my studies not babysit some would be hero''s ticket to glory. So... I gave it to the fish.', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7889, 'Not just any fish, mortal. This fish was a minnow. A very special minnow.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7890, 'Exactly!', '', 0, 1, 0, 5, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7891, 'Genius, I know... It will never be found; but, in case it is found, I gave the minnow some special powers.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7892, 'Correct. You''ve been listening! This minnow is really quite a terrible creature of my own creation. When I am relaxing I like to think of the unlucky fishermen who have run into this minnow and been devoured whole. I bet they were quite surprised!$B$B<Azuregos laughs.>', '', 0, 1, 0, 1, 0, 11, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7893, 'Genius is often misunderstood, $r. Now, about the scepter shard... If you want that shard and do not wish to spend the next ten thousand years searching for it, you are going to have to listen very carefully.', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7894, 'Two words: Arcanite buoy.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7895, 'Right then... You have to build an arcanite buoy and place it in the ocean. My minnow will be attracted to the magical emanations. When he gets near the buoy - BLAMO! It will explode in a glorious pulse of arcane energy, revealing the minnow''s true form. Also, you may or may not incur the wrath of Neptulon. A 50/50 chance I would say.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7896, 'If I did not know better I would think that you were mocking me, mortal; but yes, that is mostly correct. You may remain fully clothed.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7897, 'Take this ledger to an old acquaintance of mine in Tanaris. His name is Narain Soothfancy - terrible, terrible, psychic but an amazing engineer! He should be able to make sense of it all.$B$BNo need to thank me, $N. It''s the least I could do.$B$BGood day!', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7901, 'Shouldn''t you be saving the world?', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(7917, '', 'It''s so lovely to see you again, $N! I really can''t thank you enough for delivering that message to my dear little gnome.$B$BWould you like to hear a song? It will make traveling in the rough seas much easier!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8112, 'Our freedom would have meant nothing if C''Thun had survived. You are truly a champion of prophecy.', '', 0, 1, 0, 1, 0, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8134, 'Starting at 6PM, they will show fireworks from the highest bluff!', 'Starting at 6PM, they will show fireworks from the highest bluff!', 0, 1, 0, 5, 0, 0, 0, 0, 'The kegs are filled with strong brew!  Drink, friend, and celebrate!', 'The kegs are filled with strong brew!  Drink, friend, and celebrate!', 0, 1, 0, 1, 0, 153, 0, 0, 'I heard that, after the fireworks show, goblets will be brought to the tables.  Fine toasts we shall raise!', 'I heard that, after the fireworks show, goblets will be brought to the tables.  Fine toasts we shall raise!', 0, 1, 0, 71, 0, 0, 0, 0, 'Hail, $c!  Welcome to the celebration!', 'Hail, $c!  Welcome to the celebration!', 0, 1, 0, 2, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8138, 'Hah!  This tauren wants a kiss!', 'Hah!  This tauren wants a kiss!', 0, 1, 0, 5, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8162, 'Elder Bronzebeard can be found in the ancestral home of the Bronzebeards, Ironforge.', 'Elder Bronzebeard can be found in the ancestral home of the Bronzebeards, Ironforge.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8183, 'Elder Brightspear can be found wandering amongst the ruins of Kel''Theril in Winterspring.', 'Elder Brightspear can be found wandering amongst the ruins of Kel''Theril in Winterspring.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8184, 'Elder Bloodhoof can be found at Bloodhoof Village in Mulgore.', 'Elder Bloodhoof can be found at Bloodhoof Village in Mulgore.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8185, 'Elder Windtotem is keeping company with the goblins of Ratchet on the coast of the Barrens.', 'Elder Windtotem is keeping company with the goblins of Ratchet on the coast of the Barrens.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8186, 'Elder High Mountain is at Camp Taurajo in the Barrens.', 'Elder High Mountain is at Camp Taurajo in the Barrens.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8190, 'Elder Morningdew has taken to watching the commotion at the Mirage Raceway in Thousand Needles.', 'Elder Morningdew has taken to watching the commotion at the Mirage Raceway in Thousand Needles.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8211, 'You''ll find Elder Starglade outside the gates to Zul''Gurub in Stranglethorn Vale.', 'You''ll find Elder Starglade outside the gates to Zul''Gurub in Stranglethorn Vale.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8218, 'They know how to throw a party here in Moonglade.  Who would have thought so?', 'They know how to throw a party here in Moonglade.  Who would have thought so?', 0, 1, 0, 1, 0, 0, 0, 0, 'Try these fireworks launchers.  They''re a blast!', 'Try these fireworks launchers.  They''re a blast!', 0, 1, 0, 5, 0, 0, 0, 0, 'This beam of moonlight leads to Stormwind.  Use your invitation when you''re ready.', 'This beam of moonlight leads to Stormwind.  Use your invitation when you''re ready.', 0, 1, 0, 1, 0, 0, 0, 0, 'Don''t try to teleport to one of your enemies'' cities.  It won''t work - we may all be friendly here, but back home old grudges remain...', 'Don''t try to teleport to one of your enemies'' cities.  It won''t work - we may all be friendly here, but back home old grudges remain...', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8219, 'The people in Nighthaven sure know how to party!', 'The people in Nighthaven sure know how to party!', 0, 1, 0, 5, 0, 0, 0, 0, 'These fireworks sure make a nice BOOM, don''t you think?', 'These fireworks sure make a nice BOOM, don''t you think?', 0, 1, 0, 5, 0, 0, 0, 0, 'This moonlight will send you to Ironforge.  But who''d want to leave this party?', 'This moonlight will send you to Ironforge.  But who''d want to leave this party?', 0, 1, 0, 1, 0, 0, 0, 0, 'Don''t try to teleport to one of your enemies'' cities.  It won''t work - we may all be friendly here, but back home old grudges remain...', 'Don''t try to teleport to one of your enemies'' cities.  It won''t work - we may all be friendly here, but back home old grudges remain...', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8225, 'Omen sleeps in the depths of Lake Elune''ara, but may be summoned at the southeast banks near the Stormrage Barrow Dens.  There, you will find special cluster launchers...$B$BUse your rockets in the launchers and Omen''s minions will come.  Fire more rockets, nearly three dozen, or fire Elune''s Candles at his minions, and soon he will awaken.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8235, 'We''ve been so wrapped up in this war, some of us forgot to make time for love.', 'We''ve been so wrapped up in this war, some of us forgot to make time for love.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8251, 'I don''t know what''s come over me. My heart feels as hot as new steel.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8349, '', 'The Blastenheimer 5000 Ultra Cannon is a state-of-the-art single person projectile device. Delivering its payload at near the speed of a dragon, the cannon is the pride and joy of the Blastenheimer family, world renown for their aeronautical and combustible feats!$B$BIf you''d like to be launched through the skies to fly free as a bird, seek out Maxima Blastenheimer on the south edge of Thunder Bluff''s central rise. She''ll aim you at the target far to south on Stonebull Lake!', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8428, 'I received word that you were able to help Ranger Valanna and the lieutenant at Zeb''Sora.$B$BThank you, $c. I suppose I should make my way back to Farstrider Enclave now.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8440, '', 'We are most pleased with your actions against the night elves. When you uncovered their plot to use the ley-line nexi and their so-called moon crystals to spy upon us, you strengthened our position here by an order of magnitude.$B$BYou have our gratitude, $N.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8446, 'Yes... what do you want, $r? Can''t you see I am busy here?', '', 0, 1, 0, 5, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8492, 'Word got back to me through channels concerning Lady Sylvanas''s reaction to you and the recovery of her necklace. I still think you did the right thing; don''t worry too much about how the lady reacted.$B$BNow, state your business.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8526, 'The battle goes well. The Scourge forces seem weakened. I believe it will only be a matter of time before we drive them from our shores. I will turn my magics to you, to aid in this struggle.', 'The battle goes well. The Scourge forces seem weakened. I believe it will only be a matter of time before we drive them from our shores. I will turn my magics to you, to aid in this struggle.', 0, 1, 0, 2, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8566, 'I must say, you delivered my poison and dealt with those trolls most ruthlessly, $c. You''ve got the makings of quite a talented young $g man : lady;!', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10217, '', 'You will find the the battlemasters gathered at the Warrior''s Terrace.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10750, 'Ilyenia Moonfire, the night elf weapon master on the Warrior''s Terrace in Darnassus, or Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of fist weapons.', 'Ilyenia Moonfire, the night elf weapon master on the Warrior''s Terrace in Darnassus, or Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of fist weapons.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10754, 'The dwarven weapon master Buliwyf can train you in both one and two-handed axes. He''s found in the Timberline Arms in Ironforge.', 'The dwarven weapon master Buliwyf can train you in both one and two-handed axes. He''s found in the Timberline Arms in Ironforge.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10759, 'Both Ilyenia Moonfire on the Warrior''s Terrace of Darnassus and Bixi Wobblebonk of the Timberline Arms in Ironforge can show you how to use throwing weapons properly.', 'Both Ilyenia Moonfire on the Warrior''s Terrace of Darnassus and Bixi Wobblebonk of the Timberline Arms in Ironforge can show you how to use throwing weapons properly.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10782, 'Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Ileda in da Farstrider Square of Silvermoon or Archibald in the War Quarter of Undercity, hokay?', 'Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Ileda in da Farstrider Square of Silvermoon or Archibald in the War Quarter of Undercity, hokay?', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10783, 'You want to punch things, yah? Talk to Sayoc right here. He teach you.', 'You want to punch things, yah? Talk to Sayoc right here. He teach you.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10784, 'Our gunnery instructor, he Ansekhwa, da tauren weapon master on da lower central rise of Thunder Bluff.', 'Our gunnery instructor, he Ansekhwa, da tauren weapon master on da lower central rise of Thunder Bluff.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10785, 'Maces, they taught by Ansekhwa, found on da lower central rise of Thunder Bluff.', 'Maces, they taught by Ansekhwa, found on da lower central rise of Thunder Bluff.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10786, 'Da Forsaken weapon master Archibald know his way ''round da polearm. He train others in da War Quarter of da Undercity. Ileda, da blood elf weapon master in Farstrider Square in Silvermoon, show you da right techniques too, mon.', 'Da Forsaken weapon master Archibald know his way ''round da polearm. He train others in da War Quarter of da Undercity. Ileda, da blood elf weapon master in Farstrider Square in Silvermoon, show you da right techniques too, mon.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10787, 'Ileda of da blood elves, in Farstrider Square of Silvermoon, train her students in both one and two-handed swords. Archibald, da Undercity''s weapon master, also train you, mon. He in da War Quarter.', 'Ileda of da blood elves, in Farstrider Square of Silvermoon, train her students in both one and two-handed swords. Archibald, da Undercity''s weapon master, also train you, mon. He in da War Quarter.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(10788, 'Hanashi here knows staves. If you want a sturdier instructor, go to Thunder Bluff. Ansekhwa will teach you on the lower central rise there.', '', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13439, 'Trying to reach Auberdine or Valiance Keep?  You can find Stormwind Harbor if you head through the Canals, between the Cathedral District and the Park.', 'Trying to reach Auberdine or Valiance Keep?  You can find Stormwind Harbor if you head through the Canals, between the Cathedral District and the Park.', 7, 1, 0, 0, 0, 0, 0, 0, 'Stormwind Harbor is the fastest way to get to Auberdine or Valiance Keep.  You can find it between the Cathedral District and the Park.', 'Stormwind Harbor is the fastest way to get to Auberdine or Valiance Keep.  You can find it between the Cathedral District and the Park.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13557, 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13583, 'Looking for a tabard?', 'Looking for a tabard?', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13584, 'Greetings, $c. I can assist you in recovering lost companions.', 'Greetings, $c. I can assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14254, 'Vesprystus'' hippogryphs will bear you swiftly to your destination.', 'Vesprystus'' hippogryphs will bear you swiftly to your destination.', 0, 1, 0, 0, 0, 0, 0, 0, 'It is Vesprystus that you seek.  He watches over the hippogryphs that come and go from the base of Teldrassil.', 'It is Vesprystus that you seek.  He watches over the hippogryphs that come and go from the base of Teldrassil.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14940, 'It''s true our new... guests are limiting our work somewhat, but it is only natural to be wary when a genocidal attempt is made. Perhaps in time they will be convinced that Putress was an unfortunate anomaly and allow us to continue our work in peace.', '', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15005, 'You''ll want to look in the Undercity.  In the old Ruins of Lordaeron, south of here, you''ll find an elevator down. Once you''re there, ask an Undercity Guardian for further directions.', 'You''ll want to look in the Undercity.  In the old Ruins of Lordaeron, south of here, you''ll find an elevator down. Once you''re there, ask an Undercity Guardian for further directions.', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15400, 'You are astute to ask, young $c.  Scribes are capable of inscribing tarot cards of great power, although even they do not have full control of what they make.  The fates decide for them.$b$bIf you manage to obtain a completed deck, please bring it to me for a magnificent reward.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

/* REV 530 - Corrupted Crystal Vine */
-- show proper animation
UPDATE `gameobject` SET `animprogress` = '100' WHERE `id`=179502;
-- disable interaction for players
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry`=179502;

/* REV 534 - Corrupted AND Cleansed Felwood Flowers */
-- Remove DB cast spell for Cleansed Night Dragon --
-- Remove DB cast spell for Cleansed Songflower --
-- Remove DB cast spell for Cleansed Whipper Root --
-- Remove DB cast spell for Cleansed Windblossom --
-- Spells are now casted by ScriptDev system --
UPDATE `gameobject_template` SET `data10`='0' WHERE `entry` IN (164881, 164882, 164883, 164884);

/* REV 535 - BRD: (D2 chain) Some changes in The Challenge event */
-- Gnashjaw new faction (from friendly to hostile) --
UPDATE `creature_template` SET `faction_A`='54', `faction_H`='54' WHERE `entry`=16095;
-- Change Theldren walk speed --
UPDATE `creature_template` SET `speed_walk`='1' WHERE `entry`=16059;
-- Add explosive spell for Rezznik's Explosive Sheep --
UPDATE `creature_template` SET `spell1`='4050', `ScriptName`='generic_creature' WHERE `entry`=2675;
-- Remove lootid AND loot_template items for Theldren's team --
DELETE FROM `creature_loot_template` WHERE `entry` IN (16049, 16050, 16051, 16052, 16053, 16054, 16055, 16058, 16095);
UPDATE `creature_template` SET `lootid`='0' WHERE `entry` IN (16049, 16050, 16051, 16052, 16053, 16054, 16055, 16058, 16095);
-- Add GO template "Arena Spoils" --
DELETE FROM `gameobject_template` WHERE `entry`=181074;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(181074, 3, 10, 'Arena Spoils', 0, 0, 1, 5, 181074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- GO loot_template for "Arena Spoils" --
DELETE FROM `gameobject_loot_template` WHERE `entry`=181074;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(181074, 22305, 31, 0, 1, 1, 0, 0, 0),
(181074, 22317, 26, 0, 1, 1, 0, 0, 0),
(181074, 22318, 24, 0, 1, 1, 0, 0, 0),
(181074, 22330, 19, 0, 1, 1, 0, 0, 0);
-- Spawn GO "Arena Spoils" --
DELETE FROM `gameobject` WHERE `id`=181074;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 181074, 230, 596.82, -188.77, -54.1544, 6.20586, 0, 0, 0.038653, -0.999253, -7200, 0, 1);

/* REV 536 */
-- Delete Baron's aura - handled by script
DELETE FROM `creature_template_addon` WHERE `entry` = 10440;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=10440);

-- Instance data handled by script
DELETE FROM `creature_ai_scripts` WHERE `id`=1039403 AND `creature_id`=10394;

-- remove unused scriptname
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (10399, 10415);

/* REV 537 - Testing Equipment */
UPDATE `quest_template` SET `NextQuestId` = '0', `ExclusiveGroup` = '0' WHERE `entry` IN (4293, 4294);

/* REV 540 - BRD things */
UPDATE `gameobject_template` SET `displayId`='51' WHERE `entry`=169243;
UPDATE `creature_template` SET `scale`='0.5', `speed_walk`='1.30' WHERE `entry`=9178;

/* REV 542 */
DELETE FROM `creature` WHERE `guid`=47951 AND `id`=8911;
UPDATE `creature` SET `position_x`='937.67', `position_y`='-242.65', `position_z`='-50.41', `orientation`='3.98' WHERE `guid`=47950;
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry` IN (8895, 8905, 8911);
DELETE FROM `creature_template_addon` WHERE `entry` IN (8905, 8906, 8907);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (8905, 8906, 8907));
DELETE FROM `creature_loot_template` WHERE `entry`=9039;
UPDATE `creature_template` SET `lootid`='0' WHERE (`entry`='9039');

/* REV 546 - Proper data for quest rewards via mail */
UPDATE `quest_template` SET `RewMailTemplateId`=87,`RewMailDelaySecs`=0 WHERE `entry`=1141;
UPDATE `quest_template` SET `RewMailTemplateId`=103,`RewMailDelaySecs`=86400 WHERE `entry`=3644;
UPDATE `quest_template` SET `RewMailTemplateId`=99,`RewMailDelaySecs`=86400 WHERE `entry`=3645;
UPDATE `quest_template` SET `RewMailTemplateId`=104,`RewMailDelaySecs`=86400 WHERE `entry`=3646;
UPDATE `quest_template` SET `RewMailTemplateId`=100,`RewMailDelaySecs`=86400 WHERE `entry`=3647;
UPDATE `quest_template` SET `RewMailTemplateId`=98,`RewMailDelaySecs`=86400 WHERE `entry`=5128;
UPDATE `quest_template` SET `RewMailTemplateId`=101,`RewMailDelaySecs`=86400 WHERE `entry`=5237;
UPDATE `quest_template` SET `RewMailTemplateId`=107,`RewMailDelaySecs`=86400 WHERE `entry`=5238;
UPDATE `quest_template` SET `RewMailTemplateId`=112,`RewMailDelaySecs`=21600 WHERE `entry`=6001;
UPDATE `quest_template` SET `RewMailTemplateId`=116,`RewMailDelaySecs`=21600 WHERE `entry`=6002;
UPDATE `quest_template` SET `RewMailTemplateId`=115,`RewMailDelaySecs`=21600 WHERE `entry`=6125;
UPDATE `quest_template` SET `RewMailTemplateId`=114,`RewMailDelaySecs`=21600 WHERE `entry`=6130;
UPDATE `quest_template` SET `RewMailTemplateId`=119,`RewMailDelaySecs`=0 WHERE `entry`=7735;
UPDATE `quest_template` SET `RewMailTemplateId`=120,`RewMailDelaySecs`=0 WHERE `entry`=7738;
UPDATE `quest_template` SET `RewMailTemplateId`=113,`RewMailDelaySecs`=86400 WHERE `entry`=8149;
UPDATE `quest_template` SET `RewMailTemplateId`=111,`RewMailDelaySecs`=86400 WHERE `entry`=8150;
UPDATE `quest_template` SET `RewMailTemplateId`=109,`RewMailDelaySecs`=86400 WHERE `entry`=8240;
UPDATE `quest_template` SET `RewMailTemplateId`=93,`RewMailDelaySecs`=21600 WHERE `entry`=8323;
UPDATE `quest_template` SET `RewMailTemplateId`=94,`RewMailDelaySecs`=21600 WHERE `entry`=8324;
UPDATE `quest_template` SET `RewMailTemplateId`=84,`RewMailDelaySecs`=21600 WHERE `entry`=8619;
UPDATE `quest_template` SET `RewMailTemplateId`=85,`RewMailDelaySecs`=21600 WHERE `entry`=8635;
UPDATE `quest_template` SET `RewMailTemplateId`=86,`RewMailDelaySecs`=21600 WHERE `entry`=8636;
UPDATE `quest_template` SET `RewMailTemplateId`=88,`RewMailDelaySecs`=21600 WHERE `entry`=8642;
UPDATE `quest_template` SET `RewMailTemplateId`=89,`RewMailDelaySecs`=21600 WHERE `entry`=8643;
UPDATE `quest_template` SET `RewMailTemplateId`=90,`RewMailDelaySecs`=21600 WHERE `entry`=8644;
UPDATE `quest_template` SET `RewMailTemplateId`=91,`RewMailDelaySecs`=21600 WHERE `entry`=8645;
UPDATE `quest_template` SET `RewMailTemplateId`=92,`RewMailDelaySecs`=21600 WHERE `entry`=8646;
UPDATE `quest_template` SET `RewMailTemplateId`=95,`RewMailDelaySecs`=21600 WHERE `entry`=8647;
UPDATE `quest_template` SET `RewMailTemplateId`=96,`RewMailDelaySecs`=21600 WHERE `entry`=8648;
UPDATE `quest_template` SET `RewMailTemplateId`=97,`RewMailDelaySecs`=21600 WHERE `entry`=8649;
UPDATE `quest_template` SET `RewMailTemplateId`=121,`RewMailDelaySecs`=21600 WHERE `entry`=8650;
UPDATE `quest_template` SET `RewMailTemplateId`=124,`RewMailDelaySecs`=21600 WHERE `entry`=8651;
UPDATE `quest_template` SET `RewMailTemplateId`=125,`RewMailDelaySecs`=21600 WHERE `entry`=8652;
UPDATE `quest_template` SET `RewMailTemplateId`=126,`RewMailDelaySecs`=21600 WHERE `entry`=8653;
UPDATE `quest_template` SET `RewMailTemplateId`=127,`RewMailDelaySecs`=21600 WHERE `entry`=8654;
UPDATE `quest_template` SET `RewMailTemplateId`=128,`RewMailDelaySecs`=21600 WHERE `entry`=8670;
UPDATE `quest_template` SET `RewMailTemplateId`=129,`RewMailDelaySecs`=21600 WHERE `entry`=8671;
UPDATE `quest_template` SET `RewMailTemplateId`=130,`RewMailDelaySecs`=21600 WHERE `entry`=8672;
UPDATE `quest_template` SET `RewMailTemplateId`=131,`RewMailDelaySecs`=21600 WHERE `entry`=8673;
UPDATE `quest_template` SET `RewMailTemplateId`=132,`RewMailDelaySecs`=21600 WHERE `entry`=8674;
UPDATE `quest_template` SET `RewMailTemplateId`=133,`RewMailDelaySecs`=21600 WHERE `entry`=8675;
UPDATE `quest_template` SET `RewMailTemplateId`=134,`RewMailDelaySecs`=21600 WHERE `entry`=8676;
UPDATE `quest_template` SET `RewMailTemplateId`=135,`RewMailDelaySecs`=21600 WHERE `entry`=8677;
UPDATE `quest_template` SET `RewMailTemplateId`=137,`RewMailDelaySecs`=21600 WHERE `entry`=8679;
UPDATE `quest_template` SET `RewMailTemplateId`=138,`RewMailDelaySecs`=21600 WHERE `entry`=8680;
UPDATE `quest_template` SET `RewMailTemplateId`=139,`RewMailDelaySecs`=21600 WHERE `entry`=8681;
UPDATE `quest_template` SET `RewMailTemplateId`=140,`RewMailDelaySecs`=21600 WHERE `entry`=8682;
UPDATE `quest_template` SET `RewMailTemplateId`=141,`RewMailDelaySecs`=21600 WHERE `entry`=8683;
UPDATE `quest_template` SET `RewMailTemplateId`=142,`RewMailDelaySecs`=21600 WHERE `entry`=8684;
UPDATE `quest_template` SET `RewMailTemplateId`=143,`RewMailDelaySecs`=21600 WHERE `entry`=8685;
UPDATE `quest_template` SET `RewMailTemplateId`=144,`RewMailDelaySecs`=21600 WHERE `entry`=8686;
UPDATE `quest_template` SET `RewMailTemplateId`=145,`RewMailDelaySecs`=21600 WHERE `entry`=8688;
UPDATE `quest_template` SET `RewMailTemplateId`=146,`RewMailDelaySecs`=21600 WHERE `entry`=8713;
UPDATE `quest_template` SET `RewMailTemplateId`=147,`RewMailDelaySecs`=21600 WHERE `entry`=8714;
UPDATE `quest_template` SET `RewMailTemplateId`=148,`RewMailDelaySecs`=21600 WHERE `entry`=8715;
UPDATE `quest_template` SET `RewMailTemplateId`=149,`RewMailDelaySecs`=21600 WHERE `entry`=8716;
UPDATE `quest_template` SET `RewMailTemplateId`=150,`RewMailDelaySecs`=21600 WHERE `entry`=8717;
UPDATE `quest_template` SET `RewMailTemplateId`=151,`RewMailDelaySecs`=21600 WHERE `entry`=8718;
UPDATE `quest_template` SET `RewMailTemplateId`=152,`RewMailDelaySecs`=21600 WHERE `entry`=8719;
UPDATE `quest_template` SET `RewMailTemplateId`=153,`RewMailDelaySecs`=21600 WHERE `entry`=8720;
UPDATE `quest_template` SET `RewMailTemplateId`=154,`RewMailDelaySecs`=21600 WHERE `entry`=8721;
UPDATE `quest_template` SET `RewMailTemplateId`=155,`RewMailDelaySecs`=21600 WHERE `entry`=8722;
UPDATE `quest_template` SET `RewMailTemplateId`=156,`RewMailDelaySecs`=21600 WHERE `entry`=8723;
UPDATE `quest_template` SET `RewMailTemplateId`=157,`RewMailDelaySecs`=21600 WHERE `entry`=8724;
UPDATE `quest_template` SET `RewMailTemplateId`=158,`RewMailDelaySecs`=21600 WHERE `entry`=8725;
UPDATE `quest_template` SET `RewMailTemplateId`=159,`RewMailDelaySecs`=21600 WHERE `entry`=8726;
UPDATE `quest_template` SET `RewMailTemplateId`=160,`RewMailDelaySecs`=21600 WHERE `entry`=8727;
UPDATE `quest_template` SET `RewMailTemplateId`=168,`RewMailDelaySecs`=21600 WHERE `entry`=8866;

TRUNCATE TABLE `mail_loot_template`;
INSERT INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(84, 21746, 100, 0, 1, 1, 0, 0, 0),
(85, 21746, 100, 0, 1, 1, 0, 0, 0),
(86, 21746, 100, 0, 1, 1, 0, 0, 0),
(87, 6529, 100, 0, 1, 1, 0, 0, 0),
(88, 21746, 100, 0, 1, 1, 0, 0, 0),
(89, 21746, 100, 0, 1, 1, 0, 0, 0),
(90, 21746, 100, 0, 1, 1, 0, 0, 0),
(91, 21746, 100, 0, 1, 1, 0, 0, 0),
(92, 21746, 100, 0, 1, 1, 0, 0, 0),
(93, 20469, 100, 0, 1, 1, 0, 0, 0),
(94, 20469, 100, 0, 1, 1, 0, 0, 0),
(95, 21746, 100, 0, 1, 1, 0, 0, 0),
(96, 21746, 100, 0, 1, 1, 0, 0, 0),
(97, 21746, 100, 0, 1, 1, 0, 0, 0),
(98, 13158, 100, 0, 1, 1, 0, 0, 0),
(99, 11423, 100, 0, 1, 1, 0, 0, 0),
(100, 11423, 100, 0, 1, 1, 0, 0, 0),
(103, 11422, 100, 0, 1, 1, 0, 0, 0),
(104, 11422, 100, 0, 1, 1, 0, 0, 0),
(109, 19858, 100, 0, 1, 1, 0, 0, 0),
(111, 19697, 100, 0, 1, 1, 0, 0, 0),
(113, 19697, 100, 0, 1, 1, 0, 0, 0),
(119, 15564, 100, 0, 1, 1, 0, 0, 0),
(120, 15564, 100, 0, 1, 1, 0, 0, 0),
(121, 21746, 100, 0, 1, 1, 0, 0, 0),
(124, 21746, 100, 0, 1, 1, 0, 0, 0),
(125, 21746, 100, 0, 1, 1, 0, 0, 0),
(126, 21746, 100, 0, 1, 1, 0, 0, 0),
(127, 21746, 100, 0, 1, 1, 0, 0, 0),
(128, 21746, 100, 0, 1, 1, 0, 0, 0),
(129, 21746, 100, 0, 1, 1, 0, 0, 0),
(130, 21746, 100, 0, 1, 1, 0, 0, 0),
(131, 21746, 100, 0, 1, 1, 0, 0, 0),
(132, 21746, 100, 0, 1, 1, 0, 0, 0),
(133, 21746, 100, 0, 1, 1, 0, 0, 0),
(134, 21746, 100, 0, 1, 1, 0, 0, 0),
(135, 21746, 100, 0, 1, 1, 0, 0, 0),
(137, 21746, 100, 0, 1, 1, 0, 0, 0),
(138, 21746, 100, 0, 1, 1, 0, 0, 0),
(139, 21746, 100, 0, 1, 1, 0, 0, 0),
(140, 21746, 100, 0, 1, 1, 0, 0, 0),
(141, 21746, 100, 0, 1, 1, 0, 0, 0),
(142, 21746, 100, 0, 1, 1, 0, 0, 0),
(143, 21746, 100, 0, 1, 1, 0, 0, 0),
(144, 21746, 100, 0, 1, 1, 0, 0, 0),
(145, 21746, 100, 0, 1, 1, 0, 0, 0),
(146, 21746, 100, 0, 1, 1, 0, 0, 0),
(147, 21746, 100, 0, 1, 1, 0, 0, 0),
(148, 21746, 100, 0, 1, 1, 0, 0, 0),
(149, 21746, 100, 0, 1, 1, 0, 0, 0),
(150, 21746, 100, 0, 1, 1, 0, 0, 0),
(151, 21746, 100, 0, 1, 1, 0, 0, 0),
(152, 21746, 100, 0, 1, 1, 0, 0, 0),
(153, 21746, 100, 0, 1, 1, 0, 0, 0),
(154, 21746, 100, 0, 1, 1, 0, 0, 0),
(155, 21746, 100, 0, 1, 1, 0, 0, 0),
(156, 21746, 100, 0, 1, 1, 0, 0, 0),
(157, 21746, 100, 0, 1, 1, 0, 0, 0),
(158, 21746, 100, 0, 1, 1, 0, 0, 0),
(159, 21746, 100, 0, 1, 1, 0, 0, 0),
(160, 21746, 100, 0, 1, 1, 0, 0, 0),
(168, 21746, 100, 0, 1, 1, 0, 0, 0);

/* REV 547 */
-- Lothos Riftwaker - remove random movement --
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=14387;
-- Lothos Riftwaker - already spawn --
DELETE FROM `creature` WHERE `id`=14387;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(3328, 14387, 0, 7010, 0, -7508.63, -1039.84, 180.995, 3.85718, 900, 0, 0, 9298, 2434, 0, 0);

/* REV 551 */
/* Illusion: Black Dragonkin missing entry */
DELETE FROM `creature_template` WHERE `entry`=12536;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(12536, 0, 0, 12529, 12529, 'Illusion: Black Dragonkin', '', 0, 1, 1, 5000, 5000, 0, 0, 7, 35, 35, 0, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, '');

/* REV 558 - Check GOs for Braziers for D2 chain summons */
DELETE FROM `gameobject` WHERE `id` IN (300059, 300060, 300061, 300062, 300063, 300064);
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(300060, 429, 262.09, -445.745, -119.878, 0, 0, 0, 0, 0, 180, 0, 1),
(300064, 429, 262.09, -445.745, -119.878, 0, 0, 0, 0, 0, 180, 0, 1),
(300061, 329, 3423.47, -3055.73, 136.581, 0, 0, 0, 0, 0, 180, 0, 1),
(300064, 329, 3423.47, -3055.73, 136.581, 0, 0, 0, 0, 0, 180, 0, 1),
(300062, 289, -24.898, 141.242, 84.0468, 0, 0, 0, 0, 0, 180, 0, 1),
(300064, 289, -24.898, 141.242, 84.0468, 0, 0, 0, 0, 0, 180, 0, 1),
(300059, 229, -15.9034, -455.282, -18.6442, 0, 0, 0, 0, 0, 180, 0, 1),
(300064, 229, -15.9034, -455.282, -18.6442, 0, 0, 0, 0, 0, 180, 0, 1),
(300063, 229, 44.7101, -536.049, 110.936, 0, 0, 0, 0, 0, 180, 0, 1),
(300064, 229, 44.7101, -536.049, 110.936, 0, 0, 0, 0, 0, 180, 0, 1);

/* REV 559 - Remove random movement for creature entry 16775 */
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry` IN (16775);
UPDATE `creature` SET `spawntimesecs`=43200 WHERE `guid`=12164 AND `id`=6489;
DELETE FROM `creature` WHERE `guid`=39888; -- remove Unfettered Spirit
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(39888, 6490, 189, 5534, 0, 1837.76, 1315.02, 19.01, 3.05, 43200, 0, 0, 2765, 1870, 0, 0);
UPDATE `creature_template` SET `minmana`='1870', `maxmana`='1870', `faction_A`='21', `faction_H`='21' WHERE `entry`=6490;

/* REV 560 - Allow using Sentry totem since it's fixed */
UPDATE `npc_trainer` SET `reqlevel`='34' WHERE `spell`=6496;

/* REV 561 - Proper start and occurence data for Darkmoon Faire Event */
-- Elwynn Forest
UPDATE `game_event` SET `start_time`='2010-09-05 05:00:00', `occurence`='86400' WHERE `entry`=4;
-- Mulgore
UPDATE `game_event` SET `start_time`='2010-10-03 05:00:00', `occurence`='86400' WHERE `entry`=5;

/* REV 565 */
DELETE FROM `quest_start_scripts` WHERE `id`=8905 AND `command`=10 AND `datalong`=16093;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(8905, 0, 10, 16093, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8905, 0, 10, 16093, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8905, 0, 10, 16093, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8905, 0, 10, 16093, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8905, 0, 10, 16093, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `quest_template` SET `StartScript`=8905 WHERE `entry` BETWEEN 8905 AND 8920;
UPDATE `quest_template` SET `StartScript`=8905 WHERE `entry`=9015;
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry` IN (9437, 9438, 9439, 9441, 9442, 9443);
-- Waypoints for Dark Keeper Bethek --
-- !!! need complete waypoints for his guards --
/*DELETE FROM `creature` WHERE `id`=9438;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(???, 9438, 230, 0, 0, 833.799, -329.095, -50.6638, 3.87166, 43200, 0, 0, 2140, 0, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(???, 1, 806.574, -353.882, -50.1983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90338, 0, 0),
(???, 2, 865.413, -301.137, -49.9359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.5865, 0, 0),
(???, 3, 897.219, -316.35, -49.9359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72649, 0, 0),
(???, 4, 897.602, -377.576, -49.9363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33124, 0, 0),
(???, 5, 918.47, -400.742, -49.3594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46476, 0, 0),
(???, 6, 939.192, -420.303, -55.2056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.52522, 0, 0),
(???, 7, 961.74, -395.451, -60.8377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.812825, 0, 0),
(???, 8, 988.628, -366.804, -66.4781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.07302, 0, 0),
(???, 9, 956.266, -336.026, -71.7143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34122, 0, 0),
(???, 10, 988.576, -367.094, -66.512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93401, 0, 0),
(???, 11, 961.539, -395.668, -60.8377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.91093, 0, 0),
(???, 12, 939.086, -420.306, -55.209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.32787, 0, 0),
(???, 13, 918.436, -400.714, -49.3633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4496, 0, 0),
(???, 14, 897.674, -377.568, -49.9361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52519, 0, 0),
(???, 15, 897.336, -316.456, -49.9372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98603, 0, 0),
(???, 16, 865.629, -301.056, -49.9372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89552, 0, 0),
(???, 17, 806.525, -353.839, -50.1985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.302327, 0, 0);*/

/* REV 566 */
/* some Ancient Azeroth fixes - by Yenza */
-- Fixes the quest: 1269 - Alliance could get both quest
UPDATE `quest_template` SET `RequiredRaces`='178' WHERE `entry`='1269';

-- Fixes the quest: 3562 - wrong minlevel
UPDATE `quest_template` SET `MinLevel`='45' WHERE `entry`='3562';

-- Nathanos have wrong immune, same with dogs
UPDATE `creature_template` SET `mechanic_immune_mask`='650854271' WHERE `entry` IN ('11878', '11885');
-- Nathanos hits to low... certainly was high in preTBC
-- Not "correct" data but he wasn't easy in preTBC
UPDATE `creature_template` SET `dmg_multiplier`='2.5' WHERE `entry`='11878';

-- Big ogre have wrong immune shouldn't be able to enslave
UPDATE `creature_template` SET `mechanic_immune_mask`='650854271' WHERE `entry`='7665';

-- Quest 546, should be for horde not allies
UPDATE `quest_template` SET `RequiredRaces`='178' WHERE `entry`='546';

-- New respawn time for quest (quest entry 6185) gameobjects (10 seconds) --
UPDATE `gameobject` SET `spawntimesecs`=10 WHERE `id` BETWEEN 177804 AND 177806;

-- Script to fix the summon of Sha'ni Proudtusk --
DELETE FROM `gameobject_scripts` WHERE `id`=4523;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(4523, 2, 10, 9136, 300000, '', '', '', '', -7916.54, -2613.33, 221.13, 1.897467);
UPDATE `gameobject_template` SET `type`='1', `data3`='0' WHERE `entry`='160445';
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `id`='160445';
DELETE FROM `creature` WHERE `id`='9136';

-- Slimes in Mara should be slow
UPDATE `creature_template` SET `speed_walk`='0.52', `speed_run`='0.64286' WHERE `entry`='12222';

-- Soul Breaker: itemspell shouldn't proc on every hit
UPDATE `item_template` SET `spellppmRate_1`='1.1', `spellcooldown_1`='0' WHERE `entry`='13408';

-- Quest 3119 should be obtainable after first quest
UPDATE `quest_template` SET `PrevQuestId`='456' WHERE `entry`='3119';

-- Ghosts in Sunken should move slow and shouldn't be attackable
UPDATE `creature_template` SET `speed_walk`='0.68', `speed_run`='0.14286', `unit_flags`='33554432' WHERE `entry`='8317';

-- Makes the GO a button in order for the scripts to work
-- Fixes the quest 2930
UPDATE `gameobject_template` SET `type`='1', `data0`='0', `data1`='93', `data3`='0' WHERE `entry` IN ('142345', '142475', '142476', '142696');

-- Fixes so that the GO casts the spell on player
-- First matrix
DELETE FROM `gameobject_scripts` WHERE `id`=32374;
DELETE FROM `gameobject_scripts` WHERE `id`=32375;
DELETE FROM `gameobject_scripts` WHERE `id`=32376;
DELETE FROM `gameobject_scripts` WHERE `id`=32377;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(32374, 1, 15, 11512, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(32375, 1, 15, 11512, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(32376, 1, 15, 11512, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(32377, 1, 15, 11512, 1, 0, 0, 0, '0', 0, 0, 0, 0);

-- Second matrix
DELETE FROM `gameobject_scripts` WHERE `id`=29116;
DELETE FROM `gameobject_scripts` WHERE `id`=28934;
DELETE FROM `gameobject_scripts` WHERE `id`=28683;
DELETE FROM `gameobject_scripts` WHERE `id`=28487;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(29116, 1, 15, 11525, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(28934, 1, 15, 11525, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(28683, 1, 15, 11525, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(28487, 1, 15, 11525, 1, 0, 0, 0, '0', 0, 0, 0, 0);

-- Third matrix
DELETE FROM `gameobject_scripts` WHERE `id`=31904;
DELETE FROM `gameobject_scripts` WHERE `id`=30560;
DELETE FROM `gameobject_scripts` WHERE `id`=29513;
DELETE FROM `gameobject_scripts` WHERE `id`=29196;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(31904, 1, 15, 11528, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(30560, 1, 15, 11528, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(29513, 1, 15, 11528, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(29196, 1, 15, 11528, 1, 0, 0, 0, '0', 0, 0, 0, 0);

-- Last matrix
DELETE FROM `gameobject_scripts` WHERE `id`=32381;
DELETE FROM `gameobject_scripts` WHERE `id`=32380;
DELETE FROM `gameobject_scripts` WHERE `id`=32379;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(32381, 1, 15, 11545, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(32380, 1, 15, 11545, 1, 0, 0, 0, '0', 0, 0, 0, 0),
(32379, 1, 15, 11545, 1, 0, 0, 0, '0', 0, 0, 0, 0);

-- Missing spells, armor for the elemtals
-- Baron Charr , more decent speed
UPDATE `creature_template` SET `spell1`='9574', `spell2`='15285', `armor`='3379', `speed_walk`='1.54' WHERE `entry`='14461';

-- Avalanchion
UPDATE `creature_template` SET `spell1`='23392', `spell2`='6524', `spell3`='5568', `armor`='3379' WHERE `entry`='14464';

-- Temptestria
UPDATE `creature_template` SET `spell1`='22746', `spell2`='14907', `spell3`='23102', `spell4`='10987', `armor`='3750' WHERE `entry`='14457';

-- Windreaver
UPDATE `creature_template` SET `spell1`='23103', `spell2`='23104', `spell3`='23105', `spell4`='23106', `armor`='3750' WHERE `entry`='14454';

-- Adding waypoints for Baron Charr
DELETE FROM `creature_movement` WHERE `id`=590000;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(590000, 1, -7135.11, -1085.06, -272.109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.110975, 0, 0),
(590000, 2, -7117.62, -1101.19, -272.101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.53807, 0, 0),
(590000, 3, -7105.38, -1116.83, -266.461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.37314, 0, 0),
(590000, 4, -7096.74, -1126.93, -267.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.42027, 0, 0),
(590000, 5, -7065.23, -1166.62, -265.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39278, 0, 0),
(590000, 6, -7029.37, -1212.32, -270.241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.37314, 0, 0),
(590000, 7, -7024.72, -1256.15, -270.973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.81944, 0, 0),
(590000, 8, -7015.88, -1290.35, -267.725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.94902, 0, 0),
(590000, 9, -7007.79, -1318, -271.518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67784, 0, 0),
(590000, 10, -6986.48, -1365.56, -272.221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.13359, 0, 0),
(590000, 11, -6985.28, -1398.54, -270.317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.74874, 0, 0),
(590000, 12, -6976.92, -1412.7, -270.775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.23962, 0, 0),
(590000, 13, -6993.5, -1475.92, -270.584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.47778, 0, 0),
(590000, 14, -7006.99, -1485.66, -265.669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.30754, 0, 0),
(590000, 15, -7031.77, -1519.77, -265.586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.94371, 0, 0),
(590000, 16, -7062.55, -1536.84, -269.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67668, 0, 0),
(590000, 17, -7071.44, -1533.38, -267.138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67922, 0, 0),
(590000, 18, -7077.19, -1531.89, -268.312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88735, 0, 0),
(590000, 19, -7082.32, -1529.72, -267.696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74598, 0, 0),
(590000, 20, -7095.81, -1524, -263.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.691, 0, 0),
(590000, 21, -7112.18, -1512.03, -261.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.53392, 0, 0),
(590000, 22, -7127.49, -1507.12, -258.775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87557, 0, 0),
(590000, 23, -7138.84, -1505.07, -267.372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.07192, 0, 0),
(590000, 24, -7163.95, -1497.65, -265.527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.92662, 0, 0),
(590000, 25, -7191.6, -1530.15, -267.737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.99869, 0, 0),
(590000, 26, -7223.72, -1527.94, -270.572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06799, 0, 0),
(590000, 27, -7252.47, -1539.87, -273.447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5353, 0, 0),
(590000, 28, -7326.86, -1520.11, -271.987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.89128, 0, 0),
(590000, 29, -7378.39, -1515.09, -271.612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.04443, 0, 0),
(590000, 30, -7394.38, -1488.8, -272.073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.12551, 0, 0),
(590000, 31, -7376.05, -1461.93, -271.677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.970977, 0, 0),
(590000, 32, -7352.03, -1441.67, -267.434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.731431, 0, 0),
(590000, 33, -7353.85, -1417.97, -267.298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.77208, 0, 0),
(590000, 34, -7357.36, -1409.97, -271.055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.98414, 0, 0),
(590000, 35, -7378.38, -1351.95, -271.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.92916, 0, 0),
(590000, 36, -7378.23, -1334.83, -268.018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57573, 0, 0),
(590000, 37, -7363.08, -1249.25, -270.737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.42651, 0, 0),
(590000, 38, -7359.81, -1226.75, -267.334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.42651, 0, 0),
(590000, 39, -7354.06, -1186.2, -271.498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.43043, 0, 0),
(590000, 40, -7325.2, -1155.23, -268.697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.821751, 0, 0),
(590000, 41, -7273.02, -1099.11, -270.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.821751, 0, 0),
(590000, 42, -7196.47, -1102.6, -271.634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.23707, 0, 0),
(590000, 43, -7153.49, -1085.09, -272.055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.236628, 0, 0);

-- No more tiny taurens in Bloodvenom area --
UPDATE `creature_template` SET `scale`='1.25' WHERE `entry` IN ('11180', '10379', '2806', '8912');

-- Magistrate in Stratholme shouldn't be friendly --
UPDATE `creature_template` SET `faction_a`='21', `faction_h`='21' WHERE `entry`='10435';

-- Missing req to open the doors + flags in DireMaul --
UPDATE `gameobject_template` SET `flags`='34', `data1`='1562' WHERE `entry` IN ('177221', '179549', '179550');

-- Stratholme Supply crates should be lootable --
UPDATE `gameobject_template` SET `flags`='0' WHERE `entry`='176224';

-- Missing Gameobjects in template!
-- Linking the non working trap supply crates
-- GO's traps don't cast spell!!
DELETE FROM `gameobject_template` WHERE `entry` IN ('175534', '175535', '175536', '175537');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(175534, 6, 335, 'Supply Crate', 0, 0, 1.01, 12, 0, 5, 16371, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(175535, 6, 335, 'Supply Crate', 0, 0, 1.01, 12, 0, 5, 16369, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(175536, 6, 335, 'Supply Crate', 0, 0, 1.01, 12, 0, 5, 16370, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(175537, 6, 1287, 'Supply Crate', 168, 0, 1.01, 0, 0, 10, 16432, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Should have data in data0
UPDATE `gameobject_template` SET `data0`='43' WHERE `entry` IN ('176304', '176307', '176308', '176309');

-- Adding waypoints for in DM
-- Fengus
UPDATE `creature` SET `currentwaypoint`='1', `MovementType`='2' WHERE `guid`='138337';
DELETE FROM `creature_movement` WHERE `id`=138337;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(138337, 1, 379.29, 259.86, 11.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.266181, 0, 0),
(138337, 2, 377.9797, 221.2645, 11.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.683606, 0, 0),
(138337, 3, 385.169, 11.220, 11.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.722877, 0, 0),
(138337, 4, 410.383, 231.434, 11.20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.956890, 0, 0),
(138337, 5, 451.060, 254.659, 11.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.002631, 0, 0),
(138337, 6, 414.923, 270.478, 11.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.136065, 0, 0),
(138337, 7, 386.152, 314.174, 11.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.562724, 0, 0),
(138337, 8, 386.156, 324.988, 7.46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.594140, 0, 0),
(138337, 9, 386.152, 314.174, 11.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.720026, 0, 0),
(138337, 10, 356.658, 279.656, 11.20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.005315, 0, 0),
(138337, 11, 319.220, 255.942, 11.216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.192428, 0, 0),
(138337, 12, 306.774, 255.813, 7.639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.153158, 0, 0),
(138337, 13, 319.220, 255.942, 11.216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.054754, 0, 0),
(138337, 14, 379.29, 259.86, 11.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.266181, 0, 0);

-- Does not have a preQuest
UPDATE `quest_template` SET `PrevQuestId`='5122' WHERE `entry`='5125';
-- Does not have a NextQuest
UPDATE `quest_template` SET `NextQuestId`='5125' WHERE `entry`='5122';

-- Wrong charges on item
UPDATE `item_template` SET `spellcharges_1`='0' WHERE `entry`='9364';

-- Imperial Plate quests
-- Belt
UPDATE `quest_template` SET `RequestItemsText`='For the belt plans, I''ll be needin'' 20 thorium bars.' WHERE `entry`='7653';
-- Boots
UPDATE `quest_template` SET `RequestItemsText`='For the boot plans, I''ll be needin'' 40 thorium bars. Yep, 40. Are you gonna cry? Would you like a hanky? <Derotain laughs.>' WHERE `entry`='7654';
-- Bracers
UPDATE `quest_template` SET `RequestItemsText`='For the bracer plans, I''ll be needin'' 20 thorium bars. Are you alright, sonny? Yer getting'' all red.' WHERE `entry`='7655';
-- Shoulders
UPDATE `quest_template` SET `RequestItemsText`='For the shoulder plans, I''ll be needin'' 20 thorium bars.' WHERE `entry`='7659';
-- Helm
UPDATE `quest_template` SET `RequestItemsText`='Just hand over 50 thorium bars and the helm plans are yers.' WHERE `entry`='7657';
-- Chest
UPDATE `quest_template` SET `RequestItemsText`='For the chest piece plans, I''ll be needin'' 60 thorium bars. Oh boy, there you go again. Are you gonna be runnin'' to yer blue Gods, askin'' why they have forsaken you?!? Toughen up, Nancy! Nobody ever said life''s fair.' WHERE `entry`='7656';
-- Leggins
UPDATE `quest_template` SET `RequestItemsText`='Just hand over 60 thorium bars and the leg plans are yers. I know, I''m driving you into bankruptcy! I''ve heard it all before so you can save your sob story, weakling.' WHERE `entry`='7658';

-- Adding Waypoints for Thorsen
UPDATE `creature` SET `currentwaypoint`='1', `MovementType`='2' WHERE `guid`='2243';
DELETE FROM `creature_movement` WHERE `id`=2243;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(2243, 1, -11313.9, -202.766, 75.576, 54000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 2, -11332.4, -206.361, 75.315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 3, -11359.8, -211.463, 75.2206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 4, -11375.2, -216.39, 75.2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 5, -11380.3, -237.589, 68.6761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 6, -11386.4, -256.732, 62.7537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 7, -11391.7, -277.99, 59.1781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 8, -11435.5, -287.409, 47.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 9, -11465.5, -291.57, 38.9963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 10, -11466.1, -293.09, 39.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 11, -11431.3, -290.574, 49.3746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 12, -11394, -283.104, 58.5671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 13, -11384.1, -254.267, 63.6072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 14, -11376.1, -219.42, 75.0551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 15, -11354.1, -210.72, 75.2631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 16, -11330.5, -206.941, 75.4113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 17, -11310.8, -205.042, 75.1738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Gold dropped from mobs at Tyr's hand (data from YTDB)
UPDATE `creature_template` SET `mingold`='1296', `maxgold`='1296' WHERE `entry`='9452';
UPDATE `creature_template` SET `mingold`='1290', `maxgold`='1290' WHERE `entry`='9447';
UPDATE `creature_template` SET `mingold`='1353', `maxgold`='1353' WHERE `entry`='9449';
UPDATE `creature_template` SET `mingold`='1501', `maxgold`='1501' WHERE `entry`='9448';
UPDATE `creature_template` SET `mingold`='1431', `maxgold`='1431' WHERE `entry`='9451';
UPDATE `creature_template` SET `mingold`='1421', `maxgold`='1421' WHERE `entry`='9450';
UPDATE `creature_template` SET `mingold`='1860', `maxgold`='1860' WHERE `entry`='11898';
UPDATE `creature_template` SET `mingold`='2140', `maxgold`='2140' WHERE `entry`='10828';

-- Should not have equip in DB
-- jursky: really? She to have a gun! hmm.. :-? Temporary commented
-- UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`='6182';

-- Hemet is not jr. anymore!
UPDATE `creature_template` SET `name`='Hemet Nesingwary' WHERE `entry`='715';

-- Fixes the gossip text
DELETE FROM `npc_text` WHERE (`ID`=9218);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES (9218, 'Keep a sharp eye, $c.  You never know when some beastie is stalking you instead of the other way around.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Updating quests
UPDATE `quest_template` SET `details`='I''ve gotten reports of a group of hunters that have set up camp upriver of the Venture Company mining camp on Lake Nazferiti.  Now, normally I wouldn''t care, but improbably, I heard that Hemet Nesingwary was one of the hunters there.  He''s certainly well-connected, if you catch my meaning, and you never can be too safe.$b$bWhy don''t you go check out the camp, $n, see what they''re about?' WHERE `entry`='201';
UPDATE `quest_template` SET `details`='Welcome to Stranglethorn!$b$bPerhaps you''re not aware of this, but that dwarf over there is the one and only Hemet Nesingwary, renowned war hero of the Alliance and master big game hunter.  He''s not one for welcoming strangers into his camp, but you look like you''ve seen quite a bit of action in your day, $c.$b$bBeing a veteran of many battles himself, Master Nesingwary has a soft spot for fellow heroes.$b$bGo and speak with him.  Perhaps he can give you some hunting pointers.', `Objectives`='Speak with Hemet Nesingwary' WHERE `entry`='583';
UPDATE `quest_template` SET `details`='If you want to be a part of the hunt with this crack group under Hemet''s leadership, you''re going to need to prove yourself an able panther hunter.  We''ll start you out easy -- don''t you worry.  Let''s see you kill 10 young panthers to start.$b$bTracking them down is only half the challenge...' WHERE `entry`='190';

-- Highlord Taelan Fordring had big size
UPDATE `creature_template` SET `scale`='1' WHERE `entry`='1842';

-- Adding text for thorsen
DELETE FROM `db_script_string` WHERE `entry`=2000005235;
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
('2000005235', 'Time for my patrol. I''ll be back shortly.');
-- Linking text to patrol and also increase patroltime = 25min
DELETE FROM `creature_movement` WHERE `id`=2243;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(2243, 1, -11314.8, -204.607, 75.203, 1500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 2, -11332.4, -206.361, 75.315, 0, 0, 2000005235, 2000005235, 2000005235, 2000005235, 2000005235, 0, 0, 0, 0, 0, 0),
(2243, 3, -11359.8, -211.463, 75.2206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 4, -11375.2, -216.39, 75.2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 5, -11380.3, -237.589, 68.6761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 6, -11386.4, -256.732, 62.7537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 7, -11391.7, -277.99, 59.1781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 8, -11435.5, -287.409, 47.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 9, -11465.5, -291.57, 38.9963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 10, -11466.1, -293.09, 39.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 11, -11431.3, -290.574, 49.3746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 12, -11394, -283.104, 58.5671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 13, -11384.1, -254.267, 63.6072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 14, -11376.5, -217.148, 75.1599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 15, -11354.1, -210.72, 75.2631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 16, -11330.5, -206.941, 75.4113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2243, 17, -11314.8, -204.607, 75.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Wanted poster didn't hand out quest
DELETE FROM `creature_questrelation` WHERE `quest` = 2875;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 2875;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 2875;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 2875;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (150075, 2875);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (142122, 2875);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (7882, 2875);

-- Fix modelid and scale --
UPDATE `creature_template` SET `modelid_1`='2582', `scale`='1' WHERE `entry`='14221';

-- Set correct model of captain greenskin
UPDATE `creature_template` SET `modelid_1`='7113', `modelid_2`='7113' WHERE `entry`='647';

-- Added missing quest-giwer for warrior's training in SW (modified by jursky)
DELETE FROM `creature_questrelation` WHERE `id`=5480 AND `quest`=1638;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (5480, 1638);

-- Missing selling item from vendor
DELETE FROM `npc_vendor` WHERE `entry`=11189 AND `item`=14481;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('11189', '14481', '1', '1200');

-- Correcting rewardtext from quest
UPDATE `quest_template` SET `OfferRewardText`='I''m glad someone was able to get a hold of you, $n. I was beginning to fear the worst. It would be a shame to lose you, after the time we''ve invested in you. We can talk later, though. Your training is the only important thing now.' WHERE `entry` IN ('1717', '1685');

-- Shouldn't have preQuest
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='1685';

-- Setting run_speed to 0.99 according to UDB
UPDATE `creature_template` SET `speed_run`='0.99' WHERE `entry`='467';

-- Wrong faction (typo?)
UPDATE `creature_template` SET `faction_A`='63', `faction_H`='63' WHERE `entry`='6221';

/* REV 567 */
-- Lower damage for Illusion of Jandice Barov --
UPDATE `creature_template` SET `mindmg`=50, `maxdmg`=80 WHERE `entry`=11439;

-- Deletes him from world, spawns from complete quest
DELETE FROM `creature` WHERE `guid`='1626';

-- Adding script to spawn him with quest complete
-- Despawns in 10min
UPDATE `quest_template` SET `CompleteScript`='330' WHERE `entry`='330';
DELETE FROM `quest_end_scripts` WHERE `id`=330;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(330, 5, 10, 1421, 600000, '', '', '', '', -11319.065, -201.220, 75.782, 1.138702);

-- Ironspine, Fallen Champion should be hostile and rareElite
UPDATE `creature_template` SET `faction_A`='21', `faction_H`='21', `rank`='2' WHERE `entry` IN ('6489', '6488');

-- Adding second modelID since he seems to dissappear once in a while
UPDATE `creature_template` SET `modelid_2`='3441' WHERE `entry`='1268';

-- Adding missing text
UPDATE `npc_text` SET `text0_1`='Welcome to Camp Mojache, brave $c.  How may I assist you this day?', `prob0`='100' WHERE `id`='2638';

-- Should sell items
UPDATE `creature_template` SET `npcflag`='7' WHERE `entry`='7854';

-- Setting Elites at Purg. Island
UPDATE `creature_template` SET `rank`='1' WHERE `entry` IN ('7071', '7068', '7069', '7070', '7075');

-- Setting levels at Purg. Island
UPDATE `creature_template` SET `minlevel`='57', `maxlevel`='58' WHERE `entry`='7071';
UPDATE `creature_template` SET `minlevel`='57', `maxlevel`='58' WHERE `entry`='7068';
UPDATE `creature_template` SET `minlevel`='58', `maxlevel`='59' WHERE `entry`='7069';
UPDATE `creature_template` SET `minlevel`='59', `maxlevel`='60' WHERE `entry`='7070';
UPDATE `creature_template` SET `minlevel`='58', `maxlevel`='59' WHERE `entry`='7075';

-- Setting health & mana & gold at Purg. Island
UPDATE `creature_template` SET `mingold`='1681', `maxgold`='2681', `minhealth`='7349', `maxhealth`='7580', `minmana`='4482', `maxmana`='4578' WHERE `entry`='7071';
UPDATE `creature_template` SET `mingold`='1735', `maxgold`='2735', `minhealth`='7349', `maxhealth`='7580', `minmana`='6723', `maxmana`='6867' WHERE `entry`='7068';
UPDATE `creature_template` SET `mingold`='1713', `maxgold`='2713', `minhealth`='8613', `maxhealth`='8883', `minmana`='0', `maxmana`='0' WHERE `entry`='7069';
UPDATE `creature_template` SET `mingold`='1732', `maxgold`='2732', `minhealth`='7818', `maxhealth`='8059', `minmana`='7107', `maxmana`='7302' WHERE `entry`='7070';
UPDATE `creature_template` SET `mingold`='1701', `maxgold`='2701', `minhealth`='6891', `maxhealth`='7107', `minmana`='6867', `maxmana`='7107' WHERE `entry`='7075';

-- Wrong quest progress text
UPDATE `quest_template` SET `RequestItemsText`='What are you doing here, $N! You should be crawling through the brush, trying to kill 10 Shadowmaw Panthers. I thought you fancied yourself a big game hunter?', `OfferRewardText`='You''ve done well, $N!' WHERE `entry`='192';

-- Superior mana recipe now sold by vendors
DELETE FROM `npc_vendor` WHERE `item`='13477';
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('4226', '13477', '1', '9000');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('4610', '13477', '1', '9000');

-- Adding so he spawns when quest complete
UPDATE `quest_template` SET `CompleteScript`='553' WHERE `entry`='553';
DELETE FROM `quest_end_scripts` WHERE `id`=553;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(553, 5, 10, 2433, 600000, 0, 0, 0, '', -742.94, -615.67, 18.72, 1.617311);

-- Speak to Salfa should have preQuest
UPDATE `quest_template` SET `PrevQuestId`='8461' WHERE `entry`='8465';

-- Adding to spawn the Locheed when quest Complete
UPDATE `quest_template` SET `CompleteScript`='4451' WHERE `entry`='4451';
DELETE FROM `quest_end_scripts` WHERE `id`=4451;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`,`dataint`, `x`, `y`, `z`, `o`) VALUES 
(4451, 5, 10, 9876, 600000, 0, 0, 0, '', -7026.23, -1784.265, 265.77, 3.716866);

-- Fixes the wrong model of Red mechano
UPDATE `creature_template` SET `modelid_1`='9473' WHERE `entry`='7739';

-- Fix for Ulathek, makes him hostile
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE `entry`='14523';

-- Greater Darkmoon Prize is now lootable
UPDATE `item_template` SET `Flags`='4' WHERE `entry`='19296';

-- Mobs will give Alliance Rep!
DELETE FROM `creature_onkill_reputation` WHERE `RewOnKillRepFaction1`='471';
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES -- Witherbark
(2552, 471, '', 7, 0, 10, '', 0, '', 1),
(2553, 471, '', 7, 0, 10, '', 0, '', 1),
(2554, 471, '', 7, 0, 10, '', 0, '', 1),
(2555, 471, '', 7, 0, 10, '', 0, '', 1),
(2556, 471, '', 7, 0, 10, '', 0, '', 1),
(2557, 471, '', 7, 0, 10, '', 0, '', 1),
(2558, 471, '', 7, 0, 10, '', 0, '', 1),
(2649, 471, '', 7, 0, 10, '', 0, '', 1),
(2650, 471, '', 7, 0, 10, '', 0, '', 1),
(2651, 471, '', 7, 0, 10, '', 0, '', 1),
(2652, 471, '', 7, 0, 10, '', 0, '', 1),
(2653, 471, '', 7, 0, 10, '', 0, '', 1),
(2654, 471, '', 7, 0, 10, '', 0, '', 1),
-- Vilebranch
(2639, 471, '', 7, 0, 10, '', 0, '', 1),
(2640, 471, '', 7, 0, 10, '', 0, '', 1),
(2641, 471, '', 7, 0, 10, '', 0, '', 1),
(2642, 471, '', 7, 0, 10, '', 0, '', 1),
(2643, 471, '', 7, 0, 10, '', 0, '', 1),
(2644, 471, '', 7, 0, 10, '', 0, '', 1),
(2645, 471, '', 7, 0, 10, '', 0, '', 1),
(2646, 471, '', 7, 0, 10, '', 0, '', 1),
(2647, 471, '', 7, 0, 10, '', 0, '', 1),
(2648, 471, '', 7, 0, 10, '', 0, '', 1),
(4465, 471, '', 7, 0, 10, '', 0, '', 1),
(4466, 471, '', 7, 0, 10, '', 0, '', 1),
(4467, 471, '', 7, 0, 10, '', 0, '', 1),
(7809, 471, '', 7, 0, 10, '', 0, '', 1);

-- Hive Zora should be hostile
UPDATE `creature_template` SET `faction_A`='310', `faction_H`='310' WHERE `entry`='11726';

-- Fixes prequest
UPDATE `quest_template` SET `PrevQuestId`='203' WHERE `entry`='207';

/* REV 568 */
-- Marshal Reginald Windsor - friendly faction for alliance players --
UPDATE `creature_template` SET `faction_A`='210', `faction_H`='7' WHERE `entry`='9682';

/* REV 569 - faction for Eldreth Seether, Eldreth Sorcerer */
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `npcflag`='0' WHERE `entry` IN (11469, 11470);

-- Fengus movementype typo (by Yenza)
UPDATE `creature_template` SET `MovementType`='2' WHERE `entry`='14321';
DELETE FROM `creature_movement` WHERE (`id`=138337) AND (`point`=3);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (138337, 3, 385.169, 211.22, 11.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72288, 0, 0);

/* REV 577 */
-- Phalanx - Friendly faction for both fraction --
UPDATE `creature_template` SET `faction_A`=35, `faction_A`=35 WHERE `entry`=9502;
-- Poisonous Cloud - Friendly faction for both fraction + some flags suchs as non-selectable, non-attackable, ... --
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `unit_flags`='33554438', `spell1`='0' WHERE `entry`=14989;

/* REV 578 */
-- This SQL updates the damage of NPCs in Molten Core instance with X + 150dmg in mindmg & maxdmg (melee, not range) and also sets the immunes.
-- By Yenza --

-- Ancient Core Hound
UPDATE `creature_template` SET `mindmg`='763', `maxdmg`='942' WHERE `entry`='11673';
-- Core Hound
UPDATE `creature_template` SET `mindmg`='678', `maxdmg`='831' WHERE `entry`='11671';
-- Core Rager
UPDATE `creature_template` SET `mindmg`='726', `maxdmg`='893' WHERE `entry`='11672';
-- Molten Giant
UPDATE `creature_template` SET `mindmg`='756', `maxdmg`='840' WHERE `entry`='11658';
-- Molten Destroyer
UPDATE `creature_template` SET `mindmg`='766', `maxdmg`='852' WHERE `entry`='11659';
-- Flame Imp
UPDATE `creature_template` SET `mindmg`='726', `maxdmg`='893' WHERE `entry`='11669';
-- Firelord
UPDATE `creature_template` SET `mindmg`='745', `maxdmg`='838' WHERE `entry`='11668';
-- Flameguard
UPDATE `creature_template` SET `mindmg`='745', `maxdmg`='838' WHERE `entry`='11667';
-- Firewalker
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11666';
-- Lava Annihilator
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11665';
-- Flamewaker Elite
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11664';
-- Flamewaker Healer
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11663';
-- Flamewaker Priest
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11662';
-- Flamewaker
UPDATE `creature_template` SET `mindmg`='738', `maxdmg`='819' WHERE `entry`='11661';

UPDATE `creature_template` SET `mechanic_immune_mask`='612974427' WHERE `entry` IN ('11661', '11662', '11663', '11664', '11665', '11666', '11667', '11668', '11669', '11659', '11658', '11672', '11671', '11673');

/* By jursky */
-- Fix speed of a Caverndeep Ambusher --
UPDATE `creature_template` SET `speed_walk`='1.2' WHERE `entry`=6207;

/* REV 580 */
/* Guards in contested territories will react on PvP fights */
UPDATE `creature_template` SET `npcflag`='32769', `unit_flags`='32768' WHERE `entry` IN (9460,4624,3502,11190,15184);

/* Reputation spillover data (based on UDB) */
INSERT IGNORE INTO reputation_spillover_template VALUES
-- 25% gain to each city
(72, 47,0.25,7, 54,0.25,7, 69,0.25,7, 0,0,0), -- Stormwind
(47, 72,0.25,7, 54,0.25,7, 69,0.25,7, 0,0,0), -- Ironforge
(54, 47,0.25,7, 72,0.25,7, 69,0.25,7, 0,0,0), -- Gnomeregan
(69, 47,0.25,7, 54,0.25,7, 72,0.25,7, 0,0,0), -- Darnassus

( 68, 76,0.25,7, 81,0.25,7, 530,0.25,7, 0,0,0), -- Undercity
( 76, 68,0.25,7, 81,0.25,7, 530,0.25,7, 0,0,0), -- Orgrimmar
( 81, 76,0.25,7, 68,0.25,7, 530,0.25,7, 0,0,0), -- Thunder Bluff
(530, 76,0.25,7, 81,0.25,7,  68,0.25,7, 0,0,0), -- Darkspear Trolls

-- 50% gain to each city
( 21, 369,0.50,7, 470,0.50,7, 577,0.50,7, 0,0,0), -- Booty Bay
(369,  21,0.50,7, 470,0.50,7, 577,0.50,7, 0,0,0), -- Gadgetzan
(470, 369,0.50,7,  21,0.50,7, 577,0.50,7, 0,0,0), -- Ratchet
(577, 369,0.50,7, 470,0.50,7,  21,0.50,7, 0,0,0); -- Everlook

/* REV 582 - By Yenza*/
-- Spawning missing Murkdeep
DELETE FROM `creature` WHERE `id`=10323;
INSERT INTO `creature` (`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(10323, 1, 0, 0, 4990.81, 549.205, 4.98808, 3.89065, 642, 0, 0, 516, 0, 0, 1);

-- Fixed the items sold by vendor in silverwing
-- Didn't have reqrepfaction in DB
UPDATE `item_template` SET `RequiredReputationFaction`='0' WHERE `entry` IN ('17348', '17349', '17351', '17352', '19060', '19061', '19062', '19066', '19067', '19068', '19506', '19514', '19515', '19516', '19517', '19522', '19523', '19524', '19525', '19530', '19531', '19532', '19533', '19538', '19539', '19540', '19541', '19546', '19547', '19548', '19549', '19554', '19555', '19556', '19557', '19562', '19563', '19564', '19565', '19570', '19571', '19572', '19573', '19578', '19580', '19581', '19582', '19583', '19584', '19587', '19589', '19590', '19595', '19596', '19597', '20428', '20431', '20434', '20438', '20439', '20440', '20443', '20444', '21565', '21566', '21567', '21568', '22672', '22748', '22749', '22750', '22752', '22753');

-- Fixes Rexxar text
DELETE FROM `npc_text` WHERE (`ID`=6533);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(6533, 'I am Rexxar, last son of the mok''nathal.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Spawning missing Misha
DELETE FROM `creature` WHERE `id`=10204;
INSERT INTO `creature` (`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(10204, 1, 0, 0, -1653.697, 3074.102, 29.768, 1.757361, 900, 0, 0, 0, 0, 0, 1);

/* REV 585 - Proper elixir's masks */
DELETE FROM `spell_elixir` WHERE `entry` IN (17624, 17626, 17627, 17628, 17629, 24382, 24383, 24417);
INSERT INTO `spell_elixir` VALUES
(17624, 0x03), -- Flask of Petrification
(17626, 0x03), -- Flask of The Titans
(17627, 0x03), -- Flask of Distilled Wisdom
(17628, 0x03), -- Flask of Supreme Power
(17629, 0x03), -- Flask of Chromatic Resistance
(24382, 0x02), -- Spirit of Zanza
(24383, 0x02), -- Swiftness of Zanza
(24417, 0x02); -- Sheen of Zanza

/* REV 588 by Yenza */
-- Fixes to right quest tooltip
UPDATE `quest_template` SET `details`='I have received word from one of my champions that a way into the lair of the dragon may exist. You are to seek him out. Rexxar wanders the desert wasteland of Desolace, traveling between Stonetalon and Feralas. He awaits your arrival.', `objectives`='Seek out Rexxar. The Warchief has instructed you as to his whereabouts. Search the paths of Desolace, between the Stonetalon Mountains and Feralas.' WHERE `entry`='6567';

-- Should be elite not RareElite
UPDATE `creature_template` SET `rank`='1' WHERE `entry`='10812';

-- Makes all NPC's in instances and raids immune to MC
UPDATE creature_template SET mechanic_immune_mask=mechanic_immune_mask|1 WHERE entry IN (SELECT id FROM creature WHERE map NOT IN (0, 1));

-- Make specific NPC's MC able
-- list from:
-- http://www.wowwiki.com/List_of_mind_controllable_mobs
UPDATE `creature_template` SET `mechanic_immune_mask`='0' WHERE `entry` IN ('11441', '11448', '11444', '11445', '11338', '11356', '11351', '11831', '11353', '11350', '11340', '11339', '10422', '10423', '10425', '10424', '10419', '10420', '11043', '10418', '10421', '10426', '10400', '14401', '12420', '12416', '10318', '9817', '10316', '9262', '9098', '9257', '9268', '9239', '9240', '9201', '4805', '4807', '4818', '4820', '4819', '4815', '4812', '4811', '4810', '4809', '4813', '4814', '1707', '1708', '1706', '1711', '1715', '598', '1729', '634', '1725', '641', '4417', '4418', '1731', '622', '4416', '657', '636');

-- Certain mobs that can be MCed but with other masks
UPDATE `creature_template` SET `mechanic_immune_mask`='617299930' WHERE `entry` IN ('6243', '4831', '1696', '1666', '1717', '1716', '1663');

-- Reward text missing in Rogue Quest
UPDATE `quest_template` SET `OfferRewardText`='Very good, I''m glad Kaplak was able to get a hold of you. We have some things to speak of, not the least of which is your future with the Hand.' WHERE `entry`='1859';

-- Polymorph Clone had 0 in HP
UPDATE `creature_template` SET `minhealth`='40', `maxhealth`='40' WHERE `entry`='16479';

-- Warrior quests had wrong RequiredRaces
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE `entry`='1704';
UPDATE `quest_template` SET `RequiredRaces`='8' WHERE `entry`='1703';
UPDATE `quest_template` SET `RequiredRaces`='65' WHERE `entry`='1700';

/* REV 591 by Yenza */
-- Should fix some of the DB errors according to the log
UPDATE `creature` SET `MovementType`='2' WHERE `guid` IN ('326', '1012', '3557', '3574', '3595', '3596', '4360', '4361', '4364', '4377', '4378', '4522', '5459', '38347', '39540', '46818', '54043', '79750', '86278');

-- Missing Creature spawns (elemental Invasion..)
DELETE FROM `creature` WHERE `id` IN (14461, 14464, 14457, 14454);
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(590000, 14461, 1, 0, 0, -7153.77, -1085.68, -272.045, 6.00539, 1200, 0, 0, 14355, 0, 0, 2),
(590001, 14464, 1, 0, 0, 4487.17, -7316, 93.526, 2.06, 3432, 7, 0, 14355, 0, 0, 1),
(590002, 14457, 1, 0, 0, 6565.35, -4219, 658.379, 1.721, 3540, 0, 0, 15260, 0, 0, 0),
(590003, 14454, 1, 0, 0, -6582, 1539.14, 2.156, 3.381, 3540, 25, 0, 15260, 0, 0, 1);

-- Fixes the link for Elemental Invasion from DB Game Event
INSERT IGNORE INTO `game_event_creature` (`guid`, `event`) VALUES ('590000', '13'), ('590001', '13'), ('590002', '13'), ('590003', '13');

/* Not needed data */
DELETE FROM `event_scripts` WHERE `id`=4884;
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `entry`=175706;

/* REV 592 - Lord Valthalak loot */
UPDATE `creature_template` SET `lootid`=16042 WHERE `entry`=16042;
DELETE FROM `creature_loot_template` WHERE `entry`=16042;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(16042, 14047, 10, 0, 2, 5, 0, 0, 0),
(16042, 35024, 100, 1, -35024, 2, 0, 0, 0);
DELETE FROM `reference_loot_template` WHERE `entry`=35024;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(35024, 22302, 0, 1, 1, 1, 0, 0, 0),
(35024, 22335, 0, 1, 1, 1, 0, 0, 0),
(35024, 22336, 0, 1, 1, 1, 0, 0, 0),
(35024, 22337, 0, 1, 1, 1, 0, 0, 0),
(35024, 22339, 0, 1, 1, 1, 0, 0, 0),
(35024, 22340, 0, 1, 1, 1, 0, 0, 0),
(35024, 22342, 0, 1, 1, 1, 0, 0, 0),
(35024, 22343, 0, 1, 1, 1, 0, 0, 0);

/* REV 596 - Molten Core */
-- Firesworn, Flamewaker Protector should be immune to STUN
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|2048 WHERE `entry` IN (12099, 12119);
-- Flamewaker should NOT by immune to STUN
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`&~2048 WHERE `entry`=11661;
-- Core Hounds shouldn't drop fireworks
DELETE FROM `creature_loot_template` WHERE `entry` = 11671 AND `item` != 11370;

/* REV 598 - Wailing Cavern AT port */
DELETE FROM `areatrigger_teleport` WHERE `id`=228;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `required_failed_text`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(228, 'The Barrens - Wailing Caverns', 0, 0, 0, 0, NULL, 43, -163.49, 132.9, -73.66, 5.83);

/* REV 599 by Yenza */
/* Molten Core */
-- fixes the waypoints for Ancient Core Hound
DELETE FROM `creature_movement` WHERE `id`=56746;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(56746, 1, 703.41, -682.918, -209.666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 2, 691.686, -667.195, -209.626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 3, 690.402, -645.547, -209.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 4, 711.937, -599.668, -209.897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 5, 697.683, -631.293, -209.747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 6, 689.471, -663.63, -209.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 7, 700.224, -678.064, -209.691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 8, 714.997, -705.218, -209.764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 9, 701.431, -719.36, -209.465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 10, 684.936, -742.305, -209.277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 11, 674.519, -766.74, -209.111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 12, 685.999, -743.436, -209.287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 13, 695.01, -729.137, -209.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 14, 714.565, -699.303, -209.764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 15, 704.9, -684.28, -209.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 16, 689.003, -655.932, -209.643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 17, 696.13, -632.953, -209.723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 18, 711.252, -598.939, -209.858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 19, 697.683, -631.293, -209.747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56746, 20, 689.471, -663.63, -209.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Fixes object Dark Iron Veins in MC
DELETE FROM `gameobject` WHERE `id`=165658 AND `map`=409;
INSERT INTO `gameobject` (`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(165658, 409, 714.65, -721.695, -209.823, 0.907571, 0, 0, 0.438371, 0.898794, 1800, 255, 1),
(165658, 409, 646.1, -865.918, -208.326, -2.18166, 0, 0, 0.887011, -0.461749, 1800, 255, 1),
(165658, 409, 638.447, -754.949, -208.723, 1.81514, 0, 0, 0.788011, 0.615662, 1800, 255, 1),
(165658, 409, 713.891, -862.482, -202.019, -1.6057, 0, 0, 0.71934, -0.694658, 1800, 255, 1),
(165658, 409, 962.736, -569.84, -201.54, 1.11701, 0, 0, 0.529919, 0.848048, 1800, 255, 1),
(165658, 409, 1000.87, -732.561, -173.765, 0.471239, 0, 0, 0.233445, 0.97237, 1800, 255, 1),
(165658, 409, 914.487, -630.667, -199.639, 1.32645, 0, 0, 0.615662, 0.788011, 1800, 255, 1),
(165658, 409, 1066.79, -863.968, -158.071, 1.25664, 0, 0, 0.587785, 0.809017, 1800, 255, 1),
(165658, 409, 1015.03, -818.843, -149.959, 0.994838, 0, 0, 0.477159, 0.878817, 1800, 255, 1),
(165658, 409, 666.984, -567.945, -209.082, 0.10472, 0, 0, 0.052336, 0.99863, 1800, 255, 1);

-- Baron Geddon's damage
-- Data taken from SDB and YTDB
UPDATE `creature_template` SET `dmg_multiplier`='17.2', `baseattacktime`='1100', `resistance1`='300' WHERE `entry`='12056';

/* Dire Maul */
-- drop of these items shouldn't be 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.5' WHERE `item`='35015';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE `mincountOrRef`='-35016';

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 501_600 (6)';