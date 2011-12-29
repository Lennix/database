/* Updatepack rev. 401 - 500 */
/* REV 405 - Quest "In Dreams!" */
UPDATE `creature_template` SET `minhealth`='25150', `maxhealth`='25150' WHERE `entry`=1855;
UPDATE `creature_template` SET `modelid_1`='10512', `faction_A`='67', `faction_H`='67' WHERE `entry`=12128;
DELETE FROM `spell_script_target` WHERE `entry`=18969;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (18969, 1, 1842);

/* REV 408 */
/* Abbysal Council summon spells require proper targets (windstones) */
DELETE FROM `spell_script_target` WHERE `entry` IN (24734,24744,24756,24758,24760,24763,24765,24768,24770,24772,24784,24786,24788,24789,24790);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(24734, 0, 180456), (24744, 0, 180456), (24756, 0, 180456), (24758, 0, 180456), (24760, 0, 180456), (24763, 0, 180461), (24765, 0, 180461), (24768, 0, 180461), (24770, 0, 180461), (24772, 0, 180461), (24784, 0, 180466), (24786, 0, 180466), (24788, 0, 180466), (24789, 0, 180466), (24790, 0, 180466);

/* Hive'Ashi pod targetable */
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry`=178553;

/* Quest "Digging Through the Dirt" will be now repeteable (summon Eliza) */
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`=254;

/* Mana points for Grand Inquistior Isillien and mob Crimson Elite */
UPDATE `creature_template` SET `minmana`='4868', `maxmana`='4868' WHERE `entry`=12128;
UPDATE `creature_template` SET `minmana`='20960', `maxmana`='20960' WHERE `entry`=1840;

/* REV 417 */
UPDATE `creature_template` SET `spell4`='0' WHERE `entry`=11359;

/* REV 419 */
/* Hydrospawn - set dmgschool to frost */ 
UPDATE `creature_template` SET `dmgschool` = '4' WHERE `entry`=13280;

/* REV 420 */
/* Missing pickpocketing_loot_template data */
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (603,643,643,1892,1892,1893,1893,1893,1896,1896,2598,2598,2603,2603,2606,2606,3395,3654,3799,3799,3799,3799,3799,4113,4113,4113,4293,4293,4293,4293,4293,4293,4293,4293,4358,4358,4358,4358,4360,4360,4360,4360,4360,4392,4392,4405,4405,5402,5402,5981,5981,5981,5981,6490,6490,6490,6575,6575,6575,6575,6575,6575,6866,7275,7275,7286,7286,7286,7787,7787,7787,7787,7787,7788,7788,7788,7788,7788,7789,7789,7789,7789,7796,7796,7809,7809,7809,7809,7809,7899,7899,7901,7901,7901,7902,7902,8075,8504,8504,8504,8504,8504,8504,8504,8504,8877,9443,9445,9445,9445,9537,9541,9541,9541,10808,10808,10808,10982,10982,10982,10987,10987,10987,10987,10987,10991,10991,10991,10991,11552,11552,11600,11600,11600,11600,11600,11602,11602,11602,11602,11602,11603,11603,11603,11603,11603,11604,11604,11605,11605,11657,11657,11657,11657,11677,11688,11688,11837,11837,11837,11837,11838,11838,11838,11838,11839,11839,11839,11839,11840,11840,11840,11886,11886,11886,11887,11887,11887,11937,11937,11947,11947,11949,12050,12050,12050,12050,12050,12051,12051,12051,12053,12053,12053,12053,12127,12127,12127,12352,12352,12369,12369,13081,13081,13081,13081,13089,13089,13089,13097,13097,13097,13099,13099,13099,13138,13138,13144,13144,13145,13145,13146,13146,13146,13147,13179,13296,13296,13297,13298,13298,13298,13298,13298,13299,13299,13299,13316,13316,13316,13317,13317,13358,13358,13358,13358,13358,13359,13359,13359,13396,13396,13396,13396,13396,13397,13397,13397,13397,13397,13447,13447,13448,13448,13544,13544,13544,13552,13552,13552,13555,13555,13555,13555,5046,5044,4360,4402,4402,4405,4405,4358);
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (603, 16885, 20, 0, 1, 1, 0, 0, 0),(643, 5373, 42.8571, 0, 1, 1, 0, 0, 0),(643, 16882, 14.2857, 0, 1, 1, 0, 0, 0),(1892, 2287, 13.3333, 0, 1, 1, 0, 0, 0),(1892, 5369, 6.6667, 0, 1, 1, 0, 0, 0),(1893, 858, 18.75, 0, 1, 1, 0, 0, 0),(1893, 1210, 6.25, 0, 1, 1, 0, 0, 0),(1893, 5369, 25, 0, 1, 1, 0, 0, 0),(1896, 2287, 14.2857, 0, 1, 1, 0, 0, 0),(1896, 5369, 7.1429, 0, 1, 1, 0, 0, 0),(2598, 1707, 14.2857, 0, 1, 1, 0, 0, 0),(2598, 4544, 14.2857, 0, 1, 1, 0, 0, 0),(2603, 5427, 25, 0, 1, 1, 0, 0, 0),(2603, 16883, 12.5, 0, 1, 1, 0, 0, 0),(2606, 4544, 20, 0, 1, 1, 0, 0, 0),(2606, 16883, 60, 0, 1, 1, 0, 0, 0),(3395, 5369, 16.6667, 0, 1, 1, 0, 0, 0),(3654, 16882, 57.1429, 0, 1, 1, 0, 0, 0),(3799, 422, 2.6316, 0, 1, 1, 0, 0, 0),(3799, 929, 7.8947, 0, 1, 1, 0, 0, 0),(3799, 4542, 2.6316, 0, 1, 1, 0, 0, 0),(3799, 5374, 15.7895, 0, 1, 1, 0, 0, 0),(3799, 16882, 18.4211, 0, 1, 1, 0, 0, 0),(4113, 929, 3.0303, 0, 1, 1, 0, 0, 0),(4113, 3770, 3.0303, 0, 1, 1, 0, 0, 0),(4113, 16882, 9.0909, 0, 1, 1, 0, 0, 0),(4293, 422, 0.7246, 0, 1, 1, 0, 0, 0),(4293, 929, 3.6232, 0, 1, 1, 0, 0, 0),(4293, 1710, 0.7246, 0, 1, 1, 0, 0, 0),(4293, 4306, 0.7246, 0, 2, 2, 0, 0, 0),(4293, 4538, 0.7246, 0, 1, 1, 0, 0, 0),(4293, 4542, 2.1739, 0, 1, 1, 0, 0, 0),(4293, 5374, 12.3188, 0, 1, 1, 0, 0, 0),(4293, 16882, 15.2174, 0, 1, 1, 0, 0, 0),(4358, 1710, 3.261, 0, 1, 1, 0, 0, 0),(4358, 6362, 4.71, 0, 1, 1, 0, 0, 0),(4358, 10457, 9.783, 0, 1, 1, 0, 0, 0),(4358, 16883, 16.304, 0, 1, 1, 0, 0, 0),(4360, 5500, 0.565, 0, 1, 1, 0, 0, 0),(4360, 1710, 2.26, 0, 1, 1, 0, 0, 0),(4360, 6362, 3.955, 0, 1, 1, 0, 0, 0),(4360, 10457, 7.345, 0, 1, 1, 0, 0, 0),(4360, 16883, 15.819, 0, 1, 1, 0, 0, 0),(4392, 4607, 4.762, 0, 1, 1, 0, 0, 0),(4392, 16883, 14.286, 0, 1, 1, 0, 0, 0),(4405, 16884, 12.821, 0, 1, 1, 0, 0, 0),(4405, 5435, 15.385, 0, 1, 1, 0, 0, 0),(5402, 5430, 20, 0, 1, 1, 0, 0, 0),(5402, 16884, 40, 0, 1, 1, 0, 0, 0),(5981, 3928, 5, 0, 1, 1, 0, 0, 0),(5981, 5430, 10, 0, 1, 1, 0, 0, 0),(5981, 8952, 6.6667, 0, 1, 1, 0, 0, 0),(5981, 16885, 6.6667, 0, 1, 1, 0, 0, 0),(6490, 1710, 16.6667, 0, 1, 1, 0, 0, 0),(6490, 4607, 16.6667, 0, 1, 1, 0, 0, 0),(6490, 5433, 16.6667, 0, 1, 1, 0, 0, 0),(6575, 422, 1.0753, 0, 1, 1, 0, 0, 0),(6575, 929, 3.2258, 0, 1, 1, 0, 0, 0),(6575, 4306, 1.0753, 0, 2, 2, 0, 0, 0),(6575, 4542, 2.1505, 0, 1, 1, 0, 0, 0),(6575, 5374, 12.9032, 0, 1, 1, 0, 0, 0),(6575, 16882, 12.9032, 0, 1, 1, 0, 0, 0),(6866, 6150, 30, 0, 1, 1, 0, 0, 0),(7275, 5428, 11.7647, 0, 1, 1, 0, 0, 0),(7275, 16884, 11.7647, 0, 1, 1, 0, 0, 0),(7286, 3419, 6.6667, 0, 1, 1, 0, 0, 0),(7286, 4608, 6.6667, 0, 1, 1, 0, 0, 0),(7286, 16884, 6.6667, 0, 1, 1, 0, 0, 0),(7787, 3928, 2.7778, 0, 1, 1, 0, 0, 0),(7787, 4599, 2.7778, 0, 1, 1, 0, 0, 0),(7787, 4601, 1.3889, 0, 1, 1, 0, 0, 0),(7787, 5428, 11.1111, 0, 1, 1, 0, 0, 0),(7787, 16884, 8.3333, 0, 1, 1, 0, 0, 0),(7788, 3928, 5.9701, 0, 1, 1, 0, 0, 0),(7788, 4599, 2.9851, 0, 1, 1, 0, 0, 0),(7788, 4601, 7.4627, 0, 1, 1, 0, 0, 0),(7788, 5428, 13.4328, 0, 1, 1, 0, 0, 0),(7788, 16884, 11.9403, 0, 1, 1, 0, 0, 0),(7789, 4601, 4.1667, 0, 1, 1, 0, 0, 0),(7789, 5428, 12.5, 0, 1, 1, 0, 0, 0),(7789, 7909, 4.1667, 0, 1, 1, 0, 0, 0),(7789, 16884, 4.1667, 0, 1, 1, 0, 0, 0),(7796, 4601, 7.6923, 0, 1, 1, 0, 0, 0),(7796, 16884, 7.6923, 0, 1, 1, 0, 0, 0),(7809, 3928, 9.0909, 0, 1, 1, 0, 0, 0),(7809, 4599, 9.0909, 0, 1, 1, 0, 0, 0),(7809, 5428, 9.0909, 0, 1, 1, 0, 0, 0),(7809, 7909, 9.0909, 0, 1, 1, 0, 0, 0),(7809, 16884, 9.0909, 0, 1, 1, 0, 0, 0),(7899, 5432, 22.2222, 0, 1, 1, 0, 0, 0),(7899, 16884, 11.1111, 0, 1, 1, 0, 0, 0),(7901, 3928, 11.1111, 0, 1, 1, 0, 0, 0),(7901, 5432, 33.3333, 0, 1, 1, 0, 0, 0),(7901, 16884, 22.2222, 0, 1, 1, 0, 0, 0),(7902, 5432, 8.3333, 0, 1, 1, 0, 0, 0),(7902, 16884, 8.3333, 0, 1, 1, 0, 0, 0),(8075, 4599, 20, 0, 1, 1, 0, 0, 0),(8504, 3927, 2.809, 0, 1, 1, 0, 0, 0),(8504, 3928, 4.4944, 0, 1, 1, 0, 0, 0),(8504, 4601, 2.809, 0, 1, 1, 0, 0, 0),(8504, 4602, 6.1798, 0, 1, 1, 0, 0, 0),(8504, 5432, 13.4831, 0, 1, 1, 0, 0, 0),(8504, 7909, 0.5618, 0, 1, 1, 0, 0, 0),(8504, 7910, 1.1236, 0, 1, 1, 0, 0, 0),(8504, 16884, 8.9888, 0, 1, 1, 0, 0, 0),(8877, 4599, 14.2857, 0, 1, 1, 0, 0, 0),(9443, 5432, 20, 0, 1, 1, 0, 0, 0),(9445, 5432, 50, 0, 1, 1, 0, 0, 0),(9445, 8950, 7.1429, 0, 1, 1, 0, 0, 0),(9445, 16885, 14.2857, 0, 1, 1, 0, 0, 0),(9537, 16885, 18.1818, 0, 1, 1, 0, 0, 0),(9541, 5432, 14.2857, 0, 1, 1, 0, 0, 0),(9541, 8953, 7.1429, 0, 1, 1, 0, 0, 0),(9541, 16885, 14.2857, 0, 1, 1, 0, 0, 0),(10808, 3419, 5, 0, 1, 1, 0, 0, 0),(10808, 8948, 10, 0, 1, 1, 0, 0, 0),(10808, 16885, 17.5, 0, 1, 1, 0, 0, 0),(10982, 3928, 8.3333, 0, 1, 1, 0, 0, 0),(10982, 4599, 8.3333, 0, 1, 1, 0, 0, 0),(10982, 5430, 8.3333, 0, 1, 1, 0, 0, 0),(10987, 3928, 2.569, 0, 1, 1, 0, 0, 0),(10987, 5430, 9.7526, 0, 1, 1, 0, 0, 0),(10987, 7910, 0.2379, 0, 1, 1, 0, 0, 0),(10987, 8952, 7.2788, 0, 1, 1, 0, 0, 0),(10987, 16885, 8.6108, 0, 1, 1, 0, 0, 0),(10991, 3928, 3.0928, 0, 1, 1, 0, 0, 0),(10991, 5430, 7.2165, 0, 1, 1, 0, 0, 0),(10991, 8952, 3.0928, 0, 1, 1, 0, 0, 0),(10991, 16885, 8.2474, 0, 1, 1, 0, 0, 0),(11552, 5430, 11.7647, 0, 1, 1, 0, 0, 0),(11552, 16885, 23.5294, 0, 1, 1, 0, 0, 0),(11600, 3928, 2.3148, 0, 1, 1, 0, 0, 0),(11600, 5430, 8.179, 0, 1, 1, 0, 0, 0),(11600, 7910, 0.3086, 0, 1, 1, 0, 0, 0),(11600, 8952, 8.179, 0, 1, 1, 0, 0, 0),(11600, 16885, 8.9506, 0, 1, 1, 0, 0, 0),(11602, 3928, 2.2472, 0, 1, 1, 0, 0, 0),(11602, 5430, 11.9382, 0, 1, 1, 0, 0, 0),(11602, 7910, 0.2809, 0, 1, 1, 0, 0, 0),(11602, 8952, 7.1629, 0, 1, 1, 0, 0, 0),(11602, 16885, 9.4101, 0, 1, 1, 0, 0, 0),(11603, 3928, 2.7778, 0, 1, 1, 0, 0, 0),(11603, 5430, 5.5556, 0, 1, 1, 0, 0, 0),(11603, 7910, 2.7778, 0, 1, 1, 0, 0, 0),(11603, 8952, 8.3333, 0, 1, 1, 0, 0, 0),(11603, 16885, 13.8889, 0, 1, 1, 0, 0, 0),(11604, 3928, 14.2857, 0, 1, 1, 0, 0, 0),(11604, 5430, 14.2857, 0, 1, 1, 0, 0, 0),(11605, 5430, 9.0909, 0, 1, 1, 0, 0, 0),(11605, 16885, 4.5455, 0, 1, 1, 0, 0, 0),(11657, 3928, 6.8966, 0, 1, 1, 0, 0, 0),(11657, 5430, 12.069, 0, 1, 1, 0, 0, 0),(11657, 8952, 5.1724, 0, 1, 1, 0, 0, 0),(11657, 16885, 10.3448, 0, 1, 1, 0, 0, 0),(11677, 3928, 14.2857, 0, 1, 1, 0, 0, 0),(11688, 4601, 20, 0, 1, 1, 0, 0, 0),(11688, 5428, 20, 0, 1, 1, 0, 0, 0),(11837, 3928, 2, 0, 1, 1, 0, 0, 0),(11837, 5430, 18, 0, 1, 1, 0, 0, 0),(11837, 8952, 6, 0, 1, 1, 0, 0, 0),(11837, 16885, 10, 0, 1, 1, 0, 0, 0),(11838, 3928, 5.1282, 0, 1, 1, 0, 0, 0),(11838, 5430, 10.2564, 0, 1, 1, 0, 0, 0),(11838, 8952, 12.8205, 0, 1, 1, 0, 0, 0),(11838, 16885, 12.8205, 0, 1, 1, 0, 0, 0),(11839, 3928, 5, 0, 1, 1, 0, 0, 0),(11839, 5430, 5, 0, 1, 1, 0, 0, 0),(11839, 8952, 5, 0, 1, 1, 0, 0, 0),(11839, 16885, 7.5, 0, 1, 1, 0, 0, 0),(11840, 3928, 4.1667, 0, 1, 1, 0, 0, 0),(11840, 5430, 12.5, 0, 1, 1, 0, 0, 0),(11840, 16885, 12.5, 0, 1, 1, 0, 0, 0),(11886, 5432, 9.0909, 0, 1, 1, 0, 0, 0),(11886, 8932, 9.0909, 0, 1, 1, 0, 0, 0),(11886, 16885, 18.1818, 0, 1, 1, 0, 0, 0),(11887, 3928, 11.1111, 0, 1, 1, 0, 0, 0),(11887, 5432, 11.1111, 0, 1, 1, 0, 0, 0),(11887, 16885, 22.2222, 0, 1, 1, 0, 0, 0),(11937, 4607, 6.6667, 0, 1, 1, 0, 0, 0),(11937, 16883, 6.6667, 0, 1, 1, 0, 0, 0),(11947, 8950, 1.9608, 0, 1, 1, 0, 0, 0),(11947, 13446, 1.9608, 0, 1, 1, 0, 0, 0),(11949, 13446, 2.6316, 0, 1, 1, 0, 0, 0),(12050, 5432, 6.4516, 0, 1, 1, 0, 0, 0),(12050, 8932, 3.2258, 0, 1, 1, 0, 0, 0),(12050, 8950, 12.9032, 0, 1, 1, 0, 0, 0),(12050, 8953, 3.2258, 0, 1, 1, 0, 0, 0),(12050, 16885, 9.6774, 0, 1, 1, 0, 0, 0),(12051, 5428, 12.9032, 0, 1, 1, 0, 0, 0),(12051, 8952, 6.4516, 0, 1, 1, 0, 0, 0),(12051, 16885, 3.2258, 0, 1, 1, 0, 0, 0),(12053, 3928, 4.7619, 0, 1, 1, 0, 0, 0),(12053, 5428, 4.7619, 0, 1, 1, 0, 0, 0),(12053, 8950, 9.5238, 0, 1, 1, 0, 0, 0),(12053, 16885, 4.7619, 0, 1, 1, 0, 0, 0),(12127, 3928, 3.5714, 0, 1, 1, 0, 0, 0),(12127, 5432, 21.4286, 0, 1, 1, 0, 0, 0),(12127, 16885, 3.5714, 0, 1, 1, 0, 0, 0),(12352, 422, 14.2857, 0, 1, 1, 0, 0, 0),(12352, 16882, 14.2857, 0, 1, 1, 0, 0, 0),(12369, 1710, 9.0909, 0, 1, 1, 0, 0, 0),(12369, 6362, 18.1818, 0, 1, 2, 0, 0, 0),(13081, 3928, 3.7037, 0, 1, 1, 0, 0, 0),(13081, 5428, 18.5185, 0, 1, 1, 0, 0, 0),(13081, 8950, 7.4074, 0, 1, 1, 0, 0, 0),(13081, 8952, 3.7037, 0, 1, 1, 0, 0, 0),(13089, 5428, 16.6667, 0, 1, 1, 0, 0, 0),(13089, 8950, 8.3333, 0, 1, 1, 0, 0, 0),(13089, 16885, 25, 0, 1, 1, 0, 0, 0),(13097, 5428, 11.1111, 0, 1, 1, 0, 0, 0),(13097, 8950, 5.5556, 0, 1, 1, 0, 0, 0),(13097, 16885, 5.5556, 0, 1, 1, 0, 0, 0),(13099, 5428, 12.5, 0, 1, 1, 0, 0, 0),(13099, 8952, 4.1667, 0, 1, 1, 0, 0, 0),(13099, 16885, 8.3333, 0, 1, 1, 0, 0, 0),(13138, 5432, 12.5, 0, 1, 1, 0, 0, 0),(13138, 16885, 37.5, 0, 1, 1, 0, 0, 0),(13144, 5428, 7.1429, 0, 1, 1, 0, 0, 0),(13144, 16885, 7.1429, 0, 1, 1, 0, 0, 0),(13145, 3419, 20, 0, 1, 1, 0, 0, 0),(13145, 16885, 20, 0, 1, 1, 0, 0, 0),(13146, 3419, 6.25, 0, 1, 1, 0, 0, 0),(13146, 8948, 18.75, 0, 1, 1, 0, 0, 0),(13146, 16885, 6.25, 0, 1, 1, 0, 0, 0),(13147, 16885, 18.1818, 0, 1, 1, 0, 0, 0),(13179, 5428, 40, 0, 1, 1, 0, 0, 0),(13296, 5432, 7.3171, 0, 1, 1, 0, 0, 0),(13296, 16885, 4.878, 0, 1, 1, 0, 0, 0),(13297, 16885, 11.1111, 0, 1, 1, 0, 0, 0),(13298, 5432, 9.0909, 0, 1, 1, 0, 0, 0),(13298, 8932, 2.2727, 0, 1, 1, 0, 0, 0),(13298, 8950, 2.2727, 0, 1, 1, 0, 0, 0),(13298, 8953, 2.2727, 0, 1, 1, 0, 0, 0),(13298, 16885, 4.5455, 0, 1, 1, 0, 0, 0),(13299, 5432, 15.7895, 0, 1, 1, 0, 0, 0),(13299, 8953, 5.2632, 0, 1, 1, 0, 0, 0),(13299, 17422, 79.6666, 0, 1, 1, 0, 0, 0),(13316, 5428, 3.8462, 0, 1, 1, 0, 0, 0),(13316, 8950, 3.8462, 0, 1, 1, 0, 0, 0),(13316, 8952, 7.6923, 0, 1, 1, 0, 0, 0),(13317, 3928, 11.1111, 0, 1, 1, 0, 0, 0),(13317, 16885, 11.1111, 0, 1, 1, 0, 0, 0),(13358, 5432, 13.3333, 0, 1, 1, 0, 0, 0),(13358, 8932, 6.6667, 0, 1, 1, 0, 0, 0),(13358, 8950, 6.6667, 0, 1, 1, 0, 0, 0),(13358, 8953, 6.6667, 0, 1, 1, 0, 0, 0),(13358, 16885, 6.6667, 0, 1, 1, 0, 0, 0),(13359, 3928, 5.2632, 0, 1, 1, 0, 0, 0),(13359, 8950, 5.2632, 0, 1, 1, 0, 0, 0),(13359, 16885, 10.5263, 0, 1, 1, 0, 0, 0),(13396, 3928, 1.25, 0, 1, 1, 0, 0, 0),(13396, 5432, 13.75, 0, 1, 1, 0, 0, 0),(13396, 8932, 1.25, 0, 1, 1, 0, 0, 0),(13396, 8950, 1.25, 0, 1, 1, 0, 0, 0),(13396, 16885, 7.5, 0, 1, 1, 0, 0, 0),(13397, 3928, 2.0202, 0, 1, 1, 0, 0, 0),(13397, 5428, 7.0707, 0, 1, 1, 0, 0, 0),(13397, 8950, 2.0202, 0, 1, 1, 0, 0, 0),(13397, 8952, 8.0808, 0, 1, 1, 0, 0, 0),(13397, 16885, 7.0707, 0, 1, 1, 0, 0, 0),(13447, 5432, 11.1111, 0, 1, 1, 0, 0, 0),(13447, 8953, 11.1111, 0, 1, 1, 0, 0, 0),(13448, 3928, 7.4074, 0, 1, 1, 0, 0, 0),(13448, 16885, 7.4074, 0, 1, 1, 0, 0, 0),(13544, 3928, 11.1111, 0, 1, 1, 0, 0, 0),(13544, 5428, 11.1111, 0, 1, 1, 0, 0, 0),(13544, 8952, 22.2222, 0, 1, 1, 0, 0, 0),(13552, 3928, 5, 0, 1, 1, 0, 0, 0),(13552, 5432, 5, 0, 1, 1, 0, 0, 0),(13552, 16885, 5, 0, 1, 1, 0, 0, 0),(13555, 5432, 3.8462, 0, 1, 1, 0, 0, 0),(13555, 8950, 3.8462, 0, 1, 1, 0, 0, 0),(13555, 8953, 7.6923, 0, 1, 1, 0, 0, 0),(13555, 16885, 3.8462, 0, 1, 1, 0, 0, 0),(5046, 5431, 20, 0, 1, 1, 0, 0, 0),(5044, 5431, 20, 0, 1, 1, 0, 0, 0),(4360, 5498, 0.565, 0, 1, 1, 0, 0, 0),(4402, 16883, 9.091, 0, 1, 1, 0, 0, 0),(4402, 10457, 4.545, 0, 1, 1, 0, 0, 0),(4405, 4603, 7.692, 0, 1, 1, 0, 0, 0),(4405, 3928, 5.128, 0, 1, 1, 0, 0, 0),(4358, 5498, 0.362, 0, 1, 1, 0, 0, 0);
UPDATE creature_template SET pickpocketloot=entry WHERE entry IN (603,643,643,1892,1892,1893,1893,1893,1896,1896,2598,2598,2603,2603,2606,2606,3395,3654,3799,3799,3799,3799,3799,4113,4113,4113,4293,4293,4293,4293,4293,4293,4293,4293,4358,4358,4358,4358,4360,4360,4360,4360,4360,4392,4392,4405,4405,5402,5402,5981,5981,5981,5981,6490,6490,6490,6575,6575,6575,6575,6575,6575,6866,7275,7275,7286,7286,7286,7787,7787,7787,7787,7787,7788,7788,7788,7788,7788,7789,7789,7789,7789,7796,7796,7809,7809,7809,7809,7809,7899,7899,7901,7901,7901,7902,7902,8075,8504,8504,8504,8504,8504,8504,8504,8504,8877,9443,9445,9445,9445,9537,9541,9541,9541,10808,10808,10808,10982,10982,10982,10987,10987,10987,10987,10987,10991,10991,10991,10991,11552,11552,11600,11600,11600,11600,11600,11602,11602,11602,11602,11602,11603,11603,11603,11603,11603,11604,11604,11605,11605,11657,11657,11657,11657,11677,11688,11688,11837,11837,11837,11837,11838,11838,11838,11838,11839,11839,11839,11839,11840,11840,11840,11886,11886,11886,11887,11887,11887,11937,11937,11947,11947,11949,12050,12050,12050,12050,12050,12051,12051,12051,12053,12053,12053,12053,12127,12127,12127,12352,12352,12369,12369,13081,13081,13081,13081,13089,13089,13089,13097,13097,13097,13099,13099,13099,13138,13138,13144,13144,13145,13145,13146,13146,13146,13147,13179,13296,13296,13297,13298,13298,13298,13298,13298,13299,13299,13299,13316,13316,13316,13317,13317,13358,13358,13358,13358,13358,13359,13359,13359,13396,13396,13396,13396,13396,13397,13397,13397,13397,13397,13447,13447,13448,13448,13544,13544,13544,13552,13552,13552,13555,13555,13555,13555,5046,5044,4360,4402,4402,4405,4405,4358);

/* Missing reference_loot_template data */
DELETE FROM `reference_loot_template` WHERE (`entry`='35009');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES  (35009, 17707, 0, 1, 1, 1, 0, 0, 0),(35009, 17710, 0, 1, 1, 1, 0, 0, 0),(35009, 17711, 0, 1, 1, 1, 0, 0, 0),(35009, 17713, 0, 1, 1, 1, 0, 0, 0),(35009, 17714, 0, 1, 1, 1, 0, 0, 0),(35009, 17715, 0, 1, 1, 1, 0, 0, 0),(35009, 17766, 0, 1, 1, 1, 0, 0, 0),(35009, 17780, 0.2, 1, 1, 1, 0, 0, 0);

/* Clean player_classlevelstats */
DELETE FROM `player_classlevelstats` WHERE (`level`='0');

/* NPC Ahn'Qiraj and Naxxramas Military Sub-Boss Triggers */
DELETE FROM `creature_template` WHERE (`entry`='15426');
INSERT INTO `creature_template` (`entry`, `modelid_1`, `name`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `armor`, `faction_A`, `faction_H`, `mindmg`, `maxdmg`, `attackpower`, `baseattacktime`, `unit_flags`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`) VALUES ('15426', '15294', 'Ahn''Qiraj Trigger', '60', '60', '4120', '4120', '3750', '114', '114', '104', '138', '252', '2000', '33555200', '72', '106', '26', '10');
DELETE FROM `creature_template` WHERE (`entry`='16137');
INSERT INTO `creature_template` (`entry`, `modelid_1`, `name`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `armor`, `faction_A`, `faction_H`, `mindmg`, `maxdmg`, `attackpower`, `baseattacktime`, `unit_flags`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `flags_extra`, `ScriptName`) VALUES ('16137', '11686', 'Naxxramas Military Sub-Boss Trigger', '60', '60', '5000', '5000', '9729', '114', '114', '422', '586', '642', '2000', '33554432', '345', '509', '103', '10', '2', 'spell_anchor');

/* NPC Mindless Skeleton */
UPDATE `creature_template` SET `minhealth`='1100', `maxhealth`='1100' WHERE (`entry`='11197');

/* Item Mechanical Yeti */
UPDATE `item_template` SET `spellcharges_1`='-3' WHERE (`entry`='15778');
UPDATE `creature_template` SET `scale`='0.25' WHERE `entry` IN (12257, 15699, 10980);

/* NPC Servant of Alexi Barov */
UPDATE `creature_template` SET `mindmg`='29', `maxdmg`='36', `attackpower`='229' WHERE (`entry`='11637');

/* NPC Alchemist Pestlezugg */
UPDATE creature_template SET npcflag = '7' WHERE entry = '5594';

/* Graveyard Undercity */
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone`=1497;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (289, 1497, 0);

/* NPC The Beast */
UPDATE `creature` SET `position_x`='114.211', `position_y`='-563.826', `position_z`='107.34', `orientation`='2.82143' WHERE (`guid`='42613');

/* NPC Nathaniel Steenwick and Turian */
DELETE FROM `npc_vendor` WHERE `entry` IN (4592, 4235);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4592, 2946, 0, 0),(4592, 2947, 0, 0),(4592, 3107, 0, 0),(4592, 3108, 0, 0),(4592, 3111, 0, 0),(4592, 3131, 0, 0),(4592, 3135, 0, 0),(4592, 3137, 0, 0),(4592, 15326, 0, 0),(4592, 15327, 0, 0),(4235, 2946, 0, 0),(4235, 2947, 0, 0),(4235, 3107, 0, 0),(4235, 3108, 0, 0),(4235, 3111, 0, 0),(4235, 3131, 0, 0),(4235, 3135, 0, 0),(4235, 3137, 0, 0),(4235, 12247, 1, 7200),(4235, 15326, 0, 0),(4235, 15327, 0, 0);

/* Quest Scourgestones in EP */
UPDATE `quest_template` SET `RewRepValue1`='25' WHERE `entry` IN (5508, 5509, 5510);

/* SM:Cathedral: Secret Door set locked & untargetable */
UPDATE `gameobject_template` SET `flags`=36 WHERE `entry`=97700;

/* REV #429 */
-- Majordomo's Hot Coal teleport --
DELETE FROM `spell_target_position` WHERE `id`=20534;
INSERT INTO `spell_target_position` (`id` ,`target_map` ,`target_position_x` ,`target_position_y` ,`target_position_z` ,`target_orientation`) VALUES
('20534', '409', '736.65', '-1176.56', '-118.96', '3.64');

-- Disable Majordomo & his Adds random movement --
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry` IN (12018, 11663, 11664);

/* REV #433 */
-- Mekgineer Thermaplug - Gnome Face event --
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-188, -189, -190, -191) AND `comment`='7800';

/* REV #436 */
-- Theka the Martyr things --
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=7272;

DELETE IGNORE FROM `creature_template` WHERE `entry`=7791;
INSERT IGNORE INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('7791', '0', '0', '6697', '0', 'Theka the Martyr Shapeshift', NULL, '0', '1', '1', '0', '0', '0', '0', '0', '35', '35', '0', '1.2', '1.14286', '1', '1', '2', '2', '0', '24', '1', '2000', '0', '0', '8', '0', '0', '0', '0', '0', '1', '1', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '1', '0', '8388624', '0', '');

/* REV # */
-- Gurubashi Bat Rider will fly --
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=14750;

-- Liquid Fire --
DELETE FROM `gameobject_template` WHERE `entry`=180125;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(180125, 6, 4251, 'Liquid Fire', 14, 0, 1, 0, 60, 3, 23972, 0, 1, 65536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Zulian Guardian new rank - rare elite --
UPDATE `creature_template` SET `rank`=2 WHERE `entry`=15068;

/* REV 451 - OUTDOOR PVP */
/* Delete EPL pvp graveyard association, it should only be available to the controlling faction */
DELETE FROM `game_graveyard_zone` WHERE `id`=927;

/* Corrections for some npcs */
UPDATE `creature_template` SET `faction_A` = 83, `faction_H` = 83 WHERE `entry` IN (17995, 17996);
UPDATE `creature_template` SET `faction_A` = 84, `faction_H` = 84 WHERE `entry` IN (17635, 17647);
UPDATE `creature_template` SET `faction_A` = 84, `faction_H` = 83, `npcflag`=`npcflag`|1 WHERE `entry` = 17209;

/* Auras for NPT support units */
DELETE FROM `creature_template_addon` WHERE `entry` IN (17635, 17647, 17995, 17996);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
(17635, 0, 0, 0, 0, 0, '17327 0'),
(17647, 0, 0, 0, 0, 0, '17327 0'),
(17995, 0, 0, 0, 0, 0, '31309 0'),
(17996, 0, 0, 0, 0, 0, '31309 0');

/* Missing templates in DB */
DELETE FROM `creature_template` WHERE `entry` IN (17660, 18199);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(17660, 0, 0, 17328, 0, 'Skeletal Gryphon', '', 0, 60, 60, 4890, 4890, 0, 0, 6719, 35, 35, 0, 1.125, 1.14286, 1, 0, 252, 357, 0, 304, 1, 2000, 0, 256, 0, 0, 0, 0, 0, 0, 215, 320, 44, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 0, 8388624, 2, ''),
(18199, 0, 0, 11686, 0, 'Silithus Dust Turnin Quest Doodad Horde', '', 0, 1, 1, 0, 0, 0, 0, 20, 35, 35, 0, 1.1, 1.14286, 0, 0, 2, 2, 0, 1, 1, 2000, 0, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, '');

/* Corrections for silithyst quests */
UPDATE `quest_template` SET `PrevQuestId` = '9415', `ReqCreatureOrGOId1` = '17090', `ReqCreatureOrGOCount1` = '1' WHERE `entry`=9419;
UPDATE `quest_template` SET `PrevQuestId` = '9416', `ReqCreatureOrGOId1` = '18199', `ReqCreatureOrGOCount1` = '1' WHERE `entry`=9422;

/* Kielars's auras handled in core */
DELETE FROM `creature_template_addon` WHERE `entry`=17209;

/* Delete the flight master that is spawned by the opvp */
DELETE FROM `creature` WHERE `id` = 17209;

/* Corrections for opvp gameobjects */
UPDATE `gameobject_template` SET `data0` = 0 WHERE `entry` IN (181598, 181597, 181682);

/* Delete shrine that is spawned by the opvp */
DELETE FROM `gameobject` WHERE `id` = 181682; 

/* Strings for core */
DELETE FROM `mangos_string` WHERE `entry` BETWEEN 10000 AND 10017;
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES
(10000,'The Horde has taken the Northpass Tower!'),
(10001,'The Alliance has taken the Northpass Tower!'),
(10002,'The Horde has taken the Eastwall Tower!'),
(10003,'The Alliance has taken the Eastwall Tower!'),
(10004,'The Horde has taken the Crown Guard Tower!'),
(10005,'The Alliance has taken the Crown Guard Tower!'),
(10006,'The Horde has taken the Plaguewood Tower!'),
(10007,'The Alliance has taken the Plaguewood Tower!'),
(10008,'The Horde lost the Northpass Tower!'),
(10009,'The Alliance lost the Northpass Tower!'),
(10010,'The Horde lost the Eastwall Tower!'),
(10011,'The Alliance lost the Eastwall Tower!'),
(10012,'The Horde lost the Crown Guard Tower!'),
(10013,'The Alliance lost the Crown Guard Tower!'),
(10014,'The Horde lost the Plaguewood Tower!'),
(10015,'The Alliance lost the Plaguewood Tower!'),
(10016,'The Horde has collected 200 silithyst!'),
(10017,'The Alliance has collected 200 silithyst!');

/* REV 462 - Aurius' quests */
/* Aurius should withstand some shadow damage from Baron's unholy aura */
UPDATE `creature_template` SET `resistance5` = '100' WHERE `entry`=10917;

/* Item Medallion of Faith should be lootable */
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry`=176112;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry`=13580 AND `item`=12845;

/* Quest Medallion of Faith should be repeatable */
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry`=5122;

/* Modification for Aurius Reckoning to make it work along with scripts */
UPDATE `quest_template` SET `Method` = '1', `SpecialFlags` = '2', `PrevQuestId` = '0', `Objectives` = 'Find a way to help Aurius redeem his soul', `RequestItemsText` = 'I have to redeem my soul to find peace!', `EndText` = 'Aurius'' soul redeemed' WHERE `entry`=5125;

-- Zulian Prowler - lower mindmg & maxdmg --
UPDATE `creature_template` SET `mindmg`='310', `maxdmg`='340' WHERE `entry`=15101;
-- Mechanic immunity for rooting spells for Lor'khan and Zath (Thekal's Adds) --
UPDATE `creature_template` SET `mechanic_immune_mask`='64' WHERE `entry` IN (11347, 11348);

-- Yojamba Isle quests class restriction --
-- Warrior --
UPDATE `quest_template` SET `RequiredClasses`='1' WHERE `entry` IN (8078, 8079, 8085, 8041, 8044);
-- Paladin --
UPDATE `quest_template` SET `RequiredClasses`='2' WHERE `entry` IN (8053, 8054, 8055, 8045, 8048);
-- Hunter --
UPDATE `quest_template` SET `RequiredClasses`='4' WHERE `entry` IN (8062, 8066, 8067, 8145);
-- Rogue --
UPDATE `quest_template` SET `RequiredClasses`='8' WHERE `entry` IN (8063, 8072, 8073, 8141);
-- Priest --
UPDATE `quest_template` SET `RequiredClasses`='16' WHERE `entry` IN (8061, 8070, 8071, 8049, 8052);
-- Shaman --
UPDATE `quest_template` SET `RequiredClasses`='64' WHERE `entry` IN (8056, 8074, 8075, 8116);
-- Mage --
UPDATE `quest_template` SET `RequiredClasses`='128' WHERE `entry` IN (8060, 8068, 8069, 8101, 8104);
-- Warlock --
UPDATE `quest_template` SET `RequiredClasses`='256' WHERE `entry` IN (8059, 8076, 8077, 8106);
-- Druid --
UPDATE `quest_template` SET `RequiredClasses`='1024' WHERE `entry` IN (8057, 8064, 8065, 8110);

/* Molten Core stuffs */
DELETE FROM `spell_target_position` WHERE `id` IN (20534, 20618);
INSERT INTO `spell_target_position` (`id` ,`target_map` ,`target_position_x` ,`target_position_y` ,`target_position_z` ,`target_orientation`) VALUES
('20534', '409', '736.65', '-1176.56', '-118.96', '3.64'),
('20618', '409', '736.65', '-1176.56', '-118.96', '3.64');
-- Hot Coal become a trap gameobject (1000 fire dmg) --
UPDATE `gameobject_template` SET `type`='6', `faction`='54', `data1`='60', `data2`='8', `data3`='20623', `data5`='1' WHERE `entry`=177000;
-- New respawn time for Garr --
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id`=12057;
-- New speed for Majordomo and his adds (adds also have new faction and elite will be immune at CC effects) --
UPDATE `creature_template` SET `speed_walk`='1.3' WHERE `entry` IN (11663, 11664, 12018);
UPDATE `creature_template` SET `faction_A`='54', `faction_H`='54' WHERE `entry`=11663;
UPDATE `creature_template` SET `faction_A`='54', `faction_H`='54', `mechanic_immune_mask`='201890' WHERE `entry`=11664;

-- Delete & spawn Majordomo Executus, Flamewaker Elite, Flamewaker Healer --
DELETE FROM `creature` WHERE `id` IN (11663, 11664, 12018);
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(11663, 409, 0, 0, 750.51, -1162.77, -118.865, 3.86279, 7200, 0, 0, 98335, 29208, 0, 0),
(11663, 409, 0, 0, 740.262, -1157.69, -118.948, 4.34973, 7200, 0, 0, 98335, 29208, 0, 0),
(11663, 409, 0, 0, 754.619, -1176.61, -118.491, 3.14177, 7200, 0, 0, 98335, 29208, 0, 0),
(11663, 409, 0, 0, 755.004, -1188.52, -118.474, 2.67319, 7200, 0, 0, 98335, 29208, 0, 0),
(11664, 409, 0, 0, 746.331, -1158.98, -118.951, 4.00808, 7200, 0, 0, 67600, 4532, 0, 0),
(11664, 409, 0, 0, 734.456, -1155.49, -119.191, 4.34973, 7200, 0, 0, 67600, 4532, 0, 0),
(11664, 409, 0, 0, 755.803, -1182.88, -118.522, 2.92724, 7200, 0, 0, 67600, 4532, 0, 0),
(11664, 409, 0, 0, 750.815, -1193.01, -118.184, 2.43165, 7200, 0, 0, 67600, 4532, 0, 0),
(12018, 409, 0, 0, 754.218, -1169.09, -118.662, 3.60517, 604800, 0, 0, 550000, 70000, 0, 0);

/* REV 480 - Set proper data for some pvp items */
UPDATE `item_template` SET `AllowableClass`='128' WHERE `itemset`=542;
UPDATE `item_template` SET `BuyPrice`=900000 WHERE `entry` IN (18241, 18242, 18243, 18244, 18245, 18246, 18247, 18248);

/* Delete old vendors data */
UPDATE `creature_template` SET `npcflag`=`npcflag`&~4 WHERE `entry` IN (12781, 12783, 12784, 12785, 12793, 12794, 12795, 12796);
DELETE FROM `creature` WHERE `id` IN (12781, 12783, 12784, 12785, 12793, 12794, 12795, 12796);
DELETE FROM `npc_vendor` WHERE `entry` IN (12781, 12783, 12784, 12785, 12793, 12794, 12795, 12796);

/* Thunder Bluff - Bena Winterhoof <alchemy trainer> spells for train */
DELETE FROM `npc_trainer` WHERE `entry`=3009;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(3009, 2275, 10, 0, 0, 5),
(3009, 2280, 450, 171, 50, 10),
(3009, 2339, 100, 171, 25, 0),
(3009, 2340, 135, 171, 40, 0),
(3009, 2341, 250, 171, 55, 0),
(3009, 3179, 450, 171, 90, 0),
(3009, 3181, 1350, 171, 120, 0),
(3009, 3184, 50, 171, 15, 0),
(3009, 3185, 1350, 171, 125, 0),
(3009, 3186, 1800, 171, 130, 0),
(3009, 3458, 3600, 171, 110, 0),
(3009, 7180, 405, 171, 90, 0),
(3009, 7838, 225, 171, 80, 0),
(3009, 7839, 900, 171, 130, 0),
(3009, 7842, 900, 171, 100, 0),
(3009, 7846, 2700, 171, 140, 0),
(3009, 11536, 225, 171, 50, 0);

/* Lorekeeper Lydros Gossip options (support for quest 7508) */
DELETE FROM `npc_text` WHERE `ID` BETWEEN 30017 AND 30022;
INSERT INTO `npc_text` (`ID`,`text0_0`) VALUES
(30017, '<Lydros reaches into his robe and presents you with a dull, flat elven blade.>$B$BIn ages past, well before even the War of the Ancients, there existed this blade.'),
(30018, 'The blade itself had to be crafted in ceremony with the children of the Aspects. A rare occurrence indeed... For not only would a dragon have to willingly heat and mold the enchanted metal with their breath, they would also need to contain the fury of their own enchantment by using their blood as temper.'),
(30019, 'Over the course of 8,000 years, only a handful of these blades were created - each blade unique in both power and appearance. The blades of Quel''Serrar would take on the characteristics of their creator.'),
(30020, 'Rumors exist of a single legendary blade of Quel''Serrar crafted for an unknown entity by the combined might of the five Aspects. Before the abominations of Nefarian and Deathwing were thrust into our world, such meetings of the Aspect were represented by the term ''Prismatic.'' I could only assume that the Prismatic Blade of Quel''Serrar was a most glorious creation.'),
(30021, 'What I offer to you now is one such blade, unfired, unheated, untreated - the most raw and basic form.$BNow you merely need to find a dragon that will willingly enchant the blade.$BIf you had an eternity to live, this might be a possibility; but since you are mortal and could very likely cease to exist at any moment, might I recommend trying to persuade one of the lesser dragons to do your bidding.'),
(30022, 'Have you heard of the brood mother of the Black Flight? I believe she is called Onyxia...');

/* REV #487 */
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `spell1`='18328', `spell2`='6754' WHERE `entry`=13082;
UPDATE `gameobject_template` SET `flags`='0' WHERE `entry`=178325;
UPDATE `quest_template` SET `RequiredMaxRepValue`='3000' WHERE `entry`=6701;

/* Wailing Caverns things */
DELETE FROM spell_target_position WHERE id = 8136;
INSERT INTO spell_target_position VALUES
(8136,43,116.35,239.8,-95.08,3.1);

DELETE FROM npc_gossip WHERE npc_guid = 18675;
INSERT INTO npc_gossip VALUES
(18675,698);

/* ULDAMAN - creature 7172 spawn and gossip flag add */
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=7172;
DELETE FROM `creature` WHERE `id`=7172 AND `map`=70;
INSERT INTO `creature` (`id`,`map`,`modelid`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`curhealth`,`MovementType`) VALUES
(7172, 70, 6589, '150.49', '305.92', '-49.54', '5.17', 300, 4484, 0);

/* REV #493 */
-- Missing GO template --
DELETE FROM `gameobject_template` WHERE `entry`=181057;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(181057, 6, 6659, 'Ectoplasmic Distiller Trap', 0, 0, 1.4, 0, 0, 15, 27420, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Stable, Frozen & (???) Ectoplasm(s) (D2 chain) will drop only, when player have aura 27420 (Ectoplasmic Distiller) --
UPDATE `creature_loot_template` SET `lootcondition`='1', `condition_value1`='27420' WHERE `item` IN (21935, 21936, 21937);
-- Spectral Stalker (new faction: from friendy to enemy) --
UPDATE `creature_template` SET `faction_A`='54', `faction_H`='54' WHERE `entry`=16093;
-- Grimstone: disable random movement --
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`=10096;

/* REV 495 - Delete shrine's aura - handled by Outdoor PvP System */
DELETE FROM `gameobject` WHERE `guid` = 45864;
DELETE FROM `game_event_gameobject` WHERE `guid` = 45864;
DELETE FROM `gameobject_battleground` WHERE `guid` = 45864;

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (003) + Archaica updatepack 401_500 (5)';