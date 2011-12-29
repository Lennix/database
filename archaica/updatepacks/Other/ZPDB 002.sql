-- ========================
--  belarrius.sql
-- ========================
-- Fix NPCflag vendors to Dolanaar and Auberdine

UPDATE creature_template SET npcflag = 4 WHERE entry = 3612;
UPDATE creature_template SET npcflag = 4 WHERE entry = 3611;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4185;

-- [FIX] [NPC] Npcflag Merchant Darnassus 
--  Some NPC in Darnassus are not good npcflag and offers an inn. 
UPDATE creature_template SET npcflag = 4 WHERE entry = 4232;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4171;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4233;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4235;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4175;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4180;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4177;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4236;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4234;
UPDATE creature_template SET npcflag = 4 WHERE entry = 4172;

-- Incorrect size of anvils and forge to Orgrimmar.  
--
-- Anvils
UPDATE gameobject_template SET size = '1' WHERE entry = '173065';  
UPDATE gameobject_template SET size = '1' WHERE entry = '173066';  
UPDATE gameobject_template SET size = '1' WHERE entry = '173094';  
-- Forge
UPDATE gameobject_template SET size = '1' WHERE entry = '173064';   

-- ========================
--  variousauthors.sql
-- ========================

-- 
-- A Lesson to Learn - A
-- 

UPDATE quest_template SET RequiredRaces = '8' WHERE entry = '27';  
UPDATE quest_template SET RequiredRaces = '8' WHERE entry = '29';  
UPDATE quest_template SET RequiredRaces = '8' WHERE entry = '272';  
UPDATE quest_template SET RequiredRaces = '8' WHERE entry = '5061';

-- 1.part
DELETE FROM creature_questrelation WHERE quest = 27;
DELETE FROM gameobject_questrelation WHERE quest = 27;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 27;
INSERT INTO creature_questrelation (id, quest) VALUES (4217, 27);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 4217;
DELETE FROM creature_involvedrelation WHERE quest = 27;
DELETE FROM gameobject_involvedrelation WHERE quest = 27;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11802, 27);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11802;
-- 2.part
DELETE FROM creature_questrelation WHERE quest = 29;
DELETE FROM gameobject_questrelation WHERE quest = 29;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 29;
INSERT INTO creature_questrelation (id, quest) VALUES (11802, 29);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11802;
DELETE FROM creature_involvedrelation WHERE quest = 29;
DELETE FROM gameobject_involvedrelation WHERE quest = 29;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11799, 29);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11779;
-- 3.part
DELETE FROM creature_questrelation WHERE quest = 272;
DELETE FROM gameobject_questrelation WHERE quest = 272;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 272;
INSERT INTO creature_questrelation (id, quest) VALUES (11799, 272);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11799;
DELETE FROM creature_involvedrelation WHERE quest = 272;
DELETE FROM gameobject_involvedrelation WHERE quest = 272;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11802, 272);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11802;
-- 4.part
DELETE FROM creature_questrelation WHERE quest = 5061;
DELETE FROM gameobject_questrelation WHERE quest = 5061;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 5061;
INSERT INTO creature_questrelation (id, quest) VALUES (11802, 5061);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11802;
DELETE FROM creature_involvedrelation WHERE quest = 5061;
DELETE FROM gameobject_involvedrelation WHERE quest = 5061;
INSERT INTO creature_involvedrelation (id, quest) VALUES (4217, 5061);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=4217;

-- 
-- A Lesson to Learn - H
-- 

UPDATE quest_template SET RequiredRaces = '32' WHERE entry = '26';  
UPDATE quest_template SET RequiredRaces = '32' WHERE entry = '28';  
UPDATE quest_template SET RequiredRaces = '32' WHERE entry = '30';  
UPDATE quest_template SET RequiredRaces = '32' WHERE entry = '31';

-- 1.part
DELETE FROM creature_questrelation WHERE quest = 26;
DELETE FROM gameobject_questrelation WHERE quest = 26;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 26;
INSERT INTO creature_questrelation (id, quest) VALUES (3033, 26);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 3033;
DELETE FROM creature_involvedrelation WHERE quest = 26;
DELETE FROM gameobject_involvedrelation WHERE quest = 26;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11802, 26);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11802;
-- 2.part
DELETE FROM creature_questrelation WHERE quest = 28;
DELETE FROM gameobject_questrelation WHERE quest = 28;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 28;
INSERT INTO creature_questrelation (id, quest) VALUES (11802, 28);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11802;
DELETE FROM creature_involvedrelation WHERE quest = 28;
DELETE FROM gameobject_involvedrelation WHERE quest = 28;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11799, 28);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11799;
-- 3.part
DELETE FROM creature_questrelation WHERE quest = 30;
DELETE FROM gameobject_questrelation WHERE quest = 30;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 30;
INSERT INTO creature_questrelation (id, quest) VALUES (11799, 30);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11799;
DELETE FROM creature_involvedrelation WHERE quest = 30;
DELETE FROM gameobject_involvedrelation WHERE quest = 30;
INSERT INTO creature_involvedrelation (id, quest) VALUES (11802, 30);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=11802;
-- 4.part
DELETE FROM creature_questrelation WHERE quest = 31;
DELETE FROM gameobject_questrelation WHERE quest = 31;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 31;
INSERT INTO creature_questrelation (id, quest) VALUES (11802, 31);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 11802;
DELETE FROM creature_involvedrelation WHERE quest = 31;
DELETE FROM gameobject_involvedrelation WHERE quest = 31;
INSERT INTO creature_involvedrelation (id, quest) VALUES (3033, 31);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=3033;

-- QuestChain & prevQ A
UPDATE quest_template SET NextQuestInChain = '29' WHERE entry = '27';
UPDATE quest_template SET PrevQuestId = '27' WHERE entry =29;

--  QuestChain & prevQ H
UPDATE quest_template SET NextQuestInChain = '28' WHERE entry = '26';
UPDATE quest_template SET PrevQuestId = '26' WHERE entry =28;

# author:  eNVieN
# desc  : First Quest doesn't hat set NextQuestID
#         Next Quests in line are set incorrectly RequiredRace 
# -- Redemption Paladin Quest - Dwarf  
# UPDATE quest_template SET NextQuestId = '1646' WHERE entry = '1645';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1645';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1646';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1647';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1648';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1778';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1779';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1783';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1784';  
# UPDATE quest_template SET RequiredRaces = '4' WHERE entry = '1785';  
#  
# -- Redemption Paladin Quest - Human  
# UPDATE quest_template SET NextQuestId = '1642' WHERE entry = '1641';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1641';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1642';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1643';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1644';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1780';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1781';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1786';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1787';  
# UPDATE quest_template SET RequiredRaces = '1' WHERE entry = '1788';  

# Velenor
#  Banker Orgrimmar - The banker 'Karus' is not correct 
UPDATE creature_template SET npcflag='258' WHERE entry='3309'; 
DELETE FROM npc_trainer WHERE entry='3309'; 

#BY romikcz
# Fix NPC Lupos Bad Dmgschool Attack 
# I remember  this wolf(pet) for shadow attack . http://www.wowhead.com/?npc=521#comments
UPDATE creature_template SET dmgschool = '5' WHERE entry =521;

-- Giant doors delay change (?) don't know how right, 2 hours(default) or instant open
UPDATE gameobject_scripts SET delay = '20' WHERE id = '15351' AND datalong = '15576';
UPDATE gameobject_scripts SET delay = '20' WHERE id = '15351' AND datalong = '15352';
UPDATE quest_template SET ReqItemId1 = '18625' WHERE entry = '7603';
UPDATE creature_template SET lootid = '14603' WHERE entry = '14603';
UPDATE creature_template SET lootid = '14604' WHERE entry = '14604';
UPDATE creature_template SET lootid = '14638' WHERE entry = '14638';
UPDATE creature_template SET lootid = '14639' WHERE entry = '14639';
UPDATE creature_template SET lootid = '14640' WHERE entry = '14640';
UPDATE creature_template SET minhealth = '42', maxhealth = '42' WHERE entry = '5403';
UPDATE creature_template SET ScriptName = 'npc_tapoke_slim_jahn' WHERE entry = '4962'; 

-- FROM sideways
DELETE FROM creature_questrelation WHERE quest = 349;
DELETE FROM gameobject_questrelation WHERE quest = 349;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 349;
INSERT INTO creature_questrelation (id, quest) VALUES (1449, 349);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 1449;
DELETE FROM creature_involvedrelation WHERE quest = 349;
DELETE FROM gameobject_involvedrelation WHERE quest = 349;
INSERT INTO creature_involvedrelation (id, quest) VALUES (1449, 349);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=1449;
DELETE FROM quest_end_scripts WHERE id=349;
INSERT INTO quest_end_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(349, 170, 10, 1514, 1000000, '0', -13763, -12, 44.8, 5.5),
(349, 170, 10, 1511, 1000000, '0', -13766, -10, 44.48, 5.5),
(349, 170, 10, 1511, 1000000, '0', -13766, -14, 45.2, 5.5),
(349, 100, 10, 1516, 1000000, '0', -13763, -12, 44.8, 5.5),
(349, 100, 10, 1511, 1000000, '0', -13766, -10, 44.48, 5.5),
(349, 100, 10, 1511, 1000000, '0', -13766, -14, 45.2, 5.5),
(349, 5, 10, 1511, 1000000, '0', -13763, -12, 44.8, 5.5),
(349, 5, 10, 1511, 1000000, '0', -13766, -10, 44.48, 5.5),
(349, 5, 10, 1511, 1000000, '0', -13766, -14, 45.2, 5.5),
(349, 50, 10, 1511, 1000000, '0', -13763, -12, 44.8, 5.5),
(349, 50, 10, 1511, 1000000, '0', -13766, -10, 44.48, 5.5),
(349, 50, 10, 1511, 1000000, '0', -13766, -14, 45.2, 5.5),
(349, 50, 10, 1511, 1000000, '0', -13764, -14, 44.8, 5.5);
DELETE FROM quest_template WHERE entry = 349;
INSERT INTO quest_template (entry, Method, ZoneOrSort, RequiredSkill, MinLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) VALUES
(349, 0, 33, 0, 40, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, -348, 0, 0, 0, 0, 0, 0, 'Stranglethorn Fever', 'Hi, $N!$B$BSpeak with me friend Witch Doctor Unbagwa.', 'Speak with Witch Doctor Unbagwa.', 'Witch Doctor Unbagwa like Gorilla Fangs! For you I talk to spirits. Make Mokk the Savage come.$b$bYou protect Witch Doctor Unbagwa from other Gorilla-beast through or no Mokk for you!', 'Witch Doctor Unbagwa knows what Mokk the Savage like. Yes, yes!$b$bMe speak with spirits and make he come, I do.$b$bBut other Gorilla-beast like spirit talkin\' too. You protect Witch Doctor Unbagwa and I make he come to you.$b$bWitch Doctor Unbagwa want something first. You bring a Gorilla Fang and me start spirit talking!', '', '', '', '', '', 2799, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349);

-- from BalakinUser  
-- spirit healer  
UPDATE creature_template SET npcflag = 33 WHERE entry IN (13116, 13117); 

-- from syooo

-- Trainers haven't option to unlearn talents. There are mini fix. 
-- Update npcflag from 18 to 19. 
-- Modifed only 50 lvl trainers.

-- Dorion (Hunter, Darnasus) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 4205; 

-- Ulfir Ironbeard (Hunter, Stormwind) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 5516; 

-- Olmin Burningbeard (Hunter, Ironforge) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 5116; 

-- Father Lazarus (Priest, Undercity) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 4608; 

-- Miles Dexter (Rogue, Undercity) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 4583; 

-- Ormok (Rogue, Orgrimmar) 
UPDATE creature_template SET npcflag = 19 WHERE entry = 3328;

-- Indert info about hunters pets favorite food.
-- Fix by Zikk & Budulay.
UPDATE item_template SET foodtype = 1 WHERE entry IN (117, 723, 724, 729, 731, 769, 1015, 1017, 1081, 2287, 2672, 2673, 2677, 2679, 2680, 2681, 2684, 2685, 2687, 2886, 2888, 2924, 3173, 3220, 3404, 3662, 3664, 3667, 3712, 3726, 3726, 3727, 3728, 3729, 3730, 3731, 3770, 3771, 4457, 4599, 5465, 5467, 5469, 5470, 5471, 5472, 5474, 5477, 5478, 5479, 5480, 6890, 7097, 8952, 9681, 11444, 12037, 12184, 12202, 12203, 12204, 12205, 12208, 12209, 12210, 12212, 12213, 12215, 12217, 12223, 12224, 13851, 17119, 17222, 18045, 19223, 19224, 19304, 19305, 19306, 19995, 20074, 20424, 21023, 21235);
UPDATE item_template SET foodtype = 2 WHERE entry IN (787, 1326, 2675, 2682, 4592, 4593, 4594, 4603, 4655, 5095, 5468, 5476, 5503, 5504, 5525, 5526, 5527, 6038, 6289, 6290, 6291, 6303, 6308, 6316, 6317, 6361, 6362, 6458, 6887, 7974, 8364, 8365, 8957, 8959, 12206, 12216, 12238, 13546, 13754, 13755, 13756, 13758, 13759, 13760, 13888, 13889, 13893, 13927, 13928, 13929, 13930, 13931, 13932, 13933, 13934, 13935, 16766, 16971, 19996, 21071, 21072, 21153, 21217, 21552);
UPDATE item_template SET foodtype = 3 WHERE entry IN (414, 422, 1707, 2070, 3665, 3927, 8932, 12218, 17406);
UPDATE item_template SET foodtype = 4 WHERE entry IN (1113, 1114, 1487, 2683, 3666, 4540, 4541, 4542, 4544, 4601, 5349, 8075, 8076, 8950, 16169, 17197, 19696, 21254, 22895, 23160);
UPDATE item_template SET foodtype = 5 WHERE entry IN (3448, 4604, 4605, 4606, 4607, 4608, 8948);
UPDATE item_template SET foodtype = 6 WHERE entry IN (4536, 4537, 4538, 4539, 4602, 4656, 5057, 8953, 11950, 16168, 19994, 21030, 21031, 21033);

-- civilian flag from SDB
UPDATE creature_template SET civilian=1 WHERE entry IN (151,197,225,226,227,228,233,234,235,237,238,239,240,241,252,255,264,265,273,275,288,289,294,311,341,342,348,381,382,415,464,468,491,543,576,663,733,734,739,770,790,791,812,820,821,842,843,844,878,888,893,927,1070,1072,1073,1074,1146,1148,1149,1242,1244,1342,1404,1481,1495,1496,1519,1668,1670,1671,1678,1680,1992,2079,2082,2093,2096,2134,2142,2214,2228,2238,2239,2263,2277,2278,2311,2314,2316,2352,2357,2364,2367,2379,2382,2383,2394,2429,2430,2438,2497,2696,2705,2706,2711,2712,2770,2788,2789,2805,2810,2812,2814,2816,2860,2878,2910,2913,2988,3097,3133,3135,3136,3137,3190,3291,3292,3309,3320,3322,3337,3341,3367,3390,3418,3428,3429,3431,3432,3448,3449,3464,3477,3478,3479,3480,3481,3482,3483,3484,3485,3486,3487,3488,3489,3490,3521,3539,3540,3542,3543,3544,3547,3549,3550,3583,3607,3624,3639,3644,3661,3663,3681,3695,3845,3846,3847,3848,3894,3916,3934,3937,3952,3953,3954,3958,3959,3961,3962,3967,3969,3970,3980,3994,3996,4048,4049,4077,4079,4080,4081,4082,4083,4084,4092,4155,4165,4187,4188,4190,4192,4194,4195,4197,4198,4200,4209,4305,4307,4311,4483,4510,4545,4546,4721,5389,5394,5414,5418,5464,5476,5592,5593,5690,5731,5870,5871,5911,6244,6289,6670,6737,6738,6749,6966,7009,7316,7731,7765,7777,7843,7866,7869,7916,8307,8361,8404,8576,8586,8931,8934,9238,9356,9549,9564,9566,9978,9981,9982,9990,10045,10046,10048,10052,10058,10061,10062,10085,10118,10216,10219,10721,10878,10880,10881,11040,11137,11328,11608,11609,11748,11751,11752,11820,11826,11864,12043,12423,12656,12716,12718,12862,12864,12997,12998,13018,14757,14901,14909,14990,15105,2909);


-- fix for some rep 
UPDATE quest_template SET rewrepfaction1 = 909 WHERE entry = 7942;
UPDATE quest_template SET rewrepfaction1 = 576 WHERE entry = 6221;

-- spawns modelid fix
UPDATE creature SET modelid = 	0	 WHERE guid = 	5086	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	1791	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	14831	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	10500	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	32881	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	32877	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	32870	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	29113	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	4597	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	6492	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	56805	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	18714	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31845	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31846	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33135	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33801	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33803	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33804	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33805	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33806	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33807	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33924	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	34159	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	34160	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38844	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38847	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38856	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38889	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38908	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	38909	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	40184	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	41708	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	90463	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	45431	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	53175	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	53738	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	53739	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	72002	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	35883	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	35887	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	35907	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	37087	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	42317	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31036	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	30935	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	30757	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	30741	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	30611	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	30610	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	8455	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31592	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31593	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31594	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31596	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	31601	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	33842	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94536	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94537	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94540	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94545	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94547	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94551	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94559	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94562	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94567	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94568	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94571	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94575	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94576	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94585	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94587	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94589	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94593	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94602	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94606	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94612	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94616	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94620	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94641	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94649	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94652	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94655	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94657	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94658	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94663	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94671	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94680	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94683	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94690	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94692	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94703	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94707	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94711	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94738	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94746	;
UPDATE creature SET modelid = 	0	 WHERE guid = 	94747	;

UPDATE creature SET modelid=0 WHERE (guid='35907');
UPDATE creature SET modelid=0 WHERE (guid='1791');
UPDATE creature SET modelid=0 WHERE (guid='6492');
UPDATE creature SET modelid=0 WHERE (guid='5086');
UPDATE creature SET modelid=0 WHERE (id='5057');
UPDATE creature SET modelid=0 WHERE (id='3727');
UPDATE creature SET modelid=0 WHERE (id='14327');
UPDATE creature SET modelid=0 WHERE (id='9836');
UPDATE creature SET modelid=0 WHERE (id='13085');
UPDATE creature SET modelid=0 WHERE (guid='29113');
UPDATE creature SET modelid=0 WHERE (guid='18714');
UPDATE creature SET modelid=0 WHERE (guid='34160');
UPDATE creature SET modelid=0 WHERE (guid='31846');
UPDATE creature SET modelid=0 WHERE (id='11198');
UPDATE creature SET modelid=0 WHERE (id='3730');
UPDATE creature SET modelid=0 WHERE (guid='35883');
UPDATE creature SET modelid=0 WHERE (guid='53738');
UPDATE creature SET modelid=0 WHERE (guid='35887');
UPDATE creature SET modelid=0 WHERE (guid='45431');
UPDATE creature SET modelid=0 WHERE (guid='72002');
UPDATE creature SET modelid=0 WHERE (guid='31845');
UPDATE creature SET modelid=0 WHERE (guid='42317');
UPDATE creature SET modelid=0 WHERE (guid='37087');
UPDATE creature SET modelid=0 WHERE (guid='90463');
UPDATE creature SET modelid=0 WHERE (guid='10500');
UPDATE creature SET modelid=0 WHERE (guid='53739');
UPDATE creature SET modelid=0 WHERE (guid='53175');

-- fix Darkmaster Gandling lootid
UPDATE creature_template SET lootid = 1853 WHERE entry = 1853;