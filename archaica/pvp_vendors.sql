/* PvP Vendors */
-- Alliance templates
DELETE FROM `creature_template` WHERE `entry` BETWEEN 40100 AND 40113;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(40100, 0, 0, 1429, 0, 'Private Alan', 'Private', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 186, 283, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40101, 0, 0, 12918, 0, 'Corporal O''Neal', 'Corporal', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 196, 293, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40102, 0, 0, 12923, 0, 'Sergeant Areyn', 'Sergeant', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 206, 303, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40103, 0, 0, 12922, 0, 'Master Sergeant Karter', 'Master Sergeant', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 216, 313, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40104, 0, 0, 12925, 0, 'Sergeant Major Clate', 'Sergeant Major', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 226, 323, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40105, 0, 0, 12924, 0, 'Knight Feltharas', 'Knight', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 236, 333, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40106, 0, 0, 12919, 0, 'Knight-Lieutenant Hammon', 'Knight-Lieutenant', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 246, 343, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40107, 0, 0, 12920, 0, 'Knight-Captain Quine', 'Knight-Captain', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 256, 353, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40108, 0, 0, 2197, 0, 'Knight-Champion Thylyana', 'Knight-Champion', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 266, 353, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40109, 0, 0, 6071, 0, 'Lieutenant Commander Wytherath', 'Lieutenant Commander', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 276, 363, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40110, 0, 0, 14405, 0, 'Commander ThunderClaw', 'Commander', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 286, 373, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40111, 0, 0, 3597, 0, 'Marshal BronzeHead', 'Marshal', 0, 60, 60, 5226, 5226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 296, 383, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40112, 0, 0, 12917, 0, 'Field Marshal DirgeHammer', 'Field Marshal', 0, 60, 60, 6126, 6126, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 306, 393, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40113, 0, 0, 3074, 0, 'Grand Marshal WarHammer', 'Grand Marshal', 0, 60, 60, 6226, 6226, 1855, 1855, 0, 11, 11, 4, 1.23, 1.14286, 0, 0, 316, 403, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, '');

-- Alliance spawns
DELETE FROM `creature` WHERE `id` BETWEEN 40100 AND 40113;
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40100, 0, 0, 0, -8753.19, 395.853, 101.058, 5.41923, 180, 0, 0, 4226, 1855, 0, 0),
(40101, 0, 0, 0, -8756.34, 399.512, 102.608, 5.39568, 180, 0, 0, 4226, 1855, 0, 0),
(40102, 0, 0, 0, -8758.9, 402.943, 103.904, 5.47814, 180, 0, 0, 4226, 1855, 0, 0),
(40103, 0, 0, 0, -8758.25, 391.616, 101.06, 5.36426, 180, 0, 0, 4226, 1855, 0, 0),
(40104, 0, 0, 0, -8761.2, 395.611, 102.608, 5.43495, 180, 0, 0, 4226, 1855, 0, 0),
(40105, 0, 0, 0, -8763.83, 399.077, 103.903, 5.38782, 21805, 0, 0, 4226, 1855, 0, 0),
(40106, 449, 0, 0, -6.23204, 8.67693, -0.255882, 5.47111, 180, 0,0,4226, 1855,0, 0),
(40107, 449, 0, 0, 6.69338, 9.26972, -0.255884, 3.83435, 180, 0, 0, 4226, 1855, 0, 0),
(40108, 449, 0, 0, -4.72938, 20.1156, 1.05584, 4.70614, 180, 0, 0, 4226, 1855, 0, 0),
(40109, 449, 0, 0, 5.16435, 20.8296, 1.05584, 4.68257, 180, 0, 0, 4226, 1855, 0, 0),
(40110, 449, 0, 0, -4.94919, -3.54698, 5.49836, 1.54019, 180, 0, 0, 4226, 1855, 0, 0),
(40111, 449, 0, 0, 4.72543, -3.87564, 5.48763, 1.55983, 180, 0, 0, 5226, 1855, 0, 0),
(40112, 449, 0, 0, 5.1008, 34.6709, 1.05583, 4.74069, 180, 0, 0, 6126, 1855, 0, 0),
(40113, 449, 0, 0, -5.90497, 34.3941, 1.05583, 4.74069, 180, 0, 0, 6226, 1855, 0, 0);

-- Horde templates
DELETE FROM `creature_template` WHERE `entry` BETWEEN 40200 AND 40213;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(40200, 0, 0, 12678, 0, 'Scout Bork', 'Scout', 0, 60, 60, 4226, 4226, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 909, 0, 0, ''),
(40201, 0, 0, 12675, 0, 'Grunt StoneHide', 'Grunt', 0, 60, 60, 4256, 4256, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 886, 0, 0, ''),
(40202, 0, 0, 4259, 0, 'Sergeant Gromek', 'Sergeant', 0, 60, 60, 4266, 4266, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40203, 0, 0, 14612, 0, 'Senior Sergeant ThunderHorn', 'Senior Sergeant', 0, 60, 60, 4286, 4286, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40204, 0, 0, 14414, 0, 'First Sergeant HeadSlammer', 'First Sergeant', 0, 60, 60, 4296, 4296, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40205, 0, 0, 12674, 0, 'Stone Guard Palanseer', 'Stone Guard', 0, 60, 60, 4316, 4316, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40206, 0, 0, 10186, 0, 'Blood Guard GrakTar', 'Blood Guard', 0, 60, 60, 4326, 4326, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40207, 0, 0, 12681, 0, 'Legionnaire Ba''Sha', 'Legionnaire', 0, 60, 60, 4346, 4346, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40208, 0, 0, 3546, 0, 'Centurion AshGrom', 'Centurion', 0, 60, 60, 4366, 4366, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40209, 0, 0, 4005, 0, 'Champion HeadSlammer', 'Champion', 0, 60, 60, 4396, 4396, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40210, 0, 0, 4009, 0, 'Lieutenant General Ishtyana', 'Lieutenant General', 0, 60, 60, 4406, 4406, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40211, 0, 0, 14494, 0, 'General WindSwifter', 'General', 0, 60, 60, 5226, 5226, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40212, 0, 0, 11803, 0, 'Warlord Ansekh', 'Warlord', 0, 60, 60, 6126, 6126, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, ''),
(40213, 0, 0, 14429, 0, 'High Warlord Runthakar', 'High Warlord', 0, 60, 60, 6226, 6226, 1855, 1855, 0, 29, 29, 4, 1.23, 1.14286, 0, 0, 0, 127, 0, 100, 1, 1280, 1408, 0, 0, 0, 0, 0, 0, 0, 67.584, 92.928, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, '');

-- Horde spawns
DELETE FROM `creature` WHERE `id` BETWEEN 40200 AND 40213;
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40200, 1, 0, 0, 1631.25, -4261.75, 48.768, 4.03661, 180, 0, 0, 4226, 1855, 0, 0),
(40201, 1, 0, 0, 1633.81, -4256.45, 51.8173, 4.13085, 180, 0, 0, 4256, 1855, 0, 0),
(40202, 1, 0, 0, 1636.02, -4252.19, 54.4,4.20153, 180, 0, 0, 4266, 1855, 0, 0),
(40203, 1, 0, 0, 1621.53, -4255.7, 47.5877, 3.93842, 180, 0, 0, 4286, 1855, 0, 0),
(40204, 1, 0, 0, 1626.48, -4251.15, 51.6717, 3.89129, 180, 0, 0, 4296, 1855, 0, 0),
(40205, 1, 0, 0, 1630.14, -4247.85, 54.4879, 3.88344, 180, 0, 0, 4316, 1855, 0, 0),
(40206, 450, 0, 0, 255.398, 101.493, 25.7207, 4.02753, 180, 0, 0, 4326, 1855, 0, 0),
(40207, 450, 0, 0, 256.806, 99.7791, 25.7211, 3.92645, 180, 0, 0, 4346, 1855, 0, 0),
(40208, 450, 0, 0, 244.626, 104.346, 25.7197, 4.7574, 180, 0, 0, 4366, 1855, 0, 0),
(40209, 450, 0, 0, 240.788, 103.884, 25.7204, 4.83987, 180, 0, 0, 4396, 1855, 0, 0),
(40210, 450, 0, 0, 259.393, 73.8444, 25.7211, 2.36744, 180, 0, 0, 4406, 1855, 0, 0),
(40211, 450, 0, 0, 256.626, 70.6785, 25.7205, 2.33602, 180, 0, 0, 5226, 1855, 0, 0),
(40212, 450, 0, 0, 262.651, 85.823, 25.7211, 3.10964, 180, 0, 0, 6126, 1855, 0, 0),
(40213, 450, 0, 0, 250.881, 88.2705, 24.7764, 3.5102, 180, 0, 0, 6226, 1855, 0, 0);