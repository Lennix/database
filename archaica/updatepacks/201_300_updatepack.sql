/* Updatepack rev. 201 - 300 */
/* REV 210 */
/* Item reputation */
-- Warsong Gulch
UPDATE `item_template` SET `RequiredReputationRank`='4' WHERE `entry` IN (21565, 21566, 21567, 21568, 17349, 17352, 19062, 19061, 19060, 19068, 19067, 19066);
UPDATE `item_template` SET `RequiredReputationRank`='5' WHERE `entry` IN (17348, 17351, 19530, 19531, 19532, 19533, 20428, 19522, 19523, 19524, 19525, 20431, 19514, 19515, 19516, 19517, 20439, 19538, 19539, 19540, 19541, 20444, 19526, 19527, 19528, 19529, 20427, 19518, 19519, 19520, 19521, 20426, 19510, 19511, 19512, 19513, 20429, 19534, 19535, 19536, 19537, 20442);
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry` IN (19570, 19571, 19572, 19573, 20434, 19554, 19555, 19556, 19557, 20440, 19546, 19547, 19548, 19549, 20443, 19562, 19563, 19564, 19565, 20438, 19566, 19567, 19568, 19569, 20425, 19550, 19551, 19552, 19553, 20430, 19542, 19543, 19544, 19545, 20441, 19558, 19559, 19560, 19561, 20437);
UPDATE `item_template` SET `RequiredReputationRank`='7' WHERE `entry` IN (19595, 19596, 19597, 19587, 19589, 19590, 19582, 19583, 19584, 19578, 19580, 19581, 22752, 22749, 22750, 22748, 22753, 22672, 19506, 22747, 22740, 22741, 22673, 22676, 22651, 19505);

-- Arathi Basin
UPDATE `item_template` SET `RequiredReputationRank`='4' WHERE `entry` IN (17349, 17352, 20071, 20226, 20227, 20225, 20244, 20237, 20243, 20072, 20223, 20224, 20222, 20235, 20232, 20234);
UPDATE `item_template` SET `RequiredReputationRank`='5' WHERE `entry` IN (20043, 20047, 20046, 20045, 20042, 20041, 20150, 20163, 20171, 20190, 20195, 20204);
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry` IN (20054, 20053, 20052, 20050, 20049, 20048, 20159, 20167, 20186, 20154, 20199, 20208);
UPDATE `item_template` SET `RequiredReputationRank`='7' WHERE `entry` IN (20073, 20061, 20060, 20059, 20055, 20058, 20057, 20070, 20069, 20068, 20176, 20175, 20194, 20158, 20203, 20212, 20214, 20220);

-- Alterac Valley
UPDATE `item_template` SET `RequiredReputationRank`='4' WHERE `entry` IN (17349, 17352, 19307, 19318, 19032, 19031);
UPDATE `item_template` SET `RequiredReputationRank`='5' WHERE `entry` IN (19316, 19317, 19301, 17348, 17351, 19084, 19086, 19094, 19093, 19092, 19091, 19097, 19098, 19083, 19085, 19090, 19089, 19088, 19087, 19095, 19096);
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry` IN (19320, 19319, 19045, 19100, 19102, 19104, 19046, 19099, 19101, 19103);
UPDATE `item_template` SET `RequiredReputationRank`='7' WHERE `entry` IN (19312, 19315, 19308, 19311, 19309, 19310, 19324, 19323, 19321, 19325, 21563, 19030, 19029);

-- Argent Dawn
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry` IN (18171, 18169, 18170, 18172, 18173);
UPDATE `item_template` SET `RequiredReputationRank`='7' WHERE `entry`='18182';

-- The Timbermaw Furbolgs
UPDATE `item_template` SET `RequiredReputationRank`='4' WHERE `entry` IN (15754, 15742);
UPDATE `item_template` SET `RequiredReputationRank`='5' WHERE `entry` IN (16768, 16769);

-- The Thorium Brotherhood
UPDATE `item_template` SET `RequiredReputationRank`='4' WHERE `entry` IN (17018, 17023, 17022, 17051, 19444);
UPDATE `item_template` SET `RequiredReputationRank`='5' WHERE `entry` IN (17017, 19219, 19330, 17049, 17025, 19206, 17059, 17060, 19448);
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry` IN (19220, 19333, 19332, 17053, 19331, 19207, 17052, 19208, 19209, 19449);
UPDATE `item_template` SET `RequiredReputationRank`='7' WHERE `entry` IN (20040, 19210, 19211, 19212);

UPDATE `creature_template` SET `npcflag`='7' WHERE `entry` IN (11536, 12944, 14753, 14754, 15126, 15127);
UPDATE `creature_template` SET `npcflag`='23' WHERE (`entry`='11557');

/* Item Noggenfogger Elixir */
UPDATE `item_template` SET `spellcooldown_1`='-1' WHERE (`entry`='8529');

/* Quest Arena Master */
UPDATE `quest_template` SET `MinLevel`='1' WHERE (`entry`='7810');
UPDATE `quest_template` SET `MinLevel`='0', `QuestLevel`='55', `Details`='' WHERE (`entry`='7838');

/* Item Shellfish */
DELETE FROM `creature_loot_template` WHERE (`entry`='197') AND (`item`='13545');

/* Imperial Plate */
UPDATE `quest_template` SET `ReqItemCount1`='20' WHERE `entry` IN (7653, 7655, 7659);
UPDATE `quest_template` SET `ReqItemCount1`='40' WHERE (`entry`='7654');
UPDATE `quest_template` SET `ReqItemCount1`='60' WHERE `entry` IN (7656, 7658);
UPDATE `quest_template` SET `ReqItemCount1`='50' WHERE (`entry`='7657');

/* Item Eko */
DELETE FROM `creature_loot_template` WHERE `item` IN (12430, 12431, 12432, 12433, 12434, 12435, 12436);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`Groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(7431, 12430, 2.7, 0, 1, 1, 2, 12384, 1),(7434, 12430, 4, 0, 1, 1, 2, 12384, 1),(7432, 12430, 3, 0, 1, 1, 2, 12384, 1),(7430, 12430, 3.5, 0, 1, 1, 2, 12384, 1),(7433, 12430, 3.7, 0, 1, 1, 2, 12384, 1),(10738, 12431, 1.8, 0, 1, 1, 2, 12384, 1),(10916, 12431, 1.6, 0, 1, 1, 2, 12384, 1),(7441, 12431, 1.1, 0, 1, 1, 2, 12384, 1),(7442, 12431, 1.3, 0, 1, 1, 2, 12384, 1),(7439, 12431, 2.1, 0, 1, 1, 2, 12384, 1),(7440, 12431, 1.7, 0, 1, 1, 2, 12384, 1),(7438, 12431, 2.2, 0, 1, 1, 2, 12384, 1),(7446, 12432, 1.2, 0, 1, 1, 2, 12384, 1),(7444, 12432, 0.9, 0, 1, 1, 2, 12384, 1),(7443, 12432, 1.5, 0, 1, 1, 2, 12384, 1),(7445, 12432, 1.8, 0, 1, 1, 2, 12384, 1),(7450, 12433, 0.9, 0, 1, 1, 2, 12384, 1),(7451, 12433, 0.9, 0, 1, 1, 2, 12384, 1),(7452, 12433, 1.3, 0, 1, 1, 2, 12384, 1),(7454, 12433, 1.4, 0, 1, 1, 2, 12384, 1),(7453, 12433, 1.3, 0, 1, 1, 2, 12384, 1),(7447, 12434, 1.3, 0, 1, 1, 2, 12384, 1),(7448, 12434, 2.2, 0, 1, 1, 2, 12384, 1),(7449, 12434, 2.7, 0, 1, 1, 2, 12384, 1),(7457, 12435, 0.7, 0, 1, 1, 2, 12384, 1),(7459, 12435, 1.2, 0, 1, 1, 2, 12384, 1),(7460, 12435, 1.2, 0, 1, 1, 2, 12384, 1),(7458, 12435, 1, 0, 1, 1, 2, 12384, 1),(7429, 12436, 2.9, 0, 1, 1, 2, 12384, 1),(7428, 12436, 2.9, 0, 1, 1, 2, 12384, 1);

/* Schematic Truesilver Transformer */
DELETE FROM `npc_vendor` WHERE (`item`='18651');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('2685', '18651', '1', '43200');

/* Quest Hive in the Tower */
UPDATE `quest_template`SET `RequiredRaces`='0' WHERE (`entry`='1126');

/* REV 220 */
/* Quest A Donation */
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE entry IN (7794,7799,7804,7809,7817,7822,7831,7835,7795,7800,7805,7811,7818,7823,7824,7836,7793,7803,7808,7814,7821,7827,7834,7791,7802,7807,7813,7820,7826,7833);
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE entry IN (7796,7801,7806,7812,7819,7825,7832,7837);

/* NPC Shatterspear */
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry` IN (11196, 10919);

/* NPC Bloodpetal Pest */
UPDATE `creature_template` SET `lootid`='0' WHERE (`entry`='9157');
DELETE FROM `creature_loot_template` WHERE (`entry`='9157');

/* Quest Zapped Giants  */
DELETE FROM `creature_loot_template` WHERE (`item`='18956');
INSERT INTO `creature_loot_template` VALUES (14603, 18956, -100, 0, 1, 1, 0, 0, 0),(14604, 18956, -100, 0, 1, 1, 0, 0, 0),(14638, 18956, -100, 0, 1, 1, 0, 0, 0),(14639, 18956, -100, 0, 1, 1, 0, 0, 0),(14640, 18956, -100, 0, 1, 1, 0, 0, 0);

/* NPC Felbeast */
UPDATE `creature_template` SET `mindmg`='32', `maxdmg`='67', `attackpower`='345' WHERE (`entry`='8675');

/* Quest Morrowgrain Research */
UPDATE `quest_template` SET `SpecialFlags`='1', `RewRepValue1`='100' WHERE `entry` IN (3785, 3786);

/* Item Recipe Free Action Potion */
DELETE FROM `npc_vendor` WHERE (`entry`='3348') AND (`item`='5642');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('3348', '5642', '1', '9000');

/* Item Recipe Superior Mana Potion */
DELETE FROM `npc_vendor` WHERE (`entry`='4226') AND (`item`='13477');

/* Major Mana Potion */
DELETE FROM `creature_loot_template` WHERE (`entry`='1853') AND (`item`='13501');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1853', '13501', '14.88');

/* NPC Dreamscythe */
UPDATE `creature_template` SET `faction_A`='50', `faction_H`='50' WHERE (`entry`='5721');

/* NPC Missing mana */
UPDATE `creature_template` SET `minmana`='1923', `maxmana`='1923' WHERE `entry` IN (8656, 8657);
UPDATE `creature_template` SET `minmana`='2558', `maxmana`='2558' WHERE (`entry`='8658');
UPDATE `creature_template` SET `minmana`='1750', `maxmana`='1807' WHERE (`entry`='8336');

/* NPC Oozeling */
DELETE FROM `creature_loot_template` WHERE (`entry`='8257');
UPDATE `creature_template` SET `lootid`='0', `faction_H`='50' WHERE (`entry`='8257');

/* REV 227 */
/* Darkmoon Faire */
-- Ace of Portals
DELETE FROM `creature_loot_template` WHERE (`item`='19276');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1853', '19276', '3');

DELETE FROM `npc_vendor` WHERE (`entry`='14847') AND `item` IN (4419, 4422, 4425, 4426, 10305, 10306, 10307, 10308, 10309, 10310);
DELETE FROM `npc_vendor` WHERE (`entry`='14846') AND `item` IN (13456, 13468);
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry` IN (7927, 7928, 7929);

/* Love is in the Air */
-- Quests
UPDATE `item_template` SET `Duration`='864000', `ExtraFlags`='2' WHERE `entry` IN (22261, 22218, 21812);
UPDATE `item_template` SET `Duration`='604800', `ExtraFlags`='2' WHERE `entry` IN (22262, 22296, 22144, 22298, 22292, 22291, 22284, 22288, 22133, 22290, 22173, 22175, 22177, 21979, 21980, 22164, 21981, 22165, 22166, 22167, 22168, 22169, 22170, 22171, 22172, 22142, 22145, 21960, 22176, 22263, 22132, 22141, 22286, 22136, 22294, 22293, 22287, 22155, 22154, 22156, 21975, 22158, 22157, 22159, 22160, 22161, 22178, 22162, 22163, 22120, 22119, 22123, 22117, 22122, 22121, 22174, 22283, 22295, 22140, 22299, 22289, 22131, 22143, 22285, 22135, 22297, 22134, 22300);
UPDATE `item_template` SET `spellcharges_1`='-1' WHERE `entry` IN (22200, 22261);
UPDATE `quest_template` SET  `PrevQuestId`='8903', `NextQuestInChain`='9015' WHERE (`entry`='9024');
UPDATE `quest_template` SET `PrevQuestId`='9024' WHERE (`entry`='9025');
UPDATE `quest_template` SET `PrevQuestId`='9025' WHERE (`entry`='9026');
UPDATE `quest_template` SET `PrevQuestId`='9026' WHERE (`entry`='9027');
UPDATE `quest_template` SET `PrevQuestId`='8904', `NextQuestInChain`='8980' WHERE (`entry`='8979');
UPDATE `quest_template` SET `PrevQuestId`='8979' WHERE (`entry`='8980');
UPDATE `quest_template` SET `PrevQuestId`='8980' WHERE (`entry`='8982');
UPDATE `quest_template` SET `PrevQuestId`='8982' WHERE (`entry`='8983');
DELETE FROM `quest_template` WHERE (`entry`='8904');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `ReqItemId1`, `ReqItemCount1`, `CompleteEmote`) VALUES (8904, 2, -22, 1, 60, 8, 8979, 'Dangerous Love', 'There\'s something unnatural about this epidemic of love. It\'s disgusting, and as it lowers our defenses, it could be a threat to the all of us.$b$bIt\'s bad enough that so many of our people are caught up in this ridiculous behavior. But I think that it has spread even to our guardians, who should be immune to such things.$b$bFind one of our guardians and see if they\'ve been caught up in this foolishness.', 'Get a Guardian\'s Moldy Card and bring it to Fenstad Argyle in the Undercity.', 'So it is true. This is unbelievable. How could this have happened? Let me think for a moment. There must be a reason behind this.', 'Was I right to worry? Have our idiot guardians been overcome?', 22145, 1, 1);
-- Fragrant Cauldron
DELETE FROM `gameobject_template` WHERE (`entry`='181073');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`) VALUES ('181073', '2', '216', 'Fragrant Cauldron', '35', '93');
DELETE FROM gameobject WHERE guid = '253017';
INSERT INTO gameobject VALUES (253017, 181073, 0, 91.4867, -1725.99, 220.192, 3.56073, 0, 0, 0.97812, -0.20804, 25, 0, 1);
DELETE FROM `game_event_gameobject` WHERE (`guid`='253017') AND (`event`='8');
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES ('253017', '8');
-- Love Token
DELETE FROM `npc_vendor` WHERE (`item`='21815');
INSERT INTO `npc_vendor` VALUES (6929, 21815, 0, 0),(4603, 21815, 0, 0),(6738, 21815, 0, 0),(6740, 21815, 0, 0),(6741, 21815, 0, 0),(6746, 21815, 0, 0),(6928, 21815, 0, 0),(6737, 21815, 0, 0),(6727, 21815, 0, 0),(6734, 21815, 0, 0);

/* Lunar Festival */
DELETE FROM `spell_script_target` WHERE `entry` IN (26286, 26291, 26292, 26304, 26325, 26327);
INSERT INTO `spell_script_target` VALUES (26286, 0, 180771),(26286, 0, 180850),(26286, 0, 180868),(26291, 0, 180771),(26291, 0, 180850),(26291, 0, 180868),(26292, 0, 180771),(26292, 0, 180850),(26292, 0, 180868),(26304, 0, 180772),(26304, 0, 180859),(26304, 0, 180869),(26304, 0, 180874),(26325, 0, 180772),(26325, 0, 180859),(26325, 0, 180869),(26325, 0, 180874),(26327, 0, 180772),(26327, 0, 180859),(26327, 0, 180869),(26327, 0, 180874);

UPDATE `quest_template` SET `QuestLevel`='60' WHERE (`QuestLevel`>'60');
UPDATE `quest_template` SET `MinLevel`='60' WHERE (`MinLevel`>'60');

/* NPC Scholomance Student */
UPDATE `creature_template` SET `minhealth`='17226', `maxhealth`='17766' WHERE (`entry`='10475');

/* REPUTACE */
/* Thorium Brotherhood */
-- Quest Restoring Fiery Flux Supplies via
UPDATE `quest_template` SET `MinLevel`='45', `Title`='Restoring Fiery Flux Supplies via Kingsblood', `Details`='Let\'s not waste more of my precious time with jibber jabber, $N. It\'s time to focus on replenishing our dwindling fiery flux supply.$BWhat I\'m gonna need from you is the following:$B$B*2 Incendosaur scales.$B*4 Kingsblood.$B*1 Coal.$B$BI\'ll take all that you can offer!$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.', `Objectives`='Deliver 2 Incendosaur Scales, 4 Kingsblood and one Coal to Master Smith Burninate.' WHERE (`entry`='7736');
UPDATE `quest_template` SET `MinLevel`='45', `Details`='Let\'s not waste more of my precious time with jibber jabber, $R. It\'s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I\'m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Iron bars.$B$B*Coal.$B$BI\'ll take all that you can offer!$B$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.' WHERE (`entry`='8241');
UPDATE `quest_template` SET `MinLevel`='45', `Details`='Let\'s not waste more of my precious time with jibber jabber, $R. It\'s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I\'m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Heavy Leather.$B$B*Coal.$B$BI\'ll take all that you can offer!$B$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.' WHERE (`entry`='8242');

-- Quest Favor Amongst the Brotherhood
UPDATE `quest_template` SET `MinLevel`='60', `RequiredMinRepValue`='1' WHERE `entry` IN (6642, 6643, 6644, 6645, 6646);

-- Other quests
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE (`entry`='6642');
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE `entry` IN (7659,7701,7722,7723,7724,7727,7728,7729);
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE `entry` IN (6645, 7655, 7656, 7657, 7658, 7659);
UPDATE `quest_template` SET `RewRepValue1`='200' WHERE `entry` IN (7658, 7657, 7656, 6646, 6643, 6644, 7653, 7654);

/* Timbermaw Hold */
-- Quest Feathers for
UPDATE `quest_template` SET `Objectives`='Some of the Deadwood furbolgs wear a distinctive headdress that may be used as a means of proof in thinning their numbers. Bring me a feather from any headdresses you acquire; for every set of five you bring me, you will earn recognition amongst the Timbermaw.', `RewRepValue1`='50' WHERE (`entry`='8467');
UPDATE `quest_template` SET `MinLevel`='45', `Objectives`='Some of the Deadwood furbolgs wear a distinctive headdress that may be used as a means of proof in thinning their numbers. Bring me a feather from any headdresses you acquire; for every set of five you bring me, you will earn recognition amongst the Timbermaw.', `RewRepValue1`='50' WHERE (`entry`='8466');

-- Quest Beads for Salfa
UPDATE `quest_template` SET `MinLevel`='50', `Objectives`='The Winterfall are known to carry spirit beads to ward against foul spirits. These beads have clearly failed in their purpose, as the Winterfall themselves are the agents of corruption. Bring to me these spirit beads from fallen Winterfall furbolgs; for every set of five you bring me, you will earn recognition amongst the Timbermaw.', `RewRepValue1`='50' WHERE (`entry`='8469');

-- Quest Timbermaw Ally
UPDATE `quest_template` SET `MinLevel`='45', `SpecialFlags`='0', `RequestItemsText`='Keep at it, $N. If you are to earn our trust, you will need to prove yourself to us.', `RewChoiceItemId1`='21311', `RewChoiceItemId2`='21312', `RewChoiceItemCount1`='1', `RewChoiceItemCount2`='1', `RewRepFaction1`='576', `RewRepValue1`='150', `RewMoneyMaxLevel`='4400' WHERE (`entry`='6131');
DELETE FROM `quest_template` WHERE (`entry`='8460');
UPDATE `creature_questrelation` SET `quest`='6131' WHERE (`quest`='8460');
UPDATE `creature_involvedrelation` SET `quest`='6131' WHERE (`quest`='8460');
UPDATE `creature_loot_template` SET `condition_value1`='6131' WHERE (`item`='21377');
UPDATE `quest_template` SET `PrevQuestId`='6131' WHERE `entry` IN (8466, 8467, 8462);

-- Quest Winterfall Activity
UPDATE `quest_template` SET `RequiredRaces`='0', `RequestItemsText`='We very much appreciate what you have done for the Timbermaw, $N. Your continued efforts will surely earn my tribe''s trust and respect.', `RewChoiceItemId1`='21318', `RewChoiceItemId2`='21319', `RewChoiceItemId3`='21320', `RewChoiceItemId4`='21322', `RewChoiceItemCount1`='1', `RewChoiceItemCount2`='1', `RewChoiceItemCount3`='1', `RewChoiceItemCount4`='1', `RewRepFaction1`='576', `RewRepValue1`='150', `RewMoneyMaxLevel`='4026' WHERE (`entry`='6241');
DELETE FROM `quest_template` WHERE (`entry`='8464');
DELETE FROM `creature_questrelation` WHERE `quest` IN (6241, 8464);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('11556', '6241');
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (6241, 8464);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('11556', '6241');
UPDATE `creature_loot_template` SET `condition_value1`='6241' WHERE (`item`='21383');

-- Quest Deadwood of the North
DELETE FROM `creature_questrelation` WHERE (`id`='11554') AND (`quest`='6221');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('11554', '6221');
DELETE FROM `creature_involvedrelation` WHERE (`id`='11554') AND (`quest`='6221');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('11554', '6221');

-- Quest Sacred Cloth
UPDATE `quest_template` SET `RequiredRaces`='0', `RewRepValue1`='100' WHERE (`entry`='6032');

-- Other quests
UPDATE `quest_template` SET `RewRepValue1`='25' WHERE `entry` In (8462, 8465);
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE (`entry`='6031');
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE `entry` IN (8461, 8470, 8471, 6221);
UPDATE `quest_template` SET `RewRepFaction1`='576', `RewRepValue1`='500' WHERE (`entry`='8481');

-- NPCs
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='5' WHERE `creature_id` IN (7154,7153,7155,7156,7157,7438,7439,7440,7441,7442,10916,7158);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25' WHERE `creature_id` IN (10199,10738, 14342, 15623, 9462, 9464);

/* Argent Dawn */
-- NPCs
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='5' WHERE `creature_id` IN (10384,10580,10485,10482,10481,10480,10391,10390,8558,8557,8556,8555,8545,8544,10698,10816,10382,10381,1805,1788,8548,8550,8553,10827,8547,8551,8546,11873,10940,8543,8542,8541,4474,4472,1804,1802,1796,1795,1794,1793,1791,1789,1787,1785,1784,4475,8524,8540,8539,8538,8535,8534,8532,8531,8530,8529,8528,8527,8526,8525,1783,10398,11551,11082,12262,10500,10499,10498,10495,10491,10489,12263,8523,14861,10400,10399,10470,10477,10476,11257,11582,10469,10471,10488,10487,10486,10385,10417,10416,10414,10413,10412,10409,10408,10407,10406,10405,10801,10478,10464,10463);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='15' WHERE `creature_id` IN (16184,1852,10821,1847,10825,10826);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25' WHERE `creature_id` IN (10901,10433,11622,10503,10432,10437,10435,10502,10436,10438,10504,11261,10558,10505,10809,10507);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='50' WHERE `creature_id` IN (10440,10508);
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='4' WHERE (`RewOnKillRepFaction1`='529') AND(`MaxStanding1`='5');

-- Quests
UPDATE `quest_template` SET `RewRepValue1`='10' WHERE `entry` IN (9125, 9127, 9129, 9132, 9137, 9142);
UPDATE `quest_template` SET `RewRepValue1`='25' WHERE `entry` IN (5218, 5221, 5224, 5227, 5402, 5403, 5404, 5406, 5407, 5408, 9198, 9200, 9201, 9202, 9203, 9204, 9205, 9206);
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE `entry` IN (9178, 9182, 9184, 9186, 9188, 9190, 9191, 9194, 9195, 9196);
UPDATE `quest_template` SET `RewRepValue1`='75' WHERE `entry` IN (5210, 5217, 5220, 5223, 5226, 5230, 5232, 5234, 5236, 5522, 5582, 6028, 6029, 6030, 9178, 9185, 9187);
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE `entry` IN (5206, 5212, 9036, 5464);
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE `entry` IN (6021, 8418, 1199, 5251, 5262, 5263);
UPDATE `quest_template` SET `RewRepValue1`='200' WHERE `entry` IN (5942, 9040, 9041, 9042, 9047, 9049, 9050, 9058, 9059, 9060, 9061, 9069, 9071, 9072, 9074, 9075, 9080, 9081, 9082, 9083, 9084, 9089, 9090, 9091, 9092, 9093, 9099, 9100, 9101, 9102, 9104, 9107, 9109, 9114, 9115, 9116, 9118);
UPDATE `quest_template` SET `RewRepValue1`='250' WHERE `entry` IN (5181, 5216, 5219, 5222, 5225, 5229, 5231, 5233, 5235, 5243, 5741, 8414, 9038);
UPDATE `quest_template` SET `RewRepValue1`='350' WHERE `entry` IN (105, 211, 1198, 6027);
UPDATE `quest_template` SET `RewRepValue1`='500' WHERE `entry` IN (1200,5237,5238,5265,5529,6561,8859,8945,9121,9122,9124,9126,9128,9131,9136,9141);
UPDATE `quest_template` SET `RewRepFaction1`='529', `RewRepValue1`='500' WHERE (`entry`='8858');

/* Cenarion Circle */
-- NPCs
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='1' WHERE `creature_id` IN (15202, 11881, 15542);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='5' WHERE `creature_id` IN (15200,11804,11880,11882,11883,15541,15308,15213,14479,15201,11803);

-- Quests
UPDATE `quest_template` SET `RewRepValue1`='10' WHERE `entry` IN (8275, 8276, 8800);
UPDATE `quest_template` SET `RewRepValue1`='25' WHERE `entry` IN (8507, 8731, 1123, 6762, 8331);
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE `entry` IN (5930, 8498, 8738, 8739, 8778, 8786, 8787, 6844, 8501, 8502, 8534, 8539, 8687, 8770, 8771, 8772, 8773, 8774, 8775, 8776, 8777, 8780, 8781);
UPDATE `quest_template` SET `RewRepValue1`='75' WHERE `entry` IN (8362, 1124, 1185, 4984, 4985, 6127, 6128, 6129, 8285, 8332);
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE `entry` IN (1125, 6130, 8829, 5527, 8309, 8310, 8320, 8361, 8364);
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE `entry` IN (8277, 6845, 8321, 8348, 5526, 7064, 7065, 7066);
UPDATE `quest_template` SET `RewRepValue1`='200' WHERE `entry` IN (8315, 8306, 9248);
UPDATE `quest_template` SET `RequiredMinRepValue`='9000', `RewRepValue1`='100' WHERE (`entry`='8363');
UPDATE `quest_template` SET `RewRepFaction1`='609', `RewRepValue1`='500' WHERE (`entry`='8364');
UPDATE `quest_template` SET `RewRepFaction1`='609', `RewRepValue1`='50' WHERE (`entry`='5929');
UPDATE `quest_template` SET `RewRepValue1`='250' WHERE `entry` IN (8319, 1126, 8278, 8281, 8283, 8284, 8287, 8304, 8308, 8318, 9419, 8316);
UPDATE `quest_template` SET `RewRepValue1`='500' WHERE (`entry`='9338');
UPDATE `quest_template` SET `RewRepFaction1`='0', `RewRepValue1`='0' WHERE (`entry`='7044');
UPDATE `quest_template` SET `RewRepFaction1`='609', `RewRepValue1`='250' WHERE `entry` IN (6001, 6002, 9422);

/* Bloodsail Buccaneers and Steamwheedle Cartel */
-- NPCs
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25', `RewOnKillRepValue2`='-125' WHERE (`creature_id`='4624');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25' WHERE (`creature_id`='4723');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2`='169' WHERE (`RewOnKillRepFaction1`='87');

/* Wintersabers Trainers */
-- Quests
UPDATE `quest_template` SET `RewRepValue1`='75' WHERE (`entry`='5981');
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE `entry` IN (4970, 5201);

/* Hydraxian Waterlords */
-- NPCs
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (11747, 11672, 11502);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `RewOnKillRepValue1`) VALUES ('11502', '749', '7', '200');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='5' WHERE `creature_id` IN (11746, 11744, 7032);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='15' WHERE (`creature_id`='9017');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='20' WHERE `creature_id` IN (11658, 12101, 11668, 11673);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25' WHERE (`creature_id`='14478');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='40' WHERE `creature_id` IN (11666, 11667, 11659, 12100, 12076);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='150' WHERE (`creature_id`='11988');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='50' WHERE (`creature_id`='9816');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='100' WHERE `creature_id` IN (11982, 12056, 12057, 12098, 12118, 12259, 12264);

/* Zandalar tribe */
-- NPCs
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (14515, 15082, 15083, 15084, 15085);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `RewOnKillRepValue1`) VALUES 
('14515', '270', '7', '100'),
('15082', '270', '7', '25'),
('15085', '270', '7', '25'),
('15084', '270', '7', '25'),
('15083', '270', '7', '25');
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='5' WHERE (`RewOnKillRepFaction1`='270') AND(`MaxStanding1`='6');

-- Quest
UPDATE `quest_template` SET `RewRepFaction1`='270', `RewRepValue1`='50' WHERE (`entry`='8243');

/* Ravenholdt and Syndicate */
-- Quest
UPDATE `quest_template` SET `RequiredMaxRepValue`='1', `RewRepValue1`='100' WHERE (`entry`='6701');

-- NPCs
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`='25' WHERE (`creature_id`='13085');
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue2`='-25' WHERE `creature_id` IN (6707,6766,6768,6771,6777,6779,7323,7324,7325,8309);

/* Darkmoon Faire */
-- Quests
UPDATE `quest_template` SET `RewRepValue1`='50' WHERE entry IN (7926, 7945);
UPDATE `quest_template` SET `RewRepValue1`='75' WHERE entry IN (7944, 7938, 7937);
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE entry IN (7899, 7900, 7901, 7902, 7903, 7881, 7898, 7885, 7896, 7895, 7894, 7893, 7889, 7884, 7883);
UPDATE `quest_template` SET `RewRepValue1`='150' WHERE entry IN (7907, 7928);
UPDATE `quest_template` SET `RewRepValue1`='250' WHERE entry IN (7882, 7890, 7891, 7892, 7897);
UPDATE `quest_template` SET `RewRepValue1`='350' WHERE entry IN (7929, 7927);
UPDATE `quest_template` SET `RewRepFaction1`='909', `RewRepValue1`='100' WHERE (`entry`='7942');

/* REV 228 */
DELETE FROM `gameobject_scripts` WHERE `id` = 15351;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(15351, 0, 11, 15640, 7200, 0, 0, 0, 0, 0),
(15351, 0, 12, 15576, 7200, 0, 0, 0, 0, 0),
(15351, 0, 11, 15639, 10, 0, 0, 0, 0, 0),
(15351, 0, 11, 15352, 7200, 0, 0, 0, 0, 0);

UPDATE `creature_ai_scripts` SET `action1_param1` = 9 WHERE (`creature_id` BETWEEN 9034 AND 9040) AND (`event_type` =21);

DELETE FROM `spell_script_target` WHERE `entry` = 13489;
INSERT INTO `spell_script_target` (`entry` ,`type` ,`targetEntry`) VALUES ('13489',  '1',  '9156');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9025 AND `action1_type` = 11 AND `action1_param1` = 6524;
INSERT INTO `creature_ai_scripts` (`id` ,`creature_id` ,`event_type` ,`event_inverse_phase_mask` ,`event_chance` ,`event_flags` ,`event_param1` ,`event_param2` ,`event_param3` ,`event_param4` ,`action1_type` ,`action1_param1` ,`action1_param2` ,`action1_param3` ,`action2_type` ,`action2_param1` ,`action2_param2` ,`action2_param3` ,`action3_type` ,`action3_param1` ,`action3_param2` ,`action3_param3` ,`comment`) VALUES (NULL ,  '9025',  '0',  '0',  '100',  '3',  '3000',  '6000',  '10000',  '10000',  '11',  '6524',  '1',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'Lord Roccor - Cast Ground Tremor');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9037; -- Gloom'rel --
/*INSERT INTO `creature_ai_scripts` VALUES (903705, 9037, 21, 0, 100, 2, 0, 0, 0, 0, 34, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gloom\'rel - Set Inst Data on Reached Home');
INSERT INTO `creature_ai_scripts` VALUES (903704, 9037, 2, 0, 100, 3, 30, 0, 30000, 45000, 11, 13847, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gloom\'rel - Cast Recklessness at 30% HP');
INSERT INTO `creature_ai_scripts` VALUES (903701, 9037, 0, 0, 100, 3, 2000, 4000, 15000, 18000, 11, 9080, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gloom\'rel - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (903702, 9037, 0, 0, 100, 3, 5000, 7000, 7000, 9000, 11, 40504, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gloom\'rel - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (903703, 9037, 0, 0, 100, 3, 9000, 13000, 14000, 18000, 11, 13737, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gloom\'rel - Cast Mortal Strike');*/ -- zakomentovane pre pripadnu obnovu --

UPDATE `creature_template` SET `spell1` = '14872', `spell2` = '9573', `ScriptName` = 'generic_creature' WHERE `entry` = 9537;
UPDATE `creature_template` SET `npcflag` = (1 + 2/* + 32768*/) WHERE `entry` = 8888;
UPDATE `creature_template` SET `minlevel` = '54', `maxlevel` = '54', `faction_A` = '54', `faction_H` = '54', `flags_extra` = '2' WHERE `entry` = 8982;

/* Spawn book when Jandice is dead */
UPDATE `gameobject` SET `spawntimesecs` = -43200 WHERE `id`=180794;

/* Vectus, Alexei - not needed stuff */
DELETE FROM `creature_template_addon` WHERE `entry`=10504;
DELETE FROM `creature_addon` WHERE `guid` IN (48805, 48863);

/* Marduk gossip */
DELETE FROM `npc_gossip` WHERE `npc_guid`=48806;
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('48806', '4447');

UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry` IN (160836, 161495, 160845);
UPDATE `gameobject` SET `spawntimesecs` = '-1' WHERE `id` BETWEEN 164820 AND 164825;

/* Jarien & Sothos heirlooms */
UPDATE `gameobject` SET `spawntimesecs` = -43200, `animprogress` = 100 WHERE `id`=181083;

/* Summon GO Spectral Chalice */
DELETE FROM `gameobject` WHERE `id` = 164869;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(253417, 164869, 230, 1222.67, -242.048, -85.6736, 0, 0, 0, 0, 0, -300, 0, 1);

-- Quest: The Princess's Surprise ma byt iba pre alianciu, horda ma vlastny quest --
UPDATE `quest_template` SET `RequiredRaces` = '77' WHERE `entry` = 4363;

/* REV 261 */
/* Item spellcharges */
UPDATE item_template SET spellcharges_1 = 0 WHERE entry IN (13156, 9719);
UPDATE item_template SET spellcharges_1 = -1 WHERE entry IN (737,3745,3930,4472,4529,4639,4823,5020,5165,5397,5411,5415,5810,5851,6866,7273,7586,7733,7740,7741,8149,8526,8584,8683,9241,9249,9263,9323,9472,9530,10460,10793,11078,11086,11141,11147,11231,11243,11569,11570,11602,11622,11642,11644,11645,11647,11833,12262,12288,12301,12346,12347,12350,12368,12534,12565,12722,12733,12807,12814,12848,12973,13302,13303,13304,13305,13306,13307,13523,13873,14644,15002,15209,15454,15877,16972,17324,17333,17506,17507,17689,18169,18170,18171,18172,18173,18266,18268,18329,18330,18331,18488,18489,18539,18746,18749,19036,19462,19707,19708,19709,19710,19711,19712,19713,19714,19715,19782,19785,19786,19787,19789,19790,19813,19814,19815,19816,19817,19818,19819,19820,19821,19883,19931,19974,20403,20422,20464,20518,20526,20527,20528,20531,20532,20533,20542,20620,21039,21041,21143,21761,21762,21984,22635,22636,22638,22726,23247);
UPDATE item_template SET spellcharges_1 = -4 WHERE entry = 12906;
UPDATE item_template SET spellcharges_1 = -5 WHERE entry IN (12300,12323,12815,15875);
UPDATE item_template SET spellcharges_1 = -10 WHERE entry = 15736;

/* Item Schematic Thorium Tube */
DELETE FROM `npc_vendor` WHERE (`entry`='11185') AND (`item`='16047');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('11185', '16047', '1', '10800');

/* NPC Lord Skwol */
UPDATE `creature_template` SET `modelid_1`='800' WHERE (`entry`='15305');

/* NPC Specters of Caer Darrow */
DELETE FROM `npc_vendor` WHERE `entry` IN (11278, 11287);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11278, 8030, 0, 0),(11278, 12703, 0, 0),(11278, 12819, 0, 0),(11278, 12823, 0, 0),(11278, 13485, 0, 0),(11278, 13501, 0, 0),(11287, 159, 0, 0),(11287, 414, 0, 0),(11287, 422, 0, 0),(11287, 1179, 0, 0),(11287, 1205, 0, 0),(11287, 1645, 0, 0),(11287, 1707, 0, 0),(11287, 1708, 0, 0),(11287, 2070, 0, 0),(11287, 3927, 0, 0),(11287, 4540, 0, 0),(11287, 4541, 0, 0),(11287, 4542, 0, 0),(11287, 4544, 0, 0),(11287, 4601, 0, 0),(11287, 8766, 0, 0),(11287, 8932, 0, 0),(11287, 8950, 0, 0);
UPDATE creature_template SET faction_A = '1080', faction_H = '1080' WHERE entry = '11287';
UPDATE creature_template SET npcflag = '6' WHERE entry = '11278';
DELETE FROM `creature` WHERE `id` IN (11278, 11316, 11283, 11282, 11287);
INSERT INTO `creature` (`id`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`) VALUES 
('11278', '11027', '1149.21', '-2508', '62.107', '3.855', '430', '0', '3517'),
('11316', '11033', '1221.74', '-2508', '72.911', '4.228', '310', '0', '1684'),
('11283', '10928', '1179.72', '-2604.55', '72.8581', '4.48963', '370', '0', '64'),
('11282', '10929', '1102.8', '-2545.46', '59.1817', '4.4865', '318', '0', '64'),
('11287', '11028', '1081.91', '-2574', '59.957', '0.301', '310', '0', '2192');

/* Missing data in creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` IN (89,2149,2757,2759,3230,3509,3679,3939,4196,4277,6250,6388,6390,7550,7560,8888,9297,9637,10184,10928,11064,11277,11278,11279,11280,11281,12922,12999,13577,14429,15429,15561,15567,15631,15882,15883, 11936, 11316, 11283, 11282, 11287);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (89, 0, 0, 0, 0, 0, '19483 0'),(2149, 6080, 0, 0, 0, 0, NULL),(2757, 0, 0, 4097, 0, 0, NULL),(2759, 0, 0, 4097, 0, 0, NULL),(3230, 0, 0, 4097, 0, 0, NULL),(3509, 0, 0, 4097, 0, 0, NULL),(3679, 0, 3, 4097, 0, 0, NULL),(3939, 0, 0, 4097, 0, 0, NULL),(4196, 0, 0, 4097, 0, 0, '6590 0'),(4277, 0, 0, 10241, 0, 0, NULL),(6250, 0, 0, 4097, 0, 0, NULL),(6388, 10720, 0, 0, 0, 0, NULL),(6390, 10720, 0, 0, 0, 0, NULL),(7550, 0, 0, 10241, 0, 0, NULL),(7560, 0, 0, 10241, 0, 0, NULL),(8888, 0, 65536, 1, 0, 0, '10848 0'),(9297, 0, 0, 4097, 0, 0, NULL),(9637, 0, 0, 4097, 0, 0, NULL),(10184, 0, 3, 1, 0, 0, NULL),(10928, 0, 0, 4097, 0, 0, NULL),(11064, 0, 16777216, 4097, 0, 0, NULL),(11277, 0, 0, 0, 0, 0, '17622 0'),(11278, 0, 0, 0, 0, 0, '17622 0'),(11279, 0, 0, 0, 0, 0, '17622 0'),(11280, 0, 0, 0, 0, 0, '17622 0'),(11281, 0, 0, 0, 0, 0, '17622 0'),(12922, 0, 0, 4097, 0, 0, NULL),(12999, 0, 0, 4097, 0, 0, NULL),(13577, 2786, 0, 0, 0, 0, NULL),(14429, 0, 0, 4097, 0, 0, NULL),(15429, 0, 0, 0, 0, 0, '25163 0 25163 1'),(15561, 0, 0, 4097, 0, 0, '25824 0'),(15567, 0, 0, 4097, 0, 0, '25824 0'),(15631, 0, 0, 4097, 0, 0, '25824 0'),(15882, 0, 0, 4097, 0, 0, NULL),(15883, 0, 0, 4097, 0, 0, NULL),(11936, 0, 0, 0, 0, 0, '17622 0'),(11316, 0, 0, 0, 0, 0, '17622 0'),(11283, 0, 0, 0, 0, 0, '17622 0'),(11282, 0, 0, 0, 0, 0, '17622 0'),(11287, 0, 0, 0, 0, 0, '17622 0');

/* Quest A Troubled Spirit */
DELETE FROM `creature_questrelation` WHERE (`quest`='8417');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (3041, 8417),(3354, 8417),(4593, 8417),(5113, 8417),(5479, 8417),(7315, 8417),(17120, 8417);

/* Instance missing and bad loot */
DELETE FROM `creature_loot_template` WHERE `entry` IN (9019, 5709, 12201, 8443, 1666, 1696, 1663, 10430);
DELETE FROM `creature_loot_template` WHERE (`entry`='639') AND (`item`='2874');
DELETE FROM `creature_loot_template` WHERE (`entry`='10813') AND (`item`='35027');
DELETE FROM `creature_loot_template` WHERE (`entry`='10439') AND (`item`='24016');
DELETE FROM `creature_loot_template` WHERE (`entry`='10429') AND (`item`='35022');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (9019, 11078, 4, 0, 1, 1, 0, 0, 0),(9019, 11446, 25, 0, 1, 1, 8, 4242, 0),(9019, 11468, -80, 0, 4, 9, 0, 0, 0),(9019, 12033, 2, 0, 1, 1, 0, 0, 0),(9019, 14047, 17, 0, 1, 4, 0, 0, 0),(9019, 18945, 10, 0, 1, 10, 0, 0, 0),(9019, 22528, 7, 0, 2, 4, 0, 0, 0),(9019, 35014, 100, 1, -35014, 2, 0, 0, 0),(5709, 4460, 11, 0, 1, 1, 0, 0, 0),(5709, 10454, 100, 0, 1, 1, 0, 0, 0),(5709, 35013, 100, 1, -35013, 2, 0, 0, 0),(12201, 4552, 7, 0, 1, 1, 0, 0, 0),(12201, 7912, 18, 0, 1, 2, 0, 0, 0),(12201, 8150, 13, 0, 1, 1, 0, 0, 0),(12201, 17684, -80, 0, 1, 1, 0, 0, 0),(12201, 35009, 100, 1, -35009, 2, 0, 0, 0),(8443, 6444, 7, 0, 1, 1, 0, 0, 0),(8443, 6826, 12, 0, 1, 1, 0, 0, 0),(8443, 10663, -100, 0, 1, 1, 0, 0, 0),(8443, 35012, 100, 1, -35012, 2, 0, 0, 0),(639, 2874, 100, 0, 1, 1, 6, 469, 0),(1666, 929, 1.5, 4, 1, 1, 0, 0, 0),(1666, 1205, 3, 3, 1, 1, 0, 0, 0),(1666, 2280, 1, 1, 1, 1, 0, 0, 0),(1666, 2592, 13, 2, 1, 2, 0, 0, 0),(1666, 3385, 1, 4, 1, 1, 0, 0, 0),(1666, 3640, -100, 0, 1, 1, 0, 0, 0),(1666, 4306, 30, 2, 1, 2, 0, 0, 0),(1666, 4542, 7, 3, 1, 1, 0, 0, 0),(1666, 24059, 5, 1, -24059, 1, 0, 0, 0),(1666, 24722, 1, 1, -24722, 1, 0, 0, 0),(1696, 929, 1.7, 3, 1, 1, 0, 0, 0),(1696, 1205, 3, 0, 1, 1, 0, 0, 0),(1696, 2589, 8, 2, 1, 5, 0, 0, 0),(1696, 2592, 26, 2, 1, 4, 0, 0, 0),(1696, 3358, 0.8, 3, 1, 1, 0, 0, 0),(1696, 3630, -100, 0, 1, 1, 0, 0, 0),(1696, 3770, 5, 0, 1, 1, 0, 0, 0),(1696, 4306, 2, 2, 1, 3, 0, 0, 0),(1696, 24059, 20, 1, -24059, 1, 0, 0, 0),(1696, 24106, 10, 1, -24106, 1, 0, 0, 0),(1696, 24722, 1, 1, -24722, 1, 0, 0, 0),(1663, 422, 5, 0, 1, 1, 0, 0, 0),(1663, 929, 2, 0, 1, 1, 0, 0, 0),(1663, 1205, 3, 0, 1, 1, 0, 0, 0),(1663, 2592, 11, 2, 1, 2, 0, 0, 0),(1663, 2909, -40, 0, 1, 1, 0, 0, 0),(1663, 3385, 1, 0, 1, 1, 0, 0, 0),(1663, 3628, -100, 0, 1, 1, 0, 0, 0),(1663, 4306, 26, 2, 1, 2, 0, 0, 0),(1663, 24059, 5, 1, -24059, 1, 0, 0, 0),(1663, 24722, 1, 1, -24722, 1, 0, 0, 0),(10813, 35027, 100, 1, -35027, 2, 0, 0, 0),(10439, 24016, 100, 1, -24016, 1, 0, 0, 0),(10429, 35022, 100, 1, -35022, 2, 0, 0, 0),(10430, 19227, 5, 0, 1, 1, 0, 0, 0),(10430, 24101, 13, 0, 1, 1, 0, 0, 0),(10430, 35023, 100, 1, -35023, 2, 0, 0, 0);
DELETE FROM `reference_loot_template` WHERE (`entry`='35012');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (35012, 10838, 15, 1, 1, 1, 0, 0, 0),(35012, 10842, 0, 1, 1, 1, 0, 0, 0),(35012, 10843, 0, 1, 1, 1, 0, 0, 0),(35012, 10844, 15, 1, 1, 1, 0, 0, 0),(35012, 10845, 0, 1, 1, 1, 0, 0, 0),(35012, 10846, 0, 1, 1, 1, 0, 0, 0),(35012, 12462, 1, 1, 1, 1, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE `entry` IN (5721, 5720) AND (`item`='35011');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`) VALUES ('5721', '35011', '40', '-35011');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`) VALUES ('5720', '35011', '40', '-35011');
DELETE FROM `creature_loot_template` WHERE (`entry`='12876') AND `item` IN (24048, 24064, 24066, 24068);
INSERT INTO `creature_loot_template` VALUES (12876, 24048, 1, 1, -24048, 1, 0, 0, 0),(12876, 24064, 1, 1, -24064, 1, 0, 0, 0),(12876, 24066, 0.5, 1, -24066, 1, 0, 0, 0),(12876, 24068, 1, 1, -24068, 1, 0, 0, 0);

-- Ragefire Chasm
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='11520') AND (`item`='14145');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='11520') AND `item` IN (14148, 14149);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='11518') AND `item` IN (14147, 14150);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='11518') AND (`item`='14151');

-- Deadmines
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='644') AND (`item`='872');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='95' WHERE (`entry`='644') AND (`item`='5187');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='642') AND (`item`='1937');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='90' WHERE (`entry`='642') AND (`item`='2169');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='45' WHERE (`entry`='1763') AND (`item`='1156');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='55' WHERE (`entry`='1763') AND (`item`='5199');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='646') AND `item` IN (5192, 5196);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='646') AND (`item`='7230');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='647') AND `item` IN (5200, 10403);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='647') AND (`item`='5201');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='65' WHERE (`entry`='645') AND (`item`='5197');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='35' WHERE (`entry`='645') AND (`item`='5198');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='639') AND `item` IN (5191, 10399);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='639') AND `item` IN (5193, 5202);

-- Wailling Caverns
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='80' WHERE (`entry`='3671') AND (`item`='5404');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='3671') AND `item` IN (6446, 10412);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='3669') AND (`item`='6465');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='3669') AND `item` IN (6460, 10410);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='90' WHERE (`entry`='3653') AND (`item`='6447');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='3653') AND (`item`='13245');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='3670') AND (`item`='6472');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='3670') AND (`item`='6473');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE (`entry`='3674') AND `item` IN (6448, 6449);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='25' WHERE (`entry`='3673') AND `item` IN (5970, 6459, 6469, 10411);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='5775') AND `item` IN (765, 785, 2447, 2449, 2450, 2452, 2453);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='5775') AND (`item`='6629');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='5775') AND `item` IN (6630, 6631);

-- Shadowfang Keep
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='3886') AND (`item`='1292');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='45' WHERE (`entry`='3886') AND `item` IN (6226, 6633);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='3887') AND (`item`='6321');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='70' WHERE (`entry`='3887') AND (`item`='6323');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4279') AND (`item`='6318');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='4279') AND (`item`='6319');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='4274') AND (`item`='3230');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='70' WHERE (`entry`='4274') AND (`item`='6340');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='3927') AND (`item`='3748');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='3927') AND (`item`='6314');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4275') AND (`item`='6220');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4275') AND `item` IN (6324, 6392);

-- Blackfathom Deeps
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4887') AND (`item`='6907');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='4887') AND (`item`='6908');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4831') AND `item` IN (888, 11121);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4831') AND (`item`='3078');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE (`entry`='6243') AND `item` IN (6905, 6906);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='4832') AND (`item`='1155');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4832') AND (`item`='6903');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4830') AND (`item`='6901');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='4830') AND `item` IN (6902, 6904);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4829') AND (`item`='6909');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4829') AND `item` IN (6910, 6911);

-- Gnomeregan
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='6229') AND (`item`='9449');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='6229') AND (`item`='9450');

-- Razorfen Kraul
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4428') AND (`item`='2816');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4428') AND `item` IN (6682, 6685);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='4420') AND (`item`='6686');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4420') AND (`item`='6687');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='4422') AND (`item`='6690');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4422') AND (`item`='6691');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4421') AND (`item`='6692');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='4421') AND `item` IN (6693, 6694);

-- Scarlet Monastery
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='3983') AND (`item`='7682');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='90' WHERE (`entry`='3983') AND (`item`='7683');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='3974') AND (`item`='3456');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='3974') AND (`item`='7710');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='3974') AND (`item`='7756');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='3977') AND (`item`='7721');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='3976') AND (`item`='7726');

-- Uldaman
UPDATE `creature_loot_template` SET `lootcondition`='8', `condition_value1`='2240' WHERE (`entry`='6910') AND (`item`='7741');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='90' WHERE (`entry`='6906') AND (`item`='9400');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='6906') AND (`item`='9401');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='7228') AND (`item`='9408');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE (`entry`='7291') AND (`item`='11311');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='4854') AND (`item`='9416');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60' WHERE (`entry`='2748') AND (`item`='11118');

-- ZulFarrak
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='8127') AND (`item`='9379');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='8127') AND (`item`='9639');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='7271') AND (`item`='18082');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='7271') AND (`item`='18083');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='7267') AND (`item`='11086');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='7267') AND (`item`='9476');

-- Maraudon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='13282') AND (`item`='17745');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='13596') AND (`item`='17730');

-- Sunken Temple
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='8580') AND (`item`='10799');

-- BRD
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='18' WHERE (`entry`='9016') AND `item` IN (11805, 11807);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='9319') AND `item` IN (11628, 11629);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='9024') AND (`item`='11750');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='8983') AND (`item`='11819');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='16' WHERE (`entry`='9543') AND `item` IN (2662, 2663);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='9499') AND (`item`='12791');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='9499') AND (`item`='12793');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='16' WHERE (`entry`='9499') AND (`item`='18653');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='12' WHERE (`entry`='9042') AND (`item`='11755');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='13' WHERE (`entry`='9042') AND (`item`='22242');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE (`entry`='9156') AND (`item`='11808');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='9156') AND (`item`='11809');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='17' WHERE (`entry`='9156') AND (`item`='11832');

-- Scholomance
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='17' WHERE (`entry`='10503') AND (`item`='16701');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='16' WHERE (`entry`='11622') AND (`item`='16711');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='10433') AND (`item`='14576');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='10433') AND (`item`='18692');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='7' WHERE (`entry`='10432') AND `item` IN (14577, 18691);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='10505') AND (`item`='16710');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='14' WHERE (`entry`='11261') AND (`item`='16684');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='17' WHERE (`entry`='10901') AND (`item`='16705');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='4' WHERE (`entry`='10507') AND (`item`='16716');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='10504') AND (`item`='16722');

-- Stratholme
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='12' WHERE (`entry`='10811') AND (`item`='13385');

-- Blackrock Spire
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='9236') AND `item` IN (12651, 12653);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='10596') AND `item` IN (13183, 16715);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='16' WHERE (`entry`='9736') AND (`item`='13252');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='14' WHERE (`entry`='9736') AND (`item`='13253');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='10268') AND (`item`='16718');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='14' WHERE (`entry`='10220') AND (`item`='13210');

-- Dire Maul
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='11490') AND `item` IN (18313, 18323);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='13280') AND `item` IN (18317, 18322);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='13280') AND (`item`='18324');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='14327') AND (`item`='18311');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14326') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14322') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14321') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14323') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14325') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11501') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='14324') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11489') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11488') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11487') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='11487') AND `item` IN (18374, 18397);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11496') AND `item` IN (18332, 18333, 18334);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2' WHERE (`entry`='11486') AND `item` IN (18332, 18333, 18334);

/* Item Noggenfogger Elixir */
UPDATE `item_template` SET `spellcooldown_1`='3000' WHERE (`entry`='8529');

/* NPC Marin Noggenfogger */
UPDATE creature_template SET npcflag = '7' WHERE entry = '7564';

/* NPC Putrid Gargoyle */
UPDATE `creature_ai_scripts` SET `action1_param2`='1' WHERE (`id`='853401');

/* Item MoneyLoot */
UPDATE `item_template` SET `minMoneyLoot`='750', `maxMoneyLoot`='2250' WHERE (`entry`='5335');
UPDATE `item_template` SET `minMoneyLoot`='2037', `maxMoneyLoot`='6110' WHERE (`entry`='10456');
UPDATE `item_template` SET `minMoneyLoot`='6235', `maxMoneyLoot`='18704' WHERE (`entry`='11937');
UPDATE `item_template` SET `minMoneyLoot`='425', `maxMoneyLoot`='1275' WHERE (`entry`='11966');

/* NPC Ambassador Flamelash and Magmus */
UPDATE `creature_template` SET `resistance1`='55', `resistance2`='275', `resistance3`='55', `resistance4`='55', `resistance5`='55', `resistance6`='55' WHERE (`entry`='9156');
UPDATE `creature_template` SET `resistance2`='275' WHERE (`entry`='9938');

/* NPC Anvilrage Overseer and Anvilrage Warden */
DELETE FROM `creature` WHERE `id` IN (8889, 8890) AND (`map`='0');
INSERT INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(8889, 0, 8754, 0, -7448, -1019, 171.566, 5.851, 370, 7, 0, 6150, 2635, 0, 1),(8889, 0, 8754, 0, -7436, -987, 170.748, 1.961, 370, 9, 0, 6150, 2635, 0, 1),(8890, 0, 8758, 0, -7417, -897, 172.392, 2.609, 370, 9, 0, 6351, 2763, 0, 1),(8890, 0, 8758, 0, -7415, -1022, 175.5, 3.822, 370, 4, 0, 6351, 2763, 0, 1),(8889, 0, 8754, 0, -7391, -942, 169.509, 4.831, 370, 9, 0, 6150, 2635, 0, 1),(8889, 0, 8754, 0, -7384, -1040, 177.212, 1.332, 370, 7, 0, 6150, 2635, 0, 1),(8890, 0, 8758, 0, -7365, -925, 167.066, 3.703, 370, 9, 0, 6351, 2763, 0, 1),(8889, 0, 8754, 0, -7354, -978, 170.558, 2.692, 370, 9, 0, 6150, 2635, 0, 1),(8890, 0, 8758, 0, -7337, -1012, 177.344, 5.5, 370, 4, 0, 6351, 2763, 0, 1),(8889, 0, 8754, 0, -7280, -886, 168.739, 0.268, 370, 9, 0, 6150, 2635, 0, 1),(8890, 0, 8758, 0, -7280, -879, 169.628, 0.035, 370, 7, 0, 6351, 2763, 0, 1),(8889, 0, 8754, 0, -7248, -941, 168.287, 1.292, 370, 7, 0, 6150, 2635, 0, 1),(8890, 0, 8758, 0, -7247, -885, 167.92, 0.182, 370, 9, 0, 6351, 2763, 0, 1),(8889, 0, 8754, 0, -7218, -886, 165.722, 2.354, 370, 9, 0, 6150, 2635, 0, 1);

/* Item Lesser Arcanum of */
UPDATE `item_template` SET `bonding`='1' WHERE `entry` IN (11643, 11622);

/* NPC Barnabus */
UPDATE `creature_template` SET `rank`='4' WHERE (`entry`='2753');

/* Quest MinLevels */
UPDATE `quest_template` SET `MinLevel`='40' WHERE (`entry`='3181');
UPDATE `quest_template` SET `MinLevel`='29' WHERE `entry` IN (1188, 1189);
UPDATE `quest_template` SET `MinLevel`='45' WHERE `entry` IN (3564, 3421);
UPDATE `quest_template` SET `MinLevel`='43' WHERE (`entry`='4450');
UPDATE `quest_template` SET `MinLevel`='44' WHERE (`entry`='3504');
UPDATE `quest_template` SET `MinLevel`='26' WHERE (`entry`='1106');

/* NPC Anachronos */
UPDATE `creature` SET `position_x`='-8186', `position_y`='-4696', `position_z`='15.891', `orientation`='1.804' WHERE (`id`='15192');

/* Quest Kharan's Tale */
UPDATE `quest_template` SET `RequiredRaces`='77' WHERE (`entry`='4342');

/* Quest Disharmony of Fire */
UPDATE `quest_template` SET `PrevQuestId`='3906' WHERE (`entry`='3907');

/* Quest The Princess's Surprise */
UPDATE `quest_template` SET `RequiredRaces`='77', `PrevQuestId`='4362' WHERE (`entry`='4363');

/* NPC Flags - Guards, Prince, Mizzle, Chorush, Ironbark the Redeemed, Pusillin, Knot Thimblejack, Captain Kromcrush, Stomper Kreeg */
UPDATE `creature_template` SET `npcflag`='1' WHERE `entry`IN (11486, 14326, 14321, 14323, 14353, 14324, 14241, 14354);
UPDATE `creature_template` SET `npcflag` = '3' WHERE `entry` IN (14325, 14338);
UPDATE `creature_template` SET `npcflag` = '7' WHERE `entry`=14322;

/* NPC Stomper Kreeg */
DELETE FROM `npc_vendor` WHERE `entry`=14322;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(14322, 18269, 0, 0),(14322, 18284, 0, 0),(14322, 18287, 0, 0),(14322, 18288, 0, 0),(14322, 9260, 6, 9000);

/* NPC Alzzin's Minions */
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE `entry` =11460;
DELETE FROM `creature` WHERE `id`=11460;

/* NPC Doomguard minion shouldn't have any loot */
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry`=14385;
DELETE FROM `creature_loot_template` WHERE `entry`=14385;

/* Quest Doubled template for Q7703, leave just one link to NPC to prevent doing the quest two times */
DELETE FROM `creature_questrelation` WHERE `quest`=1318;
DELETE FROM `creature_involvedrelation` WHERE `quest`=1318;

/* Quests data */
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry`=1193;
UPDATE `quest_template` SET `Method` = '0', `RequiredRaces` = '0', `SpecialFlags` = '0', `NextQuestInChain`  = '5519' WHERE `entry`=5518;
UPDATE `quest_template` SET `SpecialFlags` = '1', `PrevQuestId`  = '5518' WHERE `entry`=5519;
UPDATE `quest_template` SET `SpecialFlags` = '0', `NextQuestInChain`  = '7429' WHERE `entry`=5525;
UPDATE `quest_template` SET `SpecialFlags` = '1', `PrevQuestId`  = '5525' WHERE `entry`=7429;
UPDATE `quest_template` SET `EndText` = 'Ysida Freed', `ObjectiveText1` = '', `ReqCreatureOrGOId1` = '0', `ReqCreatureOrGOCount1` = '0' WHERE `entry` =8945;

/* Item Proper area for keys */
UPDATE `item_template` SET `area` = '2557' WHERE `entry` IN (18266, 18268);

/* Bosses immune */
-- Stockade
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (1720, 1716, 1717, 1666, 1663, 1696);
-- Deadmines
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (645, 646, 643, 642, 647, 639, 1763, 3586, 644);
-- Ragefire Chasm
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (17830, 11519, 11518, 11517, 11520);
-- Wailing Caverns
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (3653, 3671, 3669, 3670, 3673, 3654, 3674, 5775, 5912);
-- Shadowfang Keep
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (3872, 4275, 4274, 4279, 3927, 3887, 4278, 3886, 3914);
-- Blackfathom Deeps
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (4829, 12876, 6243, 12902, 4830, 4832, 4887, 4831);
-- Gnomeregan
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (6228, 7361, 7079);
-- Razorfen Downs
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (7356, 7354);
-- Scarlet Monastery
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (3977, 3976, 3975, 6487, 3974, 3983);
-- Zul'Farrak
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (10081, 8127, 7267, 7273, 7795, 7274, 7275, 7271, 10080, 10082, 7797);
-- Maraudon
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (12203, 12201, 13596, 13601, 12237, 12225, 13282, 12258, 12236, 13739, 13738);
-- Sunken Temple
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (5721, 5722, 5710, 5719, 5709, 5720, 8580, 5708, 8443);
-- Blackrock Depths
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (8923, 9019, 9938, 9033, 8929, 8983, 9156, 9537, 9502, 9499, 9041, 9476, 9042, 9438, 9442, 9443, 9439, 9437, 9441, 9056, 9017, 9543, 9024, 9016, 9027, 9028, 9029, 9030, 9031, 9032, 9018, 9319, 9030, 9025, 10076, 16059);
-- Dire Maul
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (14506, 11501, 11496, 11486, 14325, 14308, 11489, 14324, 14326, 14323, 14322, 14321, 11492, 13280, 14327, 14354, 11490, 14349, 16097);
-- Razorfen Kraul
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (4428, 4424, 4420, 4422, 4425, 4421, 4842);
-- Uldaman
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (6910, 6906, 6907, 6908, 7228, 7023, 7206, 7291, 4854, 2748);
-- Stratholme
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (16387, 10440, 11121, 11058, 10438, 10439, 10809, 10811, 10997, 11120, 16101, 11032, 10437, 11143, 16102, 10436, 10393, 10808, 10435, 10558, 11082, 10516, 10813);
-- Scholomance
UPDATE `creature_template` SET `mechanic_immune_mask`='617299931' WHERE `entry` IN (14516, 10508, 1853, 10503, 11622, 11261, 10505, 10506, 16118, 10502, 10504, 10901, 10507, 10432, 10433);
-- Blackrock Spire
UPDATE `creature_template` SET `mechanic_immune_mask`='613105627' WHERE `entry` IN (9196, 9236, 9237, 10596, 10584, 9736, 10268, 10220, 9568, 9816, 10429, 10339, 10430, 10363, 10899, 10396, 9596, 9718, 10509, 9218, 9217, 10263, 10264);

/* Scholomance gates */
UPDATE `gameobject_template` SET `faction`='0', `data0`='0' WHERE `entry` IN (175611, 175612, 175613, 175614, 175615, 175616, 175617, 175618, 175620);
UPDATE `gameobject` SET `state`='1' WHERE `id` IN (175611, 175612, 175613, 175614, 175615, 175616, 175617, 175618, 175620);

/* Stratholme */
UPDATE `creature_template` SET `RegenHealth`='0' WHERE `entry`=10415;
UPDATE `gameobject_template` SET `flags`='34' WHERE `entry`=175357;

/* Dalinda Malem FlagsExtra to aggro ignore */
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry`=5644;

/* Delete EventAI script(s) creature Reanimated Corpse */
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=10481;

/* Q: Lazy Peons */
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry`=5441;

/* Scholomance Dark Summoner */
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11582;

/* Fix says of Scholomance Dark Summoner and his spell for summon Risen Lackey skeleton */
/* Also added SD0 script for creature Unstable Corpse - explosion on dead */
UPDATE `creature_template` SET `spell2`='0', `spell3`='0' WHERE `entry`=10480;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=10480;
DELETE FROM `spell_script_target` WHERE `entry`=17618 AND `type`=1 AND `targetEntry`=11582;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(17618, 1, 11582);

/* GO script for torch before Scholomance - opening Scholomance door */
DELETE FROM `gameobject_scripts` WHERE `id`=45428;
INSERT INTO `gameobject_scripts` (`id` ,`delay` ,`command` ,`datalong` ,`datalong2` ,`dataint` ,`x` ,`y` ,`z` ,`o`)VALUES ('45428', '0', '11', '45427', '0', '0', '0', '0', '0', '0');

/* REV 294 */
/* NPC Compact Harvest Reaper */
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='2.4' WHERE (`entry`='2676') AND `item` IN (4382, 7191);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='4' WHERE (`entry`='2676') AND (`item`='4387');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.8' WHERE (`entry`='2676') AND (`item`='4389');

/* Item Shadowforge Torch */
UPDATE `item_template` SET `Duration`='300', `ExtraFlags`='2' WHERE (`entry`='11885');

/* Quest All Along the Watchtowers */
UPDATE `quest_template` SET `RequiredRaces`='178' WHERE (`entry`='5098');

/* NPC Risen Aberration */
UPDATE creature SET spawntimesecs=120 WHERE guid=48834;
UPDATE creature SET spawntimesecs=120 WHERE guid=48820;
UPDATE creature SET spawntimesecs=120 WHERE guid=48980;
UPDATE creature SET spawntimesecs=120 WHERE guid=48982;
UPDATE creature SET spawntimesecs=120 WHERE guid=48824;
UPDATE creature SET spawntimesecs=120 WHERE guid=48990;
UPDATE creature SET spawntimesecs=120 WHERE guid=48996;
UPDATE creature SET spawntimesecs=120 WHERE guid=48831;

/* NPC Risen Lackey */
UPDATE `creature_template` SET `minlevel`='58', `maxlevel`='59', `minhealth`='287', `maxhealth`='296' WHERE (`entry`='10482');

/* NPC Dark Shade */
UPDATE `creature_template` SET `mechanic_immune_mask`='613105627' WHERE (`entry`='11284');

/* Dungeons epics */
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.2' WHERE (`entry`='35009') AND (`item`='17780');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.15' WHERE (`entry`='35012') AND (`item`='12462');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.18' WHERE (`entry`='35013') AND (`item`='10847');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.46' WHERE (`entry`='35014') AND (`item`='11684');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.84' WHERE (`entry`='9156') AND (`item`='11808');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1.11' WHERE (`entry`='1853') AND (`item`='13937');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='1.07' WHERE (`entry`='35030') AND (`item`='13314');

/* Missing data in pet_levelstats */
DELETE FROM `pet_levelstats` WHERE `creature_entry` IN (329, 3939, 5058, 5766, 6250, 15214);
INSERT INTO `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (329, 1, 140, 48, 20, 20, 5, 20, 24, 23),(329, 2, 149, 59, 20, 21, 5, 2, 25, 24),(329, 3, 158, 70, 20, 15, 5, 4, 26, 25),(329, 4, 168, 81, 33, 17, 5, 8, 27, 26),(329, 5, 177, 92, 49, 18, 5, 12, 28, 27),(329, 6, 186, 103, 68, 20, 7, 16, 29, 27),(329, 7, 195, 114, 92, 22, 7, 21, 30, 28),(329, 8, 204, 125, 117, 23, 8, 25, 31, 29),(329, 9, 213, 136, 147, 25, 9, 27, 32, 30),(329, 10, 223, 147, 180, 29, 10, 29, 33, 31),(329, 11, 232, 158, 190, 30, 11, 32, 37, 35),(329, 12, 250, 180, 203, 31, 12, 36, 41, 39),(329, 13, 289, 203, 215, 32, 13, 43, 50, 43),(329, 14, 299, 227, 228, 33, 13, 44, 54, 47),(329, 15, 309, 251, 240, 34, 13, 48, 57, 52),(329, 16, 329, 275, 253, 36, 13, 52, 62, 56),(329, 17, 350, 300, 265, 38, 13, 55, 65, 65),(329, 18, 362, 314, 278, 39, 13, 59, 70, 70),(329, 19, 393, 351, 291, 40, 13, 63, 74, 75),(329, 20, 403, 377, 303, 42, 13, 67, 87, 78),(329, 21, 425, 393, 320, 44, 13, 80, 91, 83),(329, 22, 449, 420, 346, 46, 13, 84, 95, 86),(329, 23, 473, 447, 360, 47, 13, 89, 96, 90),(329, 24, 520, 476, 373, 49, 13, 93, 97, 95),(329, 25, 540, 504, 386, 50, 13, 97, 98, 100),(329, 26, 569, 534, 399, 52, 13, 101, 60, 78),(329, 27, 571, 564, 411, 53, 14, 105, 61, 81),(329, 28, 574, 592, 424, 55, 15, 110, 62, 86),(329, 29, 576, 620, 436, 57, 16, 114, 62, 89),(329, 30, 579, 648, 449, 57, 16, 118, 63, 92),(329, 31, 581, 676, 462, 59, 16, 123, 64, 95),(329, 32, 590, 720, 476, 60, 17, 127, 64, 98),(329, 33, 598, 742, 488, 62, 18, 131, 65, 101),(329, 34, 601, 793, 501, 63, 19, 135, 65, 104),(329, 35, 609, 845, 513, 64, 19, 136, 66, 107),(329, 36, 617, 879, 525, 67, 19, 137, 66, 110),(329, 37, 626, 916, 537, 69, 19, 138, 68, 112),(329, 38, 634, 952, 549, 70, 19, 139, 68, 115),(329, 39, 642, 988, 561, 72, 19, 142, 69, 118),(329, 40, 650, 1026, 639, 74, 20, 147, 156, 142),(329, 41, 668, 1063, 694, 77, 20, 152, 160, 143),(329, 42, 676, 1103, 756, 81, 20, 156, 163, 144),(329, 43, 685, 1187, 808, 87, 20, 160, 167, 145),(329, 44, 693, 1214, 853, 91, 21, 164, 170, 146),(329, 45, 701, 1240, 884, 96, 21, 169, 174, 148),(329, 46, 709, 1267, 910, 98, 22, 173, 177, 149),(329, 47, 718, 1294, 928, 100, 22, 177, 181, 151),(329, 48, 726, 1320, 946, 102, 22, 181, 184, 152),(329, 49, 734, 1347, 964, 105, 22, 186, 188, 155),(329, 50, 747, 1391, 983, 107, 22, 190, 194, 158),(329, 51, 750, 1435, 996, 109, 22, 194, 202, 161),(329, 52, 764, 1481, 1013, 112, 24, 198, 208, 165),(329, 53, 787, 1527, 1039, 114, 25, 203, 215, 168),(329, 54, 820, 1573, 1055, 115, 26, 207, 222, 172),(329, 55, 836, 1620, 1078, 119, 26, 211, 229, 177),(329, 56, 846, 1666, 1091, 121, 27, 215, 236, 181),(329, 57, 850, 1714, 1101, 123, 27, 220, 243, 185),(329, 58, 862, 1763, 1125, 125, 27, 224, 250, 189),(329, 59, 878, 1824, 1150, 127, 27, 230, 258, 192),(329, 60, 920, 1898, 1163, 122, 27, 128, 264, 197),(3939, 1, 140, 48, 20, 20, 5, 20, 24, 23),(3939, 2, 149, 59, 20, 21, 5, 2, 25, 24),(3939, 3, 158, 70, 20, 15, 5, 4, 26, 25),(3939, 4, 168, 81, 33, 17, 5, 8, 27, 26),(3939, 5, 177, 92, 49, 18, 5, 12, 28, 27),(3939, 6, 186, 103, 68, 20, 7, 16, 29, 27),(3939, 7, 195, 114, 92, 22, 7, 21, 30, 28),(3939, 8, 204, 125, 117, 23, 8, 25, 31, 29),(3939, 9, 213, 136, 147, 25, 9, 27, 32, 30),(3939, 10, 223, 147, 180, 29, 10, 29, 33, 31),(3939, 11, 232, 158, 190, 30, 11, 32, 37, 35),(3939, 12, 250, 180, 203, 31, 12, 36, 41, 39),(3939, 13, 289, 203, 215, 32, 13, 43, 50, 43),(3939, 14, 299, 227, 228, 33, 13, 44, 54, 47),(3939, 15, 309, 251, 240, 34, 13, 48, 57, 52),(3939, 16, 329, 275, 253, 36, 13, 52, 62, 56),(3939, 17, 350, 300, 265, 38, 13, 55, 65, 65),(3939, 18, 362, 314, 278, 39, 13, 59, 70, 70),(3939, 19, 393, 351, 291, 40, 13, 63, 74, 75),(3939, 20, 403, 377, 303, 42, 13, 67, 87, 78),(3939, 21, 425, 393, 320, 44, 13, 80, 91, 83),(3939, 22, 449, 420, 346, 46, 13, 84, 95, 86),(3939, 23, 473, 447, 360, 47, 13, 89, 96, 90),(3939, 24, 520, 476, 373, 49, 13, 93, 97, 95),(3939, 25, 540, 504, 386, 50, 13, 97, 98, 100),(3939, 26, 569, 534, 399, 52, 13, 101, 60, 78),(3939, 27, 571, 564, 411, 53, 14, 105, 61, 81),(3939, 28, 574, 592, 424, 55, 15, 110, 62, 86),(3939, 29, 576, 620, 436, 57, 16, 114, 62, 89),(3939, 30, 579, 648, 449, 57, 16, 118, 63, 92),(3939, 31, 581, 676, 462, 59, 16, 123, 64, 95),(3939, 32, 590, 720, 476, 60, 17, 127, 64, 98),(3939, 33, 598, 742, 488, 62, 18, 131, 65, 101),(3939, 34, 601, 793, 501, 63, 19, 135, 65, 104),(3939, 35, 609, 845, 513, 64, 19, 136, 66, 107),(3939, 36, 617, 879, 525, 67, 19, 137, 66, 110),(3939, 37, 626, 916, 537, 69, 19, 138, 68, 112),(3939, 38, 634, 952, 549, 70, 19, 139, 68, 115),(3939, 39, 642, 988, 561, 72, 19, 142, 69, 118),(3939, 40, 650, 1026, 639, 74, 20, 147, 156, 142),(3939, 41, 668, 1063, 694, 77, 20, 152, 160, 143),(3939, 42, 676, 1103, 756, 81, 20, 156, 163, 144),(3939, 43, 685, 1187, 808, 87, 20, 160, 167, 145),(3939, 44, 693, 1214, 853, 91, 21, 164, 170, 146),(3939, 45, 701, 1240, 884, 96, 21, 169, 174, 148),(3939, 46, 709, 1267, 910, 98, 22, 173, 177, 149),(3939, 47, 718, 1294, 928, 100, 22, 177, 181, 151),(3939, 48, 726, 1320, 946, 102, 22, 181, 184, 152),(3939, 49, 734, 1347, 964, 105, 22, 186, 188, 155),(3939, 50, 747, 1391, 983, 107, 22, 190, 194, 158),(3939, 51, 750, 1435, 996, 109, 22, 194, 202, 161),(3939, 52, 764, 1481, 1013, 112, 24, 198, 208, 165),(3939, 53, 787, 1527, 1039, 114, 25, 203, 215, 168),(3939, 54, 820, 1573, 1055, 115, 26, 207, 222, 172),(3939, 55, 836, 1620, 1078, 119, 26, 211, 229, 177),(3939, 56, 846, 1666, 1091, 121, 27, 215, 236, 181),(3939, 57, 850, 1714, 1101, 123, 27, 220, 243, 185),(3939, 58, 862, 1763, 1125, 125, 27, 224, 250, 189),(3939, 59, 878, 1824, 1150, 127, 27, 230, 258, 192),(3939, 60, 920, 1898, 1163, 122, 27, 128, 264, 197),(5058, 1, 40, 48, 20, 12, 14, 1, 1, 25),(5058, 2, 49, 59, 40, 14, 15, 2, 1, 26),(5058, 3, 58, 70, 60, 15, 16, 4, 1, 27),(5058, 4, 68, 81, 80, 17, 17, 8, 2, 27),(5058, 5, 77, 92, 100, 18, 18, 12, 2, 28),(5058, 6, 86, 103, 120, 20, 19, 16, 3, 29),(5058, 7, 95, 114, 140, 22, 20, 21, 3, 29),(5058, 8, 104, 125, 160, 23, 21, 25, 4, 30),(5058, 9, 113, 136, 180, 25, 22, 29, 4, 31),(5058, 10, 123, 147, 200, 26, 23, 33, 5, 31),(5058, 11, 132, 158, 220, 28, 25, 38, 6, 32),(5058, 12, 150, 180, 240, 29, 26, 42, 8, 33),(5058, 13, 169, 203, 280, 31, 27, 46, 9, 34),(5058, 14, 189, 227, 320, 33, 28, 50, 11, 35),(5058, 15, 209, 251, 360, 34, 29, 55, 14, 35),(5058, 16, 229, 275, 400, 36, 30, 59, 16, 36),(5058, 17, 250, 300, 460, 37, 31, 63, 20, 37),(5058, 18, 262, 314, 510, 39, 32, 67, 24, 38),(5058, 19, 293, 351, 550, 40, 33, 72, 29, 39),(5058, 20, 303, 377, 563, 42, 35, 67, 31, 49),(5058, 21, 325, 393, 604, 44, 36, 80, 53, 39),(5058, 22, 349, 420, 628, 46, 36, 84, 54, 41),(5058, 23, 373, 447, 652, 47, 38, 89, 56, 42),(5058, 24, 400, 476, 675, 49, 39, 93, 57, 43),(5058, 25, 440, 504, 699, 50, 40, 97, 60, 44),(5058, 26, 469, 534, 721, 52, 41, 101, 62, 46),(5058, 27, 501, 564, 745, 53, 42, 105, 63, 47),(5058, 28, 534, 592, 768, 55, 43, 110, 65, 48),(5058, 29, 566, 620, 791, 57, 44, 114, 67, 49),(5058, 30, 599, 648, 815, 57, 46, 118, 69, 51),(5058, 31, 631, 676, 838, 59, 47, 123, 71, 52),(5058, 32, 680, 720, 862, 60, 47, 127, 73, 53),(5058, 33, 728, 742, 884, 62, 49, 131, 74, 54),(5058, 34, 661, 793, 908, 64, 50, 135, 76, 56),(5058, 35, 699, 845, 950, 63, 51, 136, 73, 57),(5058, 36, 737, 879, 990, 67, 52, 137, 72, 58),(5058, 37, 776, 916, 1038, 69, 53, 138, 70, 59),(5058, 38, 814, 952, 1095, 70, 55, 139, 69, 61),(5058, 39, 852, 988, 1163, 72, 56, 142, 68, 62),(5058, 40, 890, 1026, 1244, 74, 57, 147, 67, 64),(5058, 41, 928, 1063, 1338, 77, 58, 152, 68, 66),(5058, 42, 976, 1103, 1448, 81, 59, 156, 70, 67),(5058, 43, 1005, 1187, 1560, 87, 60, 160, 72, 69),(5058, 44, 1043, 1214, 1670, 91, 61, 164, 74, 71),(5058, 45, 1081, 1240, 1738, 96, 64, 169, 75, 72),(5058, 46, 1119, 1267, 1773, 98, 65, 173, 77, 73),(5058, 47, 1158, 1294, 1808, 100, 66, 177, 78, 75),(5058, 48, 1196, 1320, 1843, 102, 68, 181, 80, 76),(5058, 49, 1234, 1347, 1878, 105, 69, 186, 82, 78),(5058, 50, 2877, 2391, 3494, 107, 71, 219, 95, 80),(5058, 51, 2920, 2435, 3559, 109, 72, 223, 97, 81),(5058, 52, 3164, 2481, 3624, 112, 74, 228, 100, 82),(5058, 53, 3207, 2527, 3686, 113, 75, 233, 102, 84),(5058, 54, 3350, 2573, 3752, 116, 77, 238, 104, 87),(5058, 55, 3493, 2620, 3814, 119, 78, 243, 106, 88),(5058, 56, 3536, 2766, 3878, 120, 79, 248, 108, 89),(5058, 57, 3680, 2814, 3941, 123, 82, 251, 111, 92),(5058, 58, 3723, 2913, 4006, 125, 84, 255, 113, 94),(5058, 59, 3866, 2924, 4067, 128, 86, 258, 115, 96),(5058, 60, 3909, 3174, 4635, 130, 87, 270, 118, 98),(5766, 1, 140, 48, 20, 20, 5, 20, 24, 23),(5766, 2, 149, 59, 20, 21, 5, 2, 25, 24),(5766, 3, 158, 70, 20, 15, 5, 4, 26, 25),(5766, 4, 168, 81, 33, 17, 5, 8, 27, 26),(5766, 5, 177, 92, 49, 18, 5, 12, 28, 27),(5766, 6, 186, 103, 68, 20, 7, 16, 29, 27),(5766, 7, 195, 114, 92, 22, 7, 21, 30, 28),(5766, 8, 204, 125, 117, 23, 8, 25, 31, 29),(5766, 9, 213, 136, 147, 25, 9, 27, 32, 30),(5766, 10, 223, 147, 180, 29, 10, 29, 33, 31),(5766, 11, 232, 158, 190, 30, 11, 32, 37, 35),(5766, 12, 250, 180, 203, 31, 12, 36, 41, 39),(5766, 13, 289, 203, 215, 32, 13, 43, 50, 43),(5766, 14, 299, 227, 228, 33, 13, 44, 54, 47),(5766, 15, 309, 251, 240, 34, 13, 48, 57, 52),(5766, 16, 329, 275, 253, 36, 13, 52, 62, 56),(5766, 17, 350, 300, 265, 38, 13, 55, 65, 65),(5766, 18, 362, 314, 278, 39, 13, 59, 70, 70),(5766, 19, 393, 351, 291, 40, 13, 63, 74, 75),(5766, 20, 403, 377, 303, 42, 13, 67, 87, 78),(5766, 21, 425, 393, 320, 44, 13, 80, 91, 83),(5766, 22, 449, 420, 346, 46, 13, 84, 95, 86),(5766, 23, 473, 447, 360, 47, 13, 89, 96, 90),(5766, 24, 520, 476, 373, 49, 13, 93, 97, 95),(5766, 25, 540, 504, 386, 50, 13, 97, 98, 100),(5766, 26, 569, 534, 399, 52, 13, 101, 60, 78),(5766, 27, 571, 564, 411, 53, 14, 105, 61, 81),(5766, 28, 574, 592, 424, 55, 15, 110, 62, 86),(5766, 29, 576, 620, 436, 57, 16, 114, 62, 89),(5766, 30, 579, 648, 449, 57, 16, 118, 63, 92),(5766, 31, 581, 676, 462, 59, 16, 123, 64, 95),(5766, 32, 590, 720, 476, 60, 17, 127, 64, 98),(5766, 33, 598, 742, 488, 62, 18, 131, 65, 101),(5766, 34, 601, 793, 501, 63, 19, 135, 65, 104),(5766, 35, 609, 845, 513, 64, 19, 136, 66, 107),(5766, 36, 617, 879, 525, 67, 19, 137, 66, 110),(5766, 37, 626, 916, 537, 69, 19, 138, 68, 112),(5766, 38, 634, 952, 549, 70, 19, 139, 68, 115),(5766, 39, 642, 988, 561, 72, 19, 142, 69, 118),(5766, 40, 650, 1026, 639, 74, 20, 147, 156, 142),(5766, 41, 668, 1063, 694, 77, 20, 152, 160, 143),(5766, 42, 676, 1103, 756, 81, 20, 156, 163, 144),(5766, 43, 685, 1187, 808, 87, 20, 160, 167, 145),(5766, 44, 693, 1214, 853, 91, 21, 164, 170, 146),(5766, 45, 701, 1240, 884, 96, 21, 169, 174, 148),(5766, 46, 709, 1267, 910, 98, 22, 173, 177, 149),(5766, 47, 718, 1294, 928, 100, 22, 177, 181, 151),(5766, 48, 726, 1320, 946, 102, 22, 181, 184, 152),(5766, 49, 734, 1347, 964, 105, 22, 186, 188, 155),(5766, 50, 747, 1391, 983, 107, 22, 190, 194, 158),(5766, 51, 750, 1435, 996, 109, 22, 194, 202, 161),(5766, 52, 764, 1481, 1013, 112, 24, 198, 208, 165),(5766, 53, 787, 1527, 1039, 114, 25, 203, 215, 168),(5766, 54, 820, 1573, 1055, 115, 26, 207, 222, 172),(5766, 55, 836, 1620, 1078, 119, 26, 211, 229, 177),(5766, 56, 846, 1666, 1091, 121, 27, 215, 236, 181),(5766, 57, 850, 1714, 1101, 123, 27, 220, 243, 185),(5766, 58, 862, 1763, 1125, 125, 27, 224, 250, 189),(5766, 59, 878, 1824, 1150, 127, 27, 230, 258, 192),(5766, 60, 920, 1898, 1163, 122, 27, 128, 264, 197),(6250, 1, 140, 48, 20, 20, 5, 20, 24, 23),(6250, 2, 149, 59, 20, 21, 5, 2, 25, 24),(6250, 3, 158, 70, 20, 15, 5, 4, 26, 25),(6250, 4, 168, 81, 33, 17, 5, 8, 27, 26),(6250, 5, 177, 92, 49, 18, 5, 12, 28, 27),(6250, 6, 186, 103, 68, 20, 7, 16, 29, 27),(6250, 7, 195, 114, 92, 22, 7, 21, 30, 28),(6250, 8, 204, 125, 117, 23, 8, 25, 31, 29),(6250, 9, 213, 136, 147, 25, 9, 27, 32, 30),(6250, 10, 223, 147, 180, 29, 10, 29, 33, 31),(6250, 11, 232, 158, 190, 30, 11, 32, 37, 35),(6250, 12, 250, 180, 203, 31, 12, 36, 41, 39),(6250, 13, 289, 203, 215, 32, 13, 43, 50, 43),(6250, 14, 299, 227, 228, 33, 13, 44, 54, 47),(6250, 15, 309, 251, 240, 34, 13, 48, 57, 52),(6250, 16, 329, 275, 253, 36, 13, 52, 62, 56),(6250, 17, 350, 300, 265, 38, 13, 55, 65, 65),(6250, 18, 362, 314, 278, 39, 13, 59, 70, 70),(6250, 19, 393, 351, 291, 40, 13, 63, 74, 75),(6250, 20, 403, 377, 303, 42, 13, 67, 87, 78),(6250, 21, 425, 393, 320, 44, 13, 80, 91, 83),(6250, 22, 449, 420, 346, 46, 13, 84, 95, 86),(6250, 23, 473, 447, 360, 47, 13, 89, 96, 90),(6250, 24, 520, 476, 373, 49, 13, 93, 97, 95),(6250, 25, 540, 504, 386, 50, 13, 97, 98, 100),(6250, 26, 569, 534, 399, 52, 13, 101, 60, 78),(6250, 27, 571, 564, 411, 53, 14, 105, 61, 81),(6250, 28, 574, 592, 424, 55, 15, 110, 62, 86),(6250, 29, 576, 620, 436, 57, 16, 114, 62, 89),(6250, 30, 579, 648, 449, 57, 16, 118, 63, 92),(6250, 31, 581, 676, 462, 59, 16, 123, 64, 95),(6250, 32, 590, 720, 476, 60, 17, 127, 64, 98),(6250, 33, 598, 742, 488, 62, 18, 131, 65, 101),(6250, 34, 601, 793, 501, 63, 19, 135, 65, 104),(6250, 35, 609, 845, 513, 64, 19, 136, 66, 107),(6250, 36, 617, 879, 525, 67, 19, 137, 66, 110),(6250, 37, 626, 916, 537, 69, 19, 138, 68, 112),(6250, 38, 634, 952, 549, 70, 19, 139, 68, 115),(6250, 39, 642, 988, 561, 72, 19, 142, 69, 118),(6250, 40, 650, 1026, 639, 74, 20, 147, 156, 142),(6250, 41, 668, 1063, 694, 77, 20, 152, 160, 143),(6250, 42, 676, 1103, 756, 81, 20, 156, 163, 144),(6250, 43, 685, 1187, 808, 87, 20, 160, 167, 145),(6250, 44, 693, 1214, 853, 91, 21, 164, 170, 146),(6250, 45, 701, 1240, 884, 96, 21, 169, 174, 148),(6250, 46, 709, 1267, 910, 98, 22, 173, 177, 149),(6250, 47, 718, 1294, 928, 100, 22, 177, 181, 151),(6250, 48, 726, 1320, 946, 102, 22, 181, 184, 152),(6250, 49, 734, 1347, 964, 105, 22, 186, 188, 155),(6250, 50, 747, 1391, 983, 107, 22, 190, 194, 158),(6250, 51, 750, 1435, 996, 109, 22, 194, 202, 161),(6250, 52, 764, 1481, 1013, 112, 24, 198, 208, 165),(6250, 53, 787, 1527, 1039, 114, 25, 203, 215, 168),(6250, 54, 820, 1573, 1055, 115, 26, 207, 222, 172),(6250, 55, 836, 1620, 1078, 119, 26, 211, 229, 177),(6250, 56, 846, 1666, 1091, 121, 27, 215, 236, 181),(6250, 57, 850, 1714, 1101, 123, 27, 220, 243, 185),(6250, 58, 862, 1763, 1125, 125, 27, 224, 250, 189),(6250, 59, 878, 1824, 1150, 127, 27, 230, 258, 192),(6250, 60, 920, 1898, 1163, 122, 27, 128, 264, 197),(15214, 1, 140, 48, 20, 20, 5, 20, 24, 23),(15214, 2, 149, 59, 20, 21, 5, 2, 25, 24),(15214, 3, 158, 70, 20, 15, 5, 4, 26, 25),(15214, 4, 168, 81, 33, 17, 5, 8, 27, 26),(15214, 5, 177, 92, 49, 18, 5, 12, 28, 27),(15214, 6, 186, 103, 68, 20, 7, 16, 29, 27),(15214, 7, 195, 114, 92, 22, 7, 21, 30, 28),(15214, 8, 204, 125, 117, 23, 8, 25, 31, 29),(15214, 9, 213, 136, 147, 25, 9, 27, 32, 30),(15214, 10, 223, 147, 180, 29, 10, 29, 33, 31),(15214, 11, 232, 158, 190, 30, 11, 32, 37, 35),(15214, 12, 250, 180, 203, 31, 12, 36, 41, 39),(15214, 13, 289, 203, 215, 32, 13, 43, 50, 43),(15214, 14, 299, 227, 228, 33, 13, 44, 54, 47),(15214, 15, 309, 251, 240, 34, 13, 48, 57, 52),(15214, 16, 329, 275, 253, 36, 13, 52, 62, 56),(15214, 17, 350, 300, 265, 38, 13, 55, 65, 65),(15214, 18, 362, 314, 278, 39, 13, 59, 70, 70),(15214, 19, 393, 351, 291, 40, 13, 63, 74, 75),(15214, 20, 403, 377, 303, 42, 13, 67, 87, 78),(15214, 21, 425, 393, 320, 44, 13, 80, 91, 83),(15214, 22, 449, 420, 346, 46, 13, 84, 95, 86),(15214, 23, 473, 447, 360, 47, 13, 89, 96, 90),(15214, 24, 520, 476, 373, 49, 13, 93, 97, 95),(15214, 25, 540, 504, 386, 50, 13, 97, 98, 100),(15214, 26, 569, 534, 399, 52, 13, 101, 60, 78),(15214, 27, 571, 564, 411, 53, 14, 105, 61, 81),(15214, 28, 574, 592, 424, 55, 15, 110, 62, 86),(15214, 29, 576, 620, 436, 57, 16, 114, 62, 89),(15214, 30, 579, 648, 449, 57, 16, 118, 63, 92),(15214, 31, 581, 676, 462, 59, 16, 123, 64, 95),(15214, 32, 590, 720, 476, 60, 17, 127, 64, 98),(15214, 33, 598, 742, 488, 62, 18, 131, 65, 101),(15214, 34, 601, 793, 501, 63, 19, 135, 65, 104),(15214, 35, 609, 845, 513, 64, 19, 136, 66, 107),(15214, 36, 617, 879, 525, 67, 19, 137, 66, 110),(15214, 37, 626, 916, 537, 69, 19, 138, 68, 112),(15214, 38, 634, 952, 549, 70, 19, 139, 68, 115),(15214, 39, 642, 988, 561, 72, 19, 142, 69, 118),(15214, 40, 650, 1026, 639, 74, 20, 147, 156, 142),(15214, 41, 668, 1063, 694, 77, 20, 152, 160, 143),(15214, 42, 676, 1103, 756, 81, 20, 156, 163, 144),(15214, 43, 685, 1187, 808, 87, 20, 160, 167, 145),(15214, 44, 693, 1214, 853, 91, 21, 164, 170, 146),(15214, 45, 701, 1240, 884, 96, 21, 169, 174, 148),(15214, 46, 709, 1267, 910, 98, 22, 173, 177, 149),(15214, 47, 718, 1294, 928, 100, 22, 177, 181, 151),(15214, 48, 726, 1320, 946, 102, 22, 181, 184, 152),(15214, 49, 734, 1347, 964, 105, 22, 186, 188, 155),(15214, 50, 747, 1391, 983, 107, 22, 190, 194, 158),(15214, 51, 750, 1435, 996, 109, 22, 194, 202, 161),(15214, 52, 764, 1481, 1013, 112, 24, 198, 208, 165),(15214, 53, 787, 1527, 1039, 114, 25, 203, 215, 168),(15214, 54, 820, 1573, 1055, 115, 26, 207, 222, 172),(15214, 55, 836, 1620, 1078, 119, 26, 211, 229, 177),(15214, 56, 846, 1666, 1091, 121, 27, 215, 236, 181),(15214, 57, 850, 1714, 1101, 123, 27, 220, 243, 185),(15214, 58, 862, 1763, 1125, 125, 27, 224, 250, 189),(15214, 59, 878, 1824, 1150, 127, 27, 230, 258, 192),(15214, 60, 920, 1898, 1163, 122, 27, 128, 264, 197);

/* Missing data in reference_loot_template */
DELETE FROM `reference_loot_template` WHERE `entry` IN (24722, 24106, 35022, 35027);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (24106, 24060, 25, 1, -24060, 1, 0, 0, 0),(24106, 24062, 50, 1, -24062, 1, 0, 0, 0),(24106, 24064, 25, 1, -24064, 1, 0, 0, 0),(24722, 1478, 0, 1, 1, 1, 0, 0, 0),(24722, 1711, 0, 1, 1, 1, 0, 0, 0),(24722, 1712, 0, 1, 1, 1, 0, 0, 0),(24722, 2289, 0, 1, 1, 1, 0, 0, 0),(24722, 2290, 0, 1, 1, 1, 0, 0, 0),(35022, 12583, 8, 1, 1, 1, 0, 0, 0),(35022, 12587, 0, 1, 1, 1, 0, 0, 0),(35022, 12590, 2, 1, 1, 1, 0, 0, 0),(35022, 12935, 0, 1, 1, 1, 0, 0, 0),(35022, 12936, 0, 1, 1, 1, 0, 0, 0),(35022, 12939, 8, 1, 1, 1, 0, 0, 0),(35022, 12940, 8, 1, 1, 1, 0, 0, 0),(35022, 16733, 0, 1, 1, 1, 0, 0, 0),(35022, 18102, 0, 1, 1, 1, 0, 0, 0),(35022, 18103, 0, 1, 1, 1, 0, 0, 0),(35022, 18104, 0, 1, 1, 1, 0, 0, 0),(35022, 22247, 0, 1, 1, 1, 0, 0, 0),(35027, 12103, 0, 1, 1, 1, 0, 0, 0),(35027, 13348, 0, 1, 1, 1, 0, 0, 0),(35027, 13353, 2, 1, 1, 1, 0, 0, 0),(35027, 13358, 0, 1, 1, 1, 0, 0, 0),(35027, 13359, 0, 1, 1, 1, 0, 0, 0),(35027, 13360, 0, 1, 1, 1, 0, 0, 0),(35027, 13369, 0, 1, 1, 1, 0, 0, 0),(35027, 16725, 0, 1, 1, 1, 0, 0, 0),(35027, 18717, 0, 1, 1, 1, 0, 0, 0),(35027, 18718, 0, 1, 1, 1, 0, 0, 0),(35027, 18720, 0, 1, 1, 1, 0, 0, 0);

/* PvP Quests */
UPDATE `quest_template` SET `ZoneOrSort`='3277', `Type`='41' WHERE `entry` IN (8404, 8405, 8406, 8408);
UPDATE `quest_template` SET `RewOrReqMoney`='0' WHERE `entry` IN (8386, 8404, 8405, 8406, 8407, 8408, 8389, 8431, 8432, 8433, 8434, 8435, 8390, 8440, 8441, 8442, 8443);
UPDATE `quest_template` SET `QuestFlags`='8' WHERE `entry` IN (8383,8384,8386,8387,8389,8390,8391,8392,8397,8398,8404,8405,8406,8407,8408,8431,8432,8433,8434,8435,8440,8441,8442,8443);
UPDATE `quest_template` SET `SpecialFlags`='0', `RewRepValue1`='150' WHERE (`entry`='8375');
UPDATE `quest_template` SET `RewRepValue1`='100' WHERE (`entry`='8383');
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE (`entry`='8369');
UPDATE `quest_template` SET `ExclusiveGroup`='0' WHERE `entry` IN (8372,8386,8399,8404,8400,8405,8401,8406,8402,8407,8403,8408,8368,8389,8426,8431,8427,8432,8428,8433,8429,8434,8430,8435, 8374,8384,8391,8393,8392,8394,8395,8397,8396,8398,8375,8383,8369,8387);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (19)' WHERE `entry` IN (8372, 8386);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (29)' WHERE `entry` IN (8399, 8404);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (39)' WHERE `entry` IN (8400, 8405);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (49)' WHERE `entry` IN (8401, 8406);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (59)' WHERE `entry` IN (8402, 8407);
UPDATE `quest_template` SET `Title`='Fight for Warsong Gulch (60)' WHERE `entry` IN (8403, 8408);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (19)' WHERE `entry` IN (8368, 8389);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (29)' WHERE `entry` IN (8426, 8431);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (39)' WHERE `entry` IN (8427, 8432);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (49)' WHERE `entry` IN (8428, 8433);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (59)' WHERE `entry` IN (8429, 8434);
UPDATE `quest_template` SET `Title`='Battle of Warsong Gulch (60)' WHERE `entry` IN (8430, 8435);
UPDATE `quest_template` SET `Title`='Claiming Arathi Basin (29)' WHERE `entry` IN (8374, 8384);
UPDATE `quest_template` SET `Title`='Claiming Arathi Basin (39)' WHERE `entry` IN (8391, 8393);
UPDATE `quest_template` SET `Title`='Claiming Arathi Basin (49)' WHERE `entry` IN (8392, 8394);
UPDATE `quest_template` SET `Title`='Claiming Arathi Basin (59)' WHERE `entry` IN (8395, 8397);
UPDATE `quest_template` SET `Title`='Claiming Arathi Basin (60)' WHERE `entry` IN (8396, 8398);
UPDATE `quest_template` SET `Title`='Conquering Arathi Basin (29)' WHERE `entry` IN (8370, 8390);
UPDATE `quest_template` SET `Title`='Conquering Arathi Basin (39)' WHERE `entry` IN (8436, 8440);
UPDATE `quest_template` SET `Title`='Conquering Arathi Basin (49)' WHERE `entry` IN (8437, 8441);
UPDATE `quest_template` SET `Title`='Conquering Arathi Basin (59)' WHERE `entry` IN (8438, 8442);
UPDATE `quest_template` SET `Title`='Conquering Arathi Basin (60)' WHERE `entry` IN (8439, 8443);

/* Item Healthy Dragon Scale */
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='6', `lootcondition`='8', `condition_value1`='5529' WHERE (`entry`='10678') AND (`item`='13920');

/* Reputation Argent Dawn */
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='5' WHERE (`RewOnKillRepFaction1`='529') AND (`MaxStanding1`='6');
UPDATE `quest_template` SET `RewRepValue1`='200' WHERE `entry` IN (9136, 5265, 6561);
UPDATE `quest_template` SET `RewRepValue1`='250' WHERE (`entry`='5529');

/* Graveyard Ogrimmar */
DELETE FROM `game_graveyard_zone` WHERE (`id`='512') AND (`ghost_zone`='1637');
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES ('512', '1637', '469');

/* Cancel auto-complete quest entry 660 */
UPDATE `quest_template` SET `method`='2' WHERE `entry`=660 LIMIT 1;

/* Fix drop chance from GO "Dark Coffer" located in BRD dungeon for items (quests Libram of...): 11751, 11752, 11753 */
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '46' WHERE `entry`=11103 AND `item`=11752;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '46' WHERE `entry`=11103 AND `item`=11751;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry`=11103 AND `item`=11753;

/* Fix npcflags (added GOSSIP) for creature entry 4217 and 7879 */
UPDATE `creature_template` SET `npcflag`='23' WHERE `entry`=4217;
UPDATE `creature_template` SET `npcflag`='7' WHERE `entry`=7879;

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

UPDATE `db_version` SET `version`='ZPDB 0.2.0 (002) + Archaica updatepack 201_300 (3)';
