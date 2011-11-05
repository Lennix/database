/* Updatepack rev. 901 - 1000 */
/* NEXT GUID for GO = 632493  */
/* NEXT GUID for CREATURE = 2536470 */

/* rev 902 */
-- lower hp for npc Hazzali Parasite
UPDATE `creature_template` SET `minhealth`=2, `maxhealth`=2 WHERE `entry` IN (7769);

/* REV 905 by Mordenthral */
-- Blood of the Mountain, should only drop from Molten Destroyers and can be mined from Dark Iron deposits
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='7' WHERE `entry`='11659' AND `item`='11382';
DELETE FROM `creature_loot_template` WHERE `item`='11382' AND `entry`!='11659';

-- Fiery Core, up from 14% from Baron Geddon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='77' WHERE `entry`='12056' AND `item`='17010';

-- Lava Core, up from 14% from Garr and Golemagg
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='85' WHERE (`entry`='11988' OR `entry`='12057') AND `item`='17011';

-- Fine Moonstalker Pelt, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry`='2071' OR `entry`='2237') AND `item`='5386';

-- Grell Earring, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry`='2189' OR `entry`='2190') AND `item`='5336';

-- Ancient Moonstone Seal, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `entry`='2212' AND `item`='5338';

-- Moonstalker Fangs, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry`='2069' OR `entry`='2070' OR `entry`='2071' OR `entry`='2175' OR `entry`='2237') AND `item`='5413';

-- Thresher Eye, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry`='2185' OR `entry`='2187') AND `item`='5412';

-- Grizzled Scalp, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry`='2165' OR `entry`='6788') AND `item`='5414';

-- Crawler Leg, down from 80/100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry`='2231' OR `entry`='2232' OR `entry`='2233' OR `entry`='2234' OR `entry`='2235' OR `entry`='2236') AND `item`='5385';

-- Fine Crab Chunks, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry`='2233' OR `entry`='2235') AND `item`='12237';

-- Top of Gelkak's Key, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `entry`='2323' AND `item`='7498';

-- Middle of Gelkak's Key, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry`='2201' OR `entry`='2202' OR `entry`='2203' OR `entry`='2204' OR `entry`='2205' OR `entry`='2206' OR `entry`='2207' OR `entry`='2208' OR `entry`='10323') AND `item`='7499';

-- Bottom of Gelkak's Key, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry`='2233' OR `entry`='2236') AND `item`='7500';

-- Stone of Relu, down from 100% and removed from Chieftain Nek'rosh
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-2' WHERE (`entry`='1020' OR `entry`='1021' OR `entry`='1022' OR `entry`='1023') AND `item`='5233';
DELETE FROM `creature_loot_template` WHERE `item`='5233' AND `entry`='2091';

-- Flagongut's Fossil, removed the raptor drop, it is an object to pick up
DELETE FROM `creature_loot_template` WHERE `item`='5234' AND `entry`='1020';

-- Worn Parchment, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry`='2336' AND `item`='5348';

-- Glowing Soul Gem, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE (`entry`='3725' OR `entry`='3727' OR `entry`='3728' OR `entry`='3730' OR `entry`='3879') AND `item`='5366';

-- Highborne Relic, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry`='2176' OR `entry`='2177' OR `entry`='2178') AND `item`='5360';

-- Grizzled Bear Heart, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry`='1778' OR `entry`='1797' OR `entry`='12432') AND `item`='3253';

-- Skittering Blood, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry`='1780' OR `entry`='1781' OR `entry`='12433') AND `item`='3254';

-- Lake Skulker Moss, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry`='1953' OR `entry`='1954') AND `item`='3256';

-- Lake Creeper Moss, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry`='1955' OR `entry`='1956') AND `item`='3257';

-- Hardened Tumor, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry`='1767' OR `entry`='1768' OR `entry`='1908' OR `entry`='1909' OR `entry`='1957' OR `entry`='1958') AND `item`='3258';

-- Dalaran Pendant, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry`='1912' OR `entry`='1914' OR `entry`='1915') AND `item`='3354';

-- Pyrewood Shackle, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE ((`entry` BETWEEN '1891' AND '1896') OR (`entry` BETWEEN '3528' AND '3533')) AND `item`='3218';

-- Glutton Shackle, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry`='1779' AND `item`='3156';

-- Darksoul Shackle, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry`='1782' AND `item`='3157';

-- Rot Hide Ichor, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE ((`entry` BETWEEN '1939' AND '1940') OR (`entry` BETWEEN '1942' AND '1944')) AND `item`='3236';

/* REV 907 */
-- Correct respawn time for Onyxia
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` = '10184';

-- added missing spawn of gameobject entry Dire Pool TEMP and gameobject template, entry 300159 --
DELETE FROM `gameobject_template` WHERE `entry`=300159;
INSERT INTO `gameobject_template` (`entry`, `type`, `name`, `data0`, `data1`) VALUES
('300159', '8', 'TEMP Dire Pool', '1083', '10');

DELETE FROM `gameobject` WHERE `id`=300159 AND `guid`=632492;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(632492, 300159, 1, -4033.23, 1345.66, 160.607, 4.71892, 0, 0, 0.704792, -0.709413, 25, 100, 1);

-- spawn of Meshlok The Harverster (maraudon, entry 12237, rare mob) --
DELETE FROM `creature` WHERE `id`=12237 AND `guid`=2536468;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES
(2536468, 12237, 349, 808.558, -71.4256, -88.4438, 0.359277, 7200, 6181);

-- addded missing creature template entry NPC Highlord Mograine Transform, entry 16440 --
-- needed for spell 28688 --
DELETE FROM `creature_template` WHERE `entry`=16440;
INSERT INTO `creature_template` (`entry`, `modelid_1`, `name`, `subname`) VALUES
(16440, 16180, 'Highlord Mograine Transform', 'The Ashbringer');

/* REV by Yenza */
-- Fixes the quest for the hidden chamber in Uldaman
UPDATE `creature_loot_template` SET `condition_value1` = '2398' WHERE `condition_value1`='2240' AND `entry`='6910';

-- Vargus quests should be repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry` IN ('8548', '8572', '8574', '8573');

-- Quests should be for minLevel 21
UPDATE `quest_template` SET `MinLevel`='21' WHERE `entry`='909';

-- Mistress should have EventAI (needs to add Heal spell)
UPDATE `creature_template` SET `AIName`='EventAI', `spell1`='11639', `spell2`='13704', `spell3`='16568', `spell4`='15326' WHERE `entry`='15215';

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=15215);
INSERT INTO `creature_ai_scripts` VALUES
(4334158, 15215, 4, 0, 100, 3, 0, 0, 0, 0, 11, 15326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress - Cast Blackout (rank5) on aggro'),
(4334159, 15215, 0, 0, 100, 3, 5000, 10000, 18000, 19000, 11, 11639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress - Cast Shadow Word: Pain'),
(4334160, 15215, 0, 0, 100, 3, 8000, 15000, 10000, 15000, 11, 13704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress - Cast Psychic Scream'),
(4334161, 15215, 0, 0, 100, 3, 14000, 15000, 16000, 17000, 11, 16568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress - Cast Mind Flay'),
(4334162, 15215, 2, 0, 100, 3, 20, 0, 10000, 15000, 11, 27527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress - Cast Healing Touch on less than 20% hp');

-- Elite mobs in scholo should give rep up to Revered
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='5' WHERE `creature_id` IN ('10489', '10471', '10470', '10476', '10477', '11582', '10469', '10487', '10491', '10500', '11257');
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`='10472';
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(10472, 529, 0, 5, 0, 5, 0, 0, 0, 0);

-- Azuregos should have high res to frost
-- and immune to arcane
UPDATE `creature_template` SET `resistance4`='150' WHERE `entry`='6109';

-- Redoing Pusillin stats
UPDATE `creature_template` SET `maxhealth`='13362', `armor`='3326', `mindmg`='355', `maxdmg`='534' WHERE `entry`='14354';

-- Drop rate fixes for Shattered Necklace
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5.6357' WHERE (`item`='7666' AND `entry`='4844');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5.8738' WHERE (`item`='7666' AND `entry`='4845');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5.6687' WHERE (`item`='7666' AND `entry`='4846');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='6.8307' WHERE (`item`='7666' AND `entry`='4851');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8.3074' WHERE (`item`='7666' AND `entry`='4852');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5.6378' WHERE (`item`='7666' AND `entry`='4856');

-- Seal of the Earth : should have 40 as require level
UPDATE `quest_template` SET `MinLevel`='40' WHERE `entry`='779';

-- Show Your Work: should have 30 as require level
UPDATE `quest_template` SET `MinLevel`='30' WHERE `entry`='3643';

-- Gaining Acceptance: should have 48 as require level
UPDATE `quest_template` SET `MinLevel`='48' WHERE `entry`='7737';

-- rep for 2 quests should be 75 instead of 50
UPDATE `quest_template` SET `RewRepValue1`='75' WHERE `entry` IN ('8466', '8467');

-- New waypoints for Lucifron's adds by Freak
DELETE FROM `creature_movement` WHERE `id` IN ('56605', '56606', '56607');
INSERT INTO creature_movement (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(56605, 1, 1062.1, -990.096, -183.549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88971, 0, 0),
(56605, 2, 1090.43, -998.498, -188.006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.03579, 0, 0),
(56605, 3, 1111.17, -1014.48, -187.166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.48422, 0, 0),
(56605, 4, 1126.63, -1016.94, -186.463, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.04208, 0, 0),
(56605, 5, 1107.7, -1007.83, -187.451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7277, 0, 0),
(56605, 6, 1090.25, -996.642, -188.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55884, 0, 0),
(56605, 7, 1069.99, -995.772, -185.308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15574, 0, 0),
(56605, 8, 1052.06, -989.115, -182.134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74733, 0, 0),
(56605, 9, 1032.25, -981.284, -181.415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88871, 0, 0),
(56605, 10, 1016.21, -977.011, -181.251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87692, 0, 0),
(56605, 11, 1012.89, -963.558, -181.249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.80486, 0, 0),
(56605, 12, 1008.21, -955.494, -179.615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59811, 0, 0),
(56605, 13, 992.909, -953.961, -179.163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12433, 0, 0),
(56605, 14, 1009.65, -956.289, -179.787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.03343, 0, 0),
(56605, 15, 1014.22, -971.13, -181.493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.14829, 0, 0),
(56605, 16, 1021.06, -979.188, -181.45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82373, 0, 0),
(56606, 1, 1048.34, -982.727, -181.481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.03988, 0, 0),
(56606, 2, 1073.2, -987.903, -185.799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96998, 0, 0),
(56606, 3, 1099.31, -996.314, -187.614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.62833, 0, 0),
(56606, 4, 1115.44, -1011.07, -187.351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74143, 0, 0),
(56606, 5, 1125.53, -1012.46, -186.725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05951, 0, 0),
(56606, 6, 1110.15, -1003.79, -187.493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81346, 0, 0),
(56606, 7, 1098.99, -994.62, -187.447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.51894, 0, 0),
(56606, 8, 1082.47, -991.707, -187.651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.11034, 0, 0),
(56606, 9, 1059.42, -987.833, -183.121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72943, 0, 0),
(56606, 10, 1023.99, -974.939, -181.511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99725, 0, 0),
(56606, 11, 1016.18, -957.082, -180.183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8812, 0, 0),
(56606, 12, 992.271, -949.462, -178.689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01688, 0, 0),
(56606, 13, 1016.43, -957.082, -179.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.15769, 0, 0),
(56606, 14, 1017.34, -960.116, -180.587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07541, 0, 0),
(56606, 15, 1019.38, -973.616, -181.394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78227, 0, 0),
(56607, 1, 1034.29, -989.127, -181.726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05879, 0, 0),
(56607, 2, 1073.45, -997.768, -186.008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19395, 0, 0),
(56607, 3, 1092.75, -1003.7, -187.771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.61826, 0, 0),
(56607, 4, 1112.63, -1020.22, -186.795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96383, 0, 0),
(56607, 5, 1124.1, -1021.06, -186.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.12248, 0, 0),
(56607, 6, 1105.6, -1013.2, -187.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.69186, 0, 0),
(56607, 7, 1085.03, -1000.8, -187.428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.92434, 0, 0),
(56607, 8, 1066.64, -999.963, -184.731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1364, 0, 0),
(56607, 9, 1053.25, -994.524, -182.707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80653, 0, 0),
(56607, 10, 1023.83, -982.695, -181.389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.82302, 0, 0),
(56607, 11, 1009.31, -974.582, -181.259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84206, 0, 0),
(56607, 12, 1005.4, -960.318, -180.669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5662, 0, 0),
(56607, 13, 990.243, -957.514, -179.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.09477, 0, 0),
(56607, 14, 1004.46, -961.222, -180.869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.06043, 0, 0),
(56607, 15, 1008.74, -975.558, -181.216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.11324, 0, 0),
(56607, 16, 1018.68, -982.975, -181.405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.70229, 0, 0);

/* Same quest ZoneOrSort (361 = Felwood), MinLevel and QuestLevel for quests: Corrupted Songflower, Corrupted Night Dragon, Corrupted Windblossom, Corrupted Whipper Root */
UPDATE `quest_template` SET `ZoneOrSort`=361, `MinLevel`=48, `QuestLevel`=55 WHERE `title` LIKE 'Corrupted Songflower' OR `title` LIKE 'Corrupted Night Dragon' OR `title` LIKE 'Corrupted Windblossom' OR `title` LIKE 'Corrupted Whipper Root';

/* Felwood corrupted plants need SD0 script have assigned */
UPDATE `gameobject_template` SET `ScriptName`='go_felwood_corrupted_flowers' WHERE `name` LIKE 'Corrupted Songflower' OR `name` LIKE 'Corrupted Night Dragon' OR `name` LIKE 'Corrupted Windblossom' OR `name` LIKE 'Corrupted Whipper Root';

/* Felwood cleansed plants need SD0 script have assigned aswell like corrupted plants */
/* .. and as bonus, bigger scale for Felwood cleansed plants than corrupted plants (for better right click) */
UPDATE `gameobject_template` SET `size`=2.2, `ScriptName`='go_cleansed_felwood_flowers' WHERE `name` LIKE 'Cleansed Songflower' OR `name` LIKE 'Cleansed Night Dragon' OR `name` LIKE 'Cleansed Windblossom' OR `name` LIKE 'Cleansed Whipper Root';

/* TBC gameobject "Corrupted Flower" delete */
DELETE FROM `gameobject_template` WHERE `entry`=182127;

/* Some drop drate fixes by Mordenthral */
-- Red Silk Bandana, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '594' AND '4418') AND `item`='915';

-- Iron Rivet, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '426' AND '580') AND `item`='1013';

-- Shadowhide Pendant, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '429' AND '947') AND `item`='1075';

-- Ghoul Fang, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3' AND '1270') AND `item`='1129';

-- Vial of Spider Venom, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '217' AND '949') AND `item`='1130';

-- Underbelly Whelp Scale, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '441' AND '442') AND `item`='1221';

-- Midnight Orb, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '436' AND '437') AND `item`='1261';

-- Bloodscalp Ear, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '587' AND '702') AND `item`='1519';

-- Skullsplitter Tusk, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '667' AND '1062') AND `item`='1524';

-- Shrunken Head, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '671' AND '672') AND `item`='1532';

-- Miners' Union Card, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '623' AND '625') AND `item`='1894';

-- Skeleton Finger, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '48' AND '1110') AND `item`='2378';

-- Skullsplitter Fetish, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '670' AND '780') AND `item`='2466';

-- Chilled Basilisk Haunch, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE (`entry` BETWEEN '690' AND '691') AND `item`='2476';

-- Crude Flint, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '1009' AND '1014') AND `item`='2611';

-- Lightforge Ingot, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '1418' AND '1419') AND `item`='2702';

-- A Sycamore Branch, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '5881' AND '5882') AND `item`='742';

-- Iron Rivet, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '1' AND '15000') AND `item`='1013';

-- Underbelly Whelp Scale, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '14272' AND '14273') AND `item`='1221';

-- Dirty Knucklebones, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '2252' AND '2416') AND `item`='2843';

-- Iron Pike, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '426' AND '14271') AND `item`='2856';

-- Red Wool Bandana, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '1706' AND '1720') AND `item`='2909';

-- Candle of Beckoning shouldn't drop from Silverback Patriarch
DELETE FROM `creature_loot_template` WHERE `entry`='1558' AND `item`='3080';

-- Scarlet Armband, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '1506' AND '1667') AND `item`='3266';

-- Dragonmaw War Banner, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '1034' AND '2091') AND `item`='3337';

-- Nek'rosh should not drop the Dwarven Tinder
DELETE FROM `creature_loot_template` WHERE `entry`='2091' AND `item`='3339';

-- Sida's Bag, down from 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '1031' AND '1033') AND `item`='3349';

-- Young Crocolisk Skin, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '1417' AND '1418') AND `item`='3397';

-- Gray Bear Tongue, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '2351' AND '14280') AND `item`='3476';

-- Creeper Ichor, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '2348' AND '14279') AND `item`='3477';

-- Mountain Lion Blood, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '2384' AND '2407') AND `item`='3496';

-- Alterac Signet Ring, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '2242' AND '14221') AND `item`='3505';

-- Daggerspine Scale, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '2368' AND '14277') AND `item`='3509';

-- Torn Fin Eye, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2374' AND '14276') AND `item`='3510';

-- Recovered Tome, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '2252' AND '2416') AND `item`='3658';

-- Hillsbrad Human Skull, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '232' AND '7075') AND `item`='3692';

-- Humbert's Sword, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE (`entry` BETWEEN '2344' AND '14275') AND `item`='3693';

-- Worn Stone Token, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '2271' AND '2628') AND `item`='3714';

-- Bracers of Earth Binding, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '2359' AND '2360') AND `item`='3715';

-- Murloc Head, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2374' AND '14276') AND `item`='3716';

-- Yeti Fur, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '2248' AND '4504') AND `item`='3720';

-- Shadowmaw Claw, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '684' AND '1713') AND `item`='3838';

-- Pristine Tigress Fang, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '772' AND '773') AND `item`='3839';

-- Aged Gorilla Sinew, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE (`entry` BETWEEN '1557' AND '1558') AND `item`='3862';

-- Jungle Stalker Feather, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '687' AND '688') AND `item`='3863';

-- Bloodscalp Tusk, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '587' AND '702') AND `item`='3901';

-- Snuff, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '1561' AND '4506') AND `item`='3910';

-- Pulsing Blue Shard, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '1551' AND '1552') AND `item`='3911';

-- Bloody Bone Necklace, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '587' AND '702') AND `item`='3915';

-- Split Bone Necklace, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '667' AND '1059') AND `item`='3916';

-- Singing Blue Crystal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '674' AND '14492') AND `item`='3917';

-- Singing Crystal Shard, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '688' AND '1551') AND `item`='3918';

-- Mistvale Giblets, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '1557' AND '1558') AND `item`='3919';

-- Water Elemental Bracers, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '691' AND '692') AND `item`='3923';

-- Akiris Reed, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '1907' AND '1908') AND `item`='4029';

-- Large River Crocolisk Skin, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '1150' AND '1151') AND `item`='4053';

-- Snapjaw Crocolisk Skin, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '1152' AND '1153') AND `item`='4104';

-- Elder Crocolisk Skin, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '2635' AND '2636') AND `item`='4105';

-- Tumbled Crystal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '1096' AND '1097') AND `item`='4106';

-- Mote of Myzrael, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '2572' AND '2574') AND `item`='4435';

-- Sigil of Strom, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE (`entry` BETWEEN '2588' AND '2591') AND `item`='4440';

-- Sigil Fragment, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '2583' AND '2585') AND `item`='4450';

-- Bloodstone Amulet, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2586' AND '2589') AND `item`='4495';

-- Witherbark Tusk, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '2552' AND '2605') AND `item`='4503';

-- Stromgarde Badge, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2588' AND '2591') AND `item`='4506';

-- Highland Raptor Eye, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2559' AND '2560') AND `item`='4512';

-- Raptor Heart, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '2561' AND '2562') AND `item`='4513';

-- Witherbark Medicine Pouch, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '2555' AND '2556') AND `item`='4522';

-- Azure Agate, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '2570' AND '2571') AND `item`='4527';

-- Small Stone Shard, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '2735' AND '2736') AND `item`='4626';

-- Large Stone Slab, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '92' AND '93') AND `item`='4627';

-- Bracers of Rock Binding, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2736' AND '2737') AND `item`='4628';

-- Scrap Metal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2701' AND '2907') AND `item`='4630';

-- Plainstrider Meat, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '2955' AND '2956') AND `item`='4739';

-- Plainstrider Feather, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '2955' AND '2956') AND `item`='4740';

-- Azure Feather, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '2964' AND '2965') AND `item`='4752';

-- Bronze Feather, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '2964' AND '2965') AND `item`='4753';

-- Plainstrider Talon, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2955' AND '3246') AND `item`='4759';

-- Trophy Swoop Quill, varied
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-83' WHERE (`entry` BETWEEN '2969' AND '2971') AND `item`='4769';

-- Bristleback Belt, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '2952' AND '2953') AND `item`='4770';

-- Prairie Wolf Heart, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '2958' AND '2960') AND `item`='4804';

-- Flatland Cougar Femur, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '3035' AND '3036') AND `item`='4805';

-- Plainstrider Scale, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2955' AND '3246') AND `item`='4806';

-- Swoop Gizzard, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2969' AND '2971') AND `item`='4807';

-- Amethyst Runestone does not drop from creatures
DELETE FROM `creature_loot_template` WHERE `entry` IN ('2725','2726') AND `item`='4843';

-- Opal Runstone does not drop from creatures
DELETE FROM `creature_loot_template` WHERE `entry`='2725' AND `item`='4844';

-- Diamond Runestone does not drop from creatures
DELETE FROM `creature_loot_template` WHERE `entry`='2725' AND `item`='4845';

-- Battleboar Snout, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '2954' AND '2966') AND `item`='4848';

-- Battleboar Flank, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '2954' AND '2966') AND `item`='4849';

-- Scorpid Worker Tail, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-75' WHERE (`entry` BETWEEN '3124' AND '3281') AND `item`='4862';

-- Fire Tar, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3267' AND '3271') AND `item`='5026';

-- Silithid Egg is from Mound, not from creatures
DELETE FROM `creature_loot_template` WHERE `entry` IN ('3250','3251','3252','3503') AND `item`='5058';

-- Theramore Medal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3385' AND '3455') AND `item`='5078';

-- Webwood Venom Sac, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '1986' AND '1987') AND `item`='5166';

-- Lorgalis Manuscript is in a chest, not from a creature
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4805' AND '4824') AND `item`='5359';

-- Stonetalon Sap, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '4020' AND '4021') AND `item`='5582';

-- Fey Dragon Scale, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '4016' AND '4066') AND `item`='5583';

-- Twilight Whisker, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '4067' AND '4068') AND `item`='5584';

-- Vial of Innocent Blood, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2244' AND '2245') AND `item`='5620';

-- Smoldering Embers, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '4036' AND '4038') AND `item`='5659';

-- Corroded Shrapnel, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '4028' AND '4030') AND `item`='5664';

-- Dust Devil Debris, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '832' AND '833') AND `item`='5669';

-- Crystalized Scales, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '4041' AND '4147') AND `item`='5675';

-- Super Reaper 6000 Blueprints, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3988' AND '3989') AND `item`='5734';

-- Salty Scorpid Venom, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4139' AND '5937') AND `item`='5794';

-- Hardened Tortoise Shell, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4142' AND '4144') AND `item`='5795';

-- Encrusted Tail Fin, 80/100, shouldn't drop off of Murkgills
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-90' WHERE (`entry` BETWEEN '871' AND '879') AND `item`='5796';
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4457' AND '4461') AND `item`='5796';

-- Speck of Dream Dust, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '740' AND '746') AND `item`='5803';

-- Heart of Zeal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '4280' AND '4540') AND `item`='5805';

-- Intact Silithid Carapace, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '4130' AND '4133') AND `item`='5853';

-- Silithid Talon, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '4130' AND '4133') AND

`item`='5854';

-- Silithid Heart, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4130' AND '4133') AND

`item`='5855';

-- Etched Phial, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '4054' AND '4055') AND

`item`='5867';

-- Cloven Hoof doesn't drop from creatures, it's in a brazier
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4095' AND '7404') AND `item`='5869';

-- Blueleaf Tuber doesn't drop from creatures
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4436' AND '6035') AND `item`='5876';

-- Twilight Pendant, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry` BETWEEN '4809' AND '4814') AND `item`='5879';

-- Corrupted Brain Stem, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4788' AND '4831') AND `item`='5952';

-- Shadow Panther Heart, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '768' AND '769') AND `item`='6080';

-- Mire Lord Fungus, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '1081' AND '1082') AND `item`='6081';

-- Deepstrider Tumor does not drop from Dreaming Whelps
DELETE FROM `creature_loot_template` WHERE `entry`='741' AND `item`='6082';

-- Broken Tears do not drop from creatures
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4649' AND '4661') AND `item`='6083';

-- Sawtooth Snapper Claw, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '1087' AND '1088') AND `item`='6168';

-- Unprepared Sawtooth Flank, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '1082' AND '1087') AND `item`='6169';

-- Fetish of Hakkar, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '5243' AND '8580') AND `item`='6181';

-- Monstrous Crawler Leg, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '1088' AND '1089') AND `item`='6184';

-- Roc Gizzard, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '5428' AND '5430') AND `item`='6257';

-- Ironfur Liver, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '5268' AND '5274') AND `item`='6258';

-- Groddoc Liver, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '5260' AND '5262') AND `item`='6259';

-- Rattlecage Skull, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '1890' AND '1891') AND `item`='6281';

-- Deviate Hide, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3630' AND '8886') AND `item`='6443';

-- Singed Scale, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '3130' AND '3131') AND `item`='6486';

-- Vile Familiar Head
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '3101' AND '3102') AND `item`='6487';

-- Ritual Salve, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '2953' AND '2954') AND `item`='6634';

-- Felstalker Hoof, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3102' AND '3103') AND `item`='6640';

-- Reagent Pouch, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3199' AND '3200') AND `item`='6652';

-- Scorched Spider Fang, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '1111' AND '4040') AND `item`='6838';

-- Charred Horn, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '4031' AND '4032') AND `item`='6839';

-- Galvanized Horn, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry` BETWEEN '6167' AND '6168') AND `item`='6840';

-- Burning Blood, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '205' AND '920') AND `item`='6844';

-- Burning Rock, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry` BETWEEN '6170' AND '6171') AND `item`='6845';

-- Defias Script, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '474' AND '475') AND `item`='6846';

-- Dark Iron Script, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '6123' AND '6124') AND `item`='6847';

-- Heartswood is not dropped by a creature
DELETE FROM `creature_loot_template` WHERE `entry`='3730' AND `item`='6912';

-- Vial of Hatefury Blood, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4670' AND '14225') AND `item`='6989';

-- Smoldering Coal, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '2760' AND '2761') AND `item`='6991';

-- Corrupted Kor Gem, 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-49' WHERE (`entry` BETWEEN '4802' AND '4805') AND `item`='6995';

-- Smoky Iron Ingot, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry` BETWEEN '3998' AND '4004') AND `item`='7126';

-- Powdered Azurite, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '2269' AND '2270') AND `item`='7127';

-- Uncloven Satyr Hoof, 80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '3752' AND '3771') AND `item`='7128';

-- Captain Sander's Treasure Map, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1.5' WHERE `entry` IN ('126','127','171','391','456','458','513','515','517','519','520') AND `item`='1357';

-- Gnoll Paw, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry` IN ('98','117','123','124','125','452','453','500','501','506','1065','1426') AND `item`='725';

-- Red Leather Bandana, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `entry` IN ('95','504') AND `item`='829';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `entry` IN ('481','502') AND `item`='829';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-7' WHERE `entry` IN ('590','589') AND `item`='829';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-3' WHERE `entry` IN ('121','122','449','450','6180') AND `item`='829';

-- Buzzard Gizzard, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '2829' AND '2831') AND `item`='7847';

-- Rock Elemental Shard, down from 80/100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '92' AND '8278') AND `item`='7848';

-- Crag Coyote Fang, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '2727' AND '2730') AND `item`='7846';

-- Crocolisk Skin, down from 80% and removed from non-Loch crocs
DELETE FROM `creature_loot_template` WHERE (`entry` IN ('1151','1400','1417','2089','2635','3110','3231','5053')) AND `item`='2925';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '1693' AND '2476') AND `item`='2925';

-- Carved Stone Idol, down from 80%, up for Berserkers
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '1165' AND '1167') AND `item`='2636';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-90' WHERE `entry`='1393' AND `item`='2636';

-- Tunnel Rat Ear, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '1172' AND '1202') AND `item`='3110';

-- Trogg Stone Tooth, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-32' WHERE (`entry` BETWEEN '1161' AND '1393') AND `item`='2536';

-- Unrefined Ore Sample, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry` IN ('4113','4116','14427') AND `item`='5842';

-- Altered Snapjaw Shell, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE `entry`='3461' AND `item`='5098';

-- Centaur Bracers, down from 80/100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `entry` IN ('3272','3273','3274','3275','3394','3395','3396','3397','5837','5838','5841','9456','9523','9524') AND `item`='5030';

-- Savannah Lion Tusk, down from 55%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `entry` IN ('3241','3243','3415','3416','3425','5828','5865') AND `item`='4893';

-- Plainstrider Kidney, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '3244' AND '3246') AND `item`='4894';

-- Thunder Lizard Horn, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE ((`entry` BETWEEN '3238' AND '3240') OR `entry`='3473') AND `item`='4895';

-- Lightning Gland, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE `entry`='3238' AND `item`='4898';

-- Thunderhawk Saliva Gland, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `entry`='3249' AND `item`='4897';

-- Kodo Liver, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE ((`entry` BETWEEN '3234' AND '3237') OR (`entry` IN ('3474','5827'))) AND `item`='4896';

-- Bristleback Quilboar Tusk, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-65' WHERE (`entry` BETWEEN '3258' AND '3263') AND `item`='5085';

-- Thunderhawk Wings, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3247' AND '3424') AND `item`='5164';

-- Thunder Lizard Blood, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE (`entry` BETWEEN '3238' AND '3240') AND `item`='5143';

-- Harpy Lieutenant Ring, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `entry`='3278' AND `item`='5065';

-- Witchwing Talon, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE ((`entry` BETWEEN '3276' AND '3280') OR `entry`='3452') AND `item`='5064';

-- Cats Eye Emerald, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE `entry` IN ('3283','3286','9336') AND `item`='5097';

-- Plainstrider Beak, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '3244' AND '3246') AND `item`='5087';

-- Prowler Claws, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-65' WHERE `entry`='3425' AND `item`='5096';

-- Intact Raptor Horn, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry` IN ('3256','3257','5842') AND `item`='5055';

-- Nitroglycerin, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3376' AND '6668') AND `item`='5017';

-- Wood Pulp, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3376' AND '6668') AND `item`='5018';

-- Sodium Nitrate, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3376' AND '6668') AND `item`='5019';

-- Sunscale Feather, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '3254' AND '3256') AND `item`='5165';

-- Zhevra Hooves, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '3242' AND '5831') AND `item`='5086';

-- Intact Elemental Bracer, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '3917' AND '12759') AND `item`='12220';

-- Pridewing Venom Sac, down from 80/100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`entry` BETWEEN '4011' AND '6141') AND `item`='5808';

-- Satyr Horns, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry` BETWEEN '3752' AND '10647') AND `item`='5481';

-- Undamaged Hippogryph Feather, non-quest item, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='45' WHERE (`entry` BETWEEN '6375' AND '6648') AND `item`='10450';

-- Some Rune, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE (`entry` BETWEEN '6195' AND '7886') AND `item`='13815';

-- Centaur Ear, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE (`entry` BETWEEN '4632' AND '12977') AND `item`='6067';

-- Rackmore's Golden Key, down from 55%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '4711' AND '4719') AND `item`='15881';

-- Soft-shelled Clam Meat, was 100% drop from some creatures, but is contained in Soft-shelled Clams on the sea floor.
DELETE FROM `creature_loot_template` WHERE (`entry` BETWEEN '4686' AND '12347') AND `item`='15924';

-- Crude Charm, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-13' WHERE (`entry` BETWEEN '4632' AND '12977') AND `item`='6079';

-- Hatefury Claw, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '4670' AND '14225') AND `item`='6246';

-- Hatefury Horn, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry` BETWEEN '4670' AND '14225') AND `item`='6247';

-- Scorpashi Venom, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '4696' AND '4699') AND `item`='6248';

-- Aged Kodo Hide, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-70' WHERE (`entry` BETWEEN '4700' AND '4701') AND `item`='6249';

-- Felhound Brain, up from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-90' WHERE (`entry` BETWEEN '4678' AND '4685') AND `item`='6250';

-- Doomwarder Blood, up from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry` BETWEEN '4680' AND '14226') AND `item`='6252';

-- Oracle Crystal, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry` BETWEEN '4718' AND '4719') AND `item`='6442';

-- Karnitol's Satchel, down from 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '4716' AND '4719') AND `item`='6245';

-- Pristine Crawler Leg, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-60' WHERE (`entry` BETWEEN '922' AND '1088') AND `item`='5938';

-- Highperch Venom Sac, down from 80%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry` BETWEEN '4107' AND '5934') AND `item`='5809';

-- Unpopped Darkmist Eye, down/up from various percentages
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-66' WHERE (`entry` BETWEEN '4376' AND '4380') AND `item`='5884';

-- Forked Mudrock Tongue, up from 25%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE (`entry` BETWEEN '4396' AND '4400') AND `item`='5883';

-- Acidic Venom Sac, up/down from various
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE (`entry` BETWEEN '4376' AND '4415') AND `item`='5959';

/* Proper targets for Empty Ooze Jars */
DELETE FROM `item_required_target` WHERE `entry` IN (11948, 11914);
INSERT INTO `item_required_target` (`entry`, `type`, `targetEntry`) VALUES
('11948', '2', '7092'),
('11914', '2', '7086');

-- Noxxion's attack should be now nature
UPDATE `creature_template` SET `dmgschool` = '3' WHERE `entry` = '13282';

-- Molten Core general stats reworked by Gandam
-- All T1 Bosses
UPDATE `creature_template` SET `dmg_multiplier`='1.25',`resistance2`='186',`resistance5`='93' WHERE `entry` = 12118;
UPDATE `creature_template` SET `minhealth`='820000',`maxhealth`='820000',`dmg_multiplier`='1.25',`resistance2`='186' WHERE `entry` = 11982;
UPDATE `creature_template` SET `minhealth`='350000',`maxhealth`='350000',`dmg_multiplier`='1.25',`resistance2`='186' WHERE `entry` = 12259;
UPDATE `creature_template` SET `minhealth`='660000',`maxhealth`='660000',`dmg_multiplier`='1.25',`resistance2`='186' WHERE `entry` = 12057;
UPDATE `creature_template` SET `minhealth`='580000',`maxhealth`='660000',`resistance1`='0' WHERE `entry` = 12056;
UPDATE `creature_template` SET `dmg_multiplier`='1.25',`resistance2`='186',`resistance6`='186' WHERE `entry` = 12264;
UPDATE `creature_template` SET `minhealth`='440000',`maxhealth`='440000',`dmg_multiplier`='1.25',`resistance2`='186' WHERE `entry` = 12098;
UPDATE `creature_template` SET `minhealth`='820000',`maxhealth`='820000',`dmg_multiplier`='1.25' WHERE `entry` = 11988;

-- All T1 Bossadds
UPDATE `creature_template` SET `minhealth`='90650',`maxhealth`='90650',`mindmg`='504',`maxdmg`='624',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 12030;
UPDATE `creature_template` SET `minhealth`='77700',`maxhealth`='77700',`mindmg`='718',`maxdmg`='799',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11661;
UPDATE `creature_template` SET `minhealth`='68000',`maxhealth`='68000',`mindmg`='504',`maxdmg`='624',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11662;
UPDATE `creature_template` SET `minhealth`='61000',`maxhealth`='61000',`mindmg`='691',`maxdmg`='852',`dmg_multiplier`='1',`resistance2`='171',`resistance3`='93' WHERE `entry` = 12099;
UPDATE `creature_template` SET `minhealth`='81000',`maxhealth`='81000',`mindmg`='1210',`maxdmg`='1377',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11672;

-- All Trashmobs
UPDATE `creature_template` SET `minhealth`='126480',`maxhealth`='129480',`mindmg`='1664',`maxdmg`='1848',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11658;
UPDATE `creature_template` SET `minlevel`='63',`maxlevel`='63',`minhealth`='149895',`maxhealth`='149895',`mindmg`='1704',`maxdmg`='1876',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11659;
UPDATE `creature_template` SET `minhealth`='97110',`maxhealth`='97110',`mindmg`='1639',`maxdmg`='1844',`dmg_multiplier`='1' WHERE `entry` = 11668;
UPDATE `creature_template` SET `minlevel`='58',`maxlevel`='60',`minhealth`='14980',`maxhealth`='15260',`resistance3`='0',`resistance4`='-93',`resistance5`='0',`resistance6`='0' WHERE `entry` = 12265;
UPDATE `creature_template` SET `minhealth`='94320',`maxhealth`='97110',`mindmg`='598',`maxdmg`='864',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 12101;
UPDATE `creature_template` SET `minhealth`='94320',`maxhealth`='97110',`mindmg`='1623',`maxdmg`='1795',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11665;
UPDATE `creature_template` SET `minhealth`='78600',`maxhealth`='80925',`mindmg`='1523',`maxdmg`='1695',`dmg_multiplier`='1',`resistance2`='171',`resistance3`='93' WHERE `entry` = 12076;
UPDATE `creature_template` SET `minhealth`='78600',`maxhealth`='80925',`mindmg`='1623',`maxdmg`='1802',`dmg_multiplier`='1' WHERE `entry` = 11666;
UPDATE `creature_template` SET `minhealth`='78600',`maxhealth`='80925',`mindmg`='1639',`maxdmg`='1844',`dmg_multiplier`='1' WHERE `entry` = 11667;
UPDATE `creature_template` SET `minhealth`='80925',`maxhealth`='83275',`mindmg`='1433',`maxdmg`='1545',`dmg_multiplier`='1',`resistance2`='171',`resistance3`='93' WHERE `entry` = 12100;
UPDATE `creature_template` SET `minhealth`='110715',`maxhealth`='113295',`mindmg`='763',`maxdmg`='942',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11673;
UPDATE `creature_template` SET `minhealth`='45000',`maxhealth`='45000',`mindmg`='728',`maxdmg`='881',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11671;
UPDATE `creature_template` SET `minlevel`='59',`maxlevel`='62',`minhealth`='9710',`maxhealth`='11000',`mindmg`='363',`maxdmg`='447',`dmg_multiplier`='1',`resistance2`='171' WHERE `entry` = 11669;

-- Jed Runewatcher
DELETE FROM `creature` WHERE `id`=10509;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2536469, 10509, 229, 0, 0, 151.519, -253.552, 110.837, 4.72692, 25, 5, 0, 8885, 0, 0, 2);

DELETE FROM `creature_movement_template` WHERE `entry`=10509;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(10509, 1, 150.828, -272.484, 110.944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56962, 0, 0),
(10509, 2, 151.515, -297.591, 110.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72299, 0, 0),
(10509, 3, 151.723, -317.225, 110.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72299, 0, 0),
(10509, 4, 151.986, -342.022, 110.956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72299, 0, 0),
(10509, 5, 152.349, -319.676, 110.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63795, 0, 0),
(10509, 6, 153.237, -297.336, 110.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58925, 0, 0),
(10509, 7, 152.753, -271.126, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58925, 0, 0);

-- DM books MinLevel
UPDATE `quest_template` SET `MinLevel` = '54' WHERE `entry` IN (7498, 7499, 7500, 7501, 7502, 7503, 7504, 7505, 7506);

-- Golemagg's Magma splash proc data
DELETE FROM `spell_proc_event` WHERE `entry`=13879;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(13879, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000028, 0x00000000, 0.000000, 0.000000, 0);

-- BWL Devices fixed by Zataron
DELETE FROM `creature_template` WHERE `entry` = 800007;
INSERT INTO `creature_template` (entry,modelid_1,name,minlevel,maxlevel,minhealth,maxhealth,faction_A,faction_H,baseattacktime,rangeattacktime,InhabitType,ScriptName) VALUES
(800007,870,'Suppression Trigger',62,62,500000,500000,14,14,1000,1000,3,'mob_suppression_trigger');
DELETE FROM `creature` WHERE `id` = 800007;
INSERT INTO `creature` (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(84420,800007,469,870,0,-7650.899, -975.791, 440.263,0,25,0,0,500000,0,0,0),
(84421,800007,469,870,0,-7572.59, -1062.57, 449.164,0,25,0,0,500000,0,0,0),
(84422,800007,469,870,0,-7593.78, -1063.45, 449.164,0,25,0,0,500000,0,0,0),
(84423,800007,469,870,0,-7595.27, -1030.42, 449.164,0,25,0,0,500000,0,0,0),
(84424,800007,469,870,0,-7595.77, -1080, 449.164,0,25,0,0,500000,0,0,0),
(84425,800007,469,870,0,-7605.95, -1045.06, 449.164,0,25,0,0,500000,0,0,0),
(84426,800007,469,870,0,-7609.89, -1061.46, 449.164,0,25,0,0,500000,0,0,0),
(84427,800007,469,870,0,-7616.21, -997.084, 440.282,0,25,0,0,500000,0,0,0),
(84428,800007,469,870,0,-7619.15, -1047.15, 449.164,0,25,0,0,500000,0,0,0),
(84429,800007,469,870,0,-7620.09, -1075.73, 449.164,0,25,0,0,500000,0,0,0),
(84430,800007,469,870,0,-7626.95, -981.359, 440.023,0,25,0,0,500000,0,0,0),
(84431,800007,469,870,0,-7627.98, -1095.31, 449.164,0,25,0,0,500000,0,0,0),
(84432,800007,469,870,0,-7629.78, -1061.48, 449.164,0,25,0,0,500000,0,0,0),
(84433,800007,469,870,0,-7630.29, -1005.49, 440.262,0,25,0,0,500000,0,0,0),
(84434,800007,469,870,0,-7637.64, -965.023, 440.275,0,25,0,0,500000,0,0,0),
(84435,800007,469,870,0,-7637.93, -1081.13, 449.164,0,25,0,0,500000,0,0,0),
(84436,800007,469,870,0,-7640.29, -991.302, 440.263,0,25,0,0,500000,0,0,0),
(84437,800007,469,870,0,-7642.73, -1015.65, 440.245,0,25,0,0,500000,0,0,0),
(84438,800007,469,870,0,-7647.78, -1066.97, 449.164,0,25,0,0,500000,0,0,0),
(84439,800007,469,870,0,-7651.32, -1103.53, 449.164,0,25,0,0,500000,0,0,0),
(84440,800007,469,870,0,-7716.1, -1077.45, 445.176,0,25,0,0,500000,0,0,0),
(84441,800007,469,870,0,-7653.69, -999.919, 439.986,0,25,0,0,500000,0,0,0),
(84442,800007,469,870,0,-7656.67, -1024.32, 440.257,0,25,0,0,500000,0,0,0),
(84443,800007,469,870,0,-7663.99, -1084.89, 449.164,0,25,0,0,500000,0,0,0),
(84444,800007,469,870,0,-7664.82, -984.057, 440.247,0,25,0,0,500000,0,0,0),
(84445,800007,469,870,0,-7665.26, -1113.61, 449.164,0,25,0,0,500000,0,0,0),
(84446,800007,469,870,0,-7667.54, -1008.34, 440.259,0,25,0,0,500000,0,0,0),
(84447,800007,469,870,0,-7669.46, -1034.21, 440.244,0,25,0,0,500000,0,0,0),
(84448,800007,469,870,0,-7677.63, -994.426, 440.259,0,25,0,0,500000,0,0,0),
(84449,800007,469,870,0,-7677.68, -1095.24, 449.135,0,25,0,0,500000,0,0,0),
(84450,800007,469,870,0,-7680.11, -1123.29, 449.105,0,25,0,0,500000,0,0,0),
(84451,800007,469,870,0,-7680.51, -1018.7, 439.983,0,25,0,0,500000,0,0,0),
(84452,800007,469,870,0,-7686.85, -1047.04, 440.371,0,25,0,0,500000,0,0,0),
(84453,800007,469,870,0,-7691.26, -1002.38, 440.244,0,25,0,0,500000,0,0,0),
(84454,800007,469,870,0,-7691.97, -1105.4, 449.13,0,25,0,0,500000,0,0,0),
(84455,800007,469,870,0,-7699.2, -1030.98, 440.588,0,25,0,0,500000,0,0,0),
(84456,800007,469,870,0,-7709.17, -1017, 440.446,0,25,0,0,500000,0,0,0),
(84457,800007,469,870,0,-7713.14, -1060.04, 445.176,0,25,0,0,500000,0,0,0);

UPDATE gameobject_template SET flags = 16 WHERE entry = 179784;
UPDATE gameobject_template SET faction = 103 WHERE entry = 179784;
UPDATE gameobject_template SET data0 = 12 WHERE entry = 179784;
UPDATE gameobject_template SET data1 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data2 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data3 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data4 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data5 = 45 WHERE entry = 179784;
UPDATE gameobject_template SET data6 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data7 = 1 WHERE entry = 179784;
UPDATE gameobject_template SET data8 = 0 WHERE entry = 179784;
UPDATE gameobject_template SET data9 = 0 WHERE entry = 179784;

-- Blade Flurry has correct dbc data -> should work without this entry
DELETE FROM `spell_proc_event` WHERE `entry`=13877;

-- faction for Great Ossuary event mobs
UPDATE `creature_template` SET `faction_A` = '233', `faction_H` = '233' WHERE `entry` IN (14518, 14514, 14520, 14513, 14519, 14512, 14521, 14511);

/* Q: Gordunni Cobalt*/
-- proper targeting
DELETE FROM `spell_script_target` WHERE `entry`=11757;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (11757, 0, 144050);
-- charges to infinity and cooldown to 5min
UPDATE `gameobject_template` SET `data4` = '0', `data5` = '300' WHERE `entry` =144050;
-- these should not by spawned, handled by 11756, 19394
DELETE FROM `gameobject` WHERE `id` IN (144064, 177683, 177681);

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 901_1000 (10)';